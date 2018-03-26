<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ec7bafde-32c3-436f-8b07-0d22626aed52(com.workday.mps.review.git.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures" version="0" />
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
    <import index="1m72" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.components(MPS.IDEA/)" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
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
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
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
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199542442495" name="jetbrains.mps.baseLanguage.closures.structure.FunctionType" flags="in" index="1ajhzC">
        <child id="1199542457201" name="resultType" index="1ajl9A" />
        <child id="1199542501692" name="parameterType" index="1ajw0F" />
      </concept>
      <concept id="1225797177491" name="jetbrains.mps.baseLanguage.closures.structure.InvokeFunctionOperation" flags="nn" index="1Bd96e">
        <child id="1225797361612" name="parameter" index="1BdPVh" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
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
  <node concept="312cEu" id="57bl67CHuVr">
    <property role="TrG5h" value="GitBranchChangeListener" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="57bl67CHuZn" role="jymVt" />
    <node concept="312cEg" id="57bl67CHzO0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="connection" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="57bl67CHzDc" role="1B3o_S" />
      <node concept="3uibUv" id="57bl67CHzMR" role="1tU5fm">
        <ref role="3uigEE" to="4b2m:~MessageBusConnection" resolve="MessageBusConnection" />
      </node>
    </node>
    <node concept="312cEg" id="57bl67CH_XJ" role="jymVt">
      <property role="TrG5h" value="remoteBranchHandler" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="57bl67CH_XK" role="1B3o_S" />
      <node concept="1ajhzC" id="57bl67CH_XM" role="1tU5fm">
        <node concept="17QB3L" id="57bl67CH_XN" role="1ajw0F" />
        <node concept="3uibUv" id="57bl67CH_XO" role="1ajl9A">
          <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="57bl67CHDeb" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="currentRemoteBranch" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="57bl67CHCYw" role="1B3o_S" />
      <node concept="3uibUv" id="57bl67CHDd3" role="1tU5fm">
        <ref role="3uigEE" to="hr4p:~GitBranch" resolve="GitBranch" />
      </node>
    </node>
    <node concept="2tJIrI" id="57bl67CHzv$" role="jymVt" />
    <node concept="2YIFZL" id="57bl67CHxyv" role="jymVt">
      <property role="TrG5h" value="register" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="57bl67CHxyy" role="3clF47">
        <node concept="3cpWs8" id="57bl67CHzoy" role="3cqZAp">
          <node concept="3cpWsn" id="57bl67CHzoz" role="3cpWs9">
            <property role="TrG5h" value="connection" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="57bl67CHzos" role="1tU5fm">
              <ref role="3uigEE" to="4b2m:~MessageBusConnection" resolve="MessageBusConnection" />
            </node>
            <node concept="2OqwBi" id="57bl67CHzo$" role="33vP2m">
              <node concept="2OqwBi" id="57bl67CHzo_" role="2Oq$k0">
                <node concept="37vLTw" id="57bl67CHzoA" role="2Oq$k0">
                  <ref role="3cqZAo" node="57bl67CHxHp" resolve="project" />
                </node>
                <node concept="liA8E" id="57bl67CHzoB" role="2OqNvi">
                  <ref role="37wK5l" to="1m72:~ComponentManager.getMessageBus():com.intellij.util.messages.MessageBus" resolve="getMessageBus" />
                </node>
              </node>
              <node concept="liA8E" id="57bl67CHzoC" role="2OqNvi">
                <ref role="37wK5l" to="4b2m:~MessageBus.connect():com.intellij.util.messages.MessageBusConnection" resolve="connect" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="57bl67CIT6k" role="3cqZAp">
          <node concept="3cpWsn" id="57bl67CIT6l" role="3cpWs9">
            <property role="TrG5h" value="listener" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="57bl67CIT5Z" role="1tU5fm">
              <ref role="3uigEE" node="57bl67CHuVr" resolve="GitBranchChangeListener" />
            </node>
            <node concept="2ShNRf" id="57bl67CIT6m" role="33vP2m">
              <node concept="1pGfFk" id="57bl67CIT6n" role="2ShVmc">
                <ref role="37wK5l" node="57bl67CHysz" resolve="GitBranchChangeListener" />
                <node concept="37vLTw" id="57bl67CIT6o" role="37wK5m">
                  <ref role="3cqZAo" node="57bl67CHzcZ" resolve="branchHandler" />
                </node>
                <node concept="37vLTw" id="57bl67CIT6p" role="37wK5m">
                  <ref role="3cqZAo" node="57bl67CHzoz" resolve="connection" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57bl67CITgD" role="3cqZAp">
          <node concept="2OqwBi" id="57bl67CITlR" role="3clFbG">
            <node concept="37vLTw" id="57bl67CITgB" role="2Oq$k0">
              <ref role="3cqZAo" node="57bl67CHzoz" resolve="connection" />
            </node>
            <node concept="liA8E" id="57bl67CITro" role="2OqNvi">
              <ref role="37wK5l" to="4b2m:~MessageBusConnection.subscribe(com.intellij.util.messages.Topic,java.lang.Object):void" resolve="subscribe" />
              <node concept="10M0yZ" id="57bl67CITzB" role="37wK5m">
                <ref role="3cqZAo" to="5mlj:~GitRepository.GIT_REPO_CHANGE" resolve="GIT_REPO_CHANGE" />
                <ref role="1PxDUh" to="5mlj:~GitRepository" resolve="GitRepository" />
              </node>
              <node concept="37vLTw" id="57bl67CITHx" role="37wK5m">
                <ref role="3cqZAo" node="57bl67CIT6l" resolve="listener" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="57bl67CHBgY" role="3cqZAp">
          <node concept="37vLTw" id="57bl67CIT6q" role="3cqZAk">
            <ref role="3cqZAo" node="57bl67CIT6l" resolve="listener" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="57bl67CHxlt" role="1B3o_S" />
      <node concept="3uibUv" id="57bl67CHCHj" role="3clF45">
        <ref role="3uigEE" node="57bl67CHuVr" resolve="GitBranchChangeListener" />
      </node>
      <node concept="37vLTG" id="57bl67CHzcZ" role="3clF46">
        <property role="TrG5h" value="branchHandler" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="57bl67CHzjk" role="1tU5fm">
          <node concept="17QB3L" id="57bl67CHzjK" role="1ajw0F" />
          <node concept="3uibUv" id="57bl67CHzka" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="57bl67CHxHp" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="57bl67CHxHo" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="57bl67CHx1y" role="jymVt" />
    <node concept="3clFb_" id="57bl67CH$Lq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="unregister" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="57bl67CH$Lt" role="3clF47">
        <node concept="3clFbF" id="57bl67CH$VO" role="3cqZAp">
          <node concept="2OqwBi" id="57bl67CH_cs" role="3clFbG">
            <node concept="2OqwBi" id="57bl67CH$Ym" role="2Oq$k0">
              <node concept="Xjq3P" id="57bl67CH$VM" role="2Oq$k0" />
              <node concept="2OwXpG" id="57bl67CH_4x" role="2OqNvi">
                <ref role="2Oxat5" node="57bl67CHzO0" resolve="connection" />
              </node>
            </node>
            <node concept="liA8E" id="57bl67CH_ix" role="2OqNvi">
              <ref role="37wK5l" to="4b2m:~MessageBusConnection.disconnect():void" resolve="disconnect" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="57bl67CH$A$" role="1B3o_S" />
      <node concept="3cqZAl" id="57bl67CH$Kj" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="57bl67CH$sS" role="jymVt" />
    <node concept="3clFbW" id="57bl67CHysz" role="jymVt">
      <node concept="37vLTG" id="57bl67CH_IC" role="3clF46">
        <property role="TrG5h" value="branchHandler" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="57bl67CH_ID" role="1tU5fm">
          <node concept="17QB3L" id="57bl67CH_IE" role="1ajw0F" />
          <node concept="3uibUv" id="57bl67CH_IF" role="1ajl9A">
            <ref role="3uigEE" to="wyt6:~Void" resolve="Void" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="57bl67CH_F5" role="3clF46">
        <property role="TrG5h" value="connection" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="57bl67CH_Gv" role="1tU5fm">
          <ref role="3uigEE" to="4b2m:~MessageBusConnection" resolve="MessageBusConnection" />
        </node>
      </node>
      <node concept="3cqZAl" id="57bl67CHys$" role="3clF45" />
      <node concept="3clFbS" id="57bl67CHysA" role="3clF47">
        <node concept="3clFbF" id="57bl67CHA$B" role="3cqZAp">
          <node concept="37vLTI" id="57bl67CHAPd" role="3clFbG">
            <node concept="37vLTw" id="57bl67CHARo" role="37vLTx">
              <ref role="3cqZAo" node="57bl67CH_F5" resolve="connection" />
            </node>
            <node concept="2OqwBi" id="57bl67CHAAU" role="37vLTJ">
              <node concept="Xjq3P" id="57bl67CHA$_" role="2Oq$k0" />
              <node concept="2OwXpG" id="57bl67CHAH9" role="2OqNvi">
                <ref role="2Oxat5" node="57bl67CHzO0" resolve="connection" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="57bl67CHAUQ" role="3cqZAp">
          <node concept="37vLTI" id="57bl67CHBa1" role="3clFbG">
            <node concept="37vLTw" id="57bl67CHBcN" role="37vLTx">
              <ref role="3cqZAo" node="57bl67CH_IC" resolve="branchHandler" />
            </node>
            <node concept="2OqwBi" id="57bl67CHAYJ" role="37vLTJ">
              <node concept="Xjq3P" id="57bl67CHAUO" role="2Oq$k0" />
              <node concept="2OwXpG" id="57bl67CHB4W" role="2OqNvi">
                <ref role="2Oxat5" node="57bl67CH_XJ" resolve="remoteBranchHandler" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="57bl67CHyhC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="57bl67CHy6K" role="jymVt" />
    <node concept="3clFb_" id="57bl67CHv4y" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="repositoryChanged" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="57bl67CHv4z" role="1B3o_S" />
      <node concept="3cqZAl" id="57bl67CHv4$" role="3clF45" />
      <node concept="37vLTG" id="57bl67CHv4_" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="57bl67CHv4A" role="1tU5fm">
          <ref role="3uigEE" to="5mlj:~GitRepository" resolve="GitRepository" />
        </node>
        <node concept="2AHcQZ" id="57bl67CHv4B" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
      <node concept="3clFbS" id="57bl67CHv4C" role="3clF47">
        <node concept="3cpWs8" id="57bl67CHv4D" role="3cqZAp">
          <node concept="3cpWsn" id="57bl67CHv4E" role="3cpWs9">
            <property role="TrG5h" value="newLocalBranch" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="57bl67CHv4F" role="1tU5fm">
              <ref role="3uigEE" to="hr4p:~GitLocalBranch" resolve="GitLocalBranch" />
            </node>
            <node concept="2OqwBi" id="57bl67CHv4G" role="33vP2m">
              <node concept="37vLTw" id="57bl67CHv4H" role="2Oq$k0">
                <ref role="3cqZAo" node="57bl67CHv4_" resolve="repository" />
              </node>
              <node concept="liA8E" id="57bl67CHv4I" role="2OqNvi">
                <ref role="37wK5l" to="5mlj:~GitRepository.getCurrentBranch():git4idea.GitLocalBranch" resolve="getCurrentBranch" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="57bl67CHv4J" role="3cqZAp">
          <node concept="3clFbS" id="57bl67CHv4K" role="3clFbx">
            <node concept="3cpWs8" id="57bl67CHv4L" role="3cqZAp">
              <node concept="3cpWsn" id="57bl67CHv4M" role="3cpWs9">
                <property role="TrG5h" value="newRemoteBranch" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="57bl67CHv4N" role="1tU5fm">
                  <ref role="3uigEE" to="hr4p:~GitRemoteBranch" resolve="GitRemoteBranch" />
                </node>
                <node concept="2OqwBi" id="57bl67CHv4O" role="33vP2m">
                  <node concept="37vLTw" id="57bl67CHv4P" role="2Oq$k0">
                    <ref role="3cqZAo" node="57bl67CHv4E" resolve="newLocalBranch" />
                  </node>
                  <node concept="liA8E" id="57bl67CHv4Q" role="2OqNvi">
                    <ref role="37wK5l" to="hr4p:~GitLocalBranch.findTrackedBranch(git4idea.repo.GitRepository):git4idea.GitRemoteBranch" resolve="findTrackedBranch" />
                    <node concept="37vLTw" id="57bl67CHv4R" role="37wK5m">
                      <ref role="3cqZAo" node="57bl67CHv4_" resolve="repository" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbH" id="57bl67CHv4S" role="3cqZAp" />
            <node concept="3clFbJ" id="57bl67CIYMM" role="3cqZAp">
              <node concept="3clFbS" id="57bl67CIYMO" role="3clFbx">
                <node concept="3clFbJ" id="57bl67CJ2Ic" role="3cqZAp">
                  <node concept="3clFbS" id="57bl67CJ2Ie" role="3clFbx">
                    <node concept="3SKdUt" id="57bl67CIZS7" role="3cqZAp">
                      <node concept="3SKdUq" id="57bl67CIZS9" role="3SKWNk">
                        <property role="3SKdUp" value="NO previous, NO new" />
                      </node>
                    </node>
                    <node concept="3clFbF" id="57bl67CIZZ6" role="3cqZAp">
                      <node concept="2OqwBi" id="57bl67CIZZ7" role="3clFbG">
                        <node concept="2OqwBi" id="57bl67CIZZ8" role="2Oq$k0">
                          <node concept="Xjq3P" id="57bl67CIZZ9" role="2Oq$k0" />
                          <node concept="2OwXpG" id="57bl67CIZZa" role="2OqNvi">
                            <ref role="2Oxat5" node="57bl67CH_XJ" resolve="remoteBranchHandler" />
                          </node>
                        </node>
                        <node concept="1Bd96e" id="57bl67CIZZb" role="2OqNvi">
                          <node concept="10Nm6u" id="57bl67CJ0bW" role="1BdPVh" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node concept="3clFbC" id="57bl67CIZNc" role="3clFbw">
                    <node concept="10Nm6u" id="57bl67CIZPF" role="3uHU7w" />
                    <node concept="37vLTw" id="57bl67CIZCu" role="3uHU7B">
                      <ref role="3cqZAo" node="57bl67CHv4M" resolve="newRemoteBranch" />
                    </node>
                  </node>
                  <node concept="9aQIb" id="57bl67CJ2PC" role="9aQIa">
                    <node concept="3clFbS" id="57bl67CJ2PD" role="9aQI4">
                      <node concept="3SKdUt" id="57bl67CHv4V" role="3cqZAp">
                        <node concept="3SKdUq" id="57bl67CHv4W" role="3SKWNk">
                          <property role="3SKdUp" value="NO previous, YES new" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="57bl67CHv4X" role="3cqZAp">
                        <node concept="37vLTI" id="57bl67CHv4Y" role="3clFbG">
                          <node concept="37vLTw" id="57bl67CHv4Z" role="37vLTx">
                            <ref role="3cqZAo" node="57bl67CHv4M" resolve="newRemoteBranch" />
                          </node>
                          <node concept="2OqwBi" id="57bl67CHEPC" role="37vLTJ">
                            <node concept="Xjq3P" id="57bl67CHEMZ" role="2Oq$k0" />
                            <node concept="2OwXpG" id="57bl67CHEVR" role="2OqNvi">
                              <ref role="2Oxat5" node="57bl67CHDeb" resolve="currentRemoteBranch" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="57bl67CHEZO" role="3cqZAp">
                        <node concept="2OqwBi" id="57bl67CHFgk" role="3clFbG">
                          <node concept="2OqwBi" id="57bl67CHF58" role="2Oq$k0">
                            <node concept="Xjq3P" id="57bl67CHEZM" role="2Oq$k0" />
                            <node concept="2OwXpG" id="57bl67CHFbj" role="2OqNvi">
                              <ref role="2Oxat5" node="57bl67CH_XJ" resolve="remoteBranchHandler" />
                            </node>
                          </node>
                          <node concept="1Bd96e" id="57bl67CHFlR" role="2OqNvi">
                            <node concept="2OqwBi" id="57bl67CHFmP" role="1BdPVh">
                              <node concept="37vLTw" id="57bl67CHFmQ" role="2Oq$k0">
                                <ref role="3cqZAo" node="57bl67CHv4M" resolve="newRemoteBranch" />
                              </node>
                              <node concept="liA8E" id="57bl67CHFmR" role="2OqNvi">
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
              <node concept="3clFbC" id="57bl67CIZnY" role="3clFbw">
                <node concept="2OqwBi" id="57bl67CIZ4G" role="3uHU7B">
                  <node concept="Xjq3P" id="57bl67CIZ0d" role="2Oq$k0" />
                  <node concept="2OwXpG" id="57bl67CIZaX" role="2OqNvi">
                    <ref role="2Oxat5" node="57bl67CHDeb" resolve="currentRemoteBranch" />
                  </node>
                </node>
                <node concept="10Nm6u" id="57bl67CIZom" role="3uHU7w" />
              </node>
              <node concept="9aQIb" id="57bl67CJ3DA" role="9aQIa">
                <node concept="3clFbS" id="57bl67CJ3DB" role="9aQI4">
                  <node concept="3clFbJ" id="57bl67CHv5i" role="3cqZAp">
                    <node concept="3clFbS" id="57bl67CHv5j" role="3clFbx">
                      <node concept="3SKdUt" id="57bl67CHv5k" role="3cqZAp">
                        <node concept="3SKdUq" id="57bl67CHv5l" role="3SKWNk">
                          <property role="3SKdUp" value="YES previous, NO new" />
                        </node>
                      </node>
                      <node concept="3clFbF" id="57bl67CHv5m" role="3cqZAp">
                        <node concept="37vLTI" id="57bl67CHv5n" role="3clFbG">
                          <node concept="10Nm6u" id="57bl67CHv5o" role="37vLTx" />
                          <node concept="2OqwBi" id="57bl67CHFN7" role="37vLTJ">
                            <node concept="Xjq3P" id="57bl67CHFN8" role="2Oq$k0" />
                            <node concept="2OwXpG" id="57bl67CHFN9" role="2OqNvi">
                              <ref role="2Oxat5" node="57bl67CHDeb" resolve="currentRemoteBranch" />
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3clFbF" id="57bl67CHFVZ" role="3cqZAp">
                        <node concept="2OqwBi" id="57bl67CHFW0" role="3clFbG">
                          <node concept="2OqwBi" id="57bl67CHFW1" role="2Oq$k0">
                            <node concept="Xjq3P" id="57bl67CHFW2" role="2Oq$k0" />
                            <node concept="2OwXpG" id="57bl67CHFW3" role="2OqNvi">
                              <ref role="2Oxat5" node="57bl67CH_XJ" resolve="remoteBranchHandler" />
                            </node>
                          </node>
                          <node concept="1Bd96e" id="57bl67CHFW4" role="2OqNvi">
                            <node concept="10Nm6u" id="57bl67CHG48" role="1BdPVh" />
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFbC" id="57bl67CHv5t" role="3clFbw">
                      <node concept="10Nm6u" id="57bl67CHv5u" role="3uHU7w" />
                      <node concept="37vLTw" id="57bl67CHv5v" role="3uHU7B">
                        <ref role="3cqZAo" node="57bl67CHv4M" resolve="newRemoteBranch" />
                      </node>
                    </node>
                    <node concept="3eNFk2" id="57bl67CHv5w" role="3eNLev">
                      <node concept="3clFbS" id="57bl67CHv5x" role="3eOfB_">
                        <node concept="3SKdUt" id="57bl67CHv5y" role="3cqZAp">
                          <node concept="3SKdUq" id="57bl67CHv5z" role="3SKWNk">
                            <property role="3SKdUp" value="YES previous, YES new" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="57bl67CHv5$" role="3cqZAp">
                          <node concept="37vLTI" id="57bl67CHv5_" role="3clFbG">
                            <node concept="37vLTw" id="57bl67CHv5A" role="37vLTx">
                              <ref role="3cqZAo" node="57bl67CHv4M" resolve="newRemoteBranch" />
                            </node>
                            <node concept="2OqwBi" id="57bl67CHFJ7" role="37vLTJ">
                              <node concept="Xjq3P" id="57bl67CHFJ8" role="2Oq$k0" />
                              <node concept="2OwXpG" id="57bl67CHFJ9" role="2OqNvi">
                                <ref role="2Oxat5" node="57bl67CHDeb" resolve="currentRemoteBranch" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="3clFbF" id="57bl67CHGdn" role="3cqZAp">
                          <node concept="2OqwBi" id="57bl67CHGdo" role="3clFbG">
                            <node concept="2OqwBi" id="57bl67CHGdp" role="2Oq$k0">
                              <node concept="Xjq3P" id="57bl67CHGdq" role="2Oq$k0" />
                              <node concept="2OwXpG" id="57bl67CHGdr" role="2OqNvi">
                                <ref role="2Oxat5" node="57bl67CH_XJ" resolve="remoteBranchHandler" />
                              </node>
                            </node>
                            <node concept="1Bd96e" id="57bl67CHGds" role="2OqNvi">
                              <node concept="2OqwBi" id="57bl67CHGdt" role="1BdPVh">
                                <node concept="37vLTw" id="57bl67CHGdu" role="2Oq$k0">
                                  <ref role="3cqZAo" node="57bl67CHv4M" resolve="newRemoteBranch" />
                                </node>
                                <node concept="liA8E" id="57bl67CHGdv" role="2OqNvi">
                                  <ref role="37wK5l" to="hr4p:~GitBranch.getFullName():java.lang.String" resolve="getFullName" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                      <node concept="3fqX7Q" id="57bl67CJ4TM" role="3eO9$A">
                        <node concept="2OqwBi" id="57bl67CJ4TO" role="3fr31v">
                          <node concept="2OqwBi" id="57bl67CJ4TP" role="2Oq$k0">
                            <node concept="2OqwBi" id="57bl67CJ4TQ" role="2Oq$k0">
                              <node concept="Xjq3P" id="57bl67CJ4TR" role="2Oq$k0" />
                              <node concept="2OwXpG" id="57bl67CJ4TS" role="2OqNvi">
                                <ref role="2Oxat5" node="57bl67CHDeb" resolve="currentRemoteBranch" />
                              </node>
                            </node>
                            <node concept="liA8E" id="57bl67CJ4TT" role="2OqNvi">
                              <ref role="37wK5l" to="hr4p:~GitBranch.getFullName():java.lang.String" resolve="getFullName" />
                            </node>
                          </node>
                          <node concept="liA8E" id="57bl67CJ4TU" role="2OqNvi">
                            <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                            <node concept="2OqwBi" id="57bl67CJ4TV" role="37wK5m">
                              <node concept="37vLTw" id="57bl67CJ4TW" role="2Oq$k0">
                                <ref role="3cqZAo" node="57bl67CHv4M" resolve="newRemoteBranch" />
                              </node>
                              <node concept="liA8E" id="57bl67CJ4TX" role="2OqNvi">
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
          </node>
          <node concept="3y3z36" id="57bl67CHv5P" role="3clFbw">
            <node concept="37vLTw" id="57bl67CHv5Q" role="3uHU7B">
              <ref role="3cqZAo" node="57bl67CHv4E" resolve="newLocalBranch" />
            </node>
            <node concept="10Nm6u" id="57bl67CHv5R" role="3uHU7w" />
          </node>
          <node concept="3eNFk2" id="57bl67CHv5S" role="3eNLev">
            <node concept="3y3z36" id="57bl67CHv5T" role="3eO9$A">
              <node concept="10Nm6u" id="57bl67CHv5U" role="3uHU7w" />
              <node concept="2OqwBi" id="57bl67CHFFG" role="3uHU7B">
                <node concept="Xjq3P" id="57bl67CHFFH" role="2Oq$k0" />
                <node concept="2OwXpG" id="57bl67CHFFI" role="2OqNvi">
                  <ref role="2Oxat5" node="57bl67CHDeb" resolve="currentRemoteBranch" />
                </node>
              </node>
            </node>
            <node concept="3clFbS" id="57bl67CHv5W" role="3eOfB_">
              <node concept="3SKdUt" id="57bl67CHv5X" role="3cqZAp">
                <node concept="3SKdUq" id="57bl67CHv5Y" role="3SKWNk">
                  <property role="3SKdUp" value="odd case, no local branch, but we had a remote" />
                </node>
              </node>
              <node concept="3clFbF" id="57bl67CHv5Z" role="3cqZAp">
                <node concept="37vLTI" id="57bl67CHv60" role="3clFbG">
                  <node concept="10Nm6u" id="57bl67CHv61" role="37vLTx" />
                  <node concept="2OqwBi" id="57bl67CHFCj" role="37vLTJ">
                    <node concept="Xjq3P" id="57bl67CHFCk" role="2Oq$k0" />
                    <node concept="2OwXpG" id="57bl67CHFCl" role="2OqNvi">
                      <ref role="2Oxat5" node="57bl67CHDeb" resolve="currentRemoteBranch" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbF" id="57bl67CHH5a" role="3cqZAp">
                <node concept="2OqwBi" id="57bl67CHH5b" role="3clFbG">
                  <node concept="2OqwBi" id="57bl67CHH5c" role="2Oq$k0">
                    <node concept="Xjq3P" id="57bl67CHH5d" role="2Oq$k0" />
                    <node concept="2OwXpG" id="57bl67CHH5e" role="2OqNvi">
                      <ref role="2Oxat5" node="57bl67CH_XJ" resolve="remoteBranchHandler" />
                    </node>
                  </node>
                  <node concept="1Bd96e" id="57bl67CHH5f" role="2OqNvi">
                    <node concept="10Nm6u" id="57bl67CHH5g" role="1BdPVh" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="57bl67CHuZp" role="jymVt" />
    <node concept="3Tm1VV" id="57bl67CHuVs" role="1B3o_S" />
    <node concept="3uibUv" id="57bl67CHuZP" role="EKbjA">
      <ref role="3uigEE" to="5mlj:~GitRepositoryChangeListener" resolve="GitRepositoryChangeListener" />
    </node>
  </node>
</model>

