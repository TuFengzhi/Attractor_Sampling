# GPT-Academic Report
## # Title:



Systems/Circuits Decentralized Multisensory Information Integration in Neural Systems

## # Abstract:



How multiple sensory cues are integrated in neural circuitry remains a challenge. The common hypothesis is that information integration might be accomplished in a dedicated multisensory integration area receiving feedforward inputs from the modalities. However, recent experimental evidencesuggeststhatitisnotasinglemultisensorybrainarea,butrathermanymultisensorybrainareasthataresimultaneouslyinvolvedinthe integration of information. Why many mutually connected areas should be needed for information integration is puzzling. Here, we investigated theoretically how information integration could be achieved in a distributed fashion within a network of interconnected multisensory areas. Using biologically realistic neural network models, we developed a decentralized information integration system that comprises multiple interconnected integration areas. Studying an example of combining visual and vestibular cues to infer heading direction, we show that such a decentralized system is in good agreement with anatomical evidence and experimental observations. In particular, we show that this decentralized system can integrate information optimally. The decentralized system predicts that optimally integrated information should emerge locally from the dynamics of the communication between brain areas and sheds new light on the interpretation of the connectivity between multisensory brain areas.

## # Meta Translation

题目: 系统/电路：神经系统中的分散式多感官信息整合

摘要: 如何在神经回路中整合多种感官线索仍然是一个挑战。常见的假设是，信息整合可能在一个接收来自不同感官模式的前馈输入的专用多感官整合区域完成。然而，最近的实验证据表明，不是单一的多感官脑区，而是多个多感官脑区同时参与信息整合。为何需要许多相互连接的区域来完成信息整合，这一点令人困惑。在这里，我们从理论上研究了如何在一个互联的多感官区域网络中以分布式方式实现信息整合。使用生物学上现实的神经网络模型，我们开发了一个包含多个互联整合区域的分散式信息整合系统。通过研究结合视觉和前庭线索推断前进方向的例子，我们展示了这样的分散系统与解剖学证据和实验观察结果高度一致。特别是，我们展示了这个分散系统可以最优地整合信息。分散系统预测，最优整合的信息应该从大脑区域间通信的动态中局部地出现，并对多感官大脑区域间的连通性提供了新的解释。


## # Introduction

Almost any behavioral task seems to require the combined effort of many brain regions working together. Information integration across distributed brain areas is thus considered of critical importance in the brain and has been described as one of the hallmarks of consciousness (Tononi and Edelman, 1998). Integration of information from different sources is essential for behavior: to obtain a reliable description for an underlying state of interest, evidence from different sources must be combined in a proper way. Accordingly, it has been found that neural systems combine information from different sensory modalities in an optimal way, as predicted by Bayesian inference. For example, while walking, the visual input (optic flow) and vestibular signal (body movement) both carry useful informa-tion about the motion direction (Bertin and Berthoz, 2004). In the brain, these visual and vestibular inputs can be fused seamlessly to give rise to a more reliable estimation of the motion direction than either of the modalities could deliver on its own (Gu et al., 2008;Chen et al., 2013). This capability of optimal multisensory integration seems ubiquitous across modalities, as has been reported, for example, for the integration of visual and auditory cues for inferring object location (Alais and Burr, 2004), motion and texture cues for depth perception (Jacobs, 1999), visual and proprioceptive cues for hand position (van Beers et al., 1999), and visual and haptic cues for object height (Ernst and Banks, 2002).
However, exactly how the brain integrates information optimally from multiple sources using synaptic communication and neural activity alone remains unresolved. A straightforward hypothesis is that a dedicated integration area, which receives feedforward inputs from all sensory modalities to be combined, pools and integrates all of the incoming information (Ma et al., 2006;Alvarado et al., 2008;Magosso et al., 2008;Ursino et al., 2009;Ohshiro et al., 2011). Although it has been shown that optimal multisensory integration could be achieved within such a dedicated area under certain conditions (Ma et al., 2006), the hypothesis does not touch upon the recent experimental findings that many interconnected multisensory areas are involved in the integration of sensory signals instead of just a single dedicated area (Gu et al., 2008;Chen et al., 2011bChen et al., , 2013)). Here, we argue that the existence of many multisensory areas should not be just seen as added complexity to the hypothesis of having one dedicated integration area, but instead might be at the core of how the brain coordinates the flow of information.
Using biological realistic neural network modeling, we explored theoretically how interconnected areas could integrate information in a distributed fashion. We developed a decentralized architecture for multisensory integration in which multisensory areas are connected with each other reciprocally and show that information integration can be done in an optimal manner without the need for a central area that would receive and pool all available information. As an example, we consider the task of inferring the heading direction from visual and vestibular cues and found that, when describing the interconnected multisensory areas dorsal medial superior temporal (MSTd) area and ventral intraparietal (VIP) area as a decentralized system, model predictions are in good agreement with biological observations. The decentralized system can near-optimally integrate visual and vestibular information in a wide parameter region and neural activations are consistent with the characteristic properties of neuronal responses observed during multisensory integration, including the inverse effectiveness, the spatial principle, and the reliability-based combination (Fetsch et al., 2013).
Finally, our theoretical analysis reveals that the strength of the connectivity between different multisensory areas might be related to prior knowledge about the similarity, or the probability of cooccurrence, of stimuli that are to be integrated. Therefore, our decentralized view of information integration not only provides an alternative hypothesis of how the brain might solve the challenge of integrating information, it also suggests a new interpretation of the function of connectivity within and between multisensory areas.

# 引言：

几乎任何行为任务似乎都需要多个脑区的共同努力。因此，在分布式脑区之间的信息整合被认为在大脑中至关重要，被描述为意识的一个标志性特征（Tononi和Edelman，1998）。从不同来源整合信息对行为至关重要：为了获得对感兴趣的潜在状态的可靠描述，必须以适当的方式结合来自不同来源的证据。相应地，已发现神经系统以贝叶斯推理预测的最优方式结合来自不同感观模态的信息。例如，在行走时，视觉输入（视觉流）和前庭信号（身体运动）都携带有关运动方向的有用信息（Bertin和Berthoz，2004）。在大脑中，这些视觉和前庭输入可以无缝融合，产生比任何单一模态都更可靠的运动方向估计（Gu等，2008；Chen等，2013）。这种最优多感觉整合的能力似乎在不同模态中普遍存在，例如通过视觉和听觉线索推断物体位置（Alais和Burr，2004）、运动和纹理线索感知深度（Jacobs，1999）、视觉和本体感觉线索确定手的位置（van Beers等，1999），以及视觉和触觉线索感知物体高度（Ernst和Banks，2002）。

然而，大脑如何仅通过突触通讯和神经活动从多个来源最优地整合信息仍未解决。一个直接假设是有一个专门的整合区域，该区域接收来自所有待组合的感觉模态的前馈输入，汇总和整合所有传入的信息（Ma等，2006；Alvarado等，2008；Magosso等，2008；Ursino等，2009；Ohshiro等，2011）。虽然已经表明在某些条件下，这样一个专门区域内可以实现最优多感觉整合（Ma等，2006），但这种假设并未涉及到最近的实验发现，即许多相互连接的多感官区域参与感觉信号的整合，而不仅仅是一个专门的区域（Gu等，2008；Chen等，2011、2013）。这里，我们认为许多多感觉区域的存在不应仅被视为拥有一个专门整合区域假设的增加复杂性，而可能是大脑协调信息流动的核心。

通过使用生物逼真的神经网络建模，我们理论探讨了如何通过相互连接的区域以分布式方式整合信息。我们开发了一个分散架构的多感官整合，其中多感官区域互相连接，并展示了信息整合可以在不需要接收和汇总所有可用信息的中央区域的情况下以最优方式完成。作为一个例子，我们考虑了利用视觉和前庭线索推断航向方向的任务，并发现，将相互连接的多感官区域背侧中上颞（MSTd）区和腹内顶（VIP）区描述为一个分散系统时，模型预测与生物观察结果高度一致。这个分散系统可以在广泛的参数区域内接近最优地整合视觉和前庭信息，神经激活与观察到的多感官整合过程中神经元反应的特性属性一致，包括反向效应、空间原则和基于可靠性的组合（Fetsch等，2013）。

最后，我们的理论分析揭示了不同多感觉区域之间的连接强度可能与对将要整合的刺激的相似性或共现概率的先验知识有关。因此，我们对信息整合的分散视角不仅提供了大脑如何解决整合信息的挑战的另一种假设，还提出了对多感觉区域内部和之间连接功能的新解释。

## # Materials and Methods Part-1

