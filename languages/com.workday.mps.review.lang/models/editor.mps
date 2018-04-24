<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:73d53e1d-b393-47fc-a477-933ec15a23b8(com.workday.mps.review.lang.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="11" />
    <use id="b8bb702e-43ed-4090-a902-d180d3e5f292" name="de.slisson.mps.conditionalEditor" version="0" />
    <use id="28f9e497-3b42-4291-aeba-0a1039153ab1" name="jetbrains.mps.lang.plugin" version="2" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
    <devkit ref="2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)" />
  </languages>
  <imports>
    <import index="ii13" ref="r:a13717ec-0f28-4c83-aaaa-0b10931768b8(com.workday.mps.review.plugin)" />
    <import index="ddhc" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.ide(MPS.IDEA/)" />
    <import index="qkt" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.actionSystem(MPS.IDEA/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="4nm9" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.project(MPS.IDEA/)" />
    <import index="alof" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.ide.project(MPS.Platform/)" />
    <import index="z1c3" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.project(MPS.Platform/)" />
    <import index="eqyk" ref="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61/java:jetbrains.mps.plugins.tool(MPS.Platform/)" />
    <import index="zn9m" ref="498d89d2-c2e9-11e2-ad49-6cf049e62fe5/java:com.intellij.openapi.util(MPS.IDEA/)" />
    <import index="z1c4" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.project(MPS.Core/)" />
    <import index="cj4x" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.openapi.editor(MPS.Editor/)" />
    <import index="w1kc" ref="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea/java:jetbrains.mps.smodel(MPS.Core/)" />
    <import index="exr9" ref="1ed103c3-3aa6-49b7-9c21-6765ee11f224/java:jetbrains.mps.nodeEditor(MPS.Editor/)" />
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="czez" ref="r:31cec7e7-dd44-4ba6-ae3f-ee48ddd83b42(com.workday.mps.review.store)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="b8bb702e-43ed-4090-a902-d180d3e5f292" name="de.slisson.mps.conditionalEditor">
      <concept id="2877762237606985499" name="de.slisson.mps.conditionalEditor.structure.EditorCondition" flags="ig" index="RtMap" />
      <concept id="2877762237606934069" name="de.slisson.mps.conditionalEditor.structure.ConditionalConceptEditorDeclaration" flags="ig" index="RtYIR">
        <property id="2877762237607078183" name="priority" index="Rtri_" />
        <property id="8436908933892732653" name="uniqueName" index="3NULOk" />
        <child id="2877762237607015161" name="condition" index="RtEXV" />
      </concept>
    </language>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1142886811589" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_node" flags="nn" index="pncrf" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="8383079901754291618" name="jetbrains.mps.lang.editor.structure.CellModel_NextEditor" flags="ng" index="B$lHz" />
      <concept id="1103016434866" name="jetbrains.mps.lang.editor.structure.CellModel_JComponent" flags="sg" stub="8104358048506731196" index="3gTLQM">
        <child id="1176475119347" name="componentProvider" index="3FoqZy" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1176474535556" name="jetbrains.mps.lang.editor.structure.QueryFunction_JComponent" flags="in" index="3Fmcul" />
      <concept id="1161622981231" name="jetbrains.mps.lang.editor.structure.ConceptFunctionParameter_editorContext" flags="nn" index="1Q80Hx" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1164879751025" name="jetbrains.mps.baseLanguage.structure.TryCatchStatement" flags="nn" index="SfApY">
        <child id="1164879758292" name="body" index="SfCbr" />
        <child id="1164903496223" name="catchClause" index="TEbGg" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1164903280175" name="jetbrains.mps.baseLanguage.structure.CatchClause" flags="nn" index="TDmWw">
        <child id="1164903359218" name="catchBody" index="TDEfX" />
        <child id="1164903359217" name="throwable" index="TDEfY" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534934090" name="jetbrains.mps.baseLanguage.structure.CastExpression" flags="nn" index="10QFUN">
        <child id="1070534934091" name="type" index="10QFUM" />
        <child id="1070534934092" name="expression" index="10QFUP" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="6329021646629104957" name="jetbrains.mps.baseLanguage.structure.TextCommentPart" flags="nn" index="3SKdUq">
        <property id="6329021646629104958" name="text" index="3SKdUp" />
      </concept>
      <concept id="6329021646629104954" name="jetbrains.mps.baseLanguage.structure.SingleLineComment" flags="nn" index="3SKdUt">
        <child id="6329021646629175155" name="commentPart" index="3SKWNk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="RtYIR" id="7Ch0QDHCCxh">
    <property role="Rtri_" value="100" />
    <property role="3NULOk" value="ReviewCommentView" />
    <ref role="1XX52x" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="RtMap" id="7Ch0QDHCCxK" role="RtEXV">
      <node concept="3clFbS" id="7Ch0QDHCCxL" role="2VODD2">
        <node concept="SfApY" id="6Xz2okKF8ey" role="3cqZAp">
          <node concept="3clFbS" id="6Xz2okKF8e$" role="SfCbr">
            <node concept="3cpWs8" id="3QNL$G6TeLq" role="3cqZAp">
              <node concept="3cpWsn" id="3QNL$G6TeLr" role="3cpWs9">
                <property role="TrG5h" value="mpsProject" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="3QNL$G6TeLn" role="1tU5fm">
                  <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="3QNL$G6TeLs" role="33vP2m">
                  <node concept="2OqwBi" id="3QNL$G6TeLt" role="2Oq$k0">
                    <node concept="1Q80Hx" id="3QNL$G6TeLu" role="2Oq$k0" />
                    <node concept="liA8E" id="3QNL$G6TeLv" role="2OqNvi">
                      <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                    </node>
                  </node>
                  <node concept="liA8E" id="3QNL$G6TeLw" role="2OqNvi">
                    <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="3REobdwQF8I" role="3cqZAp">
              <node concept="3cpWsn" id="3REobdwQF8J" role="3cpWs9">
                <property role="TrG5h" value="ideaProject" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="3REobdwQF8E" role="1tU5fm">
                  <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                </node>
                <node concept="2OqwBi" id="3REobdwQF8K" role="33vP2m">
                  <node concept="1eOMI4" id="3REobdwQF8L" role="2Oq$k0">
                    <node concept="10QFUN" id="3REobdwQF8M" role="1eOMHV">
                      <node concept="3uibUv" id="3REobdwQF8N" role="10QFUM">
                        <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                      </node>
                      <node concept="37vLTw" id="3REobdwQF8O" role="10QFUP">
                        <ref role="3cqZAo" node="3QNL$G6TeLr" resolve="mpsProject" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="3REobdwQF8P" role="2OqNvi">
                    <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4jyU69OmdJB" role="3cqZAp">
              <node concept="3cpWsn" id="4jyU69OmdJC" role="3cpWs9">
                <property role="TrG5h" value="plugin" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="4jyU69OmdJA" role="1tU5fm">
                  <ref role="3uigEE" to="ii13:168JFiagldf" resolve="ReviewPlugin" />
                </node>
                <node concept="2YIFZM" id="4jyU69OmdJD" role="33vP2m">
                  <ref role="37wK5l" to="ii13:3okjBs8jl9E" resolve="getPlugin" />
                  <ref role="1Pybhc" to="ii13:2DOSxD2O3Px" resolve="ReviewToolUtil" />
                  <node concept="37vLTw" id="4jyU69OmdJE" role="37wK5m">
                    <ref role="3cqZAo" node="3REobdwQF8J" resolve="ideaProject" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="4jyU69Omf_3" role="3cqZAp">
              <node concept="3cpWsn" id="4jyU69Omf_4" role="3cpWs9">
                <property role="TrG5h" value="stire" />
                <property role="3TUv4t" value="true" />
                <node concept="3uibUv" id="4jyU69Omf$W" role="1tU5fm">
                  <ref role="3uigEE" to="czez:4Ew7qBDg_9q" resolve="SettingsStore" />
                </node>
                <node concept="2OqwBi" id="4jyU69Omf_5" role="33vP2m">
                  <node concept="37vLTw" id="4jyU69Omf_6" role="2Oq$k0">
                    <ref role="3cqZAo" node="4jyU69OmdJC" resolve="plugin" />
                  </node>
                  <node concept="liA8E" id="4jyU69Omf_7" role="2OqNvi">
                    <ref role="37wK5l" to="ii13:4jyU69Om7iC" resolve="getSettingsStore" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="4jyU69Omel1" role="3cqZAp">
              <node concept="3clFbS" id="4jyU69Omel3" role="3clFbx">
                <node concept="3cpWs8" id="3okjBs8jFJR" role="3cqZAp">
                  <node concept="3cpWsn" id="3okjBs8jFJS" role="3cpWs9">
                    <property role="TrG5h" value="manager" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="3okjBs8jFJT" role="1tU5fm">
                      <ref role="3uigEE" to="ii13:3okjBs8glGa" resolve="InlineCommentManager" />
                    </node>
                    <node concept="2OqwBi" id="3okjBs8jFJU" role="33vP2m">
                      <node concept="37vLTw" id="4jyU69OmdJF" role="2Oq$k0">
                        <ref role="3cqZAo" node="4jyU69OmdJC" resolve="plugin" />
                      </node>
                      <node concept="liA8E" id="3okjBs8jFJX" role="2OqNvi">
                        <ref role="37wK5l" to="ii13:3okjBs8juuP" resolve="getInlineCommentManager" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3REobdwQGbP" role="3cqZAp">
                  <node concept="2OqwBi" id="3okjBs8jHDd" role="3cqZAk">
                    <node concept="37vLTw" id="3okjBs8jHnh" role="2Oq$k0">
                      <ref role="3cqZAo" node="3okjBs8jFJS" resolve="manager" />
                    </node>
                    <node concept="liA8E" id="3okjBs8jHVl" role="2OqNvi">
                      <ref role="37wK5l" to="ii13:3okjBs8gtUY" resolve="hasComment" />
                      <node concept="pncrf" id="3okjBs8jI8x" role="37wK5m" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="4jyU69Omgba" role="3clFbw">
                <node concept="37vLTw" id="4jyU69Omf_8" role="2Oq$k0">
                  <ref role="3cqZAo" node="4jyU69Omf_4" resolve="stire" />
                </node>
                <node concept="liA8E" id="4jyU69Omgys" role="2OqNvi">
                  <ref role="37wK5l" to="czez:4Ew7qBDgA00" resolve="getShowInlineComments" />
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="6Xz2okKF8e_" role="TEbGg">
            <node concept="3cpWsn" id="6Xz2okKF8eB" role="TDEfY">
              <property role="TrG5h" value="e" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="6Xz2okKF8D9" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
              </node>
            </node>
            <node concept="3clFbS" id="6Xz2okKF8eF" role="TDEfX">
              <node concept="3SKdUt" id="4jyU69OmhDP" role="3cqZAp">
                <node concept="3SKdUq" id="4jyU69OmhDQ" role="3SKWNk">
                  <property role="3SKdUp" value="ignore" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3REobdwQIiQ" role="3cqZAp">
          <node concept="3clFbT" id="3REobdwQIBo" role="3cqZAk">
            <property role="3clFbU" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="3EZMnI" id="4TXYzdeTGA9" role="2wV5jI">
      <node concept="2iRkQZ" id="3okjBs8gce2" role="2iSdaV" />
      <node concept="3gTLQM" id="3okjBs8gkty" role="3EZMnx">
        <node concept="3Fmcul" id="3okjBs8gktA" role="3FoqZy">
          <node concept="3clFbS" id="3okjBs8gktE" role="2VODD2">
            <node concept="SfApY" id="3okjBs8km8g" role="3cqZAp">
              <node concept="3clFbS" id="3okjBs8kkap" role="SfCbr">
                <node concept="3cpWs8" id="3okjBs8j_Hw" role="3cqZAp">
                  <node concept="3cpWsn" id="3okjBs8j_Hx" role="3cpWs9">
                    <property role="TrG5h" value="mpsProject" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="3okjBs8j_Hy" role="1tU5fm">
                      <ref role="3uigEE" to="z1c4:~Project" resolve="Project" />
                    </node>
                    <node concept="2OqwBi" id="3okjBs8j_Hz" role="33vP2m">
                      <node concept="2OqwBi" id="3okjBs8j_H$" role="2Oq$k0">
                        <node concept="1Q80Hx" id="3okjBs8j_H_" role="2Oq$k0" />
                        <node concept="liA8E" id="3okjBs8j_HA" role="2OqNvi">
                          <ref role="37wK5l" to="cj4x:~EditorContext.getOperationContext():jetbrains.mps.smodel.IOperationContext" resolve="getOperationContext" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3okjBs8j_HB" role="2OqNvi">
                        <ref role="37wK5l" to="w1kc:~IOperationContext.getProject():jetbrains.mps.project.Project" resolve="getProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3okjBs8j_HC" role="3cqZAp">
                  <node concept="3cpWsn" id="3okjBs8j_HD" role="3cpWs9">
                    <property role="TrG5h" value="ideaProject" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="3okjBs8j_HE" role="1tU5fm">
                      <ref role="3uigEE" to="4nm9:~Project" resolve="Project" />
                    </node>
                    <node concept="2OqwBi" id="3okjBs8j_HF" role="33vP2m">
                      <node concept="1eOMI4" id="3okjBs8j_HG" role="2Oq$k0">
                        <node concept="10QFUN" id="3okjBs8j_HH" role="1eOMHV">
                          <node concept="3uibUv" id="3okjBs8j_HI" role="10QFUM">
                            <ref role="3uigEE" to="z1c3:~MPSProject" resolve="MPSProject" />
                          </node>
                          <node concept="37vLTw" id="3okjBs8j_HJ" role="10QFUP">
                            <ref role="3cqZAo" node="3okjBs8j_Hx" resolve="mpsProject" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="3okjBs8j_HK" role="2OqNvi">
                        <ref role="37wK5l" to="z1c3:~MPSProject.getProject():com.intellij.openapi.project.Project" resolve="getProject" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3okjBs8jCER" role="3cqZAp">
                  <node concept="3cpWsn" id="3okjBs8jCES" role="3cpWs9">
                    <property role="TrG5h" value="inlineCommentManager" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="3okjBs8jCEG" role="1tU5fm">
                      <ref role="3uigEE" to="ii13:3okjBs8glGa" resolve="InlineCommentManager" />
                    </node>
                    <node concept="2OqwBi" id="3okjBs8jCET" role="33vP2m">
                      <node concept="2YIFZM" id="3okjBs8jCEU" role="2Oq$k0">
                        <ref role="37wK5l" to="ii13:3okjBs8jl9E" resolve="getPlugin" />
                        <ref role="1Pybhc" to="ii13:2DOSxD2O3Px" resolve="ReviewToolUtil" />
                        <node concept="37vLTw" id="3okjBs8jCEV" role="37wK5m">
                          <ref role="3cqZAo" node="3okjBs8j_HD" resolve="ideaProject" />
                        </node>
                      </node>
                      <node concept="liA8E" id="3okjBs8jCEW" role="2OqNvi">
                        <ref role="37wK5l" to="ii13:3okjBs8juuP" resolve="getInlineCommentManager" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs8" id="3okjBs8mbaA" role="3cqZAp">
                  <node concept="3cpWsn" id="3okjBs8mbaB" role="3cpWs9">
                    <property role="TrG5h" value="inlineComponent" />
                    <property role="3TUv4t" value="true" />
                    <node concept="3uibUv" id="3okjBs8mbal" role="1tU5fm">
                      <ref role="3uigEE" to="dxuu:~JComponent" resolve="JComponent" />
                    </node>
                    <node concept="2OqwBi" id="3okjBs8mbaC" role="33vP2m">
                      <node concept="37vLTw" id="3okjBs8mbaD" role="2Oq$k0">
                        <ref role="3cqZAo" node="3okjBs8jCES" resolve="inlineCommentManager" />
                      </node>
                      <node concept="liA8E" id="3okjBs8mbaE" role="2OqNvi">
                        <ref role="37wK5l" to="ii13:3okjBs8gpUC" resolve="generateInlineCommentComponent" />
                        <node concept="pncrf" id="3okjBs8mbaF" role="37wK5m" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3clFbF" id="__fp3cmb5t" role="3cqZAp">
                  <node concept="2OqwBi" id="__fp3cmbFm" role="3clFbG">
                    <node concept="37vLTw" id="__fp3cmb5r" role="2Oq$k0">
                      <ref role="3cqZAo" node="3okjBs8mbaB" resolve="inlineComponent" />
                    </node>
                    <node concept="liA8E" id="__fp3cmcJE" role="2OqNvi">
                      <ref role="37wK5l" to="dxuu:~JComponent.setMaximumSize(java.awt.Dimension):void" resolve="setMaximumSize" />
                      <node concept="2ShNRf" id="__fp3cmd35" role="37wK5m">
                        <node concept="1pGfFk" id="__fp3cmlFh" role="2ShVmc">
                          <ref role="37wK5l" to="z60i:~Dimension.&lt;init&gt;(int,int)" resolve="Dimension" />
                          <node concept="3cmrfG" id="__fp3cmmaJ" role="37wK5m">
                            <property role="3cmrfH" value="600" />
                          </node>
                          <node concept="3cmrfG" id="__fp3cmttl" role="37wK5m">
                            <property role="3cmrfH" value="10000" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3cpWs6" id="3okjBs8jDsh" role="3cqZAp">
                  <node concept="37vLTw" id="3okjBs8mbaG" role="3cqZAk">
                    <ref role="3cqZAo" node="3okjBs8mbaB" resolve="inlineComponent" />
                  </node>
                </node>
              </node>
              <node concept="TDmWw" id="3okjBs8klEa" role="TEbGg">
                <node concept="3cpWsn" id="3okjBs8klEb" role="TDEfY">
                  <property role="TrG5h" value="t" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="3okjBs8kuYn" role="1tU5fm">
                    <ref role="3uigEE" to="wyt6:~Throwable" resolve="Throwable" />
                  </node>
                </node>
                <node concept="3clFbS" id="3okjBs8klEd" role="TDEfX">
                  <node concept="3clFbF" id="4jyU69OkZrd" role="3cqZAp">
                    <node concept="2OqwBi" id="4jyU69OkZG2" role="3clFbG">
                      <node concept="37vLTw" id="4jyU69OkZrb" role="2Oq$k0">
                        <ref role="3cqZAo" node="3okjBs8klEb" resolve="t" />
                      </node>
                      <node concept="liA8E" id="4jyU69Ol0jv" role="2OqNvi">
                        <ref role="37wK5l" to="wyt6:~Throwable.printStackTrace():void" resolve="printStackTrace" />
                      </node>
                    </node>
                  </node>
                  <node concept="3cpWs6" id="3okjBs8kwaU" role="3cqZAp">
                    <node concept="2ShNRf" id="3okjBs8kwb6" role="3cqZAk">
                      <node concept="1pGfFk" id="3okjBs8kxBi" role="2ShVmc">
                        <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="B$lHz" id="4TXYzdeTKC4" role="3EZMnx" />
    </node>
  </node>
</model>

