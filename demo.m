function NetPars = getDependentPars(NetPars)
    % Calculate dependent parameters in NetPars.
    
    % Wen-Hao Zhang, June-7, 2017
    % wenhaoz1@andrew.cmu.edu
    % @Carnegie Mellon University
    
    % Recalculate REFERENCE value for connection strength
    
    % Jc: the minimal recurrent connection strength for holding persistent
    %     activities after switching off feedforward input
    % Uc: the self-sustained bump height of synaptic input (without feedforward
    %     inputs) when recurrent connection strength is Jc
    % Oc: the self-sustained bump height of firing rate
    
    switch NetPars.connFunc
        case 'Gaussian'
            NetPars.rho = NetPars.N /(2*NetPars.Width); % The density of neurons
            NetPars.Jc  = sqrt(8*sqrt(2*pi)*NetPars.k*NetPars.TunWidth/NetPars.rho);
            NetPars.Uc  = NetPars.Jc/(2*sqrt(pi)*NetPars.k*NetPars.TunWidth);
            NetPars.Oc  = NetPars.Uc^2 ...
                /(1 + sqrt(2*pi)*NetPars.k*NetPars.rho*NetPars.TunWidth*NetPars.Uc^2);
        case 'vonMises'
            NetPars.rho = NetPars.N /(2*pi); % The density of neurons per degree
            NetPars.Jc  = 8*pi* NetPars.k/ NetPars.rho;
            NetPars.Jc  = NetPars.Jc * besseli(0, NetPars.TunKappa/2)^2 / besseli(0, NetPars.TunKappa);
            NetPars.Jc  = sqrt(NetPars.Jc); % 0.93 is an empirical factor to cancel the approximation in theory!
            NetPars.Uc  = NetPars.Jc*exp(NetPars.TunKappa/2)...
                / (2*pi*NetPars.k * besseli(0, NetPars.TunKappa/2));
            NetPars.Oc  = NetPars.Uc * exp(NetPars.TunKappa/2) * besseli(0, NetPars.TunKappa/2) ...
                /(NetPars.rho * NetPars.Jc * besseli(0, NetPars.TunKappa));
    end
    
    NetPars.Jrc = NetPars.JrcRatio * NetPars.Jc;
    NetPars.Jrp = NetPars.JrpRatio * NetPars.Jrc;
    NetPars.Ampl = NetPars.AmplRatio * NetPars.Uc;
end

% Load parameters
% Parameters for coupled two CANNs
%% Load default network parameters
% Default parameters of network
NetPars.N        = 180;  % The number of neurons
NetPars.numNets  = 1;  % number of networks
NetPars.Width    = 180; % the range of parameter space from (-Width, Width), unit: deg

% Preferred stimulus of neurons (location on feature space)
PrefStim         = linspace(-NetPars.Width,NetPars.Width, NetPars.N+1)'; 
PrefStim(1)      = [];
NetPars.PrefStim = PrefStim;
clear PrefStim

%% Temporal parameters
NetPars.tau  = 1; % Time constant of neuron activity
NetPars.tLen = 600 * NetPars.tau; % whole length of simulation
NetPars.dt   = NetPars.tau/100; % the iterative step

%% Connection
% NetPars.connFunc = 'vonMises'; % or Gaussian
NetPars.connFunc = 'Gaussian'; % or vonMises
switch NetPars.connFunc
    case 'Gaussian'
        NetPars.k         = 5e-4; % global inhibition strength
        NetPars.TunWidth  = 40; % Tuning width, the std. of tuning function. Unit: deg.
    case 'vonMises'
        NetPars.k           = 3e-4; % global inhibition strength
        NetPars.TunKappa    = 3; % Tuning width, concentration of von-Mises function, about 40 deg.
end
NetPars.JrcRatio = 0.5; % Recurrent connection strength within the same network, relative to Jc (the minimal recurrent 
%                         connection strength for the network to hold a persistent activity without feedforward inputs).
NetPars.JrpRatio = 0.4; % Reciprocal connection strength between networks; same parameter for J12 and J21, relative to Jrc

%% Network input 
% -----------------------------
% Input intensity and location
% -----------------------------
% Peak intensity of feedforward inputs, [numNets, 1]
NetPars.AmplRatio = 0.6; % Relative to Uc, which is the persistent bump height without stimulus when Jrc = Jc 
NetPars.AmplRatio = repmat(NetPars.AmplRatio, [NetPars.numNets, 1]);