Neural network models for decentralized information integration. In our study, a decentralized system consists of N ͑N Ն 2͒ reciprocally coupled modules. Each module is modeled as a continuous attractor neural network (CANN) (Wu et al., 2008). Excitatory neurons in each CANN receive inputs from a stimulus feature , for example, the heading direction, and their preferred stimulus values are uniformly distributed in the parameter space ͑Ϫ, ͔ with periodic boundary condition. Let u l ͑, t͒ and r l ͑, t͒ denote the synaptic input and the firing rate, respectively, of neuron in network l at time t. The network dynamics is given by the following:
Ѩu l ͑, t͒ Ѩt ϭ Ϫu l ͑, t͒ ϩ mϭ1 N ͵ Ϫ W lm ͑, Ј͒r m ͑Ј, t͒dЈ ϩ I l ͑, t͒ (1)
where is a time constant and is the neuronal density. W lm ͑, Ј͒ represents the connection strength from neuron Ј in network m to neuron in network l. I l ͑, t͒ is the feedforward input from an unisensory brain area conveying the information of stimulus l.
Each CANN contains an inhibitory neuronal pool that normalizes the response of excitatory neurons divisively according to the overall activity level of the network. That is, the firing rate r l ͑, t͒ of neuron in network l is given by the following:
r l ͑, t͒ ϭ ͓u l ͑, t͔͒ ϩ 2 1 ϩ k ͵ Ϫ ͓u l ͑Ј, t͔͒ ϩ 2 dЈ (2)
where ͓ x͔ ϩ denotes rectification of negative values; that is, ͓ x͔ ϩ ϭ 0 for x Յ 0 and ͓ x͔ ϩ ϭ x for x Ͼ 0. The parameter k controls the global inhibition strength.
The excitatory connection strength between two neurons depends on the distance of the neurons in feature space in a Gaussian manner (see Fig. 2C); that is:
W lm ͑, Ј͒ ϭ J lm ͱ2a lm exp ͫ Ϫ ͑ Ϫ Ј͒ 2 2a lm 2 ͬ (3)
where J lm is a positive overall connection strength parameter and a lm is the connection width in feature space. Note that W ll denotes the recurrent connections between neurons within the same network l and W lm , for l m, represents the reciprocal connections between neurons from different networks. When stimulus l is presented, we assume that an internal representation (also called cue) of stimulus l is generated in an unisensory cortical area; for example, the medial temporal (MT) or parieto-insular vestibular cortex (PIVC). Network l then receives the cue l as a feedforward input from the corresponding unisensory area. How the unisensory area represents the cue is largely unknown, so we follow previous approaches that the input has a Gaussian shape with multiplicative noise (Dene `ve and Pouget, 2004;Ma et al., 2006), as follows:

# 材料与方法 第一部分：

## 分散式信息整合的神经网络模型

在我们的研究中，一个分散系统由 N 个（N ≥ 2）相互耦合的模块组成。每个模块都被建模为一个连续吸引子神经网络（CANN）（Wu 等人，2008）。每个 CANN 中的兴奋性神经元接收来自某个刺激特征的输入，例如方向感，它们偏好的刺激值在参数空间（Ϫ，͔）内均匀分布，并具有周期性边界条件。让 u_l(, t) 和 r_l(, t) 分别表示在时间 t，网络 l 中的神经元的突触输入和放电率。网络动态由以下公式给出：

\[ \frac{\partial u_l(, t)}{\partial t} = -u_l(, t) + \sum_{m=1}^{N} \int - W_{lm}(, ') r_m(', t) d' + I_l(, t) \] (1)

其中 是时间常数，表示神经元密度。W_{lm}(, ') 表示从网络 m 中神经元 ' 到网络 l 中神经元 的连接强度。I_l(, t) 是来自表达 l 刺激的单感觉脑区的前馈输入。

每个 CANN 包含一个抑制性神经元池，该池根据网络的整体活动水平除性地规范兴奋性神经元的反应。即，网络 l 中神经元的放电率 r_l(, t) 由以下公式给出：

\[ r_l(, t) = \frac{ [u_l(, t)]^+ }{1 + k \int [u_l(', t)]^+ d'} \] (2)

其中 [x]^+ 表示负值的整流；即 [x]^+ = 0 若 x ≤ 0，且 [x]^+ = x 若 x > 0。参数 k 控制全局抑制强度。

两个神经元之间的兴奋性连接强度按特征空间中的距离以高斯方式依赖（见图 2C）；即：

\[ W_{lm}(, ') = J_{lm} \sqrt{2a_{lm}} \exp \left(-\frac{( - ')^2}{2a_{lm}^2} \right) \] (3)

其中 J_{lm} 是正的全局连接强度参数，a_{lm} 是特征空间中的连接宽度。注意 W_{ll} 表示同一网络 l 中神经元之间的递归连接，W_{lm}，对于 l ≠ m，表示来自不同网络的神经元之间的相互连接。当展示刺激 l 时，我们假设在一个单感觉皮层区域生成了刺激 l 的内部表征（也称为提示），例如中颞叶（MT）或顶岛前庭皮层（PIVC）。网络 l 然后从相应的单感觉区域接收提示 l 作为前馈输入。单感觉区域如何表示提示尚不清楚，因此我们遵循之前的方法，即输入具有高斯形状并伴有乘性噪声（Deneve 和 Pouget，2004；Ma 等人，2006）。

## # Materials and Methods Part-2

I l ͑, t͉s l ͒ ϭ ␣ l exp ͫ Ϫ ͑ Ϫ l ͒ 2 4a ll 2 ͬ ϩ l ͑͒ l ͑, t͒ ϩ I Bkg ͑, t͒ (4)
where l is the stimulus feature value conveyed by sensory cue l to network l. Because of the multiplicative noise, ␣ l is the signal strength and measures the reliability of the cue (Ma et al., 2006). The term l ͑͒ l ͑, t͒ denotes the input noise, with noise variance l 2 ͑͒ ϭ F l ␣ l e
Ϫ͑Ϫl͒ 2 /4a ll 2 proportional to the input intensity and F l denotes the Fano factor of the input. l ͑, t͒ is a Gaussian white noise of zero mean and unit variance. To include spontaneous activity, a background input I Bkg ͑, t͒ ϭ ͗I Bkg ͘ ϩ ͱF l I Bkg l ͑, t͒ is added, regardless of whether cue l is present.
The mean of the background input is the same for all neurons. Input noise l ͑, t͒ and background noise l ͑, t͒ are independent of each other, satisfying ͗ l ͑, t͒ m ͑Ј, tЈ͒͘ ϭ ␦ lm ␦ Ј ␦͑t Ϫ tЈ͒, ͗ l ͑, t͒ m ͑Ј, tЈ͒͘ ϭ ␦ lm ␦ Ј ␦͑t Ϫ tЈ͒, and ͗ l ͑, t͒ m ͑Ј, tЈ͒͘ ϭ 0, where ␦ xxЈ and ␦͑x Ϫ xЈ͒ are the Kronecker and Dirac delta functions, respectively.
Dynamics of the reciprocally coupled networks. Because of the translational invariance of the recurrent connections in a CANN, the dynamics of a CANN is dominated by a few dynamical modes corresponding to distortions in height, position, and other higher-order features of the activity bump (Fung et al., 2010;Zhang and Wu, 2012). It was shown previously that one can project the network dynamics onto its dominant modes to simplify the mathematical analysis significantly (Fung et al., 2010). In the weak input limit (i.e., ␣ l is sufficiently small compared with the recurrent inputs), the change of the bump position is the dominant motion mode of the network dynamics and other distortions of the bump can be neglected. Note that the weak input limit assumption is not strictly true for all parameters considered in the Results section, where the bump height (but not the higher modes) will nevertheless be significantly affected by the input. Therefore, in addition to the following theoretical analysis, below we conducted numerical simulations in which the full dynamics were simulated and thus no assumption on the constancy of the bump height was necessary. The dominant mode corresponding to the change of the bump position is written as follows:
1 ͑ ͉ z ˆ͒ ϭ ͩ Ϫ z â ͪ exp ͫ Ϫ ͑ Ϫ z ˆ͒2 4a 2 ͬ (5)

在“材料与方法第二部分”章节中，详述了多感官信息整合网络系统的计算基础。以下是翻译：

公式（4）如下所示：
I l(x, t) = α_l exp(- (x - l)^2 / 4a_ll^2) + I_l(x, t) + I Bkg(x, t)
其中，l 是由感官提示 l 传达给网络 l 的刺激特征值。由于乘法噪声，α_l 是信号强度，用于衡量提示的可靠性（Ma 等人，2006年）。项 I_l(x, t) 表示输入噪声，其噪声方差 l^2(x) = F_l α_l e^(-(x-l)^2 / 4a_ll^2) 与输入强度成正比，F_l 表示输入的 Fano 因子。l(x, t) 是具有零均值和单位方差的高斯白噪声。为了包括自发活动，添加了一个背景输入 I Bkg(x, t) = ⟨I Bkg⟩ + √(F_l I Bkg) l(x, t)，不论提示 l 是否存在。
所有神经元的背景输入均值相同。输入噪声 l(x, t) 和背景噪声 l(x, t) 互不依赖，满足 ⟨l(x, t) m(x', t')⟩ = δ_lm δ(x-x') δ(t-t')、⟨l(x, t) m(x', t')⟩ = δ_lm δ(x-x') δ(t-t')，以及 ⟨l(x, t) m(x', t')⟩ = 0，其中 δ_xx' 和 δ(x-x') 分别是 Kronecker 和 Dirac delta 函数。

互惠耦合网络的动态。由于 CANN 中递归连接的平移不变性，CANN 的动态主要由对活动波峰的高度、位置和其他高阶特征的扭曲所对应的少数几种动态模式主导（Fung 等人，2010年；张与吴，2012年）。之前的研究已经显示，可以将网络动态投影到其主导模式上，从而大幅简化数学分析（Fung 等人，2010年）。在弱输入极限下（即，α_l 与递归输入相比较小），波峰位置的变化是网络动态的主导运动模式，而其他波峰扭曲可以忽略。需要注意的是，弱输入极限假设并不严格适用于结果部分考虑的所有参数，其中波峰高度（但不是更高模式）仍将受到输入的显著影响。因此，除了以下理论分析外，我们还进行了数值模拟，其中模拟了完整的动态，因此不必假设波峰高度的恒定性。对应于波峰位置变化的主导模式如下所示：
1(x | z) = (−z exp(- (x - z)^2 / 4a^2)) (5)

## # Materials and Methods Part-3

where z ˆis a free parameter denoting the position of the bump and a is the width of the bump. Note that projecting a function f͑͒ onto a motion mode ͑ ͉ z ˆ͒ is to compute the quantity ͐ f͑͒͑ ͉ z ˆ͒d/͐ ͑ ͉z ˆ͒2 d. If only the position of the bump varies significantly with the feedforward input, then the network dynamics can be solved by using the following Gaussian ansatz: (7)   where U l and R l represent the mean values of the bump height, which are treated unchanged in the statistically stationary state.
u l ͑, t͒ Ϸ U l exp ͫ Ϫ ͑ Ϫ z ˆl͑t͒͒ 2 4a 2 ͬ , l ϭ 1, 2, (6) r l ͑, t͒ Ϸ R l exp ͫ Ϫ ͑ Ϫ z ˆl͑t͒͒ 2 2a 2 ͬ , l ϭ 1, 2,
Taking two reciprocally connected networks as an example, we show how the projection of the network dynamics onto the dominant motion mode simplifies the description. Substituting the above Gaussian ansatz into the network dynamics (Eq. 1) and projecting it onto the motion mode (Eq. 5), we obtain the dynamics of the bump position for network 1 (the result of network 2 is the same except that the indices are interchanged), as follows:
U 1 dz ˆ1 dt ϭ J 12 R 2 ͱ2 ͑z ˆ2 Ϫ z ˆ1͒e Ϫ ͑ z ˆ2Ϫz ˆ1͒ 2 8a 2 ϩ ␣ 1 ͑ 1 Ϫ z ˆ1͒e Ϫ ͑1Ϫz ˆ1͒ 2 8a 2 ϩ 2 ͱaF l ͑2͒ 1/4 ͱ͑2/3͒ 3/ 2 ␣ 1 ϩ I Bkg 1 ͑t͒ (8)
For ͑z ˆ2 Ϫ z ˆ1͒/8a 2 and ͑ 1 Ϫ z ˆ1͒/8a 2 sufficiently small (which is the case for the parameter regime we consider), the exponential terms can be safely ignored, and the above equation, together with the one for network 2, are further simplified to the following:
dz ˆ1 dt ϭ g 12 ͑ z ˆ2 Ϫ z ˆ1͒ ϩ h 1 ͑ 1 Ϫ z ˆ1͒ ϩ ␤ 1 1 ͑t͒ (9) dz ˆ2 dt ϭ g 21 ͑ z ˆ1 Ϫ z ˆ2͒ ϩ h 2 ͑ 2 Ϫ z ˆ2͒ ϩ ␤ 2 2 ͑t͒ (10)
where the following coefficients:
g lm ϭ J lm R m ͱ2U l , h l ϭ ␣ l U l , ␤ l 2 ϭ 4aF l ͱ2͑U l ͒ 2 ͫͩ 2 3 ͪ 3/ 2 ␣ l ϩ I Bkgͬ (11)
denote, respectively, the effective strengths of the reciprocal connections, the input signal, and the noise. Note that above equations are nonlinear because the effective strengths g lm , h l , and ␤ l are nonlinearly dependent with network and input parameters.

# 材料和方法 部分-3：

其中 \( \hat{z} \) 是一个自由参数，表示波峰的位置，\( a \) 是波峰的宽度。请注意，将函数 \( f \) 投影到运动模式 \( \hat{z} \) 上是为了计算量 \(\int f  \hat{z} d / \int \hat{z}^2 d\)。如果仅波峰的位置随前馈输入显著变化，则可以使用以下高斯假设来求解网络动态：
\[ u_l(t) \approx U_l \exp \left(-\frac{(\hat{z}_l(t))^2}{4a^2}\right), l = 1, 2 \]
\[ r_l(t) \approx R_l \exp \left(-\frac{(\hat{z}_l(t))^2}{2a^2}\right), l = 1, 2 \]

以两个互相连接的网络为例，我们展示了如何通过将网络动态投影到主要运动模式上来简化描述。将上述高斯假设代入网络动态（方程1）并将其投影到运动模式（方程5），我们得到了网络1的波峰位置动态（网络2的结果与此相同，除了指标互换），如下所示：
\[ U_1 \frac{d\hat{z}_1}{dt} = J_{12} R_2 \sqrt{2} (\hat{z}_2 - \hat{z}_1) e^{-\frac{(\hat{z}_2 - \hat{z}_1)^2}{8a^2}} + \alpha_1 (1 - \hat{z}_1) e^{-\frac{(1 - \hat{z}_1)^2}{8a^2}} + 2 \sqrt{a F_l(2)} \frac{1}{\sqrt{4 \sqrt{\frac{2}{3}}^3}} \alpha_1 + I_{\text{Bkg1}}(t) \]

当 \(\frac{(\hat{z}_2 - \hat{z}_1)}{8a^2}\) 和 \(\frac{(1 - \hat{z}_1)}{8a^2}\) 足够小（我们考虑的参数范围内），可以安全地忽略指数项，以上方程连同网络2的方程进一步简化为以下形式：
\[ \frac{d\hat{z}_1}{dt} = g_{12} (\hat{z}_2 - \hat{z}_1) + h_1 (1 - \hat{z}_1) + \beta_{1,1}(t) \]
\[ \frac{d\hat{z}_2}{dt} = g_{21} (\hat{z}_1 - \hat{z}_2) + h_2 (2 - \hat{z}_2) + \beta_{2,2}(t) \]
其中以下系数：
\[ g_{lm} = J_{lm} R_m \sqrt{2U_l}, h_l = \alpha_l U_l, \beta_{l,2} = 4aF_l \sqrt{2(U_l)^2} \left(\frac{2}{3}\right)^{3/2} \alpha_l + I_{\text{Bkg}} \]
分别表示互连的有效强度、输入信号和噪声的值。注意上述方程是非线性的，因为有效强度 \( g_{lm}, h_l \) 和 \( \beta_l \) 都与网络和输入参数非线性相关。

## # Materials and Methods Part-4

We consider the simple case that the two networks have the same parameter values and simultaneously receive identical cue intensities (but noises are independent to each other). This simplifies the notation to J ll ϵ J rc , J lm ϵ J rp ͑l m͒ and the effective parameters to g lm ϵ g rp , h l ϵ h and ␤ l ϵ ␤. By this simplifying notations in Equation 9, we arrive at Equation 33.
In a general decentralized system of N reciprocally connected networks, the dynamics of the network estimations (i.e., the bump positions) can be analogously solved as follows:
dz d t ϭ Mz ˆ؉ H ؉ ⌫ (12)
where z ‫؍ˆ‬ ͕ z ˆl͖, ‫؍‬ ͕ l ͖ and ‫؍‬ { l }, for l ϭ 1,…, N. The system matrix is M ‫؍‬ G ؊ H, where G lm ϭ g lm Ϫ ␦ lm ¥ mЈ g lmЈ . H and ⌫ are diagonal matrices, with H ll ϭ h l and ⌫ ll ϭ ␤ l . Note that if cue i is not present, then we set ␣ i ϭ 0.
The steady state of the mean of z ˆis given by the following:
͗z ˆ͘ ϭ ϪM Ϫ1 H (13)
The covariance of z ˆin the steady state, denoted as Cov(z ˆ), satisfies
MCov( z ˆ) ؉ (MCov( z ˆ)) T ‫؍‬ Ϫ⌫⌫ T(14)
To calculate Cov(z ˆ), we diagonalize the matrix M as MP ‫؍‬ P⌳, where ⌳ and P are the eigenvalues and eigenvectors of M, respectively. Defining y ‫؍‬ P ؊1 z ˆ, we have ⌳Cov(y) ϩ ͓⌳Cov(y)͔ T ϭ ϪP ؊1 ⌫⌫ T P ؊T , so Cov(y) can be solved as ͓Cov(y

我们考虑两个网络具有相同的参数值并同时接收相同强度的线索（但噪声彼此独立）的简单情况。这简化了表示为 J_ll ∈ J_rc, J_lm ∈ J_rp (l，m) 以及有效参数为 g_lm ∈ g_rp, h_l ∈ h 和 β_l ∈ β。通过简化方程9中的表示，我们得到了方程33。
在一个由N个互连网络组成的通用分散式系统中，网络估计的动态（即，波峰位置）可以类似地解决如下：
dz/dt = Mẑ + H + ν (12)
其中 ẑ = {ẑ_l}, l = 1,…, N。系统矩阵 M = G - H，其中 G_lm = g_lm - δ_lm ∑m' g_lm'. H 和 ν 是对角矩阵，H_ll = h_l 和 ν_ll = β_l。注意，如果某个线索 i 不在场，那么我们设置 α_i = 0。
ẑ 的均值的稳态由以下公式给出：
⟨ẑ⟩ = -M^(-1)H (13)
稳态中 ẑ 的协方差，表示为 Cov(ẑ)，满足
MCov(ẑ) + (MCov(ẑ))^T = -νν^T (14)
为了计算 Cov(ẑ)，我们将矩阵 M 对角化为 MP = PΔ，其中 Δ 和 P 分别是 M 的特征值和特征向量。定义 y = P^(-1)ẑ，我们有 ΔCov(y) + (ΔCov(y))^T = -P^(-1)νν^T P^(-T)，因此可以解出 Cov(y)。

## # Materials and Methods Part-5

)͔ ij ϭ Ϫ͓P ؊1 ⌫⌫ T P ؊T ͔ ij /͑⌳ ii ϩ ⌳ jj ͒.
Finally, we obtain the following:
Cov͑z ˆ) ‫؍‬ PCov(y)P T (15)
Given the number of networks and cueing conditions, the detailed expressions for the estimation mean and variance of a network can be solved by using Equations 13 and 15.
Integration performance of two reciprocally coupled networks. It is difficult to solve analytically the integration performance of reciprocally coupled networks for more general parameter settings. We found in simulations that, over a wide range of parameters, our model achieved near Bayesian optimal performance, as shown in Figure 4. To demonstrate the underlying idea, we present below a special case in which Bayesian integration is achieved perfectly.
We consider two coupled networks that have the same parameter values. According to Equations 13 and 15, the mean and the variance of the estimate of network 1 are given by the following:
͗z ˆ1͘ ϭ ͑ g 21 ϩ h 2 ͒h 1 1 ϩ g 12 h 2 2 g 12 h 2 ϩ g 21 h 1 ϩ h 1 h 2 (16) V͑z ˆ1͒ ϭ ͓͑ g 21 ϩ h 2 ͒tr(M͒ ϩ g 21 g 12 ]␤ 1 2 Ϫ g 12 2 ␤ 2 2 2tr(M)͑h 1 h 2 ϩ g 21 h 1 ϩ g 12 h 2 ͒ (17
)
where tr(M) is the trace of M; that is, tr(M) ϭ ¥ iϭ1 2 M ii ϭ Ϫ͑g 12 ϩ g 21 ϩ h 1 ϩ h 2 ͒. To arrive at Equations 44 and 45, two approximations were made for simplification. First, we assumed that coefficients g lm and h l in Equations 9 and 10 are approximately unchanged with respect to stimulus conditions and abbreviate to g lm ϵ g rp and h l ϵ h (␣ l 0), respectively. Moreover, we assumed further that the effective noise strength ␤, which is the ratio of noise variance over bump height and reflects the signal-to-noise ratio of the network, is approximately unchanged across different stimulus conditions. This assumption is supported by the experimental observation that Fano factors of neural responses change insignificantly with stimulus conditions (Gu et al., 2008). With these approximations and symmetric parameter settings, it is straightforward to derive Equations 44 and 45.

# 材料与方法部分-5

ij ϭ Ϫ͓P ؊1 ⌫⌫T P ؊T ͔ ij /͑⌳ ii 与 ⌳ jj ͒.
最后，我们得到以下结果：
Cov͑z ˆ) ‫؍‬ PCov(y)P T (15)
考虑到不同网络和提示条件的数量，可以通过使用方程13和15来解决网络估算均值和方差的详细表达式。
两个互相耦合的网络的集成性能。对于更一般的参数设置，解析地解决互相耦合的网络的集成性能是困难的。我们在模拟中发现，在广泛的参数范围内，我们的模型实现了接近贝叶斯最优性能，如图4所示。为了展示背后的思想，我们在下文中提出了一个完美实现贝叶斯集成的特殊情况。
我们考虑两个具有相同参数值的耦合网络。根据方程13和15，网络1的估计的均值和方差如下所示：
͗z ˆ1͘ ϭ ͑ g 21 ϩ h 2 ͒h 1 1 ϩ g 12 h 2 2 g 12 h 2 ϩ g 21 h 1 ϩ h 1 h 2 (16) 
V͑z ˆ1͒ ϭ ͓͑ g 21 ϩ h 2 ͒tr(M͒ ϩ g 21 g 12 ]␤ 1 2 Ϫ g 12 2 ␤ 2 2 2tr(M)͑h 1 h 2 ϩ g 21 h 1 ϩ g 12 h 2 ͒ (17)
其中 tr(M) 是 M 的迹，即 tr(M) ϭ ¥ iϭ1 2 M ii ϭ Ϫ͑g 12 ϩ g 21 ϩ h 1 ϩ h 2 ͒。为了得出方程44和45，为了简化，我们做了两个近似。首先，我们假设方程9和10中的系数 g lm 和 h l 对于刺激条件来说大致不变，分别简化为 g lm ϵ g rp 和 h l ϵ h (␣ l 0)。此外，我们进一步假设有效噪声强度 ␤（即噪声方差与bump高度之比，反映了网络的信噪比）在不同的刺激条件下大致不变。这个假设得到了实验观察的支持，即神经反应的Fano因子在刺激条件变化时变化不大（Gu等人，2008年）。基于这些近似和对称的参数设置，直接导出了方程44和45。

## # Materials and Methods Part-6

Integration performance of N reciprocally coupled networks. In a decentralized system composed of N all-to-all reciprocally connected networks, the estimation results of each network can also be calculated from Equations 13 and 15. When the N networks have same parameters and in response to N q Ͻ N cues (suppose they are cue 1 to cue N q for simplic-ity), the estimation mean and variance of network l with direct cue input l ͑l ϭ 1.…, N q ͒ are as follows:
z ˆl ϭ N q g Ϫ1 l ϩ Nh Ϫ1 i ϭ1 Nq i N q ͑Nh Ϫ1 ϩ g Ϫ1 ͒ (18) V͑ z ˆl͒ ϭ ␤ 2 2 ͑Nh Ϫ1 ϩ N q g Ϫ1 ͒h Ϫ1 N q ͑Nh Ϫ1 ϩ g Ϫ1 ͒(19)
Note that if only cue l is presented, it is V͑z ˆl͒ ϭ ␤ 2 h Ϫ1 /2 and the dependence on the effective reciprocal strength g vanishes, although the reciprocal connections are still there. This is because, without receiving cue inputs, other networks are unable to provide information about cue l.
The estimates of the networks without direct cue input (l ϭ N q ϩ 1, … N) are as follows:
z ˆl ϭ 1 N q iϭ1 N q i (20) V͑ z ˆl͒ ϭ ␤ 2 2 ͑N q ϩ 1͒ g Ϫ1 ϩ Nh Ϫ1 NN q (21)
A Bayesian observer of multisensory integration. To understand the behavior of the decentralized system, the following Bayesian observer for multisensory integration is considered in this study (Bresciani et al., 2006;Ernst, 2006;Roach et al., 2006;Sato et al., 2007). Suppose that two sensory cues c 1 and c 2 are generated by two stimuli s 1 and s 2 , respectively. Under the assumption that the noise processes of two cues given two stimuli are conditionally independent, the posterior distribution p͑s 1 , s 2 ͉ c 1 , c 2 ͒ satisfies the following:
p͑s 1 , s 2 ͉ c 1 , c 2 ͒ ϰ p͑c 1 ͉ s 1 ͒ p͑c 2 ͉ s 2 ͒ p͑s 1 , s 2 ͒ (22
)

# 材料和方法 第6部分：

N个相互耦合网络的信息整合性能。在由N个全连接的相互耦合网络构成的去中心化系统中，每个网络的估计结果也可以根据方程13和方程15来计算。当N个网络具有相同的参数，并且对N个小于N的提示（假设它们是从提示1到提示Nq的简单性提示）做出响应时，具有直接提示输入l（l=1,...,Nq）的网络l的估计均值和方差如下：
z ˆl = Nq g^(-1)l + Nh^(-1)i=1 Nqi Nq (Nh^(-1) + g^(-1)) (18) 
V(z ˆl) = β^2 2 (Nh^(-1) + Nq g^(-1))h^(-1) Nq (Nh^(-1) + g^(-1)) (19)
注意，如果只提供提示l，它的V(z ˆl) = β^2 h^(-1) /2 并且依赖于有效的相互强度g消失，尽管相互连接仍然存在。这是因为，如果不接收提示输入，其他网络无法提供有关提示l的信息。

没有直接提示输入的网络的估计（l = Nq + 1, … N）如下：
z ˆl = 1 / Nq i=1 Nq i (20)
V(z ˆl) = β^2 2 (Nq + 1) g^(-1) + Nh^(-1) / NNq (21)

多感觉整合的贝叶斯观察者。为了理解去中心化系统的行为，本研究考虑了以下用于多感觉整合的贝叶斯观察者模型（Bresciani 等人，2006；Ernst，2006；Roach 等人，2006；Sato 等人，2007）。假设由两个刺激s1和s2分别产生两个感觉提示c1和c2。在假设给定两个刺激的两个提示的噪声过程条件独立的前提下，后验分布p(s1, s2 | c1, c2)满足以下关系：
p(s1, s2 | c1, c2) ∝ p(c1 | s1) p(c2 | s2) p(s1, s2) (22)

## # Materials and Methods Part-7

where p͑c i ͉ s i ͒ ͑i ϭ 1, or 2) is the likelihood function and is modeled as a Gaussian distribution with mean i and variance i 2 . p͑s 1 , s 2 ͒ is called the combination prior and specifies the probability of a particular combination of stimuli s 1 and s 2 . Following previous studies, we choose a Gaussian function of the discrepancy between two stimuli (Shams et al., 2005;Bresciani et al., 2006;Ernst, 2006;Roach et al., 2006) as follows:
p͑s 1 , s 2 ͒ ϭ 1 ͱ2 cp L s exp ͫ Ϫ ͑s 1 Ϫ s 2 ͒ 2 2 cp 2 ͬ (23)
where L s is the width of the feature space; that is, L s ϭ 2 in case of estimating heading direction, and the parameter cp measures the similarity between two stimuli. Note that the prior of each cue, p͑s i ͒ ͑i ϭ 1 or 2) has a uniform distribution across the feature space.
In the case of integrating N cues, we consider that the combination prior of the underlying stimuli is the product of the Gaussian function in the form of Equation 23 for all stimulus pairs, that is:
p͑s 1 , s 2 , …, s N ͒ ϭ 1 Z i j p ˜͑s i , s j ͒ ϭ 1 Z i j exp ͫ Ϫ ͑s i Ϫ s j ͒ 2 2͑ ͱN/2 cp ͒ 2ͬ , i, j ʦ ͓1, N͔ (24)
where z is a normalization factor. p ˜͑s i , s j ͒ has the same form as p͑s i , s j ͒ except its variance is N cp 2 /2. This ensures that the combination prior for s 1 and s 2 in the case of N ͑N Ͼ 2͒ cues, calculated by p N ͑s 1 , s 2 ͒ ϭ ͐p͑s 1 , s 2 , …, s N ͒ds 3 ds 4 … ds N equals Equation 23 in the case of N ϭ 2. Nevertheless, the marginal distribution of each stimulus p͑s i ͒ is still a uniform distribution.
Optimal integration in a decentralized system with N modules and N cues. Although we show in the Results section that integration is optimal for the special case of a decentralized system of two modules and two cues, the integration of the decentralized system with N modules and N cues is generally optimal in the following sense.
Let us first consider the integration of three cues in a Bayesian observer with above joint combination prior (Eq. 24). When all three cues are simultaneously presented, the marginal posterior of s 1 can be derived as follows:

在材料和方法第七部分，内容如下：

其中 p(c_i | s_i) （i = 1 或 2）是似然函数，采用均值为 i，方差为 i^2 的高斯分布进行建模。p(s_1, s_2) 称为组合先验，指定了特定刺激组合 s_1 和 s_2 的概率。根据以往的研究，我们选择两种刺激差异的高斯函数（Shams等人，2005年；Bresciani等人，2006年；Ernst，2006年；Roach等人，2006年）如下：
p(s_1, s_2) = (1 / sqrt(2πcpL_s)) * exp(−(s_1 - s_2)^2 / (2cp^2)) (公式 23)
其中 L_s 是特征空间的宽度；也就是说，在估计方向时，L_s = 2，参数 cp 衡量两种刺激之间的相似度。注意，每个线索的先验 p(s_i) （i = 1 或 2）在特征空间内具有均匀分布。

在整合 N 个线索的情况下，我们认为基础刺激的组合先验是所有刺激对的高斯函数乘积，形式如公式 23：
p(s_1, s_2, …, s_N) = (1 / Zi j) * exp(−(s_i - s_j)^2 / (2 * (sqrt(N/2) * cp)^2))，i, j 属于 [1, N] (公式 24)
其中 z 是归一化因子。p_tilde(s_i, s_j) 的形式与 p(s_i, s_j) 相同，除了它的方差为 N * cp^2 / 2。这确保了在 N (N > 2) 个线索的情况下，通过积分 p_N(s_1, s_2) = ∫ p(s_1, s_2, …, s_N) d s_3 d s_4 … d s_N 得到的 s_1 和 s_2 的组合先验等于 N = 2 时的公式 23。然而，每个刺激的边缘分布 p(s_i) 仍然是均匀分布。

在 N 个模块和 N 个线索的去中心化系统中的最优整合。虽然我们在结果部分表明，在两个模块和两个线索的去中心化系统中整合是最优的，但在 N 个模块和 N 个线索的去中心化系统中的整合通常从以下意义上说是最优的。

首先考虑在具有上述联合组合先验（公式 24）的贝叶斯观察者中整合三个线索。当三个线索同时呈现时，可以推导出 s_1 的边缘后验如下：

## # Materials and Methods Part-8

p͑s 1 ͉ c 1 , c 2 , c 3 ͒ ϭ ͵͵ p͑s 1 , s 2 , s 3 ͉ c 1 , c 2 , c 3 ͒ds 2 ds 3 ϰp͑c 1 ͉ s 1 ͒ ͵͵ p͑c 2 ͉ s 2 ͒ p͑c 3 ͉ s 3 ͒ p͑s 1 , s 2 , s 3 ͒ds 2 ds 3 (25)
Note that the last 2-fold integral in the above equation is proportional to p͑s 1 ͉ c 2 , c 3 ͒. However, p͑s 1 ͉ c 2 , c 3 ͒ cannot be further factorized as p͑s 1 ͉ c 2 ͒ ϫ p͑s 1 ͉ c 3 ͒. Therefore, we have the following:
p͑s 1 ͉ c 1 , c 2 , c 3 ͒ϰp͑s 1 ͉ c 1 ͒ p͑s 1 ͉ c 2 , c 3 ͒ (26)
In a general integration of N cues, we found that the posterior of s 1 can be factorized as a pairwise product of the posterior under cue l and that of all other conditions excluding cue l (see also Eq. 50) as follows:
p͑s ˆl ͉ c l , ഫ i l c i ͒ϰp͑s ˆl ͉ c l ͒ p͑s ˆl ͉ ഫ i l c i ͒(27)
The mean and variance of the marginal posterior of the Bayesian observer can be found from Equations 18 -21 by replacing h Ϫ1 by 2 and g rp Ϫ1 by N cp 2 /2 and deleting coefficients ␤ 2 /2. Therefore, in a decentralized sys- tem, network l is an optimal estimator for stimulus l by integrating its feedforward inputs from cue l and reciprocal inputs from other networks.
Evaluating the deviations of the networks' performance from the Bayesian observer. For evaluating the optimality of the integration in the simulation, we examined the deviations of the actual mean and variance of the network estimations from the predicted mean and variance of the Bayesian observer, respectively. For the robustness against parameter variations (see Fig. 4F ), we followed Fetsch et al. (2009) and used the bias of the cue weight to evaluate the bias of the mean. For example, in network 1, the bias of cue 1's weight is as follows:
⌬w 1 net1 ϭ w 1 net1 Ϫ w ˆ1 net1 (28

# 材料和方法 第8节

请注意，上述方程式中最后的二重积分与 \( p(s_1 | c_2, c_3) \) 成正比。但是，\( p(s_1 | c_2, c_3) \) 无法进一步分解为 \( p(s_1 | c_2) \times p(s_1 | c_3) \)。因此，我们有以下关系：
\[ p(s_1 | c_1, c_2, c_3) \propto p(s_1 | c_1) p(s_1 | c_2, c_3) \] (26)
在一般的 N 个线索的整合中，我们发现 s_1 的后验可以被分解为线索 l 的后验与排除线索 l 的所有其他条件的后验的逐对产品 (也见方程式 50) 如下：
\[ p(\hat{s}_l | c_l, \overline{il} c_i) \propto p(\hat{s}_l | c_l) p(\hat{s}_l | \overline{il} c_i) \] (27)
贝叶斯观察者的边际后验的均值和方差可以根据方程式 18 至 21 计算得到，通过用 2 替换 \( h^{-1} \) 和用 \( N_{cp}^2 / 2 \) 替换 \( g_{rp}^{-1} \)，并且删去系数 \( \beta_2 / 2 \)。因此，在一个分散式系统中，网络 l 是通过整合来自线索 l 的前馈输入和来自其他网络的互馈输入，为刺激 l 提供最优估计器。
评估网络性能与贝叶斯观察者的偏差。为了评估在模拟中整合的最优性，我们检查了网络估计的实际均值和方差与贝叶斯观察者预测的均值和方差的偏差。为了评估对参数变化的稳健性（见图 4F），我们跟随 Fetsch 等人（2009）使用线索权重的偏差来评估均值的偏差。例如，在网络 1 中，线索 1 的权重偏差如下：
\[ \Delta w_{1, \text{net1}} = w_{1, \text{net1}} - \hat{w}_{1, \text{net1}} \] (28)

## # Materials and Methods Part-9

)
where
w 1 net 1 ϭ ͑͗z 1 ͉ c 1 , c 2 ͘ Ϫ ͗z 1 ͉ c 2 ͒͘/͑͗z 1 ͉ c 1 ͘ Ϫ ͗z 1 ͉ c 2 ͒͘ is the actual weight of cue 1 in network 1 and w ˆ1 net 1 V ϭ V ͑z 1 ͉ c 2 ͒/͓V͑z 1 ͉ c 1 ͒ ϩ V͑z 1 ͉ c 2 ͔͒
is the predicted value. In each network, the bias of cue 2's weight has the opposite sign of the bias of cue 1's weight; that is, ⌬w
1 net 1 ϭ Ϫ⌬w 2 net 1
, because w 1 ϩ w 2 ϭ 1 in the integration of two cues. Therefore, for the analysis of Figure 4F, we only calculated the bias of the weight of the direct cue ⌬w dirϪcue in each network. The direct cue of network l is cue l, meaning that the network receives the input of cue l directly from feedforward connections instead of via reciprocal inputs from other networks. A positive ⌬w dirϪcue indicates that the network's estimation is biased toward its direct cue, whereas a negative value denotes a bias to its indirect cue. The deviation of the variance was measured by the deviation between the actual variance and the predicted variance (from Eq. 46), namely:
⌬Var ϭ V actual V predict Ϫ 1(29)

在材料和方法的第9部分，内容如下：

其中，w_1 net_1 = (⟨z_1 | c_1, c_2⟩ - ⟨z_1 | c_2⟩) / (⟨z_1 | c_1⟩ - ⟨z_1 | c_2⟩) 是网络1中线索1的实际权重；ŵ_1 net_1 V = V(z_1 | c_2) / [V(z_1 | c_1) + V(z_1 | c_2)] 是预测的值。在每个网络中，线索2的权重偏差与线索1的权重偏差符号相反，即 Δw_1 net_1 = -Δw_2 net_1，因为在两个线索的融合中 w_1 + w_2 = 1。因此，对于图4F的分析，我们只计算了每个网络中直接线索Δw_dir-cue的权重偏差。网络l的直接线索是线索l，这意味着该网络直接通过前馈连接从线索l接收输入，而不是通过其他网络的相互输入。正的Δw_dir-cue表明网络的估计偏向其直接线索，负值则表示偏向其间接线索。方差的偏差通过实际方差与预测方差（来自方程46）之间的偏差来衡量，即：
ΔVar = V_actual / V_predict - 1 (29)

## # Materials and Methods Part-10

A positive ⌬Var indicates that the accuracy is worse than the predicted value; a negative ⌬Var denotes improvement over the prediction.
Network simulations and parameters. In the simulations, two or more CANN networks were coupled together. Each CANN consisted of 180 neurons, which were uniformly distributed in the feature space ͑Ϫ180Њ, 180Њ͔. The parameters of the networks were chosen symmetrically to each other; that is, all of the structural and input parameters of the networks had the same value. However, the networks received independent noise. The synaptic time constant was rescaled to 1 as a dimen-sionless number and the time step size was 0.01. All connections had the same width: a lm ϭ 40°.
In the following, we list the parameter values used if not mentioned otherwise. The recurrent connection strength J 11 ϭ J 22 ϵ J rc was set in the range of ͓0.4, 0.6͔J c , where J c ϭ 2 ͱ2͑2͒ 1/4 ͱka ϭ 0.896 is the minimal strength for holding persistent activity. Therefore, no persistent activity occurred in a network after withdrawing the stimulus. The strength of the reciprocal connections J 12 ϭ J 21 ϵ J rp was in the range of ͓0.2, 0.9͔J rc ; that is, always smaller than the recurrent connections. The input strength ␣ was scaled relative to U m 0 ϭ J c /4ak ͱ ϭ 6.316 and distributed in the region of ͓0.4, 1.5͔U m 0 , where U m 0 is the synaptic bump height that a network can hold without external input when J rc ϭ J c . The interval of the input strength was wide enough to cover the superadditive and nearly saturated regions. The strength of the background input was ͗I Bkg ͘ ϭ 1 and all Fano factors of the cues and background inputs were set to 0.5. This resulted in a Fano factor of single neuron responses on the order of 1. In the simulation, the activity bump position was estimated by using a population vector; that is, calculating the center-of-mass of the activity bump. Specific parameter settings are mentioned in the figure captions.
Discrimination performance of single neurons. To reproduce experimental findings (Gu et al., 2008), we designed a computational task to discriminate whether a stimulus value is smaller or larger than 0°based on single neuron activities. Similar to the experiment, we chose an example neuron from network 1 that preferred a heading direction of Ϫ40°. The directions of two congruent cues were simultaneously changed from Ϫ30°to 30°. In each direction, three stimulus conditions (see Fig. 3A) were applied for 50 trials and the firing rate distributions were obtained (see Fig. 5 A,B). We used receiver operating characteristic (ROC) analysis (Britten et al., 1992) to compute the ability of the example neuron to discriminate between two opposite heading directions; that is, Ϫ2°versus 2°. The ROC value counts the proportion of instances in which the stimulus was correctly judged to be larger than 0°. Neurometric functions (see Fig. 5C) were constructed from these ROC values and were fitted with cumulative Gaussian functions to determine neuronal discrimination thresholds (the SD of the cumulative Gaussian function). The predicted threshold in the combined cue condition can be calculated using Bayesian inference as follows:
prediction ϭ 1 2 / ͱ 1 2 ϩ 2 2 (30)

# 材料与方法 第10章节

正的⌬Var指出准确性不如预测值；负的⌬Var表示优于预测。

网络仿真和参数。在仿真中，两个或更多的CANN网络被联结在一起。每个CANN包含180个神经元，这些神经元在特征空间[-180°, 180°]内均匀分布。网络的参数被对称选择；即所有网络的结构和输入参数都具有相同的值。然而，网络接收独立的噪声。突触时间常数被重置为1作为无单位数，时间步长为0.01。所有连接的宽度相同：a lm = 40°。

以下，我们列出未另行提及时使用的参数值。循环连接强度J11 = J22 = Jrc设置在[0.4, 0.6]Jc的范围内，其中Jc = 2 √2^(1/4) × √ka = 0.896是维持持续活动的最小强度。因此，在撤除刺激后网络中不发生持续活动。双向连接的强度J12 = J21 = Jrp位于[0.2, 0.9]Jrc的范围内；即总是小于循环连接。输入强度α相对于Um0 = Jc / 4ak√ = 6.316进行缩放，并分布在[0.4, 1.5]Um0的区域内，其中Um0是网络在Jrc = Jc时无外部输入能够维持的突触突起高度。输入强度的范围足够广泛以覆盖超加性和近饱和区域。背景输入的强度为⟨IBkg⟩ = 1，所有提示和背景输入的Fano因子设置为0.5。这导致单个神经元响应的Fano因子大约为1。在仿真中，通过使用群体向量估算活动突起的位置；即计算活动突起的质心。具体参数设置在图例中提及。

单个神经元的辨别性能。为了复制实验发现（Gu等，2008），我们设计了一个计算任务来判断基于单个神经元活动的刺激值是大于还是小于0°。和实验类似，我们选择了网络1中一个偏好航向方向为-40°的示例神经元。两个一致的提示的方向同时从-30°变为30°。在每个方向上，应用三种刺激条件（见图3A），进行了50次试验，并获取了发射率分布（见图5A,B）。我们使用接收器操作特性（ROC）分析（Britten等，1992）来计算示例神经元区分两个相反航向方向的能力；即-2°对2°。ROC值计算判断刺激正确被认为大于0°的情况比例。神经测量函数（见图5C）由这些ROC值构建，并用累积高斯函数拟合以确定神经元辨别阈值（累积高斯函数的标准差）。组合提示条件下的预测阈值可以使用贝叶斯推断如下计算：
预测 = 1/2 / √(1/2^2 + 2^2 (30))

## # Materials and Methods Part-11

where 1 and 2 are the neuronal discrimination thresholds under cue 1 and cue 2, respectively.
Virtual experiments reproducing empirical principles of multisensory integration. We further performed simulations to determine whether the decentralized system can reproduce some characteristic neural response properties observed during multisensory integration, namely the inverse effectiveness, the spatial principle, and the reliability-dependent combination (Morgan et al., 2008;Fetsch et al., 2013). The neuron with feature value 0°in network 1 was used as an example neuron. Its mean firing rates under different tests are plotted in Figure 6. The virtual experiments simulated the protocols of the biological experiments. In the experiments examining the inverse effectiveness and the spatial principle, cue 1 and cue 2 had identical intensity and noise strength and the intensity increased from 0 to 1.5 U m 0 , which produced a near saturated neuronal response. In the test of the inverse effectiveness, both cues were located at 0°, whereas in the spatial principle test, cue 1 was fixed at 0°, but cue 2 was varied from 0°to 2a, where a is the turning width of the neuron. To test the reliability-dependent combination (Morgan et al., 2008), the responses of the example neuron were measured under eight different mean values for each cue (ranging from Ϫ180°to 180°with a step size of 45°), with 64 combinations in total. The intensity of cue 1, ␣ 1, was de- creased from 0.46␣ 2 to 0.12␣ 2, which in turn decreased the reliability of cue 1 whereas the intensity of cue 2, ␣ 2 , was fixed. For each combination of two cues, the bimodal tuning curve R bi ͑ 1 , 2 ͒ was fitted as a linear model of two unimodal tuning curves as follows:
R bi ͑ 1 , 2 ͒ ϭ w 1 R 1 ͑ 1 ͒ ϩ w 2 R 2 ͑ 2 ͒ ϩ C (31)
where R bi ͑ 1 , 2 ͒ denotes the firing rate when the two cues are located at 1 and 2, respectively. R 1 ͑ 1 ͒ and R 2 ͑ 2 ͒ are the unimodal tuning curves when only cue 1 or only cue 2 is presented, respectively. The neuronal weights w 1 , w 2 , and offset C were determined by minimizing the meansquared error between the predicted bimodal responses and the measured actual neuronal responses.

## 材料和方法 第11章节

这里，1和2分别是在线索1和线索2下的神经辨别阈值。

进行虚拟实验以再现多感官整合的经验性原则。我们进一步执行了模拟，以确定去中心化系统是否能够复现在多感官整合期间观察到的某些特征性神经反应属性，即逆效能、空间原则和依赖可靠性的组合（Morgan et al., 2008；Fetsch et al., 2013）。网络1中特征值为0°的神经元被用作示例神经元。其在不同测试下的平均发射率绘制在图6中。虚拟实验模拟了生物实验的协议。在检查逆效能和空间原则的实验中，线索1和线索2具有相同的强度和噪声强度，强度从0增加到1.5 U m 0，这产生了近乎饱和的神经响应。在逆效能测试中，两个线索均位于0°；而在空间原则测试中，线索1固定在0°，但线索2从0°变化到2a，其中a是神经元的转动宽度。为了测试依赖可靠性的组合（Morgan et al., 2008），测量了示例神经元在每个线索的八个不同平均值下的响应（范围从-180°到180°，步长为45°），总共有64种组合。线索1的强度，α1，从0.46α2减少到0.12α2，从而减少了线索1的可靠性，而线索2的强度，α2，则固定不变。对于两个线索的每种组合，双模调谐曲线R_bi（1, 2）被拟合为两个单模调谐曲线的线性模型如下：
R_bi（1, 2） = w1 R1（1） + w2 R2（2） + C（31）
其中R_bi（1, 2）表示两个线索位于1和2时的发射率。R1（1）和R2（2）是只呈现线索1或只呈现线索2时的单模调谐曲线。通过最小化预测的双模响应与实际测量的神经反应之间的均方误差，确定了神经元权重w1、w2和偏移C。

## # Decentralized architecture for information integration

In engineering applications, three principled architectures have been proposed to integrate observations (cues) from different stimuli (Durrant-Whyte and Henderson, 2008): the centralized, the distributed, and the decentralized architectures (Fig. 1). In the centralized architecture (Fig. 1A), the raw observations from sensors are sent directly into a central fusion center, which estimates the underlying state from the raw observations of all of the modalities. Although simple in structure, the centralized architecture suffers from the computational burden of the fusion center, the high communication load (because all raw observations of all modalities must be delivered into a single center), and the susceptibility of being paralyzed once the fusion center fails. Some computational tasks can be distributed to modular local processors (Fig. 1B). The processor modules compute local estimates in parallel and then only send the results to the central processor. However, this distributed architecture also suffers from the robustness problem because a central fusion center still exists. In contrast, in a decentralized architecture (Fig. 1C), all of the processors communicate with the others directly so that a central fusion center becomes obsolete. Each processor first makes a local estimate according to its own observation and then corrects it by integrating the local estimates from the other processors to obtain a global estimate.
Would it be possible for cortical circuitry to successfully adopt a decentralized architecture to integrate multisensory information? Anatomically, there is some supportive evidence. For instance, MSTd and VIP are two brain areas that are deeply involved in the integration of visual and vestibular information for inferring the heading direction and do so optimally (Gu et al., 2008;Chen et al., 2013). There are abundant reciprocal connections between MSTd and VIP (Boussaoud et al., 1990;Baizer et al., 1991) that cause the activities of the two areas to be correlated with each other (Vincent et al., 2007). In addition, MSTd and VIP receive feedforward visual and vestibular inputs from MT cortex (Boussaoud et al., 1990) and PIVC (Lewis and Van Essen, 2000) (Fig. 1D), where MT and PIVC are unisensory regions that belong to the visual and vestibular systems, respectively. Together, MSTd and VIP appear to be good candidates for local processors within a decentralized information integration architecture (cf. Fig. 1C,D).

在工程应用中，已提出三种原则性架构以集成来自不同刺激的观测（线索）（Durrant-Whyte 和 Henderson，2008）：集中式、分布式和去中心化架构（图1）。在集中式架构中（图1A），传感器的原始观测直接发送到一个中心融合中心，该中心根据所有模式的原始观测来估计底层状态。尽管结构简单，但集中式架构受到融合中心计算负担、高通信负载（因为所有模式的所有原始观测必须传输到单个中心）的影响，以及一旦融合中心失效就会瘫痪的风险。一些计算任务可以分配给模块化的本地处理器（图1B）。处理器模块并行计算本地估计，然后只将结果发送到中心处理器。然而，这种分布式架构也存在鲁棒性问题，因为仍然存在一个中央融合中心。相比之下，在去中心化架构中（图1C），所有处理器直接相互通信，从而使中心融合中心变得多余。每个处理器首先根据自己的观察做出本地估计，然后通过整合其他处理器的本地估计来纠正它，以获得全局估计。

皮层回路能否成功采用去中心化架构来整合多感觉信息？从解剖学上看，有一些支持性的证据。例如，MSTd和VIP是两个在整合视觉和前庭信息以推断前进方向方面深度涉及并且做得最优的大脑区域（Gu等，2008；Chen等，2013）。MSTd和VIP之间有丰富的相互连接（Boussaoud等，1990；Baizer等，1991），这导致这两个区域的活动彼此相关（Vincent等，2007）。此外，MSTd和VIP从MT皮层（Boussaoud等，1990）和PIVC（Lewis和Van Essen，2000）接收前馈视觉和前庭输入（图1D），其中MT和PIVC是属于视觉和前庭系统的单感区域。综合来看，MSTd和VIP似乎是去中心化信息整合架构中的良好的本地处理器候选者（参见图1C,D）。

## # Biologically plausible decentralized network model for information integration Part-1

What realistic neural network model could be used to implement a local processor that allows to connect different local processors with each other as required by a decentralized architecture? Although different neural network models might be applicable in principle, we will show in the following that reciprocally interconnected CANN modules behave naturally like a decentralized information integration system that shows near-optimal cue integration over a wide parameter range in a biologically realistic manner. We first describe our model for the simplest case of two symmetrically connected processors that receive feedforward inputs (cues) from their associated stimuli (Fig. 2A) and then generalize it to multiple cues.
CANNs are widely used biologically realistic network models to implement cortical computations for continuous stimuli (Dayan and Abbott, 2001;Pouget et al., 2003), including estimating heading directions from noisy inputs (Zhang, 1996). In a typical CANN (full dynamics can be seen in Eq. 1-4), every neuron has a tuning function with respect to the same stimulus feature (Eq. 7); for example, the heading direction, but each neuron is tuned to a gradually different feature value and all neurons cover the whole feature space (Fig. 2B). The firing rate of CANNs is a nonlinear function of the input and thus neuron activations saturate in a realistic manner (Eq. 2; Fig. 2D). Because recurrent connections are translation-invariant in the space of neuronal preferred feature values (Fig. 2C), the population activity in a Decentralized neural network model for information integration. A, Decentralized information integration system consisting of two reciprocally connected networks, each receiving an independent cue. B, Detailed network structure of the decentralized system in A. Each network module is modeled as a CANN. Small circles represent neurons with preferred feature indicated by the arrow inside. An inhibitory neuron pool (the gray circle in the center) sums all activities of excitatory neurons and generates divisive normalization. The blue arrows indicate translation-invariant excitatory connections, with strength represented by color; red lines are inhibitory connections. Each network module receives an independent cue as feedforward input. C, Recurrent and reciprocal connections in the system are translation-invariant; that is, the connection strength between two neurons only depends on their distance in feature space. D, Activation function of network neurons. The saturation for large synaptic input stems from the divisive normalization by the inhibitory neuron pool in each network. E, Population activity is a family of bell-shaped bumps (dashed lines), the position of which is determined by the stimulus (solid lines). F, Peak firing rate (bump height) encodes the reliability of network estimation.
CANN evolves into one of many smooth bell-shaped bumps (an attractor state, solid line in Fig. 2E). Moreover, the activity bump state will be stabilized at a position (in feature space) that has maximal overlap with the input (Fig. 3C), achieving a templatematching operation that essentially infers the underlying stimulus value near a maximal likelihood estimator (Dene `ve et al., 1999;Wu et al., 2002).

