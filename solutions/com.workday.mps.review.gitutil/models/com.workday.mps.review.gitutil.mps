<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:5caa2940-5c44-4b00-97ca-af83cc589779(com.workday.mps.review.gitutil)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
  </languages>
  <imports>
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="5mlj" ref="6fd1293f-7f65-4ffd-99dc-4719eca7c171/java:git4idea.repo(jetbrains.mps.ide.vcs.platform/)" />
    <import index="rfyv" ref="6fd1293f-7f65-4ffd-99dc-4719eca7c171/java:git4idea.branch(jetbrains.mps.ide.vcs.platform/)" />
    <import index="hr4p" ref="6fd1293f-7f65-4ffd-99dc-4719eca7c171/java:git4idea(jetbrains.mps.ide.vcs.platform/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1081236700938" name="jetbrains.mps.baseLanguage.structure.StaticMethodDeclaration" flags="ig" index="2YIFZL" />
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070533707846" name="jetbrains.mps.baseLanguage.structure.StaticFieldReference" flags="nn" index="10M0yZ">
        <reference id="1144433057691" name="classifier" index="1PxDUh" />
      </concept>
      <concept id="1068390468198" name="jetbrains.mps.baseLanguage.structure.ClassConcept" flags="ig" index="312cEu" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
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
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
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
  <node concept="312cEu" id="3c3vDUlf8lu">
    <property role="TrG5h" value="ReviewGitUtil" />
    <node concept="2YIFZL" id="3c3vDUlfk$s" role="jymVt">
      <property role="TrG5h" value="getCurrentTrackedBranch" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="3c3vDUlfeGm" role="3clF47">
        <node concept="1X3_iC" id="4jOGKLhvAuy" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="3c3vDUllWa9" role="8Wnug">
            <node concept="3cpWsn" id="3c3vDUllWaa" role="3cpWs9">
              <property role="TrG5h" value="currentRepository" />
              <node concept="3uibUv" id="3c3vDUllWa6" role="1tU5fm">
                <ref role="3uigEE" to="5mlj:~GitRepository" resolve="GitRepository" />
              </node>
              <node concept="2YIFZM" id="3c3vDUllWab" role="33vP2m">
                <ref role="37wK5l" to="rfyv:~GitBranchUtil.getCurrentRepository(com.intellij.openapi.project.Project):git4idea.repo.GitRepository" resolve="getCurrentRepository" />
                <ref role="1Pybhc" to="rfyv:~GitBranchUtil" resolve="GitBranchUtil" />
                <node concept="37vLTw" id="3c3vDUllWac" role="37wK5m">
                  <ref role="3cqZAo" node="3c3vDUlfeYc" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4jOGKLhvAuz" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs8" id="3c3vDUllXu0" role="8Wnug">
            <node concept="3cpWsn" id="3c3vDUllXu1" role="3cpWs9">
              <property role="TrG5h" value="trackedBranch" />
              <node concept="3uibUv" id="3c3vDUllXtZ" role="1tU5fm">
                <ref role="3uigEE" to="hr4p:~GitRemoteBranch" resolve="GitRemoteBranch" />
              </node>
              <node concept="2OqwBi" id="3c3vDUllXu2" role="33vP2m">
                <node concept="2OqwBi" id="3c3vDUllXu3" role="2Oq$k0">
                  <node concept="37vLTw" id="3c3vDUllXu4" role="2Oq$k0">
                    <ref role="3cqZAo" node="3c3vDUllWaa" resolve="currentRepository" />
                  </node>
                  <node concept="liA8E" id="3c3vDUllXu5" role="2OqNvi">
                    <ref role="37wK5l" to="5mlj:~GitRepository.getCurrentBranch():git4idea.GitLocalBranch" resolve="getCurrentBranch" />
                  </node>
                </node>
                <node concept="liA8E" id="3c3vDUllXu6" role="2OqNvi">
                  <ref role="37wK5l" to="hr4p:~GitLocalBranch.findTrackedBranch(git4idea.repo.GitRepository):git4idea.GitRemoteBranch" resolve="findTrackedBranch" />
                  <node concept="37vLTw" id="3c3vDUllXu7" role="37wK5m">
                    <ref role="3cqZAo" node="3c3vDUllWaa" resolve="currentRepository" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4jOGKLhvAu$" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="3c3vDUltUWK" role="8Wnug">
            <node concept="2OqwBi" id="3c3vDUltUWH" role="3clFbG">
              <node concept="10M0yZ" id="3c3vDUltUWI" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
              </node>
              <node concept="liA8E" id="3c3vDUltUWJ" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="2OqwBi" id="3c3vDUltV4m" role="37wK5m">
                  <node concept="37vLTw" id="3c3vDUltV4n" role="2Oq$k0">
                    <ref role="3cqZAo" node="3c3vDUllXu1" resolve="trackedBranch" />
                  </node>
                  <node concept="liA8E" id="3c3vDUltV4o" role="2OqNvi">
                    <ref role="37wK5l" to="hr4p:~GitReference.getName():java.lang.String" resolve="getName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4jOGKLhvAu_" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="3c3vDUltVqD" role="8Wnug">
            <node concept="2OqwBi" id="3c3vDUltVqE" role="3clFbG">
              <node concept="10M0yZ" id="3c3vDUltVqF" role="2Oq$k0">
                <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              </node>
              <node concept="liA8E" id="3c3vDUltVqG" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="2OqwBi" id="3c3vDUltVqH" role="37wK5m">
                  <node concept="37vLTw" id="3c3vDUltVqI" role="2Oq$k0">
                    <ref role="3cqZAo" node="3c3vDUllXu1" resolve="trackedBranch" />
                  </node>
                  <node concept="liA8E" id="3c3vDUltVTL" role="2OqNvi">
                    <ref role="37wK5l" to="hr4p:~GitBranch.getFullName():java.lang.String" resolve="getFullName" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4jOGKLhvAuA" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="3c3vDUltVsD" role="8Wnug">
            <node concept="2OqwBi" id="3c3vDUltVsE" role="3clFbG">
              <node concept="10M0yZ" id="3c3vDUltVsF" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
              </node>
              <node concept="liA8E" id="3c3vDUltVsG" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="2OqwBi" id="3c3vDUltVsH" role="37wK5m">
                  <node concept="37vLTw" id="3c3vDUltVsI" role="2Oq$k0">
                    <ref role="3cqZAo" node="3c3vDUllXu1" resolve="trackedBranch" />
                  </node>
                  <node concept="liA8E" id="3c3vDUltW1P" role="2OqNvi">
                    <ref role="37wK5l" to="hr4p:~GitRemoteBranch.getNameForLocalOperations():java.lang.String" resolve="getNameForLocalOperations" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4jOGKLhvAuB" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="3c3vDUltVFW" role="8Wnug">
            <node concept="2OqwBi" id="3c3vDUltVFX" role="3clFbG">
              <node concept="10M0yZ" id="3c3vDUltVFY" role="2Oq$k0">
                <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
                <ref role="3cqZAo" to="wyt6:~System.err" resolve="err" />
              </node>
              <node concept="liA8E" id="3c3vDUltVFZ" role="2OqNvi">
                <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
                <node concept="2OqwBi" id="3c3vDUltVG0" role="37wK5m">
                  <node concept="37vLTw" id="3c3vDUltVG1" role="2Oq$k0">
                    <ref role="3cqZAo" node="3c3vDUllXu1" resolve="trackedBranch" />
                  </node>
                  <node concept="liA8E" id="3c3vDUltW9T" role="2OqNvi">
                    <ref role="37wK5l" to="hr4p:~GitRemoteBranch.getNameForRemoteOperations():java.lang.String" resolve="getNameForRemoteOperations" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="4jOGKLhvAuC" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbH" id="3c3vDUlffSw" role="8Wnug" />
        </node>
        <node concept="1X3_iC" id="4jOGKLhvAuD" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs6" id="3c3vDUlfePf" role="8Wnug">
            <node concept="2OqwBi" id="3c3vDUllYsu" role="3cqZAk">
              <node concept="37vLTw" id="3c3vDUllY3Y" role="2Oq$k0">
                <ref role="3cqZAo" node="3c3vDUllXu1" resolve="trackedBranch" />
              </node>
              <node concept="liA8E" id="3c3vDUllYPa" role="2OqNvi">
                <ref role="37wK5l" to="hr4p:~GitRemoteBranch.getNameForRemoteOperations():java.lang.String" resolve="getNameForRemoteOperations" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4jOGKLhvKqr" role="3cqZAp">
          <node concept="Xl_RD" id="4jOGKLhvKqq" role="3clFbG">
            <property role="Xl_RC" value="dummy" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3c3vDUlfeYc" role="3clF46">
        <property role="TrG5h" value="project" />
        <node concept="3uibUv" id="3c3vDUlfeYb" role="1tU5fm">
          <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
        </node>
      </node>
      <node concept="17QB3L" id="3c3vDUlfeGc" role="3clF45" />
      <node concept="3Tm1VV" id="3c3vDUlf8u$" role="1B3o_S" />
    </node>
    <node concept="3Tm1VV" id="3c3vDUlf8lv" role="1B3o_S" />
  </node>
</model>