% Intensity of background input
NetPars.AmplBkg = 0; 

% Input location, [numNets, 1]
NetPars.Posi = 0;
clear Posi

% ------------------
% Noise structure
% ------------------
NetPars.bAddNoise = 1; % 1: add noise; 0: noise free;
% NetPars.PosiNoise = 0; % bool variable, 1: noise on the position of external input; 0: full noise

% Internal noise inside network
% The noise strength of all networks are the same for simplicity
NetPars.fanoFactor = 1; % fano factor of internal noise

% External noise associated with feedforward connections
% NetPars.typeExtNois = 'Poisson'; % or 'Gaussian'

% ------------------
% Cueing conditions
% ------------------
NetPars.cueCond = 0; % Cueing condition. 
%                         0: both cue; 
%                         1: only cue 1; 
%                         2: only cue 2.

% Random seed
NetPars.seedNois = 0;
% NetPars.seedIntNois = 0;
% NetPars.seedExtNois = sum(clock)*100;

NetPars.flagSeed = 1;
switch NetPars.flagSeed
    case 1
        NetPars.flagSeed = 'sameSeed';
        % use the same random seed for all parameters 
    case 2
        NetPars.flagSeed = 'SameSeedCueCond';
        % different random seed under different parameter settings, but for
        % each parameter set, the seeds under three cue conditions are
        % exactly the same
    case 3
        NetPars.flagSeed = 'diffSeed';
end

NetPars = orderfields(NetPars);

%% Specialized parameters of CANN
NetPars.numNets = 2;
NetPars = getDependentPars(NetPars);

%% Caution: don't move below lines before parseNetPars
% NetPars.Jrc      = 0.5*NetPars.Jc;
NetPars.JrcRatio = 1./sqrt(2)/NetPars.Jc;
NetPars.JrpRatio = 0.7; % same parameter for J12 and J21, relative to Jrc

% -----------------
% Input parameters
% -----------------
NetPars.AmplRatio = 0.7*NetPars.Uc;
NetPars.AmplRatio = repmat(NetPars.AmplRatio, [NetPars.numNets, 1]);

NetPars.Posi = ...
    [NetPars.PrefStim(end/2-1), ...
    NetPars.PrefStim(end/2+1)]'; % the last element is used for different position

NetPars.stdIntNois = sqrt(NetPars.AmplBkg * NetPars.fanoFactor); % internal noise
NetPars.stdIntNois = repmat(NetPars.stdIntNois, [NetPars.numNets, 1]);

NetPars.bAddNoise = 1;
NetPars.AmplBkg = 0;


% Parameters of multiple trials
NetPars.tTrial  = 500 * NetPars.tau;
NetPars.nTrials = 1; % number of trials
NetPars.tLen    = NetPars.nTrials * NetPars.tTrial;
NetPars.tStat   = 50 * NetPars.tau; % The starting time to make statistics
%%
% Parse network parameters
parseNetPars;


NetPars.AmplRatio = 1*ones(NetPars.numNets,1);
NetPars.JrcRatio = 0.5;
NetPars.JrpRatio = 0.8;
NetPars.tLen = 1e3;

NetPars.fanoFactor = 0.5;
NetPars.Posi = 2*[-1;1];

% Generate grid of parameters
[parGrid, dimPar] = paramGrid(NetPars);
parGrid = arrayfun(@(x) getDependentPars(x), parGrid);

%% Net Simulation
NetStat = struct('BumpPos', [], ...
    'meanBumpPos', [], ...
    'varBumpPos', [], ...
    'OHeightAvg', [], ...
    'OAvgXTime', [], ...
    'OStdXTime', [], ...
    'UHeightAvg', []);
NetStat = repmat(NetStat, size(parGrid));

tStart = clock;
for iterPar = 1: numel(parGrid)
    fprintf('Progress: %d/%d\n', iterPar, numel(parGrid));
    netpars = parGrid(iterPar);
    
    % Network input
    InputSet = makeNetInput([], netpars);
    
    % Run simulation
    outArgs = struct('InputSet', [], 'NetStat', NetStat(iterPar));
    [InputSet, NetStat(iterPar)] = simCoupledAttractors1(InputSet, netpars, outArgs);
end

tEnd = clock;