# 标题
生物合理的去中心化网络模型用于信息集成 第一部分

# 正文

哪种现实的神经网络模型可以用来实现一个本地处理器，使其能够按需要将不同的本地处理器相互连接，从而满足去中心化架构的要求？尽管原则上可能适用不同的神经网络模型，我们将在下面展示，相互连接的CANN模块自然而然地表现为一个去中心化的信息集成系统，在生物学上合理的广泛参数范围内展示出接近最优的线索集成。我们首先描述我们的模型在最简单的两个对称连接处理器的情况下，这些处理器接收来自它们相关刺激的前馈输入（Fig. 2A），然后将其推广到多个线索。

CANN被广泛用于实现对连续刺激的皮质计算的生物合理网络模型（Dayan和Abbott, 2001;Pouget等人, 2003），包括估计来自噪声输入的航向方向（Zhang, 1996）。在一个典型的CANN（完整动态见方程1-4）中，每个神经元都对同一刺激特征有一个调谐函数（方程7）;例如，航向方向，但每个神经元调谐到逐渐不同的特征值，并且所有神经元覆盖整个特征空间（Fig. 2B）。CANN的火率是输入的非线性函数，因此神经元激活在现实中会饱和（方程2; Fig. 2D）。由于递归连接在神经元优选特征值空间中是平移不变的（Fig. 2C），去中心化神经网络模型中的群体活动。A，在两个相互连接网络中组成去中心化信息集成系统，每个网络接收一个独立的线索。B，A中去中心化系统的详细网络结构。每个网络模块被建模为一个CANN。小圆圈代表神经元，由箭头内的特征指示。中心的灰色圆圈是抑制性神经元池，总结所有兴奋性神经元的活动并产生除法标准化。蓝色箭头表示平移不变的兴奋性连接，强度通过颜色表示；红线是抑制性连接。每个网络模块接受一个独立的线索作为前馈输入。C，系统中的递归和相互连接是平移不变的；也就是说，两个神经元之间的连接强度仅依赖于它们在特征空间中的距离。D，网络神经元的激活函数。大的突触输入产生的饱和源于每个网络中抑制性神经元池的除法标准化。E，群体活动是一系列钟形凹陷（虚线），其位置由刺激决定（实线）。F，峰值火率（凸起高度）编码网络估计的可靠性。
CANN演变成许多平滑的钟形凸起（吸引状态，Fig. 2E中的实线）。此外，活动凸起状态将在特征空间中的位置稳定下来，该位置与输入重叠最大，实现了一种基本上推断出潜在刺激值接近最大似然估计的模板匹配操作（Deneève等人，1999;Wu等人，2002）。

