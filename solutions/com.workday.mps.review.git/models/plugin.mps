<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ec7bafde-32c3-436f-8b07-0d22626aed52(com.workday.mps.review.git.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
  </languages>
  <imports>
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="hr4p" ref="b435930b-30fc-42f3-9225-ec36209b7a33/java:git4idea(com.workday.mps.review.git4mps/)" />
    <import index="5mlj" ref="b435930b-30fc-42f3-9225-ec36209b7a33/java:git4idea.repo(com.workday.mps.review.git4mps/)" />
    <import index="rfyv" ref="b435930b-30fc-42f3-9225-ec36209b7a33/java:git4idea.branch(com.workday.mps.review.git4mps/)" />
    <import index="4b2m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.util.messages(MPS.IDEA/)" />
    <import index="v23q" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi(MPS.IDEA/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="ii13" ref="r:a13717ec-0f28-4c83-aaaa-0b10931768b8(com.workday.mps.review.plugin)" implicit="true" />
    <import index="ee8f" ref="r:76b35c96-0206-4f74-890e-e39504808bf8(com.workday.mps.flux.core)" implicit="true" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P" />
      <concept id="1182160077978" name="jetbrains.mps.baseLanguage.structure.AnonymousClassCreator" flags="nn" index="YeOm9">
        <child id="1182160096073" name="cls" index="YeSDq" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1081256982272" name="jetbrains.mps.baseLanguage.structure.InstanceOfExpression" flags="nn" index="2ZW3vV">
        <child id="1081256993305" name="classType" index="2ZW6by" />
        <child id="1081256993304" name="leftExpression" index="2ZW6bz" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068390468200" name="jetbrains.mps.baseLanguage.structure.FieldDeclaration" flags="ig" index="312cEg">
        <property id="8606350594693632173" name="isTransient" index="eg7rD" />
        <property id="1240249534625" name="isVolatile" index="34CwA1" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu">
        <property id="1075300953594" name="abstractClass" index="1sVAO0" />
        <property id="1221565133444" name="isFinal" index="1EXbeo" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="1068498886294" name="jetbrains.mps.baseLanguage.structure.AssignmentExpression" flags="nn" index="37vLTI" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <property id="4276006055363816570" name="isSynchronized" index="od$2w" />
        <property id="1181808852946" name="isFinal" index="DiZV1" />
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123165" name="jetbrains.mps.baseLanguage.structure.InstanceMethodDeclaration" flags="ig" index="3clFb_">
        <property id="1178608670077" name="isAbstract" index="1EzhhJ" />
      </concept>
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1073239437375" name="jetbrains.mps.baseLanguage.structure.NotEqualsExpression" flags="nn" index="3y3z36" />
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
      <concept id="1146644623116" name="jetbrains.mps.baseLanguage.structure.PrivateVisibility" flags="nn" index="3Tm6S6" />
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
      <concept id="709746936026466394" name="jetbrains.mps.lang.core.structure.ChildAttribute" flags="ng" index="3VBwX9">
        <property id="709746936026609031" name="linkId" index="3V$3ak" />
        <property id="709746936026609029" name="linkRole" index="3V$3am" />
      </concept>
      <concept id="4452961908202556907" name="jetbrains.mps.lang.core.structure.BaseCommentAttribute" flags="ng" index="1X3_iC">
        <child id="3078666699043039389" name="commentedNode" index="8Wnug" />
      </concept>
    </language>
  </registry>
  <node concept="312cEu" id="3Amrg3qeii_">
    <property role="TrG5h" value="GitUtil" />
    <node concept="2tJIrI" id="3Amrg3qeij5" role="jymVt" />
    <node concept="2YIFZL" id="A8HCyhX$tb" role="jymVt">
      <property role="TrG5h" value="getCurrentRemoteBranch_IDEA" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="A8HCyhX$te" role="3clF47">
        <node concept="3clFbJ" id="A8HCyhXKzG" role="3cqZAp">
          <node concept="3clFbS" id="A8HCyhXKzI" role="3clFbx">
            <node concept="3cpWs6" id="A8HCyhXKKF" role="3cqZAp">
              <node concept="10Nm6u" id="A8HCyhXKLf" role="3cqZAk" />
            </node>
          </node>
          <node concept="3clFbC" id="A8HCyhXKJc" role="3clFbw">
            <node concept="10Nm6u" id="A8HCyhXKK0" role="3uHU7w" />
            <node concept="37vLTw" id="A8HCyhXKAS" role="3uHU7B">
              <ref role="3cqZAo" node="A8HCyhX$Z8" resolve="project" />
            </node>
          </node>
          <node concept="9aQIb" id="A8HCyhXKNM" role="9aQIa">
            <node concept="3clFbS" id="A8HCyhXKNN" role="9aQI4">
              <node concept="3cpWs8" id="A8HCyhX_cI" role="3cqZAp">
                <node concept="3cpWsn" id="A8HCyhX_cJ" role="3cpWs9">
                  <property role="TrG5h" value="repository" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="A8HCyhY9fC" role="1tU5fm">
                    <ref role="3uigEE" to="5mlj:~GitRepository" resolve="GitRepository" />
                  </node>
                  <node concept="2YIFZM" id="A8HCyhXCao" role="33vP2m">
                    <ref role="1Pybhc" to="rfyv:~GitBranchUtil" resolve="GitBranchUtil" />
                    <ref role="37wK5l" to="rfyv:~GitBranchUtil.getCurrentRepository(com.intellij.openapi.project.Project):git4idea.repo.GitRepository" resolve="getCurrentRepository" />
                    <node concept="37vLTw" id="A8HCyhXFks" role="37wK5m">
                      <ref role="3cqZAo" node="A8HCyhX$Z8" resolve="project" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="A8HCyhXFm1" role="3cqZAp">
                <node concept="3clFbS" id="A8HCyhXFm3" role="3clFbx">
                  <node concept="3cpWs6" id="A8HCyhXFwZ" role="3cqZAp">
                    <node concept="10Nm6u" id="A8HCyhXFxf" role="3cqZAk" />
                  </node>
                </node>
                <node concept="3clFbC" id="A8HCyhXFvS" role="3clFbw">
                  <node concept="10Nm6u" id="A8HCyhXFwt" role="3uHU7w" />
                  <node concept="37vLTw" id="A8HCyhXFn4" role="3uHU7B">
                    <ref role="3cqZAo" node="A8HCyhX_cJ" resolve="repository" />
                  </node>
                </node>
                <node concept="9aQIb" id="A8HCyhXFxJ" role="9aQIa">
                  <node concept="3clFbS" id="A8HCyhXFxK" role="9aQI4">
                    <node concept="3cpWs8" id="A8HCyhXFHn" role="3cqZAp">
                      <node concept="3cpWsn" id="A8HCyhXFHo" role="3cpWs9">
                        <property role="TrG5h" value="localBranch" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="A8HCyhXFHm" role="1tU5fm">
                          <ref role="3uigEE" to="hr4p:~GitLocalBranch" resolve="GitLocalBranch" />
                        </node>
                        <node concept="2OqwBi" id="A8HCyhXFHp" role="33vP2m">
                          <node concept="37vLTw" id="A8HCyhXFHq" role="2Oq$k0">
                            <ref role="3cqZAo" node="A8HCyhX_cJ" resolve="repository" />
                          </node>
                          <node concept="liA8E" id="A8HCyhXFHr" role="2OqNvi">
                            <ref role="37wK5l" to="5mlj:~GitRepository.getCurrentBranch():git4idea.GitLocalBranch" resolve="getCurrentBranch" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbJ" id="A8HCyhXFMl" role="3cqZAp">
                      <node concept="3clFbS" id="A8HCyhXFMn" role="3clFbx">
                        <node concept="3cpWs6" id="A8HCyhXFXv" role="3cqZAp">
                          <node concept="10Nm6u" id="A8HCyhXFXZ" role="3cqZAk" />
                        </node>
                      </node>
                      <node concept="3clFbC" id="A8HCyhXFWk" role="3clFbw">
                        <node concept="10Nm6u" id="A8HCyhXFWV" role="3uHU7w" />
                        <node concept="37vLTw" id="A8HCyhXFNu" role="3uHU7B">
                          <ref role="3cqZAo" node="A8HCyhXFHo" resolve="localBranch" />
                        </node>
                      </node>
                      <node concept="9aQIb" id="A8HCyhXFZC" role="9aQIa">
                        <node concept="3clFbS" id="A8HCyhXFZD" role="9aQI4">
                          <node concept="3cpWs8" id="A8HCyhXGiK" role="3cqZAp">
                            <node concept="3cpWsn" id="A8HCyhXGiL" role="3cpWs9">
                              <property role="TrG5h" value="remoteBranch" />
                              <property role="3TUv4t" value="true" />
                              <node concept="3uibUv" id="A8HCyhXGiG" role="1tU5fm">
                                <ref role="3uigEE" to="hr4p:~GitRemoteBranch" resolve="GitRemoteBranch" />
                              </node>
                              <node concept="2OqwBi" id="A8HCyhXGiM" role="33vP2m">
                                <node concept="37vLTw" id="A8HCyhXGiN" role="2Oq$k0">
                                  <ref role="3cqZAo" node="A8HCyhXFHo" resolve="localBranch" />
                                </node>
                                <node concept="liA8E" id="A8HCyhXGiO" role="2OqNvi">
                                  <ref role="37wK5l" to="hr4p:~GitLocalBranch.findTrackedBranch(git4idea.repo.GitRepository):git4idea.GitRemoteBranch" resolve="findTrackedBranch" />
                                  <node concept="37vLTw" id="A8HCyhXGiP" role="37wK5m">
                                    <ref role="3cqZAo" node="A8HCyhX_cJ" resolve="repository" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3cpWs6" id="A8HCyhXGp6" role="3cqZAp">
                            <node concept="37vLTw" id="A8HCyhXGqi" role="3cqZAk">
                              <ref role="3cqZAo" node="A8HCyhXGiL" resolve="remoteBranch" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="A8HCyhXvbJ" role="1B3o_S" />
      <node concept="3uibUv" id="A8HCyhY8yX" role="3clF45">
        <ref role="3uigEE" to="hr4p:~GitRemoteBranch" resolve="GitRemoteBranch" />
      </node>
      <node concept="37vLTG" id="A8HCyhX$Z8" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="A8HCyhX$Z7" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="A8HCyhXO28" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="2AHcQZ" id="A8HCyhXGse" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="A8HCyhX_1_" role="jymVt" />
    <node concept="2YIFZL" id="A8HCyhX$ZZ" role="jymVt">
      <property role="TrG5h" value="getCurrentRemoteBranch_MPS" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="A8HCyhX_00" role="3clF47">
        <node concept="3clFbJ" id="A8HCyhXMRv" role="3cqZAp">
          <node concept="3clFbS" id="A8HCyhXMRx" role="3clFbx">
            <node concept="3cpWs6" id="A8HCyhXKvo" role="3cqZAp">
              <node concept="1rXfSq" id="A8HCyhXKw1" role="3cqZAk">
                <ref role="37wK5l" node="A8HCyhX$tb" resolve="getCurrentRemoteBranch_IDEA" />
                <node concept="2OqwBi" id="A8HCyhXMu8" role="37wK5m">
                  <node concept="1eOMI4" id="A8HCyhXKWv" role="2Oq$k0">
                    <node concept="10QFUN" id="A8HCyhXKWs" role="1eOMHV">
                      <node concept="3uibUv" id="A8HCyhXKWx" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                      </node>
                      <node concept="37vLTw" id="A8HCyhXKWy" role="10QFUP">
                        <ref role="3cqZAo" node="A8HCyhX_06" resolve="project" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="A8HCyhXMLG" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="A8HCyhXNzI" role="9aQIa">
            <node concept="3clFbS" id="A8HCyhXNzJ" role="9aQI4">
              <node concept="3cpWs6" id="A8HCyhXMOr" role="3cqZAp">
                <node concept="10Nm6u" id="A8HCyhXMOU" role="3cqZAk" />
              </node>
            </node>
          </node>
          <node concept="1Wc70l" id="3REobdwR0og" role="3clFbw">
            <node concept="3y3z36" id="3REobdwR0xp" role="3uHU7B">
              <node concept="10Nm6u" id="3REobdwR0xE" role="3uHU7w" />
              <node concept="37vLTw" id="3REobdwR0pZ" role="3uHU7B">
                <ref role="3cqZAo" node="A8HCyhX_06" resolve="project" />
              </node>
            </node>
            <node concept="2ZW3vV" id="A8HCyhXNL_" role="3uHU7w">
              <node concept="3uibUv" id="A8HCyhXNLA" role="2ZW6by">
                <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
              </node>
              <node concept="37vLTw" id="A8HCyhXNLB" role="2ZW6bz">
                <ref role="3cqZAo" node="A8HCyhX_06" resolve="project" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="A8HCyhX_04" role="1B3o_S" />
      <node concept="3uibUv" id="A8HCyhX_05" role="3clF45">
        <ref role="3uigEE" to="hr4p:~GitRemoteBranch" resolve="GitRemoteBranch" />
      </node>
      <node concept="37vLTG" id="A8HCyhX_06" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="A8HCyhY6Wu" role="1tU5fm">
          <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
        </node>
        <node concept="2AHcQZ" id="A8HCyhXO8m" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
        </node>
      </node>
      <node concept="2AHcQZ" id="A8HCyhXGJn" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="3Amrg3qeij7" role="jymVt" />
    <node concept="3Tm1VV" id="3Amrg3qeiiA" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="4GdANuvX6db">
    <property role="TrG5h" value="GitRemoteBranchChangeListener" />
    <property role="1sVAO0" value="true" />
    <property role="1EXbeo" value="false" />
    <node concept="312cEg" id="4GdANuvX9sY" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="changeListener" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4GdANuvX9sA" role="1B3o_S" />
      <node concept="3uibUv" id="4GdANuvX9sO" role="1tU5fm">
        <ref role="3uigEE" to="5mlj:~GitRepositoryChangeListener" resolve="GitRepositoryChangeListener" />
      </node>
    </node>
    <node concept="312cEg" id="4GdANuvXNTA" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="currentRemote" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4GdANuvX6hy" role="1B3o_S" />
      <node concept="3uibUv" id="4GdANuvX9oG" role="1tU5fm">
        <ref role="3uigEE" to="hr4p:~GitRemoteBranch" resolve="GitRemoteBranch" />
      </node>
    </node>
    <node concept="2tJIrI" id="2RxdB75IGst" role="jymVt" />
    <node concept="3clFb_" id="2RxdB75IGNV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="SAMPLE_USAGE" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2RxdB75IGNY" role="3clF47">
        <node concept="1X3_iC" id="2RxdB75IJ64" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="2RxdB75IIsL" role="8Wnug">
            <node concept="2ShNRf" id="7Ndzh9v4oP9" role="3clFbG">
              <node concept="YeOm9" id="7Ndzh9v4Fu4" role="2ShVmc">
                <node concept="1Y3b0j" id="7Ndzh9v4Fu7" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" node="4GdANuvX6db" resolve="GitRemoteBranchChangeListener" />
                  <ref role="37wK5l" node="4GdANuvX9u9" resolve="GitRemoteBranchChangeListener" />
                  <node concept="3Tm1VV" id="7Ndzh9v4Fu8" role="1B3o_S" />
                  <node concept="3clFb_" id="2RxdB75IIsN" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="handleBranchChange" />
                    <property role="od$2w" value="false" />
                    <property role="DiZV1" value="false" />
                    <property role="2aFKle" value="false" />
                    <node concept="3Tm1VV" id="2RxdB75IIsO" role="1B3o_S" />
                    <node concept="3cqZAl" id="2RxdB75IIsP" role="3clF45" />
                    <node concept="37vLTG" id="2RxdB75IIsQ" role="3clF46">
                      <property role="TrG5h" value="newBranchName" />
                      <node concept="17QB3L" id="2RxdB75IIsR" role="1tU5fm" />
                    </node>
                    <node concept="3clFbS" id="2RxdB75IIsS" role="3clF47">
                      <node concept="3clFbF" id="2RxdB75IIsT" role="3cqZAp">
                        <node concept="2OqwBi" id="2RxdB75IIsU" role="3clFbG">
                          <node concept="37vLTw" id="2RxdB75IIsV" role="2Oq$k0">
                            <ref role="3cqZAo" to="ii13:168JFiaglBC" resolve="dispatcher" />
                          </node>
                          <node concept="liA8E" id="2RxdB75IIsW" role="2OqNvi">
                            <ref role="37wK5l" to="ee8f:3c3vDUkV7T7" resolve="dispatch" />
                            <node concept="2ShNRf" id="2RxdB75IIsX" role="37wK5m">
                              <node concept="1pGfFk" id="2RxdB75IIsY" role="2ShVmc">
                                <ref role="37wK5l" to="ii13:7Ndzh9v4KRs" resolve="BranchChange" />
                                <node concept="37vLTw" id="2RxdB75IIsZ" role="37wK5m">
                                  <ref role="3cqZAo" node="2RxdB75IIsQ" resolve="newBranchName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="2OqwBi" id="7Ndzh9v4G3m" role="37wK5m">
                    <node concept="Xjq3P" id="7Ndzh9v4FIY" role="2Oq$k0" />
                    <node concept="2OwXpG" id="7Ndzh9v4Gfs" role="2OqNvi">
                      <ref role="2Oxat5" to="ii13:4GdANuvXt_9" resolve="messageBusConnection" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2RxdB75IGwQ" role="1B3o_S" />
      <node concept="3cqZAl" id="2RxdB75IGz6" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4GdANuvX9tg" role="jymVt" />
    <node concept="3clFbW" id="4GdANuvX9u9" role="jymVt">
      <node concept="37vLTG" id="4GdANuvX$gc" role="3clF46">
        <property role="TrG5h" value="connection" />
        <node concept="3uibUv" id="4GdANuvXJzz" role="1tU5fm">
          <ref role="3uigEE" to="4b2m:~MessageBusConnection" resolve="MessageBusConnection" />
        </node>
      </node>
      <node concept="3cqZAl" id="4GdANuvX9ua" role="3clF45" />
      <node concept="3clFbS" id="4GdANuvX9uc" role="3clF47">
        <node concept="3clFbF" id="4GdANuvX9vc" role="3cqZAp">
          <node concept="37vLTI" id="4GdANuvX9Gm" role="3clFbG">
            <node concept="2ShNRf" id="4GdANuvX9Js" role="37vLTx">
              <node concept="YeOm9" id="4GdANuvXexs" role="2ShVmc">
                <node concept="1Y3b0j" id="4GdANuvXexv" role="YeSDq">
                  <property role="2bfB8j" value="true" />
                  <ref role="1Y3XeK" to="5mlj:~GitRepositoryChangeListener" resolve="GitRepositoryChangeListener" />
                  <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                  <node concept="3Tm1VV" id="4GdANuvXexw" role="1B3o_S" />
                  <node concept="3clFb_" id="4GdANuvXexx" role="jymVt">
                    <property role="1EzhhJ" value="false" />
                    <property role="TrG5h" value="repositoryChanged" />
                    <property role="DiZV1" value="false" />
                    <property role="od$2w" value="false" />
                    <node concept="3Tm1VV" id="4GdANuvXexy" role="1B3o_S" />
                    <node concept="3cqZAl" id="4GdANuvXex$" role="3clF45" />
                    <node concept="37vLTG" id="4GdANuvXex_" role="3clF46">
                      <property role="TrG5h" value="repo" />
                      <node concept="3uibUv" id="4GdANuvXexA" role="1tU5fm">
                        <ref role="3uigEE" to="5mlj:~GitRepository" resolve="GitRepository" />
                      </node>
                      <node concept="2AHcQZ" id="4GdANuvXexB" role="2AJF6D">
                        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
                      </node>
                    </node>
                    <node concept="3clFbS" id="4GdANuvXexC" role="3clF47">
                      <node concept="3cpWs8" id="4GdANuvXLHL" role="3cqZAp">
                        <node concept="3cpWsn" id="4GdANuvXLHM" role="3cpWs9">
                          <property role="TrG5h" value="newLocal" />
                          <node concept="3uibUv" id="4GdANuvXLHG" role="1tU5fm">
                            <ref role="3uigEE" to="hr4p:~GitLocalBranch" resolve="GitLocalBranch" />
                          </node>
                          <node concept="2OqwBi" id="4GdANuvXLHN" role="33vP2m">
                            <node concept="37vLTw" id="4GdANuvXLHO" role="2Oq$k0">
                              <ref role="3cqZAo" node="4GdANuvXex_" resolve="repo" />
                            </node>
                            <node concept="liA8E" id="4GdANuvXLHP" role="2OqNvi">
                              <ref role="37wK5l" to="5mlj:~GitRepository.getCurrentBranch():git4idea.GitLocalBranch" resolve="getCurrentBranch" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbJ" id="4GdANuvXM5v" role="3cqZAp">
                        <node concept="3clFbS" id="4GdANuvXM5x" role="3clFbx">
                          <node concept="3cpWs8" id="4GdANuvXLRJ" role="3cqZAp">
                            <node concept="3cpWsn" id="4GdANuvXLRK" role="3cpWs9">
                              <property role="TrG5h" value="newRemote" />
                              <node concept="3uibUv" id="4GdANuvXLRA" role="1tU5fm">
                                <ref role="3uigEE" to="hr4p:~GitRemoteBranch" resolve="GitRemoteBranch" />
                              </node>
                              <node concept="2OqwBi" id="4GdANuvXLRL" role="33vP2m">
                                <node concept="37vLTw" id="4GdANuvXLRM" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4GdANuvXLHM" resolve="newLocal" />
                                </node>
                                <node concept="liA8E" id="4GdANuvXLRN" role="2OqNvi">
                                  <ref role="37wK5l" to="hr4p:~GitLocalBranch.findTrackedBranch(git4idea.repo.GitRepository):git4idea.GitRemoteBranch" resolve="findTrackedBranch" />
                                  <node concept="37vLTw" id="4GdANuvXLRO" role="37wK5m">
                                    <ref role="3cqZAo" node="4GdANuvXex_" resolve="repo" />
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbH" id="7Ndzh9v3RpT" role="3cqZAp" />
                          <node concept="3clFbJ" id="4GdANuvXNhe" role="3cqZAp">
                            <node concept="3clFbS" id="4GdANuvXNhg" role="3clFbx">
                              <node concept="3SKdUt" id="7Ndzh9v3TIW" role="3cqZAp">
                                <node concept="3SKdUq" id="7Ndzh9v3TIY" role="3SKWNk">
                                  <property role="3SKdUp" value="We had no previous branch &amp; do have a new branch" />
                                </node>
                              </node>
                              <node concept="3clFbF" id="4GdANuvXQyY" role="3cqZAp">
                                <node concept="37vLTI" id="4GdANuvXRvT" role="3clFbG">
                                  <node concept="37vLTw" id="4GdANuvXRBu" role="37vLTx">
                                    <ref role="3cqZAo" node="4GdANuvXLRK" resolve="newRemote" />
                                  </node>
                                  <node concept="37vLTw" id="4GdANuvXQF8" role="37vLTJ">
                                    <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbF" id="7Ndzh9v3XEv" role="3cqZAp">
                                <node concept="1rXfSq" id="7Ndzh9v3XEn" role="3clFbG">
                                  <ref role="37wK5l" node="4GdANuvXPvX" resolve="handleBranchChange" />
                                  <node concept="2OqwBi" id="7Ndzh9v3XSM" role="37wK5m">
                                    <node concept="37vLTw" id="7Ndzh9v3XJO" role="2Oq$k0">
                                      <ref role="3cqZAo" node="4GdANuvXLRK" resolve="newRemote" />
                                    </node>
                                    <node concept="liA8E" id="7Ndzh9v3Y0e" role="2OqNvi">
                                      <ref role="37wK5l" to="hr4p:~GitBranch.getFullName():java.lang.String" resolve="getFullName" />
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                            <node concept="1Wc70l" id="4GdANuvXTag" role="3clFbw">
                              <node concept="3y3z36" id="4GdANuvXTuq" role="3uHU7w">
                                <node concept="10Nm6u" id="4GdANuvXTuT" role="3uHU7w" />
                                <node concept="37vLTw" id="4GdANuvXTeV" role="3uHU7B">
                                  <ref role="3cqZAo" node="4GdANuvXLRK" resolve="newRemote" />
                                </node>
                              </node>
                              <node concept="3clFbC" id="4GdANuvXT2M" role="3uHU7B">
                                <node concept="37vLTw" id="4GdANuvXS_m" role="3uHU7B">
                                  <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                                </node>
                                <node concept="10Nm6u" id="4GdANuvXT79" role="3uHU7w" />
                              </node>
                            </node>
                            <node concept="3eNFk2" id="7Ndzh9v3V_Z" role="3eNLev">
                              <node concept="3y3z36" id="7Ndzh9v3WgP" role="3eO9$A">
                                <node concept="37vLTw" id="7Ndzh9v3VOS" role="3uHU7B">
                                  <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                                </node>
                                <node concept="10Nm6u" id="7Ndzh9v3Whk" role="3uHU7w" />
                              </node>
                              <node concept="3clFbS" id="7Ndzh9v3VA1" role="3eOfB_">
                                <node concept="3clFbJ" id="7Ndzh9v3ZHN" role="3cqZAp">
                                  <node concept="3clFbS" id="7Ndzh9v3ZHP" role="3clFbx">
                                    <node concept="3SKdUt" id="7Ndzh9v3WSA" role="3cqZAp">
                                      <node concept="3SKdUq" id="7Ndzh9v3WSB" role="3SKWNk">
                                        <property role="3SKdUp" value="We had a previous branch &amp; do not have a new branch" />
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="7Ndzh9v3WTD" role="3cqZAp">
                                      <node concept="37vLTI" id="7Ndzh9v3Xhb" role="3clFbG">
                                        <node concept="10Nm6u" id="7Ndzh9v3XjW" role="37vLTx" />
                                        <node concept="37vLTw" id="7Ndzh9v3WTB" role="37vLTJ">
                                          <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3clFbF" id="7Ndzh9v3XxG" role="3cqZAp">
                                      <node concept="1rXfSq" id="7Ndzh9v3XxD" role="3clFbG">
                                        <ref role="37wK5l" node="4GdANuvXPvX" resolve="handleBranchChange" />
                                        <node concept="10Nm6u" id="7Ndzh9v3XAE" role="37wK5m" />
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="7Ndzh9v3ZXJ" role="3clFbw">
                                    <node concept="10Nm6u" id="7Ndzh9v3ZYe" role="3uHU7w" />
                                    <node concept="37vLTw" id="7Ndzh9v3ZOx" role="3uHU7B">
                                      <ref role="3cqZAo" node="4GdANuvXLRK" resolve="newRemote" />
                                    </node>
                                  </node>
                                  <node concept="3eNFk2" id="7Ndzh9v40a2" role="3eNLev">
                                    <node concept="3clFbS" id="7Ndzh9v40a3" role="3eOfB_">
                                      <node concept="3SKdUt" id="7Ndzh9v40wo" role="3cqZAp">
                                        <node concept="3SKdUq" id="7Ndzh9v40wp" role="3SKWNk">
                                          <property role="3SKdUp" value="We had a previous branch and it is different than the new branch" />
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="7Ndzh9v40wq" role="3cqZAp">
                                        <node concept="37vLTI" id="7Ndzh9v40wr" role="3clFbG">
                                          <node concept="37vLTw" id="7Ndzh9v40ws" role="37vLTx">
                                            <ref role="3cqZAo" node="4GdANuvXLRK" resolve="newRemote" />
                                          </node>
                                          <node concept="37vLTw" id="7Ndzh9v40wt" role="37vLTJ">
                                            <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                                          </node>
                                        </node>
                                      </node>
                                      <node concept="3clFbF" id="7Ndzh9v40wu" role="3cqZAp">
                                        <node concept="1rXfSq" id="7Ndzh9v40wv" role="3clFbG">
                                          <ref role="37wK5l" node="4GdANuvXPvX" resolve="handleBranchChange" />
                                          <node concept="2OqwBi" id="7Ndzh9v40ww" role="37wK5m">
                                            <node concept="37vLTw" id="7Ndzh9v40wx" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4GdANuvXLRK" resolve="newRemote" />
                                            </node>
                                            <node concept="liA8E" id="7Ndzh9v40wy" role="2OqNvi">
                                              <ref role="37wK5l" to="hr4p:~GitBranch.getFullName():java.lang.String" resolve="getFullName" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="7Ndzh9v3UsI" role="3eO9$A">
                                      <node concept="2OqwBi" id="7Ndzh9v3U9Q" role="2Oq$k0">
                                        <node concept="37vLTw" id="7Ndzh9v3TYQ" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                                        </node>
                                        <node concept="liA8E" id="7Ndzh9v3UhW" role="2OqNvi">
                                          <ref role="37wK5l" to="hr4p:~GitBranch.getFullName():java.lang.String" resolve="getFullName" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="7Ndzh9v3UUe" role="2OqNvi">
                                        <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                                        <node concept="2OqwBi" id="7Ndzh9v3VfP" role="37wK5m">
                                          <node concept="37vLTw" id="7Ndzh9v3V2K" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4GdANuvXLRK" resolve="newRemote" />
                                          </node>
                                          <node concept="liA8E" id="7Ndzh9v3Vyi" role="2OqNvi">
                                            <ref role="37wK5l" to="hr4p:~GitBranch.getFullName():java.lang.String" resolve="getFullName" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3y3z36" id="4GdANuvXMwo" role="3clFbw">
                          <node concept="37vLTw" id="4GdANuvXMhc" role="3uHU7B">
                            <ref role="3cqZAo" node="4GdANuvXLHM" resolve="newLocal" />
                          </node>
                          <node concept="10Nm6u" id="4GdANuvXMwP" role="3uHU7w" />
                        </node>
                        <node concept="3eNFk2" id="7Ndzh9v3Nb6" role="3eNLev">
                          <node concept="3y3z36" id="7Ndzh9v3NJS" role="3eO9$A">
                            <node concept="10Nm6u" id="7Ndzh9v3NKn" role="3uHU7w" />
                            <node concept="37vLTw" id="7Ndzh9v3NjX" role="3uHU7B">
                              <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                            </node>
                          </node>
                          <node concept="3clFbS" id="7Ndzh9v3Nb8" role="3eOfB_">
                            <node concept="3SKdUt" id="7Ndzh9v3TFp" role="3cqZAp">
                              <node concept="3SKdUq" id="7Ndzh9v3TFr" role="3SKWNk">
                                <property role="3SKdUp" value="In the odd case where we have no local branch but came from a branch with a remote" />
                              </node>
                            </node>
                            <node concept="3clFbF" id="7Ndzh9v3NNx" role="3cqZAp">
                              <node concept="37vLTI" id="7Ndzh9v3Ofs" role="3clFbG">
                                <node concept="10Nm6u" id="7Ndzh9v3RaH" role="37vLTx" />
                                <node concept="37vLTw" id="7Ndzh9v3NNw" role="37vLTJ">
                                  <ref role="3cqZAo" node="4GdANuvXNTA" resolve="currentRemote" />
                                </node>
                              </node>
                            </node>
                            <node concept="3clFbF" id="7Ndzh9v3T_i" role="3cqZAp">
                              <node concept="1rXfSq" id="7Ndzh9v3T_g" role="3clFbG">
                                <ref role="37wK5l" node="4GdANuvXPvX" resolve="handleBranchChange" />
                                <node concept="10Nm6u" id="7Ndzh9v3TCQ" role="37wK5m" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4GdANuvX9wO" role="37vLTJ">
              <node concept="Xjq3P" id="4GdANuvX9vb" role="2Oq$k0" />
              <node concept="2OwXpG" id="4GdANuvX9zc" role="2OqNvi">
                <ref role="2Oxat5" node="4GdANuvX9sY" resolve="changeListener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="4GdANuvX$IH" role="3cqZAp" />
        <node concept="3clFbF" id="4GdANuvX$Rj" role="3cqZAp">
          <node concept="2OqwBi" id="4GdANuvX$Wo" role="3clFbG">
            <node concept="37vLTw" id="4GdANuvX$Rh" role="2Oq$k0">
              <ref role="3cqZAo" node="4GdANuvX$gc" resolve="connection" />
            </node>
            <node concept="liA8E" id="4GdANuvX_0N" role="2OqNvi">
              <ref role="37wK5l" to="4b2m:~MessageBusConnection.subscribe(com.intellij.util.messages.Topic,java.lang.Object):void" resolve="subscribe" />
              <node concept="10M0yZ" id="4GdANuvX_al" role="37wK5m">
                <ref role="3cqZAo" to="5mlj:~GitRepository.GIT_REPO_CHANGE" resolve="GIT_REPO_CHANGE" />
                <ref role="1PxDUh" to="5mlj:~GitRepository" resolve="GitRepository" />
              </node>
              <node concept="2OqwBi" id="4GdANuvX_$6" role="37wK5m">
                <node concept="Xjq3P" id="4GdANuvX_ul" role="2Oq$k0" />
                <node concept="2OwXpG" id="4GdANuvX_Ca" role="2OqNvi">
                  <ref role="2Oxat5" node="4GdANuvX9sY" resolve="changeListener" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4GdANuvX9tB" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="4GdANuvXKpc" role="jymVt" />
    <node concept="3clFb_" id="4GdANuvXPvX" role="jymVt">
      <property role="1EzhhJ" value="true" />
      <property role="TrG5h" value="handleBranchChange" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4GdANuvXPw0" role="3clF47" />
      <node concept="3Tm1VV" id="4GdANuvXKw2" role="1B3o_S" />
      <node concept="3cqZAl" id="4GdANuvXPvT" role="3clF45" />
      <node concept="37vLTG" id="4GdANuvXPM3" role="3clF46">
        <property role="TrG5h" value="newBranchName" />
        <node concept="17QB3L" id="4GdANuvXPM2" role="1tU5fm" />
      </node>
    </node>
    <node concept="3Tm1VV" id="4GdANuvX6dc" role="1B3o_S" />
  </node>
</model>