%% Parameters of sample distributions
PreMat_Sample = {NetStat.varBumpPos};
PreMat_Sample = cellfun(@inv, PreMat_Sample, 'uniformout', 0);
PreMat_Sample = reshape(cell2mat(PreMat_Sample), NetPars.numNets, NetPars.numNets, []);

%% Theoretical prediction

wfwd = 8/3^(3/2) * NetPars.fanoFactor * 2.5;

% New version includes the spatial convolution of the feedforward input.
PreMat_LH = 2*sqrt(pi) * diag(parGrid(1).Ampl) / NetPars.TunWidth/ wfwd;

% ------------------------------------------------------
% The variance of noise is the firing rate bump
% varBumpPosTheory = [NetStat.OHeightAvg]./ [NetStat.UHeightAvg]*NetPars.TunWidth ...
%     ./ (2*sqrt(pi) .*[parGrid.Ampl]);

% The variance of noise is the synaptic input bump
varBumpPosTheory = 4*NetPars.fanoFactor*NetPars.TunWidth/sqrt(pi)/ 3^(3/2) ./ [parGrid.Ampl];

% ------------------------------------------------------
% Prediction of mean of samples
% Find the prior precision which best explains the sample distribution
meanSampleTheory = zeros(NetPars.numNets, numel(parGrid));
Lambda_s = zeros(1, numel(parGrid));
KLD = zeros(1, numel(parGrid));

for iter = 1: numel(NetStat)
    meanSampleTheory(:,iter) = NetStat(iter).varBumpPos * ...
        PreMat_LH * NetPars.Posi;
    [Lambda_s(iter), KLD(iter)] = findPriorPrecision(NetStat(iter).meanBumpPos, NetStat(iter).varBumpPos, ...
        NetPars.Posi, PreMat_LH);
end
meanSampleTheory = reshape(meanSampleTheory, [NetPars.numNets, size(parGrid)]);
OmegaTheory = PreMat_LH + Lambda_s * (2*diag(ones(1, NetPars.numNets)) - ones(size(NetPars.numNets)));

%% Plot

tPlot = 1e4+1e2;
tlenPlot = 5e2;

figure
% Plot the empirical distribution of samples
hAxe = plotJointMarginalHist(NetStat.BumpPos(1,NetPars.tStat/NetPars.dt+1:end), ...
    NetStat.BumpPos(2,NetPars.tStat/NetPars.dt+1:end));

% Get the range of coordinates
xLim = get(hAxe(1), 'xlim');
yLim = get(hAxe(1), 'ylim');
xGrid = linspace(xLim(1), xLim(end), 1e2+1);
yGrid = linspace(yLim(1), yLim(end), 1e2+1);

% Contour or the color image of the empirical distribution of samples
[X,Y] = ndgrid(xGrid, yGrid);
pdfSample = mvnpdf([X(:), Y(:)], NetStat.meanBumpPos', NetStat.varBumpPos);
pdfSample = reshape(pdfSample, size(X));
% imagesc(hAxe(1), xGrid, yGrid, pdfSample')
contour(X,Y, pdfSample)
caxis([-5e-2, max(pdfSample(:))])
axis xy

% Plot the distribution of posterior predicted by Bayes theorem
SigmaS = inv(OmegaTheory);
fPostBayes = @(x,y) ( ([x;y] - meanSampleTheory)' * OmegaTheory * ([x;y]-muS) - 9);
hEllipse = fimplicit(hAxe(1), fPostBayes, ...
    [SigmaS(1) + 5*SigmaS(1)*[-1, 1], meanSampleTheory(2) + 5*SigmaS(4)*[-1, 1]], ...
    'color', 'k', 'linestyle', '--', 'linew', 2);
plot(hAxe(2), xGrid, normpdf(xGrid, meanSampleTheory(1), sqrt(SigmaS(1))), '--k', 'linew',2)
plot(hAxe(3), normpdf(yGrid, meanSampleTheory(2), sqrt(SigmaS(2,2))), yGrid, '--k', 'linew',2)


% Plot an example of trajectory
cMap = cool(tlenPlot);
for iter = 1: (tlenPlot-1)
    plot(NetStat.BumpPos(1,tPlot+(iter:iter+1)), NetStat.BumpPos(2,tPlot+(iter:iter+1)), 'color', cMap(iter,:));
end

axes(hAxe(1))
xlabel('s_1')
ylabel('s_2')