## # Biologically plausible decentralized network model for information integration Part-2

Because the position of the population activity bump can thus be interpreted as the estimate of the CANN given noisy sensory information, for example, the current guess that the neural system has about the heading direction, a CANN is an ideal imple-mentation of a local processor in the decentralized architecture. Therefore, in our model, each local processor is modeled by a CANN that receives direct cue (feedforward) input from an unisensory brain area (Eq. 4), such as MSTd (VIP) receives feedforward inputs about visual (vestibular) information from MT (PIVC) (compare to the scheme in Fig. 2B). The feedforward inputs are localized bumps corrupted by (multiplicative) noise, so that the height of input bump ␣ encodes the reliability of external stimulus (Eq. 4). The current estimate of a local network about the heading direction, that is, the bump position, is referred to as z ˆ. Note that, in response to a localized noisy bump Note that the variance of the network estimate when presenting two cues decreases compared with that when presenting single cues. Also note that the estimate based on the direct cue has less variance than that based on the indirect cue alone. F, Histograms and Gaussian fits of network 1's estimates under three stimulus conditions represent the posterior of the underlying state. Parameters: J rc ϭ 0.5J c , J rp ϭ 0.5J rc , and ␣ ϭ 0.5U m 0 .
input, the height of network's response increases superlinearly (due to divisive normalization) with the reliability of network's estimation (Fig. 2F ) (Dene `ve et al., 2001;Dene `ve and Pouget, 2004;Ma et al., 2006).
To achieve information exchange between local processors, we assume that CANN modules are interconnected. We show below that, if reciprocal connections between individual CANN modules are defined in a translation-invariant manner similar to the recurrent connections (Fig. 2C), the model system naturally integrates information from two cues and thus implements a decentralized information integration system. Figure 3 illustrates the dynamics of information integration in a decentralized system. To simulate a typical cue integration experiment, we first applied two single cues individually and then applied both of them simultaneously (Fig. 3A). Figure 3B shows the population activities in response to two congruent cues both centered at 0°. When two cues were simultaneously presented, the networks' responses increased compared with single-cue conditions and the variance of the networks' estimates (bump positions, Fig. 3C) in turn decreased (Fig. 3 D,E), indicating that each network successfully integrated information from two sources.
To understand the network dynamics theoretically, we first looked at the dynamics of the estimation within an individual processor (CANN module) without connection to other processors. By simplifying the full network dynamics of a single processor (by ignoring distortions of the activity bump across cue conditions), we found that the current local estimate z ˆ(the bump position) can be written as follows (see Eq. 5-8 in Materials and Methods):

因为种群活动峰的位置可以被解释为给定嘈杂感觉信息下连续吸引型神经网络（CANN）的估计，例如神经系统对于航向方向的当前猜测，CANN是分布式架构中理想的本地处理器实现。因此，在我们的模型中，每个本地处理器都由一个CANN模拟，该CANN接收来自单感觉脑区的直接线索（前馈）输入（公式4），例如MSTd （VIP）从MT（PIVC）接收关于视觉（前庭）信息的前馈输入（参见图2B中的方案）。前馈输入是被（乘性）噪声污染的局部峰值，因此输入峰值的高度α编码外部刺激的可靠性（公式4）。本地网络关于航向方向的当前估计，即峰值位置，称为z^。注意，在响应一个局部噪声峰值的输入时，由于分割规范化，网络响应的高度与网络估计的可靠性超线性增长（图2F）（Dene`ve等人，2001;Dene`ve 和 Pouget，2004;Ma等人，2006）。
为了实现本地处理器之间的信息交换，我们假设CANN模块是相互连接的。我们下面展示，如果各个CANN模块之间的相互连接以与复发连接类似的平移不变方式定义（图2C），则模型系统自然地整合了来自两个线索的信息，从而实现了一个分散的信息整合系统。图3展示了分散系统中信息整合的动态。为了模拟典型的线索整合实验，我们首先分别应用了两个单一线索，然后同时应用了两者（图3A）。图3B显示了两个一致线索同时呈现时的种群活动，两者都集中在0°。当两个线索同时呈现时，与单一线索条件相比，网络的响应增强，网络估计的方差（峰值位置，图3C）也相应减少（图3D,E），表明每个网络成功地从两个来源整合了信息。
为了理论上理解网络动态，我们首先研究了在不连接其他处理器的情况下，单个处理器（CANN模块）内估计的动态。通过简化单个处理器的完整网络动态（忽略跨线索条件的活动峰的失真），我们发现当前的本地估计z^（峰值位置）可以如下表示（见材料和方法中的公式5-8）：

## # Biologically plausible decentralized network model for information integration Part-3

dz ˆ͑t͒ dt ϭ ͑h ϩ ␤͑t͒͒ Ϫ hz ˆ͑t͒ (32
)
where h ϩ ␤͑t͒ represents the input signal centered at , with the effective strength h corrupted with independent Gaussian noise ͑t͒ of effective strength ␤. Note that the effective strengths are nonlinearly dependent on network and input parameters (see Eq. 11). From the dynamics in Equation 32, one notes that, if the current bump position corresponds to the input cue value , it will be only driven by noise (of zero mean) and thus on average deliver the correct estimate. If the processor's current estimate is inaccurate, it will update its estimate according to the deviation between the input and the current estimation and thus eventually arrive at the correct estimate.
If now two processors are coupled together (as in Fig. 2B), the dynamics of the estimate in network 1 can be approximated as follows (see Eq. 9 and 10 in Materials and Methods; the estimate of network 2 is obtained by relabeling):
dz ˆ1͑t͒ dt ϭ ͓͑h 1 1 ϩ ␤ 1 1 ͑t͒͒ Ϫ h 1 z ˆ1͑t͔͒ ϩ g rp ͑ z ˆ2͑t͒ Ϫ z ˆ1͑t͒͒ (33)

## 编辑生物合理的去中心化网络模型用于信息整合 第3部分：

dz ˆ(t) dt = (h + β(t)) - hz ˆ(t) (32)

其中，h + β(t)代表以为中心的输入信号，有效强度h伴随着独立的高斯噪声β(t)。注意，有效强度是依赖于网络和输入参数的非线性关系（见方程式11）。从方程式32的动态来看，如果当前的波峰位置对应于输入提示值，它将只受到均值为零的噪声的驱动，因此平均来说可以提供正确的估计。如果处理器的当前估计不准确，它将根据输入与当前估计之间的偏差来更新其估计值，最终得到正确的估计。

如果现在将两个处理器连接在一起（如图2B所示），网络1中的估计动态可以如下近似（见材料和方法中的方程式9和10；网络2的估计通过重新标记获得）：

dz ˆ1(t) dt = [(h1 + β1(t)) - h1z ˆ1(t)] + g_rp(z ˆ2(t) - z ˆ1(t)) (33)

## # Biologically plausible decentralized network model for information integration Part-4

The additional term in comparison with Equation 32 is related to the communication between networks. Namely, the difference between the two local estimates, g rp ͓ z ˆ2͑t͒ Ϫ z ˆ1͑t͔͒ conveys the information of cue 2 and is additionally used to adjust the network's estimate (g rp is related to the coupling strength, see Materials and Methods). Therefore, communication through reciprocal connections enables each processor to integrate information from multiple modalities.
If the information from two cues is combined together, one would expect that the reliability of the joint estimate increased.
Consider that the two networks received two congruent and identical cues, that is, the cues have the same intensity h 1 ϭ h 2 ϵ h and the same feature value 1 ϭ 2 ϵ . If the networks are uncoupled (g rp ϭ 0), each network will deliver an unbiased estimate, ͗z ˆ͘ ϭ with variance V͑z ˆ͒ ϭ ␤ 2 /2h (set g lm zero in Eq. 17). Note that the variance V͑z ˆ͒ is a decreasing function with activity bump height, indicating that the bump height encodes the reliability. When two networks are reciprocally coupled, the variance of the estimates of both networks becomes V͑z ˆ͒ ϭ ␤ 2 4 ͩ 1 h ϩ 1 h ϩ 2g rp ͪ , which decreases with the effective reciprocal coupling strength g rp, implying that the reciprocal connections convey the information from other cues to improve the accuracy of each network's estimate. These theoretical predictions of the variances correspond well with the simulations (red dashed line in Fig. 3E). Together, we found that a system of interconnected CANN modules fulfills the requirements that are conceptualized in the decentralized framework of information integration: local processors compute local estimates and reciprocal interactions are used to correct the estimates by integrating information from other processors. However, whether information is integrated in an ideal way remains to be seen. We next introduce a Bayesian observer to evaluate the performance of the information integration of the decentralized system and then compare the network's estimation with the Bayesian observer in both theory and simulation.

与公式32相比，额外的项与网络之间的通信有关。具体来说，两个局部估计之间的差值 g rp ͓ z ˆ2͑t͒ Ϫ z ˆ1͑t͔͒ 传达了第二个线索的信息，并用于调整网络的估计值（g rp 与耦合强度相关，请参见材料和方法部分）。因此，通过相互连接的通信使得每个处理器能够整合多模态的信息。
如果将来自两个线索的信息结合在一起，人们会期望联合估计的可靠性增加。
假设两个网络接收到两个一致且相同的线索，即线索的强度 h1 = h2 = h 并且特征值 1 = 2。如果网络未耦合（g rp = 0），每个网络都将提供无偏差的估计， ͗z ˆ͘ = ，其方差 V(z ˆ) = β^2 / 2h（在等式17中将 g lm 设为零）。注意，方差 V(z ˆ) 随着活动峰值高度的增加而减小，表明峰值高度编码了可靠性。当两个网络互相耦合时，两个网络的估计的方差变为 V(z ˆ) = β^2 / (1/h + 1/h + 2g rp)，随着有效的互相耦合强度 g rp 的增加而减小，表明互相连接传递了来自其他线索的信息以提高每个网络估计的准确性。这些关于方差的理论预测与模拟结果（图3E中的红色虚线）相符。总之，我们发现一个由互联的CANN模块组成的系统满足了在去中心化信息整合框架中概念化的要求：局部处理器计算局部估计，而互相作用被用来通过整合来自其他处理器的信息来纠正估计。然而，信息是否以理想方式被整合仍有待观察。接下来，我们引入一个贝叶斯观察器来评估去中心化系统的信息整合性能，然后在理论和模拟中将网络的估计与贝叶斯观察器进行比较。

## # General Bayesian observer of multisensory integration Part-1

To assess the performance of information integration in the decentralized system, a Bayesian observer is needed as a benchmark (Ernst, 2006;Clark and Yuille, 2013). We consider a Bayesian observer for a general form of multisensory integration (Shams et al., 2005;Bresciani et al., 2006;Ernst, 2006;Roach et al., 2006). In many previous studies about multisensory integration, it is assumed a priori that a single stimulus gives raise to multiple sensory representations (cues) that are then fully integrated into an unified percept (Ernst and Banks, 2002). However, more generally, sensory evidence about an entity of interest, such as the heading direction, might instead originate simultaneously from different physical sources. For instance, the optical flow of the visual field and the body acceleration are of completely different physical origin, but still simultaneously accessible by the visual system and the vestibular system, respectively. Both physical sources may only contain some partial information about the heading direction, which can nevertheless be extracted and integrated to arrive at a better estimate of the heading direction than either cue would deliver on its own. Therefore, in our framework, we suppose that two sensory cues c 1 and c 2 are generated by two distinct stimuli s 1 and s 2, respectively, and assume that these two stimuli have some systematic covariation in regard to the entity of interest. This covariation regulates the extent of how much the two cues are informative for the inference of either of the stimuli s 1 or s 2 . We will see below that, if the covariation of the stimuli is weak, one cue does help little about inferring the other and both cues should be (nearly) independently processed and could give raise to two different percepts. Conversely, if both stimuli are strongly correlated, then both cues should be (nearly) fully integrated to arrive at improved estimates.
Mathematically, under the assumption that the noise processes of the two cues given two stimuli are independent with each other, the posterior distribution p͑s 1 , s 2 ͉ c 1 , c 2 ͒ satisfies the following:
p͑s 1 , s 2 ͉ c 1 , c 2 ͒ϰp͑c 1 ͉ s 1 ͒ p͑c 2 ͉ s 2 ͒ p͑s 1 , s 2 ͒ (34)
where p͑c l ͉ s l ͒ ͑l ϭ 1, or 2) is the likelihood function indicating the probability that a particular value of cue c l is generated from a given stimulus s l and is modeled as a Gaussian distribution with mean l (stimulus feature value in Eq. 4) and variance l 2 (proportional to input intensity ␣ l in Eq. 4). p͑s 1 , s 2 ͒ is called the combination prior, which specifies the probability of the presence of s 1 and s 2. Here, we set it to be a Gaussian function of the discrepancy between two stimuli (Bresciani et al., 2006;Roach et al., 2006;Sato et al., 2007) as follows:

为了评估分散系统中信息整合的性能，需要一个贝叶斯观察者作为基准(Ernst, 2006; Clark and Yuille, 2013)。我们考虑一个通用形式的多感官整合的贝叶斯观察者(Shams et al., 2005; Bresciani et al., 2006; Ernst, 2006; Roach et al., 2006)。在许多关于多感官整合的早期研究中，通常先验地假设单一刺激会产生多个感官表征（提示），然后这些提示被完全整合到一个统一的感知中(Ernst and Banks, 2002)。然而，更普遍的情况是，关于一个感兴趣的实体（比如前进方向），感官证据可能同时来自不同的物理来源。例如，视觉领域的光流和体感加速度是完全不同的物理来源，但仍然可以同时被视觉系统和前庭系统接触。这两种物理来源可能只包含有关前进方向的部分信息，但仍然可以被提取并整合，从而得到比单个提示更好的前进方向估计。因此，在我们的框架中，我们假设两个感官提示c1和c2分别由两个不同的刺激s1和s2产生，并假设这两个刺激在与感兴趣的实体相关的方面有一定的系统协变。这种协变调节了两个提示对推断任何一个刺激s1或s2的信息量。我们将在下文看到，如果刺激的协变是弱的，一个提示对推断另一个几乎没有帮助，这两个提示应该（几乎）独立处理，可能会产生两个不同的感知。相反，如果两个刺激强烈相关，则两个提示应该（几乎）完全整合，从而得到改进的估计。

在数学上，在假设给定两个刺激下的两个提示的噪声过程是相互独立的假设下，后验分布p(s1, s2 | c1, c2)满足以下关系：
p(s1, s2 | c1, c2) ∝ p(c1 | s1) p(c2 | s2) p(s1, s2) (公式 34)
其中p(cl | sl) (l = 1 或 2)是似然函数，表明特定提示cl从给定刺激sl生成的概率，并假设为具有均值l（方程4中的刺激特征值）和方差l^2（方程4中的输入强度αl成比例）。p(s1, s2)称为组合先验，它指定了s1和s2存在的概率。在这里，我们将其设定为两个刺激差异的高斯函数（Bresciani et al., 2006; Roach et al., 2006; Sato et al., 2007）。

## # General Bayesian observer of multisensory integration Part-2

p͑s 1 , s 2 ͒ ϭ 1 ͱ2 cp L s exp ͫ Ϫ ͑s 1 Ϫ s 2 ͒ 2 2 cp 2 ͬ (35)
L s is the width of feature space, for example, 2 for heading direction. Note that the prior of either stimulus, p͑s l ͒ ͑l ϭ 1 or 2), is still a uniform distribution.
The combination prior given by Equation 35specifies the a priori similarity between two stimuli that give raise to the two cues, respectively. Importantly, in the integration process, this combination prior determines the extent for the two cues to be integrated. Let us consider two extreme examples. When cp ϭ 0, p͑s 1 , s 2 ͒ becomes a delta function ␦͑s 1 Ϫ s 2 ͒, then the two marginal posterior distributions are exactly the same, that is,
p͑s 1 ͉ c 1 , c 2 ͒ ϭ p͑s 2 ͉ c 1 , c 2 ͒,
meaning that two cues should be fully integrated into a unified percept (Ernst and Banks, 2002). In the case cp ϭ ϱ, the combination prior is flat and each cue should be processed independently without any integration because no useful information can be obtained from one modality to predict the stimulus value of the other. In the case of 0 Ͻ cp Ͻ ϱ, two cues should be partially integrated, meaning that the estimated values of s 1 and s 2 can be different, but nevertheless the estimate of one of them uses the cue information from the other. In this study, we consider the general situation that cp can take different values and treat full integration as a special case.
The posterior of stimulus 1 can be obtained by marginalizing the joint posterior distribution as follows (the posterior for stimulus 2 has similar form by interchanging indices 1 and 2):
p͑s 1 ͉ c 1 , c 2 ͒ ϭ ͵ p͑s 1 , s 2 ͉ c 1 , c 2 ͒ds 2 ϰp͑c 1 ͉ s 1 ͒ ͵ p͑c 2 ͉ s 2 ͒ p͑s 1 , s 2 ͒ds 2 (36)

# 全局贝叶斯观察者的多感官整合 第二部分

p(s₁, s₂) = 1 / √(2πcp Ls) exp(- (s₁ - s₂)² / (2cp²)) (35)
这里 Ls 是特征空间的宽度，例如，对于航向方向是2。注意，无论是s₁还是s₂的先验概率 p(sₗ) (l = 1 或 2) 都还是均匀分布。

方程35给出的组合先验指定了产生两个线索的两个刺激之间的先验相似性。重要的是，在整合过程中，这种组合先验决定了两个线索被整合的程度。让我们考虑两个极端例子。当 cp = 0 时，p(s₁, s₂) 成为一个delta函数 δ(s₁ - s₂)，那么两个边际后验分布就完全相同，即，
p(s₁ | c₁, c₂) = p(s₂ | c₁, c₂),
这意味着两个线索应该完全整合成一个统一的感知（Ernst 和 Banks, 2002）。在 cp = ∞ 的情况下，组合先验是平坦的，每个线索应该独立处理，没有任何整合，因为从一个模态预测另一个模态的刺激值不能获得有用信息。在 0 < cp < ∞ 的情况下，两个线索应该部分整合，意味着s₁和s₂的估计值可以不同，但估计其中一个的同时会使用另一个的线索信息。在这项研究中，我们考虑cp可以取不同值的一般情况，并将完全整合视为一个特例。

刺激1的后验可以通过将联合后验分布边缘化如下获得（刺激2的后验形式类似，通过交换索引1和2）：
p(s₁ | c₁, c₂) = ∫ p(s₁, s₂ | c₁, c₂) p(c₁ | s₁) ∫ p(c₂ | s₂) p(s₁, s₂) ds₂ (36)

## # General Bayesian observer of multisensory integration Part-3

Note that p͑c 2 ͉ s 1 ͒ϰ ͵ p͑c 2 ͉ s 2 ͒p͑s 1 , s 2 ͒ds 2 due to the conditional independence of two cues. Because a flat prior distribution of each stimulus and accordingly a flat prior distribution of each cue (from Eq. 35), we have the following:
p͑s 1 ͉ c 1 , c 2 ͒ϰp͑s 1 ͉ c 1 ͒ p͑s 1 ͉ c 2 ͒ (37)
Because of this factorization of the marginal posterior, the mean and variance of the estimate for each stimulus under combined cues can be derived from the mean and variance under single cues (Ernst, 2006) as follows:
V͑s ˆl ͉ c 1 , c 2 ͒ Ϫ1 ϭ V͑s ˆl ͉ c 1 ͒ Ϫ1 ϩ V͑s ˆl ͉ c 2 ͒ Ϫ1 (38) ͗s ˆl ͉ c 1 , c 2 ͘ V͑s ˆl ͉ c 1 , c 2 ͒ ϭ ͗s ˆl ͉ c 1 ͘ V͑s ˆl ͉ c 1 ͒ ϩ ͗s ˆl ͉ c 2 ͘ V͑s ˆl ͉ c 2 ͒ , l ϭ 1, or 2 (39)
In more detail, the mean and variance of s 1 and s 2 can be found as follows:
͗s ˆ͉ c 1 , c 2 ͘ ϭ 1 1 2 ϩ 2 2 ϩ cp 2 ͫ 2 2 ϩ cp 2 1 2 2 2 1 2 ϩ cp 2 ͬͫ 1 2 ͬ (40) Cov͑s ˆ͉ c 1 , c 2 ͒ ϭ 1 1 2 ϩ 2 2 ϩ cp 2 ͫ 1 2 ͑ 2 2 ϩ cp 2 ͒ 1 2 2 2 1 2 2 2 2 2 ͑ 1 2 ϩ cp 2 ͒ ͬ (41)
where s ϭ ͑s 1 , s 2 ͒ T . The mean and variance of the stimulus estimates under single-cue conditions can be found by formally letting 2 ¡ ϱ (cue 1 condition) or 1 ¡ ϱ (cue 2 condition). We see that the prior parameter cp determines the extent of integration:

请注意：由于两个线索的条件独立性，p(c2 | s1) ≈ ∫ p(c2 | s2) p(s1, s2) ds2。因为每个刺激和每个线索的先验分布都是平坦的（根据等式35），我们可以得出以下结论：
p(s1 | c1, c2) ≈ p(s1 | c1) p(s1 | c2) (37)
由于边缘后验的这种因式分解，每个刺激在组合线索下的估计均值和方差可以从在单个线索下的均值和方差导出（Ernst, 2006），具体如下：
V(ŝl | c1, c2)^(-1) = V(ŝl | c1)^(-1) + V(ŝl | c2)^(-1) (38)
ŝl | c1, c2 的均值和方差为 V(ŝl | c1, c2) = ŝl | c1 的 V(ŝl | c1) + ŝl | c2 的 V(ŝl | c2), l = 1 或 2 (39)
更详细地，s1 和 s2 的均值和方差可以如下计算：
ŝ | c1, c2 = (1/(2 + 2) + cp2/(2^2 + cp2 1^2)) + (1/(2 + cp2 )/(1^2 + cp2 )) (40) 
ŝ | c1, c2 的协方差为 (1/(2 + 2) + cp2/(1^2 + 2^2 + cp2 1^2))^2 + (1/(2 + 2) + cp2/(1^2 + cp2 ))/(/2^2 + 1^2 + cp2 ) (41)
其中 s = (s1, s2)T。在单线索条件下刺激估计的均值和方差可以通过正式设定 2 → ∞（线索1条件）或 1 → ∞（线索2条件）找到。我们看到，先验参数 cp 决定了整合的程度：

## # General Bayesian observer of multisensory integration Part-4

when cp ϭ 0, ͗s ˆ1͘ ϭ ͗s ˆ2͘ ϭ ͑ 2 2 1 ϩ 1 2 2 ͒/͑ 1 2 ϩ 2 2
͒, the estimates of two networks are identical and full integration happens (Ernst and Banks, 2002); when cp ϭ ϱ, s ˆ1 ϭ 1 , and s ˆ2 ϭ 2 , implying that the two cues are not integrated at all.
Equations 38 and 39 show how to integrate estimates under single-cue conditions optimally with associated uncertainties into combined estimates for two stimuli, which are used as the criteria for judging whether optimality is achieved in an information integration system (Ernst and Banks, 2002;Ma et al., 2006).

当 cp = 0 时，〖ŝ1〗= 〖ŝ2〗= (σ1^2 σ2^2)/(σ1^2+σ2^2)，这意味着两个网络的估计值是相同的，完全整合发生了（Ernst 和 Banks, 2002）；当 cp = ∞ 时，ŝ1 = σ1，而 ŝ2 = σ2，这表明两种线索完全没有被整合。
方程38和方程39展示了如何在单一线索条件下将估计值及其相关的不确定性最优地整合为两种刺激的组合估计值，这些组合估计值被用作评判信息整合系统是否达到最优性的标准（Ernst 和 Banks, 2002；Ma 等人，2006）。

## # Decentralized system implements a general Bayesian observer Part-1

To compare the information integration of the decentralized system to the integration predicted by the Bayesian observer, we thus compared the means and variances of the network estimations in single cue and combined cue conditions. Because the dynamics of each network's estimate could be approximated in closed form (Eq. 9 and 10), we can compute the mean and variance of the estimates in analytical terms. We found that, in the case of two symmetrically connected network modules (for a general solution, see Eq. 16 and 17), the results are given by the following (to distinguish the network estimation and Bayesian observer, the estimation of network and Bayesian observer are denoted as z ˆand s ˆrespectively):
If only cue 1 is presented ͑h 1 ϭ h; h 2 ϭ 0͒: ͗z ˆ͉ c 1 ͘ ϭ ͫ 1 1 ͬ , Cov(z ˆ͉ c 1 ) ϭ ␤ 2 2 ͫ h Ϫ1 h Ϫ1 h Ϫ1 g rp Ϫ1 ϩ h Ϫ1 ͬ (42)
Only cue 2 ͑h 1 ϭ 0; h 2 ϭ h͒:
͗z ˆ͉ c 2 ͘ ϭ ͫ 2 2 ͬ , Cov(z ˆ͉ c 1 ) ϭ ␤ 2 2 ͫ g rp Ϫ1 ϩ h Ϫ1 h Ϫ1 h Ϫ1 h Ϫ1 ͬ (43)
Combined cues ͑h 1 ϭ h 2 ϭ h͒:

为了比较分散系统的信息整合与贝叶斯观察者预测的整合，我们比较了网络在单一提示和组合提示条件下估计的均值和方差。由于每个网络估计的动态可以用封闭形式近似（见公式9和10），我们可以用分析方法计算估计的均值和方差。我们发现，在两个对称连接的网络模块的情况下（一般解见公式16和17），结果如下（为区分网络估计和贝叶斯观察者，网络和贝叶斯观察者的估计分别用 z ˆ 和 s ˆ 表示）：
如果仅呈现提示1（h1 = h；h2 = 0）：⟨z ˆ│c1⟩ = (1/h)，Cov(z ˆ│c1) = β^2(h^(-1) g_rp^(-1) + h^(-1))(42)
仅提示2（h1 = 0；h2 = h）：
⟨z ˆ│c2⟩ = (1/h)，Cov(z ˆ│c1) = β^2(g_rp^(-1) + h^(-1) h^(-1) h^(-1) h^(-1))(43)
组合提示（h1 = h2 = h）：

## # Decentralized system implements a general Bayesian observer Part-2

͗z ˆ͉ c 1 , c 2 ͘ ϭ 1 2h Ϫ1 ϩ g rp Ϫ1ͫ g rp Ϫ1 ϩ h Ϫ1 h Ϫ1 h Ϫ1 g rp Ϫ1 ϩ h Ϫ1 ͬͫ 1 2 ͬ (44) Cov(z ˆ͉ c 1 , c 2 ) ϭ ␤ 2 2͑2h Ϫ1 ϩ g rp Ϫ1 ͒ ϫ ͫ ͑ g rp Ϫ1 ϩ h Ϫ1 ͒h Ϫ1 h Ϫ2 h Ϫ2 ͑ g rp Ϫ1 ϩ h Ϫ1 ͒h Ϫ1 ͬ (45)
It is straightforward to verify that information integration in the two coupled networks of the decentralized system (Eq. 42-45) satisfy exactly the prediction of the Bayesian observer (Eqs., 38 and 39); that is:
V͑ z ˆl ͉ c 1 , c 2 ͒ Ϫ1 ϭ V͑z ˆl ͉ c 1 ͒ Ϫ1 ϩ V͑z ˆl ͉ c 2 ͒ Ϫ1 (46) ͗z ˆl ͉ c 1 , c 2 ͘ V͑ z ˆl ͉ c 1 ,c 2 ͒ ϭ ͗z ˆl ͉ c 1 ͘ V͑ z ˆl ͉ c 1 ͒ ϩ ͗z ˆl ͉ c 2 ͘ V͑ z ˆl ͉ c 2 ͒ , l ϭ 1, or 2 (47)
Therefore, network l is an optimal estimator for stimulus l. Interestingly, by comparing estimation results of the decentralized system (Eq. 44 -45) and the Bayesian observer (Eq. 40 -41) with 1 ϭ 2 , we see that the reciprocal connections between the two networks encode the combination prior and thus determine the extent of integration; that is:
g rp Ϫ1 ϰ cp 2 (48)

# 分布式系统实现通用贝叶斯观察者 第二部分

公式如下：
z ˆ͉ c 1 , c 2  = 1/2 * (h^(-1) + g_rp^(-1)) * (g_rp^(-1) + h^(-1) + h^(-1) * h^(-1)) * g_rp^(-1) + h^(-1) (44)
Cov(z ˆ͉ c 1 , c 2 ) = β^2 / 2 * (2h^(-1) + g_rp^(-1)) * ((g_rp^(-1) + h^(-1)) * h^(-1) * h^(-2) * h^(-2) * (g_rp^(-1) + h^(-1)) * h^(-1)) (45)

验证此两个耦合网络的信息整合（方程42-45）精确地满足贝叶斯观察者的预测（方程38和39）是直接的；即：
V(z ˆl͉ c 1 , c 2 )^(-1) = V(z ˆl͉ c 1 )^(-1) + V(z ˆl͉ c 2 )^(-1) (46)
z ˆl͉ c 1 , c 2  * V(z ˆl͉ c 1 ,c 2 ) = z ˆl͉ c 1  * V(z ˆl͉ c 1 ) + z ˆl͉ c 2  * V(z ˆl͉ c 2 ), l = 1, 或 2 (47)

因此，网络l是对刺激l的最优估计器。有趣的是，通过比较分散系统的估计结果（方程44至45）和贝叶斯观察者的结果（方程40至41，其中1=2），我们看到两个网络之间的相互连接编码了组合先验，从而确定了整合的程度；即：
g_rp^(-1) ≃ cp^2 (48)

## # Decentralized system implements a general Bayesian observer Part-3

Similarly, the effective input strength represents the reliability of input cue:
h Ϫ1 ϰ 2 (49)
Notably, when full Bayesian integration is considered, it requires cp ϭ 0, so g rp ϭ ϱ; that is, the reciprocal connection strength is infinitely strong. In such a case, the two networks effectively collapse into a single network and the system becomes equivalent to a system having only a single dedicated integration area as proposed previously (Ma et al., 2006).
Although the information integration is optimal for the special case used in the theoretical analysis above, the so far approximated nonlinear dependence of the effective strengths g rp , h, and ␤ on network and input variables may nevertheless cause the integration in the full model to deviate from the Bayesian observer. Therefore, to determine whether optimal integration still holds without approximations and if the theoretic result generalizes to a wider parameter regime, we next performed numerical simulations.

# Decentralized system implements a general Bayesian observer Part-3 章节：

同样，有效输入强度代表输入线索的可靠性：
h -1 ∝ 2 (49)
值得注意的是，当考虑完整的贝叶斯集成时，它要求 cp = 0，因此 g rp = ∞；也就是说，反馈连接的强度是无限大的。在这种情况下，两个网络实际上会合并成一个单一网络，系统等同于之前提出的仅有一个专用集成区域的系统（Ma et al., 2006）。
虽然在上述理论分析中使用的特定案例中信息集成是最优的，但迄今为止，有效强度 g rp、h 和 β 对网络和输入变量的非线性依赖性可能仍会导致完整模型中的集成与贝叶斯观察者偏离。因此，为了确定在不进行近似的情况下最优集成是否仍然成立，以及理论结果是否适用于更广泛的参数范围，我们接下来进行了数值模拟。

## # Decentralized system implements a general Bayesian observer Part-4

In the simulations, for each network, the Bayesian prediction under the combined cue condition was calculated by substituting the estimates under single-cue conditions into Equations 46 and 47. This approach is similar to experimental studies in which the estimations of MSTd (VIP) neurons in the combined cue condition are predicted by using the responses of MSTd (VIP) neurons under single-cue conditions (Gu et al., 2008;Chen et al., 2013). Figure 4A shows an example of the joint estimates of both networks under all three stimulus conditions. When only cue 1 was present, the estimates of both networks were centered at 1 and network 1 had smaller estimation variance than network 2 because network 2 received the input indirectly via network 1. This result is in accordance with the prediction of the Bayesian observer:  (B-E) J rc ϭ 0.5J c , J rp ʦ 0.5J rc ; (F ) J rc ϭ ͓0.4, 0.6͔J c , J rp ʦ ͓0.2, 0.9͔J rc .
V͑s ˆ2 ͉ c 1 ͒ ϭ 1 2 ϩ cp 2 is larger than V͑s ˆ1 ͉ c 1 ͒ ϭ 1 2 (set
2 to ϱ in Eq. 41). The estimates of both networks were reversed when only cue 2 was presented. In the combined cue condition, the estimates of the two networks shifted toward a position in between 1 and 2 and had the smallest variance. Note that the means of the estimates of the two networks were different in the combined cue condition when the two cues were disparate, as required by the Bayesian observer (Eq. 40).

在模拟中，对于每个网络，通过将单一提示条件下的估计值

## # Decentralized system implements a general Bayesian observer Part-5

To determine whether the network estimation changed with cue reliability (represented by the height of the input bump), we varied the reliability of one cue while fixing the other cue as well as other network parameters (Fig. 4B). With increasing reliability of cue 1, the estimation variance of network 1 decreased (blue line in Fig. 4B top), implying that the reliability of network 1's response increased accordingly and, therefore, the weight of cue 1 in network 1 increased as well (blue line in Fig. 4B bottom). Analogous results were observed when changing the reliability of cue 2 while fixing the other parameters (orange lines in Fig. 4B).
Furthermore, we also investigated how the strength of the reciprocal connections J rp between two networks influenced the network estimations (Fig. 4C). Increasing J rp induced a decrease of the estimation variance and a decrease of the weight of the direct cue (the direct cue to network l is cue l ) of both networks, meaning that the estimations of the two networks became closer to each other, which implies that the two cues were integrated to a larger extent (Eq. 40 and 41). This result agrees with Equation 48; that is, that the reciprocal connection strength is inversely proportional to the variance of the combination prior cp 2 . Next, we tested the network performance under different combinations of cue intensities (see Materials and Methods for the details of the parameter settings). The cue intensities span a large interval ranging from superadditive to near-saturation regions of the neural responses. Figure 4, D and E, plots the estimation means and variances of both networks versus Bayesian predictions. Indeed, the simulation results show that each network individually achieved near optimal inference for the underlying stimulus under a wide range of parameter values (R 2 ϭ 0.979 and 0.972 for the mean and variance, respectively).
We further systematically changed the network and input parameters and measured the deviations of the integration weight for the direct cue ⌬w dirϪcue (Eq. 28) and the deviation of estimation variance ⌬Var (Eq. 29) from the Bayesian prediction (Fig. 4F ). The varied parameters include reciprocal connection strengths, recurrent connection strengths, and input strengths of the two cues (see Materials and Methods for details). Expectedly, because of some nonlinear effects of the network dynamics, the integration performance deviated from Bayesian predictions for extreme parameter settings. However, in our testing parameter region, the deviations of the integration weight of the direct cue were all bounded in the region of Ϯ0.2, and the deviations of the variance were bounded in the region of Ϯ0.32, indicating nevertheless near optimality. Interestingly, in our system, the deviations of the weights were positively correlated with deviations of the variance, in agreement with experiments in which similar deviations from optimal behavior were observed (Fetsch et al., 2009).

为了确定网络估计是否随着线索可靠性（由输入峰值的高度表示）而变化，我们在固定其他线索和网络参数的情况下，改变了其中一个线索的可靠性（图4B）。随着线索1的可靠性增加，网络1的估计方差减少（图4B顶部的蓝线），这意味着网络1的响应可靠性相应增加，因此，线索1在网络1中的权重也增加（图4B底部的蓝线）。当改变线索2的可靠性而保持其他参数不变时，观察到类似的结果（图4B中的橙线）。

此外，我们还研究了两个网络之间的相互连接强度J rp如何影响网络估计（图4C）。增大J rp会导致估计方差减少以及两个网络的直接线索（指向网络l的直接线索是线索l）的权重减少，这意味着两个网络的估计变得更加接近，这暗示两个线索得到了更大程度的整合（方程40和41）。这个结果与方程48一致；也就是说，相互连接强度与组合先验cp 2的方差成反比。接下来，我们测试了网络在不同线索强度组合下的性能（有关参数设置的详细信息，请参见材料和方法）。线索强度跨越了一个大区间，从超加性区域到神经响应的近饱和区域。

图4D和E展示了两个网络的估计均值和方差与贝叶斯预测的关系。实际上，模拟结果表明，每个网络在广泛的参数值范围内，个别达到了对基础刺激的接近最优推断（均值和方差的R²分别为0.979和0.972）。

我们进一步系统地改变网络和输入参数，并测量直接线索的整合权重的偏差⌬w dir−cue（方程28）和估计方差的偏差⌬Var（方程29）与贝叶斯预测的偏差（图4F）。变化的参数包括相互连接强度、递归连接强度以及两个线索的输入强度（详见材料和方法）。由于网络动态的一些非线性效应，在极端参数设置下，整合性能偏离贝叶斯预测是可以预见的。然而，在我们测试的参数区域，直接线索的整合权重的偏差均在±0.2的范围内，而方差的偏差则在±0.32的范围内，这表明仍然接近最优。有趣的是，在我们的系统中，权重的偏差与方差的偏差呈正相关，这与实验中观察到的类似的最优行为偏差一致（Fetsch等，2009年）。

## # Optimal information integration at the single-neuron level

Limited by the available data, electrophysiological experiments for studying cue-integration focused only on single neuron activities rather than population responses (Gu et al., 2008;Chen et al., 2013). In a heading direction discrimination task, it was found that the optimal integration of visual and vestibular inputs could be read out in single neurons' activities (Gu et al., 2008;Chen et al., 2013). To test whether similar optimal integration behaviors are achieved on a single-neuron level in our model, we mimicked the experimental setup and simulated a discrimination task in which the heading direction is judged as being above or below 0°based on the single neuron's activities. We investigated whether the actual discrimination performance of an example neuron during combined cues can be predicted from the singlecue conditions when using Bayesian inference (Fig. 5; see Eq. 30). Figure 5D shows the neuronal discrimination thresholds of an example neuron across trials. The threshold in the combined cue condition was significantly smaller than the threshold in cue 1 (p ϭ 1.22 ϫ 10 Ϫ40 , n ϭ 50, unpaired t test) and cue 2 conditions (p ϭ 8.64 ϫ 10 Ϫ44 , n ϭ 50, unpaired t test), indicating that the integration of two cues happened. Although the combined threshold was significantly greater than the predicted value (p ϭ 0.044, n ϭ 50, unpaired t test), the combined threshold was only 2% greater than the predicted one, indicating near optimal integration. This result shows that our model reproduces the experimental finding on the integration behavior of single neurons.

# 章节标题：单神经元水平上的最优信息整合

由于现有数据的限制，电生理实验研究线索整合只关注了单个神经元的活动而非种群响应（Gu等，2008年；Chen等，2013年）。在一个判断方向的鉴别任务中，发现视觉和前庭输入的最佳整合可以在单个神经元的活动中读出（Gu等，2008年；Chen等，2013年）。为了测试我们模型中是否也能在单神经元水平上实现类似的最优整合行为，我们模仿实验设置并模拟了一个鉴别任务，在这个任务中，基于单个神经元的活动来判断方向是高于还是低于0度。我们研究了在联合线索条件下，一个示例神经元的实际鉴别表现是否可以从单一线索条件下使用贝叶斯推断预测出来（见图5；参见方程30）。图5D显示了跨试验中一个示例神经元的神经鉴别阈值。联合线索条件下的阈值显著小于线索1（p = 1.22 x 10^-40，n = 50，未配对t检验）和线索2条件下的阈值（p = 8.64 x 10^-44，n = 50，未配对t检验），表明两个线索的整合确实发生了。虽然联合阈值显著大于预测值（p = 0.044，n = 50，未配对t检验），但联合阈值仅比预测值大2%，表明整合接近最优化。这一结果表明，我们的模型再现了关于单个神经元整合行为的实验发现。

## # Empirical principles of multisensory integration

We found that our decentralized system can also reproduce some characteristic properties of neuronal responses observed during multisensory integration, including the inverse effectiveness, the spatial principle, and the reliability-based combination (Fetsch et al., 2013).
Inverse effectiveness states that the amplification effect of combined cues compared with single-cue conditions is weakened for strong input (Stein and Stanford, 2008). Figure 6A (left) displays the responses of an example neuron in three stimulus conditions with varying cue intensities (see details in Materials and Methods). With increasing cue intensities, the combined neuronal response increases, but the amplification effect of combined responses compared with the sum of single-cue responses becomes smaller, indicating that the inverse effectiveness is achieved. For weak intensity, the neuronal response to combined cues was larger than the sum of its responses to two individual cues, exhibiting a superadditive tendency, whereas, for strong inputs, the combined neuronal response was smaller than the sum of the single-cue responses, exhibiting a subadditive tendency.
This amplification of the response during combined cues is known to be modulated by the amount of disparity between two cues. This effect is called the spatial principle (Fetsch et al., 2013). Our system could reproduce this effect. When two cues were congruent, the combined neuronal response was larger than its response to either of the cues, exhibiting cross-modal enhancement (Fig. 6A,left). When the disparity of two cues was large enough, the response of the neuron became weaker than its response to the more reliable cue, exhibiting cross-modal suppression (Fig. 6A,right). This property originates from the divisive normalization in the network dynamics, as pointed out by (Ohshiro et al., 2011): when the disparity of two cues is large, cue 2 excites the example neuron weakly but still contributes effectively to the inhibitory neuron pool, which in turn more strongly suppresses the example neuron compared with the inhibition in the single-cue condition.
Finally, responses of single neurons to combined cues are reliability dependent. This effect is called reliability-based combination (Morgan et al., 2008) and could also be reproduced by our model system. Figure 6B shows the bimodal tuning curves of an example neuron in network 1 with varied cue 1 intensities while with other parameters were fixed. With a large intensity value of cue (left panel in Fig. 6B), the bimodal response of the example neuron was dominated by cue 1, meaning that the firing rate of the example neuron was affected more significantly by changing cue 1 than changing cue 2. With declining intensity of cue 1, the bimodal tuning curve of the neuron became gradually dominated by cue 2. By fitting the bimodal turning curve as a linear combination of the unimodal tuning curves of the same neuron (Eq. 31), R 2 is 0.96, 0.90, and 0.93 for decreasing intensity of cue 1 ␣ 1 ), we found that when the reliability of cue 1 increased, the weight of cue 1 also increased; whereas the weight of cue 2 decreased.
In summary, single-neuron activities of our model system were in good agreement with a number of empirical multisensory integration principles.

我们发现，我们的分散式系统还能够再现多感官整合期间观察到的一些神经元反应的特征属性，包括逆效应、空间原则和基于可靠性的组合（Fetsch et al., 2013）。

逆效应表明，与单一线索条件相比，组合线索的放大效果对于强输入会减弱（Stein and Stanford, 2008）。图6A（左）显示了在三种不同线索强度条件下一个示例神经元的反应（具体细节见材料与方法）。随着线索强度的增加，组合神经反应也增加，但与单一线索反应之和相比，组合反应的放大效果减小，表明逆效应得以实现。对于弱强度，神经元对组合线索的反应大于其对两个单独线索的反应之和，表现出超加性倾向，而对于强输入，则组合神经反应小于单一线索反应之和，表现出亚加性倾向。

这种在组合线索期间的反应放大被两个线索之间的差异所调节。这种效应被称为空间原则（Fetsch et al., 2013）。我们的系统能够复现这个效应。当两个线索一致时，组合神经反应比对任何一个线索的反应都大，展现了跨模态增强（图6A，左）。当两个线索的差异足够大时，神经元的反应变弱于其对更可靠线索的反应，展现了跨模态抑制（图6A，右）。这一属性起源于网络动态中的分裂规范化，如（Ohshiro等人，2011）指出：当两个线索的差异较大时，线索2虽然较弱地激活示例神经元，但仍有效贡献于抑制性神经元池，进而相比单一线索条件更强地抑制示例神经元。

最后，单个神经元对组合线索的反应依赖于可靠性。这种效应被称为基于可靠性的组合（Morgan et al., 2008），我们的模型系统也能复现这一效应。图6B显示了在固定其他参数的情况下，网络1中一个示例神经元在不同线索1强度下的双模态调谐曲线。在线索强度值较大的情况下（图6B的左面板），示例神经元的双模态反应主要由线索1主导，意味着改变线索1比改变线索2更显著地影响了示例神经元的发放率。随着线索1强度的降低，神经元的双模态调谐曲线逐渐由线索2主导。通过将双模态转向曲线作为同一神经元的单模态调谐曲线的线性组合进行拟合（方程31），我们发现当线索1的可靠性增加时，线索1的权重也增加，而线索2的权重减少。R2值分别为0.96、0.90和0.93，分别对应于线索1强度的降低。

总之，我们模型系统的单神经元活动与多个经验性多感官整合原则相符。

## # Information integration of multiple cues

In reality, the brain often needs to integrate information from more than just two sensory cues (Wozny et al., 2008). A decentralized integration system is very flexible due to its modular structure and thus can be easily extended to an arbitrary number of coupled network modules with each of them receiving and processing an individual cue. For example, to integrate three cues, a third network, which receives cue 3, can be added directly to the aforementioned system (Fig. 7A). Furthermore, in the general case of integration of N cues, a decentralized system can be further extended to comprise N modules that are reciprocally connected in an all-to-all fashion and each module receives feedforward inputs from its corresponding cue. The means and variances of network estimations under all cueing conditions are derived in the Materials and Methods section (Eq. 18 -21). For simplicity, we assumed that all networks and inputs have the same parameters. The results indicate that the distribution of the estimates of network l satisfies the following:
p͑ z ˆl ͉ c l ,ഫ i l c i ͒ϰp͑z ˆl ͉ c l ͒p͑z ˆl ͉ ഫ i l c i ͒(50)
The above equation means that the distribution of the estimates of network l can be factorized as the products of the distribution under cue l condition (direct cue of network l ) and the one under condition of all cues combined except cue l, p͑z ˆl ͉ ഫ i l c i ͒. However, the latter distribution cannot be further factorized so that it is in general not proportional to Β i l p͑z ˆl ͉ c i ͒. This is because network l receives the information of other cues only indirectly from other networks and the reciprocal connections induce correlation between the indirect cues. Does this incapability of factorization imply that the integration of indirect cues is suboptimal in the decentralized system? This will depend on the Bayesian observer used for the comparison. From the analysis above, we know that the reciprocal connection between network 1 and 2 represents the combination prior p͑s 1 , s 2 ͒ of the Bayesian observer. Because networks are only connected in a pairwise manner, prior information beyond the pairwise interaction seems impossible to represent in the network. Indeed, we found that when the combination prior of the extended Bayesian observer has the product of Gaussian form (see Eq. 24) as follows:
p͑s 1 , s 2 , …, s N ͒ ϭ 1 Z i j p ˜͑s i , s j ͒ ϭ 1 Z exp ͫ Ϫ i j ͑s i Ϫ s j ͒ 2 2͑ͱN/ 2 cp ͒ 2 ͬ , i, j ʦ ͓1, N͔(51)
where the integration of the decentralized system is still optimal, that is, network l is an opimal estimator for stimulus l through integrating its feedforward inputs from cue l and reciprocal inputs from other networks (see Eq. 18 -21 and 25-27 for the derivation and unshaded bars in Figure 7B). Analogous to the system consisting of only two networks, each component of p ˜͑s i , s j ͒ in Equation 51 is represented by the reciprocal connection between network i and network j. The responses in this small stimulus range are used to perform ROC analysis to estimate the neurometric functions. C, Neurometric functions of the example neuron, which denotes the correct fraction of judging the stimulus to be larger than 0°. Smooth lines show the cumulative Gaussian fit of the neurometric functions. D, Average neuronal discrimination thresholds of the example neuron in three stimulus conditions compared with the Bayesian prediction (Eq. 30). The actual neuronal discrimination thresholds in the case of combined cues are comparable with the Bayesian prediction ( p ϭ 0.044, n ϭ 50, unpaired t test). Parameters: J rc ϭ 0.5J c , J rp ʦ 0.5J rc , ␣ 1 ϭ 0.4U m 0 , ␣ 2 ϭ 0.9U m 0 .

## 多重线索的信息整合

在现实中，大脑通常需要整合来自不止两种感觉线索的信息（Wozny 等人，2008年）。一个去中心化的整合系统因其模块化结构而极具灵活性，因此可以轻松扩展到任意数量的耦合网络模块，每个模块接收并处理一个单独的线索。例如，要整合三个线索，可以直接向前述系统添加一个接收第三个线索的网络（见图7A）。此外，在整合N个线索的一般情况下，去中心化系统可以进一步扩展为包含N个模块，这些模块以全互联的方式相互连接，且每个模块从其对应的线索接收前馈输入。在所有提示条件下的网络估计的均值和方差在“材料和方法”部分得到了推导（方程式18-21）。为简便起见，我们假设所有网络和输入具有相同的参数。结果表明网络l的估计分布如下：
p(ẑl | cl, ∑ilci) = p(ẑl | cl)p(ẑl | ∑ilci)（方程式50）
上述方程意味着网络l的估计分布可以因式分解为在第l个线索条件（网络l的直接线索）下的分布与除线索l之外所有线索组合条件下的分布的乘积，p(ẑl | ∑ilci)。然而，后者的分布不能进一步因式分解，因此通常不成比例于∑ilp(ẑl | ci)。这是因为网络l只从其他网络间接接收其他线索的信息，并且相互连接诱导了间接线索之间的相关性。这种因式分解的无能是否意味着在去中心化系统中间接线索的整合是次优的？这将取决于用于比较的贝叶斯观察者。从上述分析中，我们知道网络1和2之间的相互连接代表贝叶斯观察者的组合先验p(s1, s2)。因为网络只以成对的方式连接，先验信息超出成对互动似乎无法在网络中表示。实际上，我们发现，当扩展的贝叶斯观察者的组合先验具有高斯乘积形式（见方程式24）如下：
p(s1, s2, …, sN) = 1/Zijp̃(si, sj) = 1/Z exp[−ij(si - sj)²/(2(√N/2cp)²)]，i, j ∈ [1, N]（方程式51）
在这种情况下，去中心化系统的整合仍然是最优的，即通过整合其从线索l的前馈输入以及来自其他网络的相互输入，网络l对刺激l是一个最优估计器（参见方程式18-21及25-27的推导和图7B中的未阴影部分）。类似于仅由两个网络组成的系统，方程式51中的p̃(si, sj)的每个组成部分都由网络i和网络j之间的相互连接表示。用这一小范围刺激的反应来执行ROC分析，以估计示例神经元的神经计量函数。C，示例神经元的神经计量函数，表示将刺激判断为大于0°的正确部分。平滑线显示的是神经计量函数的累积高斯拟合。D，与贝叶斯预测（方程式30）相比，示例神经元在三种刺激条件下的平均神经歧视阈值。在组合线索的情况下，实际的神经歧视阈值与贝叶斯预测相当(p = 0.044, n = 50, 未配对t检验)。参数：Jrc = 0.5Jc, Jrp ∈ 0.5Jrc, α1 = 0.4Um0, α2 = 0.9Um0。

## # Robustness against failure of modules

A key advantage of the decentralized architecture is its robustness to damage in local networks. For our model, we found that, although some cues can become inaccessible (but this problem can be resolved by cross-cue connections shown as the dashed lines in Fig. 1D), the damage of one or a few network modules does not impair the optimality of two cue integration in still intact networks, meaning that the network estimations under combined cue condition can be also predicted by using Equations 38 and 39. For example, in a system that consists of three networks receiving three cues, network 1 and 2 optimally integrated cues 1 and 2 regardless of whether network 3 was damaged; that is, p͑ z ˆl ͉ c 1 , c 2 ͒ϰp͑ z ˆl ͉ c 1 ͒p͑z ˆl ͉ c 2 ͒, l ϭ 1, 2 (Fig. 7B; p ϭ 0.40 and 0.27 when comparing the network variance with the prediction with or without blocking network 3, respectively; n ϭ 100, unpaired t test). However, the neural activity of the intact networks nevertheless changed in response to the damage. For example, a loss of network 3 caused the variance of the estimates in networks 1 and 2 to increase even though cue 3 was absent (Fig. 7B and Eq. 18 -21 in Materials and Methods). This change can be understood from two perspectives. From the perspective of network dynamics, the existing connections between networks help to average out noise (Zhang and Wu, 2012;Kilpatrick, 2013). Therefore, the more excitatory connections a network module receives, the smaller the variance of its estimate, so losing a connection due to damage consequently increases the variance. Conversely, from the perspective of the Bayesian observer, the loss of network 3 changes the effective prior for the integration of cue 1 and 2, from p 3 ͑s 1 , s 2 ͒ ϭ ͵ p͑s 1 , s 2 , s 3 ͒ds 3 to p ˜͑s 1 , s 2 ͒. From Equation 24 Information integration in a decentralized system with multiple reciprocally connected networks. A, Architecture of a system consisting of three reciprocally connected networks. The insertion of a third network is done simply by reciprocally connecting network 3 with other networks. B, Robust information integration in three reciprocally connected networks. After blocking network 3 (shaded bars), network 1's estimate in the combined condition is nevertheless still similar to the Bayesian estimate (no significant difference: p ϭ 0.27, n ϭ 80, unpaired t test), although its variance increases. Error bars plot SD of the network estimation variance obtained from 100 trials. Parameters are the same as Figure 5.
case of N ϭ 3), we see that the variance of the integration prior increases from cp 2 to 3 cp 2 /2, thus increasing the variance of the estimation (Eq. 41). This property might explain the recent experimental finding that, whereas the integration of visual and vestibular cues can still satisfy the Bayesian prediction (Eq. 38) after blocking MSTd, the overall behavioral accuracy nevertheless decreased (Gu et al., 2012).

模块故障的鲁棒性

去中心化架构的一个关键优点是其对局部网络损伤的鲁棒性。在我们的模型中，我们发现，尽管某些线索可能变得不可访问（但这个问题可以通过图1D中虚线所示的跨线索连接来解决），一个或几个网络模块的损坏并不会损害在仍然完好的网络中对两种线索融合的最优性，这意味着在组合线索条件下，网络的估计仍可以通过使用方程38和39来预测。例如，在一个由三个网络接收三种线索构成的系统中，网络1和网络2能够最优地整合线索1和线索2，而不管网络3是否遭到损坏；也就是说，p(zˆl|c1,c2)∝p(zˆl|c1)p(zˆl|c2)， l=1,2（图7B；在比较网络方差时，阻断网络3的预测分别为p=0.40和0.27；n=100，非配对t检验）。然而，完整网络的神经活动仍会因损伤而发生变化。例如，失去网络3导致网络1和网络2的估计方差增加，即使线索3缺失（图7B及材料与方法中的方程18-21）。这种变化可以从两个角度进行理解。从网络动态的角度来看，网络之间现有的连接有助于平均噪声（Zhang和Wu，2012；Kilpatrick，2013）。因此，一个网络模块接收到的兴奋性连接越多，它的估计方差就越小，因此由于损坏而失去连接会导致方差增加。相反，从贝叶斯观察者的角度来看，网络3的损失改变了线索1和线索2整合的有效先验，从p3(s1,s2)=∫p(s1,s2,s3)ds3变为p˜(s1,s2)。根据方程24，一个由多个互相连接的网络组成的去中心化系统中的信息整合。A、由三个互相连接的网络组成的系统架构。通过与其他网络互相连接的方式插入第三个网络。B、在三个互相连接的网络中实现鲁棒的信息整合。在阻断网络3（阴影条）后，网络1在组合条件下的估计仍然与贝叶斯估计相似（没有显著差异：p=0.27，n=80，非配对t检验），尽管其方差增加。误差条表示从100次试验中获得的网络估计方差的标准差。参数与图5相同。在N=3的情况下，我们看到整合先验的方差从cp2增加到3cp2/2，从而增加了估计的方差（方程41）。这个特性可能解释了近期的实验发现，即尽管在阻断MSTd后视觉和前庭线索的整合仍然可以满足贝叶斯预测（方程38），但整体行为的准确性仍然下降（Gu等，2012）。

## # Discussion

In the present study, we have explored how several brain areas could work together to integrate information optimally in a decentralized manner. Decentralized computing has been favored by engineering applications due to its robustness, computational efficiency, and modularity (Durrant-Whyte and Henderson, 2008). Similar concepts, such as parallel and distributed processing, have been long proposed as the basis of brain functions (Rumelhart et al., 1988) and the idea of decentralized integration was discussed previously (Sabes, 2011). However, how decentralized information integration might be achieved in neural circuitry is not known. Here, we have shown that interconnected network modules can build up a decentralized information integration system in a biologically plausible manner. Most importantly, the resulting system is capable of integrating information from different cues and estimating multiple stimuli in a near-optimal way.

在本研究中，我们探讨了几个脑区如何能以去中心化的方式协同工作以优化信息整合。去中心化计算因其鲁棒性、计算效率和模块化在工程应用中受到青睐（Durrant-Whyte and Henderson, 2008）。类似的概念，如并行处理和分布式处理，早已被提出作为大脑功能的基础（Rumelhart et al., 1988），去中心化整合的想法之前也有讨论（Sabes, 2011）。然而，去中心化信息整合如何在神经网络中实现尚不清楚。在这里，我们展示了如何通过相互连接的网络模块构建一个生物合理的去中心化信息整合系统。最重要的是，所得到的系统能够整合来自不同线索的信息并以接近最优的方式估算多种刺激。

## # Comparison with previous approaches

In contrast to a decentralized system, a centralized architecture is similar to the hypothesis of having one dedicated multisensory area that pools incoming sensory information as assumed by a number of modeling studies on multisensory integration (Ma et al., 2006;Alvarado et al., 2008;Magosso et al., 2008;Ursino et al., 2009;Ohshiro et al., 2011). In regard to the anatomy, the finding of many interconnected multisensory areas favors the decentralized system. Taking visual-vestibular integration system as an example, not one single area, but instead many areas, including MSTd (Gu et al., 2008), VIP (Chen et al., 2013), the frontal eye field (Gu et al., 2015), and visual posterior sylvian area (Chen et al., 2011b), display integrative responses to combined visual and vestibular inputs. Apart from feedforward connections from unisensory areas, abundant reciprocal connections exist between multisensory areas (Boussaoud et al., 1990;Baizer et al., 1991). Ma et al., 2006 found that a single dedicated network could implement a Bayesian observer with full integration as follows:
p͑s ͉ c 1 , c 2 , …, c N ͒ϰ lϭ1 N p͑c l ͉ s͒ (52)
where two or multiple cues are fully integrated into an unified percept. In contrast, the decentralized architecture implements a Bayesian observer of the form:
p͑s 1 , s 2 , …, s N ͉ ഫ l c l ͒ϰ ͫl p͑c l ͉ s͒ ͬ p͑s 1 , s 2 , …, s N ͒ (53)
which estimates the values of multiple stimuli simultaneously, integrating information from other cues to an extent that is regulated by the form of the combination prior. Whether one or the other Bayesian observer is more plausible for describing the information integration in neural systems likely depends on many aspects, such as the nature of the features to be integrated, the neural sites, and sensory modalities in questions. Human psychophysical studies suggest that, depending on cueing conditions, the brain may use different strategies to integrate multisensory information, from full to partial and to no integration at all (Hillis et al., 2002;Shams et al., 2005;Ernst, 2006). Therefore, both Bayesian observers might be offer a valid description in certain situations.

# 与以往方法的比较:

与分散式系统相比，集中式架构类似于假设有一个专用的多感官区域，该区域汇集传入的感官信息，这一假设已经被多个关于多感官整合的建模研究所采用（Ma等，2006年；Alvarado等，2008年；Magosso等，2008年；Ursino等，2009年；Ohshiro等，2011年）。关于解剖学的发现，许多相互连接的多感官区域支持分散系统。以视觉-前庭整合系统为例，不是单一区域，而是包括MSTd（Gu等，2008年）、VIP（Chen等，2013年）、前眼区（Gu等，2015年）和视觉后岩瓮区（Chen等，2011b）在内的多个区域，显示出对视觉和前庭输入的综合响应。除了从单一感官区域的前馈连接外，多感官区域之间还存在大量的相互连接（Boussaoud等，1990年；Baizer等，1991年）。Ma等人在2006年发现，一个专用的网络可以实现一个具有完全整合的贝叶斯观察者，如下所示：
p(s | c1, c2, ..., cN) ∝ Πl=1 to N p(cl | s) （52）
其中两个或多个线索被完全整合到一个统一的感知中。相比之下，分散式架构实现了如下形式的贝叶斯观察者：
p(s1, s2, ..., sN | ∑ cl) ∝ Πl p(cl | s) p(s1, s2, ..., sN)（53）
该方案同时估计多个刺激的值，将来自其他线索的信息整合到一个由组合先验形式调控的程度。针对神经系统中的信息整合，究竟哪一种贝叶斯观察者更合理，可能取决于许多方面，如待整合特性的性质、神经站点和所涉及的感官模式。人类心理物理学研究表明，根据提示条件，大脑可能使用不同的策略来整合多感官信息，从完全整合到部分整合，直至完全不整合（Hillis等，2002年；Shams等，2005年；Ernst，2006年）。因此，这两种贝叶斯观察者在某些情况下可能都是有效的描述。

## # Reciprocal connections in the decentralized system

We found that the combination prior p͑s 1 , s 2 , …, s N ͒ of the observer is encoded by the reciprocal connections between networks: the variance of the combination prior, cp 2 , which measures the similarity between stimuli and thus determines the extent of integration, is represented by the inverse of the effective reciprocal connection strength between networks, g rp Ϫ1 . Therefore, the decentralized system gives a new explanation for the abundance of reciprocal connections between the many existent multisensory areas.
From Equations 40 and 41, we see that the conventionally used criteria for Bayesian integration are always satisfied regardless of the value of cp 2 . This raises the question of how the strength of reciprocal connections should be determined for information integration. Because the strength of the reciprocal connection regulates the integration extent in the network, it should be adjusted to match the real distribution of stimuli in the natural environment, such that the estimates of the networks are closest statistically to the true stimulus values (Ko ¨rding and Wolpert, 2004;Ko ¨rding et al., 2007).
Moreover, in a naturally dynamical environment, the underlying relation between two presented cues might vary over time, implying that the extent of integration, cp, need to be adjusted accordingly. The decentralized system provides a promising framework to achieve this adaptability by dynamically learning or transiently modulating the effective reciprocal strength between two networks.
Reciprocal connections were also considered previously in a modeling study on coordinate transformation (Dene `ve et al., 2001;Pouget et al., 2002;Avillac et al., 2005). However, the com-

## 分布式系统中的互惠连接

我们发现，观察者的联合先验 p(s1, s2, ..., sN) 通过网络间的互惠连接来编码：联合先验的方差 cp²，它衡量了刺激之间的相似性，从而决定了整合的程度，是通过网络间有效互惠连接强度的倒数 g_rp^-1 来表示的。因此，这个分布式系统为多个存在的多感官区域之间丰富的互惠连接提供了一种新的解释。

从方程40和41，我们可以看出，不管 cp² 的值如何，用于贝叶斯整合的传统标准总是被满足的。这就引发了一个问题：如何为信息整合确定互惠连接的强度。因为互惠连接的强度调节了网络中整合的程度，它应该根据自然环境中刺激的真实分布进行调整，以便网络的估计值在统计上最接近真实的刺激值（Körding 和 Wolpert, 2004; Körding 等人, 2007）。

此外，在一个自然动态的环境中，两个给定线索之间的基本关系可能随时间变化，这意味着整合的程度 cp 需要相应地进行调整。分布式系统通过动态学习或短暂调节两个网络之间有效的互惠连接强度，提供了实现这种适应性的有希望的框架。

互惠连接在之前关于坐标转换的建模研究中也被考虑过（Denève 等人，2001; Pouget 等人，2002; Avillac 等人，2005）。然而，该com-（内容被打断，未完结）。

## # A B

Figure 8. A, Deviation of network variance with additivity index. The additivity index is the ratio of the peak firing rate (bump height) under combined cue condition and the sum of the two peak firing rates under both single-cue conditions. The parameters are the same as in Figure 4F. B, M-shaped covariance structure between two neurons in decentralized system, which is a symbol of CANN. 1 and 2 are the preferred direction of the two neurons. When the stimulus is in between the preferred directions, the two neurons display negative correlation; otherwise, their activities are positively correlated.
putations involved in coordinate transformation and multisensory integration are fundamentally different (Beck et al., 2011) and thus are not comparable to the reciprocally connected networks within the framework of decentralized information integration.

图 8. A, 网络方差与加权指数的偏差。加权指数是在组合线索条件下的峰值射频率（峰值高度）与两个单一线索条件下的峰值射频率之和的比率。参数与图 4F 中的相同。B, 分散系统中两个神经元之间呈 M 形的协方差结构，这是 CANN 的象征。1 和 2 是两个神经元的偏好方向。当刺激位于偏好的方向之间时，两个神经元显示负相关；否则，他们的活动呈正相关。
坐标变换和多感觉信息整合中涉及的运算是根本不同的（Beck 等人，2011年）因此，与分散信息整合框架内的相互连接网络不可比较。

## # Plausibility and predictions of the model Part-1

In our framework, each network module is modeled as a CANN.
CANNs have many interesting computational properties and are thus widely used to explain many cortical functions, including the population decoding of orientation (Ben-Yishai et al., 1995), spatial location (Samsonovich and McNaughton, 1997), and working memory (Compte et al., 2000). Moreover, it has been shown that a single CANN can optimally compute one sensory quantity (Dene `ve et al., 1999;Wu et al., 2002). The recurrent connections within a CANN serve as the basis for estimating a sensory quantity from noisy inputs, whereas divisive normalization was shown to provide realistic nonlinear neural responses (Carandini et al., 1997;Ohshiro et al., 2011). Interestingly, optimal integration in a decentralized system with CANNs requires subadditivity of neuronal responses (Fig. 8A), which is in agreement with the finding of subadditive neuronal responses in multisensory areas (Morgan et al., 2008;Fetsch et al., 2013). The subadditivity in case of optimal integration in the decentralized network originates from the property that reliability increases superlinearly with bump height (Fig. 2F ).

在我们的框架中，每个网络模块被建模为一个连续吸引神经网络（CANN）。
CANNs拥有许多有趣的计算属性，因此被广泛用于解释包括定位解码（Ben-Yishai等，1995年）、空间位置（Samsonovich 和 McNaughton，1997年）和工作记忆（Compte等，2000年）在内的许多皮层功能。此外，研究表明一个单独的CANN能够最优地计算单一感官量（Dene `ve等，1999年；Wu等，2002年）。CANN内的递归连接为从嘈杂输入中估计感官量提供了基础，而分离型规范化被证明可以提供现实的非线性神经反应（Carandini等，1997年；Ohshiro等，2011年）。有趣的是，在一个包含CANNs的分散式系统中实现最优整合需要神经反应的次加成性（图8A），这与在多感官区域发现的次加成性神经反应相符（Morgan等，2008年；Fetsch等，2013年）。在分散网络中最优整合的情况下，次加成性起源于可靠性随凸起高度超线性增加的特性（图2F）。

## # Plausibility and predictions of the model Part-2

One way to test experimentally whether sensory areas might indeed be implemented by CANNs is to look for any M-shaped correlation structure between neighboring neurons' activities (Fig. 8B), a hallmark of the translation-invariant connectivity (Ben-Yishai et al., 1995;Wu et al., 2008). Recent experimental data indeed suggests an M-shaped correlation between neurons in MT (Ponce-Alvarez et al., 2013) and in the prefrontal cortex (Wimmer et al., 2014), which supports the idea that CANNs provide biologically plausible computational modules for a decentralized information integration architecture. A recent study pointed out that the M-shaped correlation limits the information capacity of a neural ensemble (Moreno-Bote et al., 2014). Certain information loss in CANNs is indeed inevitable because of their neutrally stable dynamics, which is a key property leading to many computational advantages. This neutral stability implies that noise components along the direction of bump position shift cannot be effectively averaged out, leading to potential information loss (these fluctuations can only be average out over time, not space; Wu et al., 2008). Nevertheless, for general independent noises, the information loss caused by the noise component along the direction of bump position shift is rather small, suggesting that using CANNs is still an efficient way to extract stimulus information in practice (Dene `ve et al., 1999).

实验上检验感官区域是否确实可以通过CANNs（结合感官神经元网络）来实现的一种方法是寻找相邻神经元活动之间的M形相关结构（见图8B），这是转移不变连接性的一大标志（Ben-Yishai等，1995；Wu等，2008）。最近的实验数据确实表明MT区域（视皮层）的神经元之间存在M形相关性（Ponce-Alvarez等，2013），以及前额皮层中的神经元（Wimmer等，2014），这支持了CANNs作为一个去中心化信息整合架构的生物学上合理的计算模块的观点。最近的一项研究指出，M形相关性限制了神经集合的信息容量（Moreno-Bote等，2014）。在CANNs中，由于其中性稳定性，某些信息损失是不可避免的，这一特性是导致许多计算优势的关键属性。这种中性稳定性意味着，沿着突起位置移动方向的噪声成分无法有效平均，导致潜在的信息损失（这些波动只能随着时间的推移而被平均，而不是在空间上；Wu等，2008）。尽管如此，对于一般的独立噪声而言，沿着突起位置位移方向的噪声成分所造成的信息损失相对较小，表明在实践中使用CANNs依然是一种有效提取刺激信息的方法（Dene`ve等，1999）。

## # Plausibility and predictions of the model Part-3

In a decentralized system, neurons in different areas are reciprocally connected, so activities of connected areas should be correlated. This prediction is supported by fMRI and EEG studies (Vincent et al., 2007;Senkowski et al., 2008). Note, however, that our framework is not restricted to model information integration across brain areas but may also be readily applied to information integration between layers or between hypercolumns within a single brain area. For instance, in the superior colliculus, where visual and auditory information are integrated (Stein and Stanford, 2008), the decentralized idea may be also applicable. Anatomically, the superficial layers of the superior colliculus receive solely visual inputs, whereas the deep layers receive solely auditory inputs. As long as the superficial and deep layers are reciprocally connected, it is possible that they constitute a decentralized integration system.
For simplicity, we ignored cross-cue connections between modules (dashed lines in Fig. 1D). Experiments found that the MSTd neurons have relatively shorter latency than VIP neurons in response to visual inputs (Gabel et al., 2002), whereas VIP neurons respond relatively faster than MSTd neurons to vestibular inputs (Chen et al., 2011a). This observation indicates that direct-and cross-feedforward connections function differently (otherwise, their response latencies would be comparable) and that, as an approximation, the contribution from the crossfeedforward connections can be regarded as included in the reciprocal connections (because they are both slower than the direct-feedforward connections and convey the same cross-cue information). Nevertheless, the cross-feedforward connections could be important in other aspects of information integration; for example, they could ensure that all cues remain accessible in case of a network module failure.
Whether MSTd and VIP and other reciprocally connected cortical areas in posterior parietal cortex constitute a decentralized system could be tested with electrophysiological experiments. According to the estimations of decentralized system (Eq. 44 and 45), when visual (vestibular) cue is presented, the discrimination thresholds of MSTd neurons should be smaller (larger) than that of VIP neurons. Another prediction is that if partial integration happens (which can only be implemented by a decentralized system), the estimation means from MSTd and VIP neurons are different when two cues are disparate (Eq. 44). This can be verified by comparing the weights of the visual cue estimated from MSTd neurons and VIP neurons.

在一个分散式系统中，不同区域的神经元是相互连接的，因此连接区域的活动应该是相关的。这一预测得到了fMRI和EEG研究的支持(Vincent等，2007年；Senkowski等，2008年)。然而，请注意，我们的框架并不仅限于模拟跨大脑区域的信息整合，还可以很容易地应用于单一大脑区域内的层与层之间或超柱间的信息整合。例如，在上丘中，视觉和听觉信息被整合（Stein和Stanford，2008），分散式的思想也可能适用。从解剖学上来看，上丘的表层只接收视觉输入，而深层只接收听觉输入。只要表层和深层是相互连接的，就有可能构成一个分散的整合系统。
为简化问题，我们忽略了模块间的跨线索连接（图1D中的虚线）。实验发现，与VIP神经元相比，MSTd神经元对视觉输入的反应潜伏期较短（Gabel等，2002年），而VIP神经元对于前庭输入的反应相对比MSTd神经元更快（Chen等，2011a）。这一观察表明，直接和交叉的前馈连接功能不同（否则它们的响应潜伏期将是可比的），并且作为一种近似，可以认为交叉前馈连接的贡献被包含在相互连接中（因为它们都比直接前馈连接慢并传递相同的交叉线索信息）。然而，交叉前馈连接在其他信息整合方面可能很重要；例如，它们可以确保在网络模块故障的情况下所有线索仍然可访问。
无论MSTd和VIP以及顶叶后皮层中的其他相互连接的皮质区域是否构成一个分散系统，都可以通过电生理实验进行测试。根据分散系统的估算（公式44和45），当呈现视觉（前庭）线索时，MSTd神经元的辨别阈值应该小于（大于）VIP神经元的阈值。另一个预测是，如果发生部分整合（只能由分散系统实施），则当两个线索不同时，MSTd和VIP神经元的估计均值不同（公式44）。这可以通过比较从MSTd神经元和VIP神经元估计的视觉线索权重来验证。

