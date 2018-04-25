<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0889667f-dcfd-4a97-b16d-d9d03792dbfe(com.workday.mps.review.bitbucket.server.plugin)">
  <persistence version="9" />
  <languages>
    <use id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage" version="5" />
    <use id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections" version="0" />
    <use id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc" version="2" />
    <use id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension" version="2" />
    <use id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone" version="0" />
  </languages>
  <imports>
    <import index="dxuu" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing(JDK/)" />
    <import index="ii13" ref="r:a13717ec-0f28-4c83-aaaa-0b10931768b8(com.workday.mps.review.plugin)" />
    <import index="rm1r" ref="r:54ab0316-9f2c-44c5-97f8-2a56eee98fda(com.workday.mps.review.ui.swing)" />
    <import index="z60i" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.awt(JDK/)" />
    <import index="r791" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:javax.swing.text(JDK/)" />
    <import index="wyt6" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang(JDK/)" />
    <import index="33ny" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util(JDK/)" />
    <import index="mhfm" ref="3f233e7f-b8a6-46d2-a57f-795d56775243/java:org.jetbrains.annotations(Annotations/)" />
    <import index="m3q8" ref="r:abfa740c-751e-47d8-bae6-a0943e92d720(com.workday.mps.review.model)" />
    <import index="28m1" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.time(JDK/)" />
    <import index="2jep" ref="r:a3993581-a780-46ec-a6e0-1dd024d2037c(com.workday.mps.review.actions)" />
    <import index="guwi" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.io(JDK/)" />
    <import index="wy2b" ref="301737e2-0a75-4665-a1a3-af0218114a24/java:com.google.gson(com.workday.mps.review/)" />
    <import index="t6h5" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.lang.reflect(JDK/)" />
    <import index="gwgf" ref="301737e2-0a75-4665-a1a3-af0218114a24/java:okhttp3(com.workday.mps.review/)" />
    <import index="i5cy" ref="6354ebe7-c22a-4a0f-ac54-50b52ab9b065/java:java.util.concurrent.atomic(JDK/)" />
    <import index="14ci" ref="301737e2-0a75-4665-a1a3-af0218114a24/java:com.google.gson.reflect(com.workday.mps.review/)" />
    <import index="90d" ref="r:421d64ed-8024-497f-aeab-8bddeb389dd2(jetbrains.mps.lang.extension.methods)" implicit="true" />
  </imports>
  <registry>
    <language id="ef7bf5ac-d06c-4342-b11d-e42104eb9343" name="jetbrains.mps.lang.plugin.standalone">
      <concept id="7520713872864775836" name="jetbrains.mps.lang.plugin.standalone.structure.StandalonePluginDescriptor" flags="ng" index="2DaZZR" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1224071154655" name="jetbrains.mps.baseLanguage.structure.AsExpression" flags="nn" index="0kSF2">
        <child id="1224071154657" name="classifierType" index="0kSFW" />
        <child id="1224071154656" name="expression" index="0kSFX" />
      </concept>
      <concept id="1080223426719" name="jetbrains.mps.baseLanguage.structure.OrExpression" flags="nn" index="22lmx$" />
      <concept id="1082485599095" name="jetbrains.mps.baseLanguage.structure.BlockStatement" flags="nn" index="9aQIb">
        <child id="1082485599096" name="statements" index="9aQI4" />
      </concept>
      <concept id="1215693861676" name="jetbrains.mps.baseLanguage.structure.BaseAssignmentExpression" flags="nn" index="d038R">
        <child id="1068498886297" name="rValue" index="37vLTx" />
        <child id="1068498886295" name="lValue" index="37vLTJ" />
      </concept>
      <concept id="1202948039474" name="jetbrains.mps.baseLanguage.structure.InstanceMethodCallOperation" flags="nn" index="liA8E" />
      <concept id="1465982738277781862" name="jetbrains.mps.baseLanguage.structure.PlaceholderMember" flags="ng" index="2tJIrI" />
      <concept id="1224575136086" name="jetbrains.mps.baseLanguage.structure.EnumValueOfExpression" flags="nn" index="unr1b">
        <reference id="1224575174120" name="enumClass" index="un$jP" />
        <child id="1224575157853" name="value" index="unwt0" />
      </concept>
      <concept id="1188207840427" name="jetbrains.mps.baseLanguage.structure.AnnotationInstance" flags="nn" index="2AHcQZ">
        <reference id="1188208074048" name="annotation" index="2AI5Lk" />
      </concept>
      <concept id="1188208481402" name="jetbrains.mps.baseLanguage.structure.HasAnnotation" flags="ng" index="2AJDlI">
        <child id="1188208488637" name="annotation" index="2AJF6D" />
      </concept>
      <concept id="1095950406618" name="jetbrains.mps.baseLanguage.structure.DivExpression" flags="nn" index="FJ1c_" />
      <concept id="1153952380246" name="jetbrains.mps.baseLanguage.structure.TryStatement" flags="nn" index="2GUZhq">
        <child id="1153952416686" name="body" index="2GV8ay" />
        <child id="1153952429843" name="finallyBody" index="2GVbov" />
      </concept>
      <concept id="2820489544401957797" name="jetbrains.mps.baseLanguage.structure.DefaultClassCreator" flags="nn" index="HV5vD">
        <reference id="2820489544401957798" name="classifier" index="HV5vE" />
      </concept>
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1197029447546" name="jetbrains.mps.baseLanguage.structure.FieldReferenceOperation" flags="nn" index="2OwXpG">
        <reference id="1197029500499" name="fieldDeclaration" index="2Oxat5" />
      </concept>
      <concept id="1083245097125" name="jetbrains.mps.baseLanguage.structure.EnumClass" flags="ig" index="Qs71p">
        <child id="1083245396908" name="enumConstant" index="Qtgdg" />
      </concept>
      <concept id="1083245299891" name="jetbrains.mps.baseLanguage.structure.EnumConstantDeclaration" flags="ig" index="QsSxf" />
      <concept id="1083260308424" name="jetbrains.mps.baseLanguage.structure.EnumConstantReference" flags="nn" index="Rm8GO">
        <reference id="1083260308426" name="enumConstantDeclaration" index="Rm8GQ" />
        <reference id="1144432896254" name="enumClass" index="1Px2BO" />
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
      <concept id="1070462154015" name="jetbrains.mps.baseLanguage.structure.StaticFieldDeclaration" flags="ig" index="Wx3nA">
        <property id="6468716278899126575" name="isVolatile" index="2dlcS1" />
        <property id="6468716278899125786" name="isTransient" index="2dld4O" />
      </concept>
      <concept id="1070475354124" name="jetbrains.mps.baseLanguage.structure.ThisExpression" flags="nn" index="Xjq3P">
        <reference id="1182955020723" name="classConcept" index="1HBi2w" />
      </concept>
      <concept id="1070475587102" name="jetbrains.mps.baseLanguage.structure.SuperConstructorInvocation" flags="nn" index="XkiVB" />
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
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
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
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
        <child id="1095933932569" name="implementedInterface" index="EKbjA" />
        <child id="1165602531693" name="superclass" index="1zkMxy" />
      </concept>
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <property id="1176718929932" name="isFinal" index="3TUv4t" />
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1092119917967" name="jetbrains.mps.baseLanguage.structure.MulExpression" flags="nn" index="17qRlL" />
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
        <child id="1164879685961" name="throwsItem" index="Sfmx6" />
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
        <property id="4467513934994662257" name="forceMultiLine" index="TyiWK" />
        <property id="4467513934994662256" name="forceOneLine" index="TyiWL" />
        <child id="1082485599094" name="ifFalseStatement" index="9aQIa" />
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
        <child id="1206060520071" name="elsifClauses" index="3eNLev" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580123140" name="jetbrains.mps.baseLanguage.structure.ConstructorDeclaration" flags="ig" index="3clFbW" />
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242875" name="jetbrains.mps.baseLanguage.structure.PlusExpression" flags="nn" index="3cpWs3" />
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242867" name="jetbrains.mps.baseLanguage.structure.LongType" flags="in" index="3cpWsb" />
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1068581517677" name="jetbrains.mps.baseLanguage.structure.VoidType" flags="in" index="3cqZAl" />
      <concept id="1206060495898" name="jetbrains.mps.baseLanguage.structure.ElsifClause" flags="ng" index="3eNFk2">
        <child id="1206060619838" name="condition" index="3eO9$A" />
        <child id="1206060644605" name="statementList" index="3eOfB_" />
      </concept>
      <concept id="1079359253375" name="jetbrains.mps.baseLanguage.structure.ParenthesizedExpression" flags="nn" index="1eOMI4">
        <child id="1079359253376" name="expression" index="1eOMHV" />
      </concept>
      <concept id="1081506762703" name="jetbrains.mps.baseLanguage.structure.GreaterThanExpression" flags="nn" index="3eOSWO" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1081516740877" name="jetbrains.mps.baseLanguage.structure.NotExpression" flags="nn" index="3fqX7Q">
        <child id="1081516765348" name="expression" index="3fr31v" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1073063089578" name="jetbrains.mps.baseLanguage.structure.SuperMethodCall" flags="nn" index="3nyPlj" />
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107461130800" name="jetbrains.mps.baseLanguage.structure.Classifier" flags="ng" index="3pOWGL">
        <property id="521412098689998745" name="nonStatic" index="2bfB8j" />
        <child id="5375687026011219971" name="member" index="jymVt" unordered="true" />
      </concept>
      <concept id="1171903916106" name="jetbrains.mps.baseLanguage.structure.UpperBoundType" flags="in" index="3qUE_q">
        <child id="1171903916107" name="bound" index="3qUE_r" />
      </concept>
      <concept id="7812454656619025416" name="jetbrains.mps.baseLanguage.structure.MethodDeclaration" flags="ng" index="1rXfSm">
        <property id="8355037393041754995" name="isNative" index="2aFKle" />
      </concept>
      <concept id="7812454656619025412" name="jetbrains.mps.baseLanguage.structure.LocalMethodCall" flags="nn" index="1rXfSq" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
        <child id="1109201940907" name="parameter" index="11_B2D" />
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
      <concept id="1146644641414" name="jetbrains.mps.baseLanguage.structure.ProtectedVisibility" flags="nn" index="3Tmbuc" />
      <concept id="1116615150612" name="jetbrains.mps.baseLanguage.structure.ClassifierClassExpression" flags="nn" index="3VsKOn">
        <reference id="1116615189566" name="classifier" index="3VsUkX" />
      </concept>
      <concept id="1080120340718" name="jetbrains.mps.baseLanguage.structure.AndExpression" flags="nn" index="1Wc70l" />
      <concept id="1170345865475" name="jetbrains.mps.baseLanguage.structure.AnonymousClass" flags="ig" index="1Y3b0j">
        <reference id="1170346070688" name="classifier" index="1Y3XeK" />
      </concept>
    </language>
    <language id="c0080a47-7e37-4558-bee9-9ae18e690549" name="jetbrains.mps.lang.extension">
      <concept id="126958800891274162" name="jetbrains.mps.lang.extension.structure.Extension" flags="ig" index="1lYeZD">
        <reference id="126958800891274597" name="extensionPoint" index="1lYe$Y" />
      </concept>
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
    <language id="f2801650-65d5-424e-bb1b-463a8781b786" name="jetbrains.mps.baseLanguage.javadoc">
      <concept id="6832197706140896242" name="jetbrains.mps.baseLanguage.javadoc.structure.FieldDocComment" flags="ng" index="z59LJ" />
      <concept id="5349172909345501395" name="jetbrains.mps.baseLanguage.javadoc.structure.BaseDocComment" flags="ng" index="P$AiS">
        <child id="8465538089690331502" name="body" index="TZ5H$" />
      </concept>
      <concept id="8465538089690331500" name="jetbrains.mps.baseLanguage.javadoc.structure.CommentLine" flags="ng" index="TZ5HA">
        <child id="8970989240999019149" name="part" index="1dT_Ay" />
      </concept>
      <concept id="8970989240999019143" name="jetbrains.mps.baseLanguage.javadoc.structure.TextCommentLinePart" flags="ng" index="1dT_AC">
        <property id="8970989240999019144" name="text" index="1dT_AB" />
      </concept>
      <concept id="2068944020170241612" name="jetbrains.mps.baseLanguage.javadoc.structure.ClassifierDocComment" flags="ng" index="3UR2Jj" />
    </language>
    <language id="c7d5b9dd-a05f-4be2-bc73-f2e16994cc67" name="jetbrains.mps.baseLanguage.lightweightdsl">
      <concept id="3751132065236767083" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.DependentTypeInstance" flags="ig" index="q3mfm">
        <reference id="3751132065236767084" name="decl" index="q3mfh" />
        <reference id="9097849371505568270" name="point" index="1QQUv3" />
      </concept>
      <concept id="3751132065236767060" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MethodInstance" flags="ig" index="q3mfD">
        <reference id="19209059688387895" name="decl" index="2VtyIY" />
      </concept>
      <concept id="6478870542308703666" name="jetbrains.mps.baseLanguage.lightweightdsl.structure.MemberPlaceholder" flags="ng" index="3tTeZs">
        <property id="6478870542308703667" name="caption" index="3tTeZt" />
        <reference id="6478870542308703669" name="decl" index="3tTeZr" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
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
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="540871147943773365" name="jetbrains.mps.baseLanguage.collections.structure.SingleArgumentSequenceOperation" flags="nn" index="25WWJ4">
        <child id="540871147943773366" name="argument" index="25WWJ7" />
      </concept>
      <concept id="1151688443754" name="jetbrains.mps.baseLanguage.collections.structure.ListType" flags="in" index="_YKpA">
        <child id="1151688676805" name="elementType" index="_ZDj9" />
      </concept>
      <concept id="1237721394592" name="jetbrains.mps.baseLanguage.collections.structure.AbstractContainerCreator" flags="nn" index="HWqM0">
        <child id="1237721435807" name="elementType" index="HW$YZ" />
      </concept>
      <concept id="1227008614712" name="jetbrains.mps.baseLanguage.collections.structure.LinkedListCreator" flags="nn" index="2Jqq0_" />
      <concept id="1160612413312" name="jetbrains.mps.baseLanguage.collections.structure.AddElementOperation" flags="nn" index="TSZUe" />
      <concept id="1160666733551" name="jetbrains.mps.baseLanguage.collections.structure.AddAllElementsOperation" flags="nn" index="X8dFx" />
      <concept id="1162935959151" name="jetbrains.mps.baseLanguage.collections.structure.GetSizeOperation" flags="nn" index="34oBXx" />
      <concept id="1165525191778" name="jetbrains.mps.baseLanguage.collections.structure.GetFirstOperation" flags="nn" index="1uHKPH" />
    </language>
  </registry>
  <node concept="312cEu" id="5xIRlXi24Ld">
    <property role="3GE5qa" value="configuration.server" />
    <property role="TrG5h" value="BitbucketServerConfigurationView" />
    <node concept="2tJIrI" id="2n3pEWhkmwS" role="jymVt" />
    <node concept="312cEg" id="5xIRlXi92if" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="tokenField" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBf530N" role="1B3o_S" />
      <node concept="3uibUv" id="5xIRlXi92hU" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="312cEg" id="5xIRlXi28OR" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="hostnameField" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBf53M0" role="1B3o_S" />
      <node concept="3uibUv" id="5xIRlXi2R4n" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="312cEg" id="5xIRlXi28P8" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="apiVersionField" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBf54yp" role="1B3o_S" />
      <node concept="3uibUv" id="5xIRlXi2Rg6" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="312cEg" id="5xIRlXi28Pu" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="projectField" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBf55jA" role="1B3o_S" />
      <node concept="3uibUv" id="5xIRlXi2RrP" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="312cEg" id="5xIRlXi28PS" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="repositoryField" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBf5659" role="1B3o_S" />
      <node concept="3uibUv" id="5xIRlXi2RNj" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhkhTr" role="jymVt" />
    <node concept="3clFbW" id="5xIRlXi2ZUs" role="jymVt">
      <node concept="3cqZAl" id="5xIRlXi2ZUt" role="3clF45" />
      <node concept="3clFbS" id="5xIRlXi2ZUv" role="3clF47">
        <node concept="3clFbF" id="2n3pEWhktaB" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhkxKI" role="3clFbG">
            <node concept="2ShNRf" id="2n3pEWhkzy9" role="37vLTx">
              <node concept="1pGfFk" id="2n3pEWhkz4$" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
            <node concept="2OqwBi" id="2n3pEWhkuwt" role="37vLTJ">
              <node concept="Xjq3P" id="2n3pEWhkta_" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhkwqq" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi92if" resolve="tokenField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhkKbC" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhkRfz" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhkLC1" role="37vLTJ">
              <node concept="Xjq3P" id="2n3pEWhkKbA" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhkOpN" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28OR" resolve="hostnameField" />
              </node>
            </node>
            <node concept="2ShNRf" id="2n3pEWhkSnw" role="37vLTx">
              <node concept="1pGfFk" id="2n3pEWhkSnx" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhkTKk" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhkTKl" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhkTKm" role="37vLTJ">
              <node concept="Xjq3P" id="2n3pEWhkTKn" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhkXn5" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28P8" resolve="apiVersionField" />
              </node>
            </node>
            <node concept="2ShNRf" id="2n3pEWhkTKp" role="37vLTx">
              <node concept="1pGfFk" id="2n3pEWhkTKq" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhkTOZ" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhkTP0" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhkTP1" role="37vLTJ">
              <node concept="Xjq3P" id="2n3pEWhkTP2" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhkYrv" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28Pu" resolve="projectField" />
              </node>
            </node>
            <node concept="2ShNRf" id="2n3pEWhkTP4" role="37vLTx">
              <node concept="1pGfFk" id="2n3pEWhkTP5" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhkV1O" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhkV1P" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhkV1Q" role="37vLTJ">
              <node concept="Xjq3P" id="2n3pEWhkV1R" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhkZvT" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28PS" resolve="repositoryField" />
              </node>
            </node>
            <node concept="2ShNRf" id="2n3pEWhkV1T" role="37vLTx">
              <node concept="1pGfFk" id="2n3pEWhkV1U" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2n3pEWhkpAy" role="3cqZAp" />
        <node concept="3clFbF" id="5xIRlXi52$l" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi53mI" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi52$j" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi54DM" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager):void" resolve="setLayout" />
              <node concept="2ShNRf" id="5xIRlXi5quT" role="37wK5m">
                <node concept="1pGfFk" id="5xIRlXi5rBF" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="2n3pEWhlkvT" role="3cqZAp" />
        <node concept="3cpWs8" id="5xIRlXi7f_T" role="3cqZAp">
          <node concept="3cpWsn" id="5xIRlXi7f_U" role="3cpWs9">
            <property role="TrG5h" value="defaultConstraints" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="5xIRlXi7f_S" role="1tU5fm">
              <ref role="3uigEE" to="rm1r:5xIRlXi6V0N" resolve="GBC" />
            </node>
            <node concept="2OqwBi" id="5xIRlXifoFQ" role="33vP2m">
              <node concept="2OqwBi" id="5xIRlXieZSI" role="2Oq$k0">
                <node concept="2OqwBi" id="5xIRlXi7ivn" role="2Oq$k0">
                  <node concept="2OqwBi" id="5xIRlXi7hI9" role="2Oq$k0">
                    <node concept="2ShNRf" id="5xIRlXi7f_V" role="2Oq$k0">
                      <node concept="1pGfFk" id="5xIRlXi7f_W" role="2ShVmc">
                        <ref role="37wK5l" to="rm1r:5xIRlXi7bIk" resolve="GBC" />
                      </node>
                    </node>
                    <node concept="liA8E" id="5xIRlXi7hYG" role="2OqNvi">
                      <ref role="37wK5l" to="rm1r:5xIRlXi6Bow" resolve="withGridHeight" />
                      <node concept="3cmrfG" id="5xIRlXi7ikd" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5xIRlXi7iLv" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6_aE" resolve="withGridWidth" />
                    <node concept="3cmrfG" id="5xIRlXi7j81" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXif0Ws" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6IM1" resolve="withFill" />
                  <node concept="10M0yZ" id="5xIRlXif3Uo" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~GridBagConstraints.HORIZONTAL" resolve="HORIZONTAL" />
                    <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="5xIRlXifpOr" role="2OqNvi">
                <ref role="37wK5l" to="rm1r:5xIRlXi6ESk" resolve="withWeightX" />
                <node concept="3cmrfG" id="5xIRlXifqVf" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5xIRlXi8MYR" role="3cqZAp" />
        <node concept="3clFbF" id="5xIRlXi96K$" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi96K_" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi96KA" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi96KB" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="5xIRlXi96KC" role="37wK5m">
                <node concept="1pGfFk" id="5xIRlXi96KD" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="5xIRlXi96KE" role="37wK5m">
                    <property role="Xl_RC" value="Token:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi96KF" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi96KG" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi96KH" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi96KI" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXieCvf" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi96KK" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi96KL" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xIRlXi96KM" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi96KN" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi96KO" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi96KP" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="5xIRlXi99HG" role="37wK5m">
                <node concept="Xjq3P" id="5xIRlXi9a4N" role="2Oq$k0" />
                <node concept="2OwXpG" id="5xIRlXi99HJ" role="2OqNvi">
                  <ref role="2Oxat5" node="5xIRlXi92if" resolve="tokenField" />
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi96KR" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi96KS" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi96KT" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi96KU" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXieDbF" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi96KW" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi96KX" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5xIRlXicK5d" role="3cqZAp" />
        <node concept="3clFbF" id="5xIRlXi7CsH" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi7CsI" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi7CsJ" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi7CsK" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="5xIRlXi7CsL" role="37wK5m">
                <node concept="1pGfFk" id="5xIRlXi7CsM" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="5xIRlXi7CsN" role="37wK5m">
                    <property role="Xl_RC" value="Hostname:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi7CsO" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi7CsP" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi7CsQ" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi7CsR" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8S4T" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi7CsT" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi7CsU" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xIRlXi32Fl" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi32Fm" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi32Fn" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi32Fo" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="5xIRlXi9bJN" role="37wK5m">
                <node concept="Xjq3P" id="5xIRlXi9c6U" role="2Oq$k0" />
                <node concept="2OwXpG" id="5xIRlXi9bJQ" role="2OqNvi">
                  <ref role="2Oxat5" node="5xIRlXi28OR" resolve="hostnameField" />
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi7U1b" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi7U1c" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi7U1d" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi7U1e" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8SSh" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi7U1g" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi7U1h" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5xIRlXi7R52" role="3cqZAp" />
        <node concept="3clFbF" id="5xIRlXi7DbG" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi7DbH" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi7DbI" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi7DbJ" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="5xIRlXi7DbK" role="37wK5m">
                <node concept="1pGfFk" id="5xIRlXi7DbL" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="5xIRlXi7DbM" role="37wK5m">
                    <property role="Xl_RC" value="API Version:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi7DbN" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi7DbO" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi7DbP" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi7DbQ" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8TsG" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi7DbS" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi7DbT" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xIRlXi32F$" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi32F_" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi32FA" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi32FB" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="5xIRlXi9cHM" role="37wK5m">
                <node concept="Xjq3P" id="5xIRlXi9d4T" role="2Oq$k0" />
                <node concept="2OwXpG" id="5xIRlXi9cHP" role="2OqNvi">
                  <ref role="2Oxat5" node="5xIRlXi28P8" resolve="apiVersionField" />
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi7Y6K" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi7Y6L" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi7Y6M" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi7Y6N" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8TW6" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi7Y6P" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi7Y6Q" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5xIRlXi7RO2" role="3cqZAp" />
        <node concept="3clFbF" id="5xIRlXi7Ddu" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi7Ddv" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi7Ddw" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi7Ddx" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="5xIRlXi7Ddy" role="37wK5m">
                <node concept="1pGfFk" id="5xIRlXi7Ddz" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="5xIRlXi7Dd$" role="37wK5m">
                    <property role="Xl_RC" value="Project:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi7Dd_" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi7DdA" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi7DdB" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi7DdC" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8Uwx" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi7DdE" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi7DdF" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xIRlXi32FS" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi32FT" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi32FU" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi32FV" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="5xIRlXi9dFL" role="37wK5m">
                <node concept="Xjq3P" id="5xIRlXi9e2S" role="2Oq$k0" />
                <node concept="2OwXpG" id="5xIRlXi9dFO" role="2OqNvi">
                  <ref role="2Oxat5" node="5xIRlXi28Pu" resolve="projectField" />
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi7XAZ" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi7XB0" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi7XB1" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi7XB2" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8UZV" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi7XB4" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi7XB5" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5xIRlXi7Sz3" role="3cqZAp" />
        <node concept="3clFbF" id="5xIRlXi7F40" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi7F41" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi7F42" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi7F43" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="5xIRlXi7F44" role="37wK5m">
                <node concept="1pGfFk" id="5xIRlXi7F45" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="5xIRlXi7F46" role="37wK5m">
                    <property role="Xl_RC" value="Repository:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi7F47" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi7F48" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi7F49" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi7F4a" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8V$m" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi7F4c" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi7F4d" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="5xIRlXi32Gh" role="3cqZAp">
          <node concept="2OqwBi" id="5xIRlXi32Gi" role="3clFbG">
            <node concept="Xjq3P" id="5xIRlXi32Gj" role="2Oq$k0" />
            <node concept="liA8E" id="5xIRlXi32Gk" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="5xIRlXi9eDK" role="37wK5m">
                <node concept="Xjq3P" id="5xIRlXi9f0R" role="2Oq$k0" />
                <node concept="2OwXpG" id="5xIRlXi9eDN" role="2OqNvi">
                  <ref role="2Oxat5" node="5xIRlXi28PS" resolve="repositoryField" />
                </node>
              </node>
              <node concept="2OqwBi" id="5xIRlXi81yN" role="37wK5m">
                <node concept="2OqwBi" id="5xIRlXi81yO" role="2Oq$k0">
                  <node concept="37vLTw" id="5xIRlXi81yP" role="2Oq$k0">
                    <ref role="3cqZAo" node="5xIRlXi7f_U" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="5xIRlXi81yQ" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="5xIRlXi8W3K" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="5xIRlXi81yS" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="5xIRlXi81yT" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="5xIRlXi7Ti5" role="3cqZAp" />
        <node concept="1X3_iC" id="623PeBf4GWj" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="5xIRlXifEK1" role="8Wnug">
            <node concept="2OqwBi" id="5xIRlXifFZ0" role="3clFbG">
              <node concept="Xjq3P" id="5xIRlXifEJZ" role="2Oq$k0" />
              <node concept="liA8E" id="5xIRlXifHM0" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                <node concept="2ShNRf" id="5xIRlXifI6O" role="37wK5m">
                  <node concept="1pGfFk" id="5xIRlXifJhG" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="5xIRlXih2GT" role="37wK5m">
                  <node concept="2OqwBi" id="5xIRlXifQso" role="2Oq$k0">
                    <node concept="2OqwBi" id="5xIRlXifOKY" role="2Oq$k0">
                      <node concept="2OqwBi" id="5xIRlXifMky" role="2Oq$k0">
                        <node concept="2OqwBi" id="5xIRlXifLg3" role="2Oq$k0">
                          <node concept="2ShNRf" id="5xIRlXifJPf" role="2Oq$k0">
                            <node concept="1pGfFk" id="5xIRlXifL0j" role="2ShVmc">
                              <ref role="37wK5l" to="rm1r:5xIRlXi7bIk" resolve="GBC" />
                            </node>
                          </node>
                          <node concept="liA8E" id="5xIRlXifLDJ" role="2OqNvi">
                            <ref role="37wK5l" to="rm1r:5xIRlXi6_aE" resolve="withGridWidth" />
                            <node concept="3cmrfG" id="5xIRlXifM4p" role="37wK5m">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="5xIRlXifNjw" role="2OqNvi">
                          <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                          <node concept="3cmrfG" id="5xIRlXifOvT" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="5xIRlXifPfU" role="2OqNvi">
                        <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                        <node concept="3cmrfG" id="5xIRlXifQap" role="37wK5m">
                          <property role="3cmrfH" value="6" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="5xIRlXifQZW" role="2OqNvi">
                      <ref role="37wK5l" to="rm1r:5xIRlXi6IM1" resolve="withFill" />
                      <node concept="10M0yZ" id="5xIRlXifS8z" role="37wK5m">
                        <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                        <ref role="3cqZAo" to="z60i:~GridBagConstraints.BOTH" resolve="BOTH" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="5xIRlXih3km" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6GYs" resolve="withWeightY" />
                    <node concept="3cmrfG" id="5xIRlXih69X" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="5xIRlXi2ZBG" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5xIRlXiarLO" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhsHrZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initializeWith" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="2n3pEWhsHs1" role="1B3o_S" />
      <node concept="3cqZAl" id="2n3pEWhsHs2" role="3clF45" />
      <node concept="37vLTG" id="2n3pEWhsHs3" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2n3pEWhsHs5" role="1tU5fm">
          <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
        </node>
      </node>
      <node concept="3clFbS" id="2n3pEWhsHs6" role="3clF47">
        <node concept="3clFbF" id="2n3pEWhsJW7" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhsJW8" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhsJW9" role="2Oq$k0">
              <node concept="Xjq3P" id="2n3pEWhsJWa" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhsJWb" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi92if" resolve="tokenField" />
              </node>
            </node>
            <node concept="liA8E" id="2n3pEWhsJWc" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="2n3pEWhsJWd" role="37wK5m">
                <node concept="37vLTw" id="2n3pEWhsJWe" role="2Oq$k0">
                  <ref role="3cqZAo" node="2n3pEWhsHs3" resolve="configuration" />
                </node>
                <node concept="liA8E" id="2n3pEWhuya5" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWht0kH" resolve="getToken" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhsJZT" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhsJZU" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhsJZV" role="2Oq$k0">
              <node concept="Xjq3P" id="2n3pEWhsJZW" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhsJZX" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28OR" resolve="hostnameField" />
              </node>
            </node>
            <node concept="liA8E" id="2n3pEWhsJZY" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="2n3pEWhsJZZ" role="37wK5m">
                <node concept="37vLTw" id="2n3pEWhsK00" role="2Oq$k0">
                  <ref role="3cqZAo" node="2n3pEWhsHs3" resolve="configuration" />
                </node>
                <node concept="liA8E" id="2n3pEWhuyE$" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhtg0N" resolve="getHostName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhsK3F" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhsK3G" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhsK3H" role="2Oq$k0">
              <node concept="Xjq3P" id="2n3pEWhsK3I" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhsK3J" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28P8" resolve="apiVersionField" />
              </node>
            </node>
            <node concept="liA8E" id="2n3pEWhsK3K" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="2n3pEWhsK3L" role="37wK5m">
                <node concept="37vLTw" id="2n3pEWhsK3M" role="2Oq$k0">
                  <ref role="3cqZAo" node="2n3pEWhsHs3" resolve="configuration" />
                </node>
                <node concept="liA8E" id="2n3pEWhuz7y" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhtG8b" resolve="getAPIVersion" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhsK7t" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhsK7u" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhsK7v" role="2Oq$k0">
              <node concept="Xjq3P" id="2n3pEWhsK7w" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhsK7x" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28Pu" resolve="projectField" />
              </node>
            </node>
            <node concept="liA8E" id="2n3pEWhsK7y" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="2n3pEWhsK7z" role="37wK5m">
                <node concept="37vLTw" id="2n3pEWhsK7$" role="2Oq$k0">
                  <ref role="3cqZAo" node="2n3pEWhsHs3" resolve="configuration" />
                </node>
                <node concept="liA8E" id="2n3pEWhuzwZ" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhtZgJ" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhsKbf" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhsKbg" role="3clFbG">
            <node concept="2OqwBi" id="2n3pEWhsKbh" role="2Oq$k0">
              <node concept="Xjq3P" id="2n3pEWhsKbi" role="2Oq$k0" />
              <node concept="2OwXpG" id="2n3pEWhsKbj" role="2OqNvi">
                <ref role="2Oxat5" node="5xIRlXi28PS" resolve="repositoryField" />
              </node>
            </node>
            <node concept="liA8E" id="2n3pEWhsKbk" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="2n3pEWhsKbl" role="37wK5m">
                <node concept="37vLTw" id="2n3pEWhsKbm" role="2Oq$k0">
                  <ref role="3cqZAo" node="2n3pEWhsHs3" resolve="configuration" />
                </node>
                <node concept="liA8E" id="2n3pEWhuzQV" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhu3qp" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n3pEWhsHs7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhsG9$" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhoxb7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConfiguration" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="2n3pEWhoxb9" role="1B3o_S" />
      <node concept="3uibUv" id="2n3pEWhq6Xn" role="3clF45">
        <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
      </node>
      <node concept="3clFbS" id="2n3pEWhoxbc" role="3clF47">
        <node concept="3cpWs8" id="623PeBf3FKl" role="3cqZAp">
          <node concept="3cpWsn" id="623PeBf3FKm" role="3cpWs9">
            <property role="TrG5h" value="configuration" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="623PeBf3FKk" role="1tU5fm">
              <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
            </node>
            <node concept="2ShNRf" id="623PeBf3FKn" role="33vP2m">
              <node concept="1pGfFk" id="623PeBf3IBC" role="2ShVmc">
                <ref role="37wK5l" node="2n3pEWhoGmj" resolve="BitbucketServerConfiguration" />
                <node concept="2OqwBi" id="623PeBf3Wkc" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf3TKq" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf3T5f" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf3Vav" role="2OqNvi">
                      <ref role="2Oxat5" node="5xIRlXi92if" resolve="tokenField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf3Y6U" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf3YwX" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf3YwY" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf3YwZ" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf41ar" role="2OqNvi">
                      <ref role="2Oxat5" node="5xIRlXi28OR" resolve="hostnameField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf3Yx1" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf3YWQ" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf3YWR" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf3YWS" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf427X" role="2OqNvi">
                      <ref role="2Oxat5" node="5xIRlXi28P8" resolve="apiVersionField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf3YWU" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf3Zpd" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf3Zpe" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf3Zpf" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf44JR" role="2OqNvi">
                      <ref role="2Oxat5" node="5xIRlXi28Pu" resolve="projectField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf3Zph" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf4008" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf4009" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf400a" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf45Hp" role="2OqNvi">
                      <ref role="2Oxat5" node="5xIRlXi28PS" resolve="repositoryField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf400c" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="623PeBf47aC" role="3cqZAp">
          <node concept="37vLTw" id="623PeBf47aD" role="3cqZAk">
            <ref role="3cqZAo" node="623PeBf3FKm" resolve="configuration" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n3pEWhoxbd" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhovFz" role="jymVt" />
    <node concept="3uibUv" id="2n3pEWhnCYe" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="3Tm1VV" id="2n3pEWhnqKr" role="1B3o_S" />
    <node concept="3uibUv" id="623PeBf17Cz" role="EKbjA">
      <ref role="3uigEE" to="ii13:623PeBf12mu" resolve="CodeReviewerConfigurationView" />
      <node concept="3uibUv" id="623PeBf18HI" role="11_B2D">
        <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2n3pEWho7Hh">
    <property role="TrG5h" value="BitbucketServerConfiguration" />
    <property role="3GE5qa" value="configuration.server" />
    <node concept="2tJIrI" id="2n3pEWho7If" role="jymVt" />
    <node concept="312cEg" id="2n3pEWhoDpp" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="token" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBeWixG" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhoDwA" role="1tU5fm" />
      <node concept="2AHcQZ" id="2n3pEWhtwBk" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhty5k" role="jymVt" />
    <node concept="312cEg" id="2n3pEWhoDps" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="hostname" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBeWjsL" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhoDB3" role="1tU5fm" />
      <node concept="2AHcQZ" id="2n3pEWhtyUA" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWht$oA" role="jymVt" />
    <node concept="312cEg" id="2n3pEWhoDpv" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="apiVersion" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBeWkom" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhoDHv" role="1tU5fm" />
      <node concept="2AHcQZ" id="2n3pEWht_dU" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWht_Sw" role="jymVt" />
    <node concept="312cEg" id="2n3pEWhoDpy" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="project" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBeWljV" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhoDNU" role="1tU5fm" />
      <node concept="2AHcQZ" id="2n3pEWhtAHQ" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhtBo$" role="jymVt" />
    <node concept="312cEg" id="2n3pEWhoDp_" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="repository" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBeWmfw" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhoDUk" role="1tU5fm" />
      <node concept="2AHcQZ" id="2n3pEWhtCdW" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhtCSM" role="jymVt" />
    <node concept="3clFbW" id="2n3pEWhoGmj" role="jymVt">
      <node concept="3cqZAl" id="2n3pEWhoGml" role="3clF45" />
      <node concept="3Tm1VV" id="623PeBf2nZT" role="1B3o_S" />
      <node concept="3clFbS" id="2n3pEWhoGmn" role="3clF47">
        <node concept="3clFbF" id="623PeBf3N7X" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf3N$o" role="3clFbG">
            <node concept="37vLTw" id="623PeBf3NGv" role="37vLTx">
              <ref role="3cqZAo" node="623PeBf3LY_" resolve="token" />
            </node>
            <node concept="2OqwBi" id="623PeBf3Nb5" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf3N7V" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf3Nij" role="2OqNvi">
                <ref role="2Oxat5" node="2n3pEWhoDpp" resolve="token" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf3NN1" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf3NN2" role="3clFbG">
            <node concept="37vLTw" id="623PeBf3Oom" role="37vLTx">
              <ref role="3cqZAo" node="623PeBf3M6w" resolve="hostname" />
            </node>
            <node concept="2OqwBi" id="623PeBf3NN4" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf3NN5" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf3O6n" role="2OqNvi">
                <ref role="2Oxat5" node="2n3pEWhoDps" resolve="hostname" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf3NN7" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf3NN8" role="3clFbG">
            <node concept="37vLTw" id="623PeBf3OQs" role="37vLTx">
              <ref role="3cqZAo" node="623PeBf3Mkz" resolve="apiVersion" />
            </node>
            <node concept="2OqwBi" id="623PeBf3NNa" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf3NNb" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf3O$t" role="2OqNvi">
                <ref role="2Oxat5" node="2n3pEWhoDpv" resolve="apiVersion" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf3NNd" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf3NNe" role="3clFbG">
            <node concept="37vLTw" id="623PeBf3Pky" role="37vLTx">
              <ref role="3cqZAo" node="623PeBf3MyM" resolve="project" />
            </node>
            <node concept="2OqwBi" id="623PeBf3NNg" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf3NNh" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf3P2z" role="2OqNvi">
                <ref role="2Oxat5" node="2n3pEWhoDpy" resolve="project" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf3NNj" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf3NNk" role="3clFbG">
            <node concept="37vLTw" id="623PeBf3PIA" role="37vLTx">
              <ref role="3cqZAo" node="623PeBf3MKZ" resolve="repository" />
            </node>
            <node concept="2OqwBi" id="623PeBf3NNm" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf3NNn" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf3PwD" role="2OqNvi">
                <ref role="2Oxat5" node="2n3pEWhoDp_" resolve="repository" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="623PeBf3LY_" role="3clF46">
        <property role="TrG5h" value="token" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf3LY$" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf3M6w" role="3clF46">
        <property role="TrG5h" value="hostname" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf3Mhn" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf3Mkz" role="3clF46">
        <property role="TrG5h" value="apiVersion" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf3Mvs" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf3MyM" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf3MHD" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf3MKZ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf3MOh" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhoG8X" role="jymVt" />
    <node concept="3clFb_" id="78s6gAko8Nt" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRepositoryUrl" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="78s6gAko8Nw" role="3clF47">
        <node concept="3cpWs8" id="78s6gAkpnm9" role="3cqZAp">
          <node concept="3cpWsn" id="78s6gAkpnma" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="78s6gAkpnmb" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="1rXfSq" id="78s6gAkppqI" role="33vP2m">
              <ref role="37wK5l" node="78s6gAkoDwT" resolve="buildBaseUrl" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78s6gAkpmi7" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkpmi9" role="3clFbG">
            <node concept="2OqwBi" id="78s6gAkpmia" role="2Oq$k0">
              <node concept="37vLTw" id="78s6gAkpnAh" role="2Oq$k0">
                <ref role="3cqZAo" node="78s6gAkpnma" resolve="builder" />
              </node>
              <node concept="liA8E" id="78s6gAkpmic" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="78s6gAkpmid" role="37wK5m">
                  <property role="Xl_RC" value="/rest/api/" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="78s6gAkpmie" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="78s6gAkpmif" role="37wK5m">
                <node concept="Xjq3P" id="78s6gAkpmig" role="2Oq$k0" />
                <node concept="2OwXpG" id="78s6gAkpmih" role="2OqNvi">
                  <ref role="2Oxat5" node="2n3pEWhoDpv" resolve="apiVersion" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78s6gAkpmFs" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkpmFu" role="3clFbG">
            <node concept="2OqwBi" id="78s6gAkpmFv" role="2Oq$k0">
              <node concept="37vLTw" id="78s6gAkpmFw" role="2Oq$k0">
                <ref role="3cqZAo" node="78s6gAkpnma" resolve="builder" />
              </node>
              <node concept="liA8E" id="78s6gAkpmFx" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="78s6gAkpmFy" role="37wK5m">
                  <property role="Xl_RC" value="/projects/" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="78s6gAkpmFz" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="78s6gAkpmF$" role="37wK5m">
                <node concept="Xjq3P" id="78s6gAkpmF_" role="2Oq$k0" />
                <node concept="2OwXpG" id="78s6gAkpmFA" role="2OqNvi">
                  <ref role="2Oxat5" node="2n3pEWhoDpy" resolve="project" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78s6gAkpmWK" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkpmWM" role="3clFbG">
            <node concept="2OqwBi" id="78s6gAkpmWN" role="2Oq$k0">
              <node concept="37vLTw" id="78s6gAkpmWO" role="2Oq$k0">
                <ref role="3cqZAo" node="78s6gAkpnma" resolve="builder" />
              </node>
              <node concept="liA8E" id="78s6gAkpmWP" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="78s6gAkpmWQ" role="37wK5m">
                  <property role="Xl_RC" value="/repos/" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="78s6gAkpmWR" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="78s6gAkpmWS" role="37wK5m">
                <node concept="Xjq3P" id="78s6gAkpmWT" role="2Oq$k0" />
                <node concept="2OwXpG" id="78s6gAkpmWU" role="2OqNvi">
                  <ref role="2Oxat5" node="2n3pEWhoDp_" resolve="repository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="78s6gAkoA$c" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkoBfX" role="3cqZAk">
            <node concept="37vLTw" id="78s6gAkoACX" role="2Oq$k0">
              <ref role="3cqZAo" node="78s6gAkpnma" resolve="builder" />
            </node>
            <node concept="liA8E" id="78s6gAkoBEL" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="78s6gAko8F6" role="1B3o_S" />
      <node concept="17QB3L" id="78s6gAkoAOQ" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="6j8xKyAr0SZ" role="jymVt" />
    <node concept="3clFb_" id="6j8xKyAr1aU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getBearerAuthHeader" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6j8xKyAr1aX" role="3clF47">
        <node concept="3cpWs6" id="6j8xKyAr1wB" role="3cqZAp">
          <node concept="3cpWs3" id="6j8xKyAr2HB" role="3cqZAk">
            <node concept="2OqwBi" id="5IbzmGeyD0z" role="3uHU7w">
              <node concept="Xjq3P" id="5IbzmGeyD0x" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBeV_t4" role="2OqNvi">
                <ref role="2Oxat5" node="2n3pEWhoDpp" resolve="token" />
              </node>
            </node>
            <node concept="Xl_RD" id="6j8xKyAr1$$" role="3uHU7B">
              <property role="Xl_RC" value="Bearer " />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6j8xKyAr0fE" role="1B3o_S" />
      <node concept="17QB3L" id="6j8xKyAr1aP" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="78s6gAkoD0C" role="jymVt" />
    <node concept="3clFb_" id="78s6gAkoDwT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="buildBaseUrl" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="78s6gAkoDwW" role="3clF47">
        <node concept="3cpWs6" id="78s6gAkoDYI" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkptn4" role="3cqZAk">
            <node concept="2OqwBi" id="78s6gAkps4R" role="2Oq$k0">
              <node concept="2ShNRf" id="78s6gAkoDEl" role="2Oq$k0">
                <node concept="1pGfFk" id="78s6gAkoDEm" role="2ShVmc">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
                </node>
              </node>
              <node concept="liA8E" id="78s6gAkpszv" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                <node concept="Xl_RD" id="78s6gAkpszw" role="37wK5m">
                  <property role="Xl_RC" value="https://" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="78s6gAkptGb" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="78s6gAkptGc" role="37wK5m">
                <node concept="Xjq3P" id="78s6gAkptGd" role="2Oq$k0" />
                <node concept="2OwXpG" id="78s6gAkptGe" role="2OqNvi">
                  <ref role="2Oxat5" node="2n3pEWhoDps" resolve="hostname" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="78s6gAkoKIJ" role="1B3o_S" />
      <node concept="3uibUv" id="78s6gAkoDnE" role="3clF45">
        <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWht19o" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWht0kH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getToken" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2n3pEWht0kI" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhtWR2" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhtWR3" role="3cqZAk">
            <node concept="Xjq3P" id="2n3pEWhtWR4" role="2Oq$k0" />
            <node concept="2OwXpG" id="2n3pEWhtXEU" role="2OqNvi">
              <ref role="2Oxat5" node="2n3pEWhoDpp" resolve="token" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2n3pEWht0kW" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWht23u" role="3clF45" />
      <node concept="2AHcQZ" id="2n3pEWht8AF" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhoIOb" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhtg0N" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getHostName" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2n3pEWhtg0O" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhtTQ6" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhtTQ7" role="3cqZAk">
            <node concept="Xjq3P" id="2n3pEWhtTQ8" role="2Oq$k0" />
            <node concept="2OwXpG" id="2n3pEWhtUEx" role="2OqNvi">
              <ref role="2Oxat5" node="2n3pEWhoDps" resolve="hostname" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2n3pEWhtg14" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhtg15" role="3clF45" />
      <node concept="2AHcQZ" id="2n3pEWhtg16" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhtff_" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhtG8b" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAPIVersion" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2n3pEWhtG8c" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhtG8d" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhtG8l" role="3cqZAk">
            <node concept="Xjq3P" id="2n3pEWhtG8m" role="2Oq$k0" />
            <node concept="2OwXpG" id="2n3pEWhtKYS" role="2OqNvi">
              <ref role="2Oxat5" node="2n3pEWhoDpv" resolve="apiVersion" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2n3pEWhtG8o" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhtG8p" role="3clF45" />
      <node concept="2AHcQZ" id="2n3pEWhtG8q" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhtFiI" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhtZgJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getProject" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2n3pEWhtZgK" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhtZgL" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhtZgM" role="3cqZAk">
            <node concept="Xjq3P" id="2n3pEWhtZgN" role="2Oq$k0" />
            <node concept="2OwXpG" id="2n3pEWhu1JL" role="2OqNvi">
              <ref role="2Oxat5" node="2n3pEWhoDpy" resolve="project" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2n3pEWhtZgP" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhtZgQ" role="3clF45" />
      <node concept="2AHcQZ" id="2n3pEWhtZgR" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhtYpi" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhu3qp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getRepository" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2n3pEWhu3qq" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhu3qr" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhu3qs" role="3cqZAk">
            <node concept="Xjq3P" id="2n3pEWhu3qt" role="2Oq$k0" />
            <node concept="2OwXpG" id="2n3pEWhu4m2" role="2OqNvi">
              <ref role="2Oxat5" node="2n3pEWhoDp_" resolve="repository" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2n3pEWhu3qv" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhu3qw" role="3clF45" />
      <node concept="2AHcQZ" id="2n3pEWhu3qx" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhu2uy" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhhX$c" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2n3pEWhhX$d" role="1B3o_S" />
      <node concept="10Oyi0" id="2n3pEWhhX$f" role="3clF45" />
      <node concept="3clFbS" id="2n3pEWhhX$g" role="3clF47">
        <node concept="3cpWs8" id="2n3pEWhpvYi" role="3cqZAp">
          <node concept="3cpWsn" id="2n3pEWhpvYl" role="3cpWs9">
            <property role="TrG5h" value="hash" />
            <node concept="10Oyi0" id="2n3pEWhpvYg" role="1tU5fm" />
            <node concept="3cmrfG" id="2n3pEWhpwID" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhp$fZ" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhp_2f" role="3clFbG">
            <node concept="3cpWs3" id="2n3pEWhpB$6" role="37vLTx">
              <node concept="17qRlL" id="2n3pEWhp_VX" role="3uHU7B">
                <node concept="37vLTw" id="2n3pEWhp_wz" role="3uHU7B">
                  <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
                </node>
                <node concept="3cmrfG" id="2n3pEWhpA2W" role="3uHU7w">
                  <property role="3cmrfH" value="17" />
                </node>
              </node>
              <node concept="2OqwBi" id="2n3pEWhpBPf" role="3uHU7w">
                <node concept="2OqwBi" id="2n3pEWhpBPg" role="2Oq$k0">
                  <node concept="Xjq3P" id="2n3pEWhpBPh" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2n3pEWhpEwf" role="2OqNvi">
                    <ref role="2Oxat5" node="2n3pEWhoDpp" resolve="token" />
                  </node>
                </node>
                <node concept="liA8E" id="2n3pEWhpBPj" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2n3pEWhp$fX" role="37vLTJ">
              <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhpClK" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhpClL" role="3clFbG">
            <node concept="3cpWs3" id="2n3pEWhpClM" role="37vLTx">
              <node concept="17qRlL" id="2n3pEWhpClN" role="3uHU7B">
                <node concept="37vLTw" id="2n3pEWhpClO" role="3uHU7B">
                  <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
                </node>
                <node concept="3cmrfG" id="2n3pEWhpClP" role="3uHU7w">
                  <property role="3cmrfH" value="31" />
                </node>
              </node>
              <node concept="2OqwBi" id="2n3pEWhpClQ" role="3uHU7w">
                <node concept="2OqwBi" id="2n3pEWhpClR" role="2Oq$k0">
                  <node concept="Xjq3P" id="2n3pEWhpClS" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2n3pEWhpClT" role="2OqNvi">
                    <ref role="2Oxat5" node="2n3pEWhoDps" resolve="hostname" />
                  </node>
                </node>
                <node concept="liA8E" id="2n3pEWhpClU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2n3pEWhpClV" role="37vLTJ">
              <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhpCnE" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhpCnF" role="3clFbG">
            <node concept="3cpWs3" id="2n3pEWhpCnG" role="37vLTx">
              <node concept="17qRlL" id="2n3pEWhpCnH" role="3uHU7B">
                <node concept="37vLTw" id="2n3pEWhpCnI" role="3uHU7B">
                  <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
                </node>
                <node concept="3cmrfG" id="2n3pEWhpJV0" role="3uHU7w">
                  <property role="3cmrfH" value="13" />
                </node>
              </node>
              <node concept="2OqwBi" id="2n3pEWhpCnK" role="3uHU7w">
                <node concept="2OqwBi" id="2n3pEWhpCnL" role="2Oq$k0">
                  <node concept="Xjq3P" id="2n3pEWhpCnM" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2n3pEWhpFnF" role="2OqNvi">
                    <ref role="2Oxat5" node="2n3pEWhoDpv" resolve="apiVersion" />
                  </node>
                </node>
                <node concept="liA8E" id="2n3pEWhpCnO" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2n3pEWhpCnP" role="37vLTJ">
              <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhpCpK" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhpCpL" role="3clFbG">
            <node concept="3cpWs3" id="2n3pEWhpCpM" role="37vLTx">
              <node concept="17qRlL" id="2n3pEWhpCpN" role="3uHU7B">
                <node concept="37vLTw" id="2n3pEWhpCpO" role="3uHU7B">
                  <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
                </node>
                <node concept="3cmrfG" id="2n3pEWhpKsw" role="3uHU7w">
                  <property role="3cmrfH" value="17" />
                </node>
              </node>
              <node concept="2OqwBi" id="2n3pEWhpCpQ" role="3uHU7w">
                <node concept="2OqwBi" id="2n3pEWhpCpR" role="2Oq$k0">
                  <node concept="Xjq3P" id="2n3pEWhpCpS" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2n3pEWhpG2T" role="2OqNvi">
                    <ref role="2Oxat5" node="2n3pEWhoDpy" resolve="project" />
                  </node>
                </node>
                <node concept="liA8E" id="2n3pEWhpCpU" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2n3pEWhpCpV" role="37vLTJ">
              <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2n3pEWhpCs2" role="3cqZAp">
          <node concept="37vLTI" id="2n3pEWhpCs3" role="3clFbG">
            <node concept="3cpWs3" id="2n3pEWhpCs4" role="37vLTx">
              <node concept="17qRlL" id="2n3pEWhpCs5" role="3uHU7B">
                <node concept="37vLTw" id="2n3pEWhpCs6" role="3uHU7B">
                  <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
                </node>
                <node concept="3cmrfG" id="2n3pEWhpCs7" role="3uHU7w">
                  <property role="3cmrfH" value="31" />
                </node>
              </node>
              <node concept="2OqwBi" id="2n3pEWhpCs8" role="3uHU7w">
                <node concept="2OqwBi" id="2n3pEWhpCs9" role="2Oq$k0">
                  <node concept="Xjq3P" id="2n3pEWhpCsa" role="2Oq$k0" />
                  <node concept="2OwXpG" id="2n3pEWhpGQu" role="2OqNvi">
                    <ref role="2Oxat5" node="2n3pEWhoDp_" resolve="repository" />
                  </node>
                </node>
                <node concept="liA8E" id="2n3pEWhpCsc" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.hashCode():int" resolve="hashCode" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="2n3pEWhpCsd" role="37vLTJ">
              <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="2n3pEWhiyt7" role="3cqZAp">
          <node concept="37vLTw" id="2n3pEWhpzfx" role="3cqZAk">
            <ref role="3cqZAo" node="2n3pEWhpvYl" resolve="hash" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n3pEWhhX$h" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhhYt_" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhhX$k" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2n3pEWhhX$l" role="1B3o_S" />
      <node concept="10P_77" id="2n3pEWhhX$n" role="3clF45" />
      <node concept="37vLTG" id="2n3pEWhhX$o" role="3clF46">
        <property role="TrG5h" value="obj" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2n3pEWhhX$p" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2n3pEWhhX$q" role="3clF47">
        <node concept="3clFbJ" id="2n3pEWhiJaq" role="3cqZAp">
          <node concept="3clFbS" id="2n3pEWhiJas" role="3clFbx">
            <node concept="3cpWs6" id="2n3pEWhiKSn" role="3cqZAp">
              <node concept="3clFbT" id="2n3pEWhiKVX" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2n3pEWhiJvl" role="3clFbw">
            <node concept="3clFbC" id="2n3pEWhiJo0" role="3uHU7B">
              <node concept="37vLTw" id="2n3pEWhiJex" role="3uHU7B">
                <ref role="3cqZAo" node="2n3pEWhhX$o" resolve="obj" />
              </node>
              <node concept="10Nm6u" id="2n3pEWhiJrB" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="2n3pEWhjbgU" role="3uHU7w">
              <node concept="1eOMI4" id="2n3pEWhjbA3" role="3fr31v">
                <node concept="2ZW3vV" id="2n3pEWhja7c" role="1eOMHV">
                  <node concept="3uibUv" id="623PeBeVUeX" role="2ZW6by">
                    <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
                  </node>
                  <node concept="37vLTw" id="2n3pEWhj9Wv" role="2ZW6bz">
                    <ref role="3cqZAo" node="2n3pEWhhX$o" resolve="obj" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2n3pEWhiM4Y" role="3eNLev">
            <node concept="3clFbS" id="2n3pEWhiM4Z" role="3eOfB_">
              <node concept="3cpWs6" id="2n3pEWhiNF$" role="3cqZAp">
                <node concept="3clFbT" id="2n3pEWhiNJ9" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="2n3pEWhiNmg" role="3eO9$A">
              <node concept="Xjq3P" id="2n3pEWhiNpR" role="3uHU7w" />
              <node concept="37vLTw" id="2n3pEWhiNcT" role="3uHU7B">
                <ref role="3cqZAo" node="2n3pEWhhX$o" resolve="obj" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2n3pEWhiNJy" role="9aQIa">
            <node concept="3clFbS" id="2n3pEWhiNJz" role="9aQI4">
              <node concept="3cpWs8" id="2n3pEWhiP1R" role="3cqZAp">
                <node concept="3cpWsn" id="2n3pEWhiP1S" role="3cpWs9">
                  <property role="TrG5h" value="that" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="2n3pEWhpmCu" role="1tU5fm">
                    <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
                  </node>
                  <node concept="10QFUN" id="2n3pEWhiPco" role="33vP2m">
                    <node concept="3uibUv" id="2n3pEWhpnAt" role="10QFUM">
                      <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
                    </node>
                    <node concept="37vLTw" id="2n3pEWhiPiK" role="10QFUP">
                      <ref role="3cqZAo" node="2n3pEWhhX$o" resolve="obj" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2n3pEWhiPug" role="3cqZAp">
                <node concept="3clFbS" id="2n3pEWhiPui" role="3clFbx">
                  <node concept="3cpWs6" id="2n3pEWhiR6_" role="3cqZAp">
                    <node concept="3clFbT" id="2n3pEWhiRav" role="3cqZAk">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3fqX7Q" id="2n3pEWhiPQ9" role="3clFbw">
                  <node concept="2YIFZM" id="2n3pEWhiQ5_" role="3fr31v">
                    <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object):boolean" resolve="equals" />
                    <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                    <node concept="2OqwBi" id="2n3pEWhiQis" role="37wK5m">
                      <node concept="Xjq3P" id="2n3pEWhiQ9F" role="2Oq$k0" />
                      <node concept="2OwXpG" id="2n3pEWhpLAE" role="2OqNvi">
                        <ref role="2Oxat5" node="2n3pEWhoDpp" resolve="token" />
                      </node>
                    </node>
                    <node concept="2OqwBi" id="2n3pEWhiQFk" role="37wK5m">
                      <node concept="37vLTw" id="2n3pEWhiQxy" role="2Oq$k0">
                        <ref role="3cqZAo" node="2n3pEWhiP1S" resolve="that" />
                      </node>
                      <node concept="2OwXpG" id="2n3pEWhpLWA" role="2OqNvi">
                        <ref role="2Oxat5" node="2n3pEWhoDpp" resolve="token" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="2n3pEWhiVD$" role="3eNLev">
                  <node concept="3clFbS" id="2n3pEWhiVDA" role="3eOfB_">
                    <node concept="3cpWs6" id="2n3pEWhiXas" role="3cqZAp">
                      <node concept="3clFbT" id="2n3pEWhiXat" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2n3pEWhiWJE" role="3eO9$A">
                    <node concept="2YIFZM" id="2n3pEWhiWJF" role="3fr31v">
                      <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                      <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object):boolean" resolve="equals" />
                      <node concept="2OqwBi" id="2n3pEWhiWJG" role="37wK5m">
                        <node concept="Xjq3P" id="2n3pEWhiWJH" role="2Oq$k0" />
                        <node concept="2OwXpG" id="2n3pEWhiWVc" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDps" resolve="hostname" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2n3pEWhiWJJ" role="37wK5m">
                        <node concept="37vLTw" id="2n3pEWhiWJK" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n3pEWhiP1S" resolve="that" />
                        </node>
                        <node concept="2OwXpG" id="2n3pEWhiX67" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDps" resolve="hostname" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="2n3pEWhiXaT" role="3eNLev">
                  <node concept="3clFbS" id="2n3pEWhiXaU" role="3eOfB_">
                    <node concept="3cpWs6" id="2n3pEWhiXaV" role="3cqZAp">
                      <node concept="3clFbT" id="2n3pEWhiXaW" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2n3pEWhiXaX" role="3eO9$A">
                    <node concept="2YIFZM" id="2n3pEWhiXaY" role="3fr31v">
                      <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object):boolean" resolve="equals" />
                      <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                      <node concept="2OqwBi" id="2n3pEWhiXaZ" role="37wK5m">
                        <node concept="Xjq3P" id="2n3pEWhiXb0" role="2Oq$k0" />
                        <node concept="2OwXpG" id="2n3pEWhj0Ao" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDpv" resolve="apiVersion" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2n3pEWhiXb2" role="37wK5m">
                        <node concept="37vLTw" id="2n3pEWhiXb3" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n3pEWhiP1S" resolve="that" />
                        </node>
                        <node concept="2OwXpG" id="2n3pEWhj12h" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDpv" resolve="apiVersion" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="2n3pEWhiXbt" role="3eNLev">
                  <node concept="3clFbS" id="2n3pEWhiXbu" role="3eOfB_">
                    <node concept="3cpWs6" id="2n3pEWhiXbv" role="3cqZAp">
                      <node concept="3clFbT" id="2n3pEWhiXbw" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2n3pEWhiXbx" role="3eO9$A">
                    <node concept="2YIFZM" id="2n3pEWhiXby" role="3fr31v">
                      <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                      <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object):boolean" resolve="equals" />
                      <node concept="2OqwBi" id="2n3pEWhiXbz" role="37wK5m">
                        <node concept="Xjq3P" id="2n3pEWhiXb$" role="2Oq$k0" />
                        <node concept="2OwXpG" id="2n3pEWhj1u4" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDpy" resolve="project" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2n3pEWhiXbA" role="37wK5m">
                        <node concept="37vLTw" id="2n3pEWhiXbB" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n3pEWhiP1S" resolve="that" />
                        </node>
                        <node concept="2OwXpG" id="2n3pEWhj1TX" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDpy" resolve="project" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="3eNFk2" id="2n3pEWhiXVO" role="3eNLev">
                  <node concept="3clFbS" id="2n3pEWhiXVP" role="3eOfB_">
                    <node concept="3cpWs6" id="2n3pEWhiXVQ" role="3cqZAp">
                      <node concept="3clFbT" id="2n3pEWhiXVR" role="3cqZAk">
                        <property role="3clFbU" value="false" />
                      </node>
                    </node>
                  </node>
                  <node concept="3fqX7Q" id="2n3pEWhiXVS" role="3eO9$A">
                    <node concept="2YIFZM" id="2n3pEWhiXVT" role="3fr31v">
                      <ref role="37wK5l" to="33ny:~Objects.equals(java.lang.Object,java.lang.Object):boolean" resolve="equals" />
                      <ref role="1Pybhc" to="33ny:~Objects" resolve="Objects" />
                      <node concept="2OqwBi" id="2n3pEWhiXVU" role="37wK5m">
                        <node concept="Xjq3P" id="2n3pEWhiXVV" role="2Oq$k0" />
                        <node concept="2OwXpG" id="2n3pEWhj2lK" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDp_" resolve="repository" />
                        </node>
                      </node>
                      <node concept="2OqwBi" id="2n3pEWhiXVX" role="37wK5m">
                        <node concept="37vLTw" id="2n3pEWhiXVY" role="2Oq$k0">
                          <ref role="3cqZAo" node="2n3pEWhiP1S" resolve="that" />
                        </node>
                        <node concept="2OwXpG" id="2n3pEWhj2LD" role="2OqNvi">
                          <ref role="2Oxat5" node="2n3pEWhoDp_" resolve="repository" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="623PeBf1YlO" role="9aQIa">
                  <node concept="3clFbS" id="623PeBf1YlP" role="9aQI4">
                    <node concept="3cpWs6" id="623PeBf1XvK" role="3cqZAp">
                      <node concept="3clFbT" id="623PeBf1XAQ" role="3cqZAk">
                        <property role="3clFbU" value="true" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n3pEWhhX$r" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhoMSr" role="jymVt" />
    <node concept="3Tm1VV" id="2n3pEWho7Hi" role="1B3o_S" />
    <node concept="3uibUv" id="2n3pEWho7I_" role="EKbjA">
      <ref role="3uigEE" to="ii13:2n3pEWhnxjW" resolve="CodeReviewerConfiguration" />
    </node>
  </node>
  <node concept="312cEu" id="2n3pEWhuFVp">
    <property role="TrG5h" value="BitbucketServerIntegration" />
    <property role="3GE5qa" value="configuration.server" />
    <node concept="2tJIrI" id="2n3pEWhuFXJ" role="jymVt" />
    <node concept="3clFb_" id="623PeBf2$pT" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getConnection" />
      <node concept="3Tm1VV" id="623PeBf2$pV" role="1B3o_S" />
      <node concept="3uibUv" id="623PeBf2$pW" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDr4JM" resolve="CodeReviewerConnection" />
      </node>
      <node concept="3clFbS" id="623PeBf2$pX" role="3clF47">
        <node concept="3cpWs6" id="623PeBf2_uT" role="3cqZAp">
          <node concept="10Nm6u" id="623PeBf2__K" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="623PeBf2$pY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBf2$jw" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhuFXW" role="jymVt">
      <property role="TrG5h" value="createConfigurationView" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="2n3pEWhuFXX" role="3clF45">
        <ref role="3uigEE" node="5xIRlXi24Ld" resolve="BitbucketServerConfigurationView" />
      </node>
      <node concept="3Tm1VV" id="2n3pEWhuFXZ" role="1B3o_S" />
      <node concept="3clFbS" id="2n3pEWhuFY2" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhuGlB" role="3cqZAp">
          <node concept="2ShNRf" id="2n3pEWhuGsr" role="3cqZAk">
            <node concept="1pGfFk" id="2n3pEWhuHfV" role="2ShVmc">
              <ref role="37wK5l" node="5xIRlXi2ZUs" resolve="BitbucketServerConfigurationView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n3pEWhuFY3" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhuGaY" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhuFY6" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="2n3pEWhuFY8" role="1B3o_S" />
      <node concept="17QB3L" id="2n3pEWhuFY9" role="3clF45" />
      <node concept="3clFbS" id="2n3pEWhuFYa" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhuJfq" role="3cqZAp">
          <node concept="Xl_RD" id="2n3pEWhuJmr" role="3cqZAk">
            <property role="Xl_RC" value="Bitbucket Server" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n3pEWhuFYb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhuG7d" role="jymVt" />
    <node concept="3Tm1VV" id="2n3pEWhuFVq" role="1B3o_S" />
    <node concept="3uibUv" id="2n3pEWhuFWs" role="EKbjA">
      <ref role="3uigEE" to="ii13:2n3pEWhn$xu" resolve="CodeReviewerIntegration" />
      <node concept="3uibUv" id="2n3pEWhuFWO" role="11_B2D">
        <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
      </node>
    </node>
  </node>
  <node concept="Qs71p" id="24VqSbHfHST">
    <property role="2bfB8j" value="true" />
    <property role="TrG5h" value="BitbucketActionType" />
    <property role="3GE5qa" value="model" />
    <node concept="QsSxf" id="24VqSbHfJbz" role="Qtgdg">
      <property role="TrG5h" value="OPENED" />
      <ref role="37wK5l" node="24VqSbHfIQO" resolve="BitbucketActionType" />
      <node concept="Xl_RD" id="24VqSbHfL20" role="37wK5m">
        <property role="Xl_RC" value="opened the pull request" />
      </node>
      <node concept="2ShNRf" id="2uD4oyGig24" role="37wK5m">
        <node concept="1pGfFk" id="2uD4oyGih2r" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="6RM_ByP9MTD" role="37wK5m">
            <property role="3cmrfH" value="74" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9Ndr" role="37wK5m">
            <property role="3cmrfH" value="103" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9Nxl" role="37wK5m">
            <property role="3cmrfH" value="133" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="24VqSbHfJik" role="Qtgdg">
      <property role="TrG5h" value="MERGED" />
      <ref role="37wK5l" node="24VqSbHfIQO" resolve="BitbucketActionType" />
      <node concept="Xl_RD" id="24VqSbHfL_X" role="37wK5m">
        <property role="Xl_RC" value="merged the pull request" />
      </node>
      <node concept="2ShNRf" id="6RM_ByP9eIe" role="37wK5m">
        <node concept="1pGfFk" id="6RM_ByP9Bpk" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="6RM_ByP9BEF" role="37wK5m">
            <property role="3cmrfH" value="20" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9BWJ" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9CvD" role="37wK5m">
            <property role="3cmrfH" value="44" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="24VqSbHfJpa" role="Qtgdg">
      <property role="TrG5h" value="REVIEWED" />
      <ref role="37wK5l" node="24VqSbHfIQO" resolve="BitbucketActionType" />
      <node concept="Xl_RD" id="24VqSbHfMa0" role="37wK5m">
        <property role="Xl_RC" value="marked needs work" />
      </node>
      <node concept="2ShNRf" id="2uD4oyGiotY" role="37wK5m">
        <node concept="1pGfFk" id="2uD4oyGiotZ" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="6RM_ByP9CVL" role="37wK5m">
            <property role="3cmrfH" value="246" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9Dhn" role="37wK5m">
            <property role="3cmrfH" value="146" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9DBd" role="37wK5m">
            <property role="3cmrfH" value="50" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="24VqSbHfKdg" role="Qtgdg">
      <property role="TrG5h" value="APPROVED" />
      <ref role="37wK5l" node="24VqSbHfIQO" resolve="BitbucketActionType" />
      <node concept="Xl_RD" id="24VqSbHfMHX" role="37wK5m">
        <property role="Xl_RC" value="marked approved" />
      </node>
      <node concept="2ShNRf" id="2uD4oyGiovc" role="37wK5m">
        <node concept="1pGfFk" id="2uD4oyGiovd" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="6RM_ByP9OSz" role="37wK5m">
            <property role="3cmrfH" value="20" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9Pcl" role="37wK5m">
            <property role="3cmrfH" value="137" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP9Pwf" role="37wK5m">
            <property role="3cmrfH" value="44" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="24VqSbHfKkG" role="Qtgdg">
      <property role="TrG5h" value="UNAPPROVED" />
      <ref role="37wK5l" node="24VqSbHfIQO" resolve="BitbucketActionType" />
      <node concept="Xl_RD" id="24VqSbHfNi0" role="37wK5m">
        <property role="Xl_RC" value="marked unapproved" />
      </node>
      <node concept="2ShNRf" id="2uD4oyGipq1" role="37wK5m">
        <node concept="1pGfFk" id="2uD4oyGipq2" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="6RM_ByP92gN" role="37wK5m">
            <property role="3cmrfH" value="208" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP92$B" role="37wK5m">
            <property role="3cmrfH" value="65" />
          </node>
          <node concept="3cmrfG" id="6RM_ByP92Sx" role="37wK5m">
            <property role="3cmrfH" value="55" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="4dp0YvduhNn" role="Qtgdg">
      <property role="TrG5h" value="RESCOPED" />
      <ref role="37wK5l" node="24VqSbHfIQO" resolve="BitbucketActionType" />
      <node concept="Xl_RD" id="4dp0YvdujOm" role="37wK5m">
        <property role="Xl_RC" value="updated the pull request" />
      </node>
      <node concept="2ShNRf" id="2uD4oyGipIs" role="37wK5m">
        <node concept="1pGfFk" id="2uD4oyGiqIN" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="6RM_ByPa43n" role="37wK5m">
            <property role="3cmrfH" value="246" />
          </node>
          <node concept="3cmrfG" id="6RM_ByPa4n9" role="37wK5m">
            <property role="3cmrfH" value="195" />
          </node>
          <node concept="3cmrfG" id="6RM_ByPa4Fb" role="37wK5m">
            <property role="3cmrfH" value="66" />
          </node>
        </node>
      </node>
    </node>
    <node concept="QsSxf" id="1k_5LxHO7bm" role="Qtgdg">
      <property role="TrG5h" value="UPDATED" />
      <ref role="37wK5l" node="24VqSbHfIQO" resolve="BitbucketActionType" />
      <node concept="Xl_RD" id="1k_5LxHObn4" role="37wK5m">
        <property role="Xl_RC" value="updated the review" />
      </node>
      <node concept="2ShNRf" id="1k_5LxHObCZ" role="37wK5m">
        <node concept="1pGfFk" id="1k_5LxHOCRx" role="2ShVmc">
          <ref role="37wK5l" to="z60i:~Color.&lt;init&gt;(int,int,int)" resolve="Color" />
          <node concept="3cmrfG" id="1k_5LxHOD8X" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
          <node concept="3cmrfG" id="1k_5LxHODqi" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
          <node concept="3cmrfG" id="1k_5LxHODFD" role="37wK5m">
            <property role="3cmrfH" value="255" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="24VqSbHfIga" role="jymVt" />
    <node concept="312cEg" id="24VqSbHfNDU" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="displayString" />
      <property role="3TUv4t" value="true" />
      <node concept="17QB3L" id="24VqSbHfN_Y" role="1tU5fm" />
      <node concept="3Tm6S6" id="24VqSbHfNIH" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2uD4oyGidBr" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="displayColor" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="2uD4oyGidcQ" role="1B3o_S" />
      <node concept="3uibUv" id="2uD4oyGidAC" role="1tU5fm">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
    <node concept="2tJIrI" id="24VqSbHfNJq" role="jymVt" />
    <node concept="3Tm1VV" id="24VqSbHfHSU" role="1B3o_S" />
    <node concept="3clFbW" id="24VqSbHfIQO" role="jymVt">
      <node concept="3cqZAl" id="24VqSbHfIQQ" role="3clF45" />
      <node concept="3clFbS" id="24VqSbHfIQR" role="3clF47">
        <node concept="3clFbF" id="24VqSbHfO_$" role="3cqZAp">
          <node concept="37vLTI" id="24VqSbHfQ$7" role="3clFbG">
            <node concept="37vLTw" id="24VqSbHfRdQ" role="37vLTx">
              <ref role="3cqZAo" node="24VqSbHfJ8O" resolve="displayName" />
            </node>
            <node concept="2OqwBi" id="24VqSbHfOTU" role="37vLTJ">
              <node concept="Xjq3P" id="24VqSbHfO_z" role="2Oq$k0" />
              <node concept="2OwXpG" id="24VqSbHfPlE" role="2OqNvi">
                <ref role="2Oxat5" node="24VqSbHfNDU" resolve="displayString" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="2uD4oyGibCM" role="3cqZAp">
          <node concept="37vLTI" id="2uD4oyGieLU" role="3clFbG">
            <node concept="37vLTw" id="2uD4oyGifpL" role="37vLTx">
              <ref role="3cqZAo" node="2uD4oyGiaLO" resolve="displayColor" />
            </node>
            <node concept="2OqwBi" id="2uD4oyGibTo" role="37vLTJ">
              <node concept="Xjq3P" id="2uD4oyGibCK" role="2Oq$k0" />
              <node concept="2OwXpG" id="2uD4oyGie5s" role="2OqNvi">
                <ref role="2Oxat5" node="2uD4oyGidBr" resolve="displayColor" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="24VqSbHfJ8O" role="3clF46">
        <property role="TrG5h" value="displayName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="24VqSbHfJ8N" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="2uD4oyGiaLO" role="3clF46">
        <property role="TrG5h" value="displayColor" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2uD4oyGibak" role="1tU5fm">
          <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
        </node>
      </node>
      <node concept="3Tm6S6" id="24VqSbHfNiH" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="24VqSbHi90P" role="jymVt" />
    <node concept="3clFb_" id="24VqSbHi9$A" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDisplayString" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="24VqSbHi9$D" role="3clF47">
        <node concept="3cpWs6" id="24VqSbHiadW" role="3cqZAp">
          <node concept="2OqwBi" id="24VqSbHibqA" role="3cqZAk">
            <node concept="Xjq3P" id="24VqSbHiaBJ" role="2Oq$k0" />
            <node concept="2OwXpG" id="24VqSbHibTL" role="2OqNvi">
              <ref role="2Oxat5" node="24VqSbHfNDU" resolve="displayString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="24VqSbHi9kn" role="1B3o_S" />
      <node concept="17QB3L" id="24VqSbHi9zO" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="2uD4oyGitKv" role="jymVt" />
    <node concept="3clFb_" id="2uD4oyGiuLW" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDisplayColor" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="true" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2uD4oyGiuLZ" role="3clF47">
        <node concept="3cpWs6" id="2uD4oyGiviT" role="3cqZAp">
          <node concept="2OqwBi" id="2uD4oyGiw53" role="3cqZAk">
            <node concept="Xjq3P" id="2uD4oyGiv$b" role="2Oq$k0" />
            <node concept="2OwXpG" id="2uD4oyGiwzR" role="2OqNvi">
              <ref role="2Oxat5" node="2uD4oyGidBr" resolve="displayColor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2uD4oyGiu0A" role="1B3o_S" />
      <node concept="3uibUv" id="2uD4oyGiuL2" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Ew7qBDtNjy">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketActivity" />
    <property role="1sVAO0" value="false" />
    <node concept="2tJIrI" id="2hVa5m$1yYq" role="jymVt" />
    <node concept="312cEg" id="2hVa5m$1zpx" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="id" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1z97" role="1B3o_S" />
      <node concept="17QB3L" id="2hVa5m$1zon" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2hVa5m$1$6L" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="createdDate" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1zXJ" role="1B3o_S" />
      <node concept="3cpWsb" id="2hVa5m$1$5B" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="2hVa5m$1z1l" role="jymVt" />
    <node concept="3Tm1VV" id="4Ew7qBDtNjz" role="1B3o_S" />
    <node concept="3uibUv" id="6j8xKyA_Obn" role="EKbjA">
      <ref role="3uigEE" to="m3q8:4Ew7qBDj1ou" resolve="Activity" />
    </node>
    <node concept="3clFb_" id="2hVa5m$31xF" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getDate" />
      <node concept="3Tm1VV" id="2hVa5m$31xH" role="1B3o_S" />
      <node concept="3uibUv" id="__fp3c_CMZ" role="3clF45">
        <ref role="3uigEE" to="28m1:~Instant" resolve="Instant" />
      </node>
      <node concept="2AHcQZ" id="2hVa5m$31xM" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$31xN" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$31Pn" role="3cqZAp">
          <node concept="2YIFZM" id="__fp3c_D8$" role="3cqZAk">
            <ref role="37wK5l" to="28m1:~Instant.ofEpochSecond(long):java.time.Instant" resolve="ofEpochSecond" />
            <ref role="1Pybhc" to="28m1:~Instant" resolve="Instant" />
            <node concept="FJ1c_" id="__fp3c_D8_" role="37wK5m">
              <node concept="3cmrfG" id="__fp3c_D8A" role="3uHU7w">
                <property role="3cmrfH" value="1000" />
              </node>
              <node concept="2OqwBi" id="__fp3c_D8B" role="3uHU7B">
                <node concept="Xjq3P" id="__fp3c_D8C" role="2Oq$k0" />
                <node concept="2OwXpG" id="__fp3c_D8D" role="2OqNvi">
                  <ref role="2Oxat5" node="2hVa5m$1$6L" resolve="createdDate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$31xO" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Ew7qBDrIDP">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketBranchRef" />
    <node concept="312cEg" id="4Ew7qBDrIIZ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="id" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="4Ew7qBDrIIO" role="1tU5fm" />
      <node concept="3Tm6S6" id="4Ew7qBDrIJS" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrJ4g" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="displayId" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrIZd" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrJ49" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDsk6P" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="latestCommit" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsk0B" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDsk5$" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="pXx3sd3jx7" role="jymVt" />
    <node concept="3clFb_" id="4Ew7qBDrITU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getId" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Ew7qBDrITX" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDsjzp" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsjKC" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDsjBm" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDsl44" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDrIIZ" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Ew7qBDrIOV" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrITN" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4Ew7qBDskfB" role="jymVt" />
    <node concept="3clFb_" id="4Ew7qBDsksv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getDisplayId" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Ew7qBDsksy" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDskA$" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDskN_" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDskEj" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDskVM" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDrJ4g" resolve="displayId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Ew7qBDskm8" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDskso" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4Ew7qBDsl5R" role="jymVt" />
    <node concept="3clFb_" id="4Ew7qBDslik" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getLatestCommit" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Ew7qBDslin" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDslsV" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDslDW" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDslwE" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDslMy" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDsk6P" resolve="latestCommit" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Ew7qBDslbr" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDslid" role="3clF45" />
    </node>
    <node concept="3Tm1VV" id="4Ew7qBDrIDQ" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="2hVa5m$1$n6">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketComment" />
    <node concept="312cEg" id="2hVa5m$1MQr" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="id" />
      <property role="3TUv4t" value="false" />
      <node concept="10Oyi0" id="2hVa5m$21Xi" role="1tU5fm" />
      <node concept="3Tm6S6" id="2hVa5m$1N1P" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="2hVa5m$1NS0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="version" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1NsU" role="1B3o_S" />
      <node concept="10Oyi0" id="2hVa5m$1NID" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2hVa5m$1OKm" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="text" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1Old" role="1B3o_S" />
      <node concept="17QB3L" id="2hVa5m$1OAZ" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2hVa5m$1Pux" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="author" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1P3h" role="1B3o_S" />
      <node concept="3uibUv" id="2hVa5m$1Pl8" role="1tU5fm">
        <ref role="3uigEE" node="4Ew7qBDso0z" resolve="BitbucketUser" />
      </node>
    </node>
    <node concept="312cEg" id="2hVa5m$1QdQ" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="createdDate" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1PVW" role="1B3o_S" />
      <node concept="3cpWsb" id="2hVa5m$1Q3s" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2hVa5m$1QWf" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="updatedDate" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1QwX" role="1B3o_S" />
      <node concept="3cpWsb" id="2hVa5m$1QMS" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2hVa5m$1T7k" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="comments" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1SkV" role="1B3o_S" />
      <node concept="_YKpA" id="2hVa5m$1SAS" role="1tU5fm">
        <node concept="3uibUv" id="2hVa5m$1SWR" role="_ZDj9">
          <ref role="3uigEE" node="2hVa5m$1$n6" resolve="BitbucketComment" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1U9q" role="jymVt" />
    <node concept="1X3_iC" id="2hVa5m$20gC" role="lGtFl">
      <property role="3V$3am" value="member" />
      <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1107461130800/5375687026011219971" />
      <node concept="312cEg" id="2hVa5m$1YvW" role="8Wnug">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="tasks" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="2hVa5m$1UTr" role="1B3o_S" />
        <node concept="_YKpA" id="2hVa5m$1V16" role="1tU5fm">
          <node concept="3uibUv" id="2hVa5m$1Ylu" role="_ZDj9">
            <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
          </node>
        </node>
        <node concept="z59LJ" id="2hVa5m$1Z3V" role="lGtFl">
          <node concept="TZ5HA" id="2hVa5m$1Z3W" role="TZ5H$">
            <node concept="1dT_AC" id="2hVa5m$1Z3X" role="1dT_Ay">
              <property role="1dT_AB" value="TODO: Add tasks?" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1Ulc" role="jymVt" />
    <node concept="3Tm1VV" id="2hVa5m$1$n7" role="1B3o_S" />
    <node concept="3uibUv" id="2hVa5m$1$As" role="EKbjA">
      <ref role="3uigEE" to="m3q8:4Ew7qBDrroM" resolve="Comment" />
    </node>
    <node concept="3clFb_" id="2hVa5m$1M7P" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="2hVa5m$1M7R" role="1B3o_S" />
      <node concept="10Oyi0" id="2hVa5m$1M7S" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1M7W" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M7X" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$20Hl" role="3cqZAp">
          <node concept="2OqwBi" id="2hVa5m$21fu" role="3cqZAk">
            <node concept="Xjq3P" id="2hVa5m$20RJ" role="2Oq$k0" />
            <node concept="2OwXpG" id="2hVa5m$21Bc" role="2OqNvi">
              <ref role="2Oxat5" node="2hVa5m$1MQr" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M7Y" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$23Id" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1M7Z" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getText" />
      <node concept="3Tm1VV" id="2hVa5m$1M81" role="1B3o_S" />
      <node concept="17QB3L" id="2hVa5m$1M82" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1M86" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M87" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$22tP" role="3cqZAp">
          <node concept="1rXfSq" id="__fp3cus8Q" role="3cqZAk">
            <ref role="37wK5l" node="__fp3cu0TY" resolve="parseTextPortion" />
            <node concept="2OqwBi" id="__fp3cutTi" role="37wK5m">
              <node concept="Xjq3P" id="__fp3cut9V" role="2Oq$k0" />
              <node concept="2OwXpG" id="__fp3cuuWU" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1OKm" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M88" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$240L" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1M89" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAuthor" />
      <node concept="3Tm1VV" id="2hVa5m$1M8b" role="1B3o_S" />
      <node concept="3uibUv" id="2hVa5m$1M8c" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrsxM" resolve="User" />
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M8g" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M8h" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$25lB" role="3cqZAp">
          <node concept="2OqwBi" id="2hVa5m$25Pe" role="3cqZAk">
            <node concept="Xjq3P" id="2hVa5m$25w1" role="2Oq$k0" />
            <node concept="2OwXpG" id="2hVa5m$26js" role="2OqNvi">
              <ref role="2Oxat5" node="2hVa5m$1Pux" resolve="author" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M8i" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$24jm" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1M94" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getDate" />
      <node concept="3Tm1VV" id="2hVa5m$1M96" role="1B3o_S" />
      <node concept="3uibUv" id="__fp3c$Ilk" role="3clF45">
        <ref role="3uigEE" to="28m1:~Instant" resolve="Instant" />
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M9b" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M9d" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$2cfp" role="3cqZAp">
          <node concept="2YIFZM" id="__fp3c$KkT" role="3cqZAk">
            <ref role="37wK5l" to="28m1:~Instant.ofEpochSecond(long):java.time.Instant" resolve="ofEpochSecond" />
            <ref role="1Pybhc" to="28m1:~Instant" resolve="Instant" />
            <node concept="FJ1c_" id="__fp3c$KkU" role="37wK5m">
              <node concept="3cmrfG" id="__fp3c$KkV" role="3uHU7w">
                <property role="3cmrfH" value="1000" />
              </node>
              <node concept="2OqwBi" id="__fp3c$KkW" role="3uHU7B">
                <node concept="Xjq3P" id="__fp3c$KkX" role="2Oq$k0" />
                <node concept="2OwXpG" id="__fp3c$KkY" role="2OqNvi">
                  <ref role="2Oxat5" node="2hVa5m$1QdQ" resolve="createdDate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M9e" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$2tg8" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1M8l" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getUpdatedDate" />
      <node concept="3Tm1VV" id="2hVa5m$1M8n" role="1B3o_S" />
      <node concept="3uibUv" id="__fp3c$Jod" role="3clF45">
        <ref role="3uigEE" to="28m1:~Instant" resolve="Instant" />
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M8s" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M8t" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$29io" role="3cqZAp">
          <node concept="2YIFZM" id="__fp3c$Liz" role="3cqZAk">
            <ref role="1Pybhc" to="28m1:~Instant" resolve="Instant" />
            <ref role="37wK5l" to="28m1:~Instant.ofEpochSecond(long):java.time.Instant" resolve="ofEpochSecond" />
            <node concept="FJ1c_" id="__fp3c$Li$" role="37wK5m">
              <node concept="3cmrfG" id="__fp3c$Li_" role="3uHU7w">
                <property role="3cmrfH" value="1000" />
              </node>
              <node concept="2OqwBi" id="__fp3c$LiA" role="3uHU7B">
                <node concept="Xjq3P" id="__fp3c$LiB" role="2Oq$k0" />
                <node concept="2OwXpG" id="__fp3c$LiC" role="2OqNvi">
                  <ref role="2Oxat5" node="2hVa5m$1QWf" resolve="updatedDate" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M8u" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$2tPM" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1M8x" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getReplies" />
      <node concept="3Tm1VV" id="2hVa5m$1M8z" role="1B3o_S" />
      <node concept="3uibUv" id="2hVa5m$1M8$" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qUE_q" id="2hVa5m$2mbn" role="11_B2D">
          <node concept="3uibUv" id="2hVa5m$2mRh" role="3qUE_r">
            <ref role="3uigEE" to="m3q8:4Ew7qBDrroM" resolve="Comment" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M8D" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M8E" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$2gr1" role="3cqZAp">
          <node concept="2OqwBi" id="2hVa5m$2hce" role="3cqZAk">
            <node concept="Xjq3P" id="2hVa5m$2g_s" role="2Oq$k0" />
            <node concept="2OwXpG" id="2hVa5m$2hQ4" role="2OqNvi">
              <ref role="2Oxat5" node="2hVa5m$1T7k" resolve="comments" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M8F" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$2urt" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1M8I" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFilePath" />
      <node concept="3Tm1VV" id="2hVa5m$1M8K" role="1B3o_S" />
      <node concept="17QB3L" id="2hVa5m$1M8L" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1M8P" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M8Q" role="3clF47">
        <node concept="3cpWs6" id="2hVa5m$2nY$" role="3cqZAp">
          <node concept="10Nm6u" id="2hVa5m$2qy9" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M8R" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$2v19" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1M8S" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCommentedNodeURL" />
      <node concept="3Tm1VV" id="2hVa5m$1M8U" role="1B3o_S" />
      <node concept="17QB3L" id="5ihn07CnWJw" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1M8Z" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1M90" role="3clF47">
        <node concept="3cpWs6" id="5ihn07CpjKs" role="3cqZAp">
          <node concept="1rXfSq" id="5ihn07CpkZj" role="3cqZAk">
            <ref role="37wK5l" node="__fp3cuwMY" resolve="parseNodePortion" />
            <node concept="2OqwBi" id="5ihn07CpmTW" role="37wK5m">
              <node concept="Xjq3P" id="5ihn07Cpm6P" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07CpnCg" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1OKm" resolve="text" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1M91" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3okjBs8o2lN" role="jymVt" />
    <node concept="3clFb_" id="3okjBs8o3Sj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3okjBs8o3Sm" role="3clF47">
        <node concept="3clFbJ" id="3okjBs8o5IM" role="3cqZAp">
          <node concept="3fqX7Q" id="3okjBs8o6SX" role="3clFbw">
            <node concept="2ZW3vV" id="3okjBs8o6SZ" role="3fr31v">
              <node concept="3uibUv" id="3okjBs8o6T0" role="2ZW6by">
                <ref role="3uigEE" node="2hVa5m$1$n6" resolve="BitbucketComment" />
              </node>
              <node concept="37vLTw" id="3okjBs8o6T1" role="2ZW6bz">
                <ref role="3cqZAo" node="3okjBs8o4_R" resolve="o" />
              </node>
            </node>
          </node>
          <node concept="3clFbS" id="3okjBs8o5IO" role="3clFbx">
            <node concept="3cpWs6" id="3okjBs8o7nd" role="3cqZAp">
              <node concept="3clFbT" id="3okjBs8o7xB" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3okjBs8ob3g" role="3cqZAp" />
        <node concept="3cpWs8" id="3okjBs8od8z" role="3cqZAp">
          <node concept="3cpWsn" id="3okjBs8od8$" role="3cpWs9">
            <property role="TrG5h" value="otherComment" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3okjBs8od8_" role="1tU5fm">
              <ref role="3uigEE" node="2hVa5m$1$n6" resolve="BitbucketComment" />
            </node>
            <node concept="0kSF2" id="3okjBs8oevW" role="33vP2m">
              <node concept="3uibUv" id="3okjBs8oevZ" role="0kSFW">
                <ref role="3uigEE" node="2hVa5m$1$n6" resolve="BitbucketComment" />
              </node>
              <node concept="37vLTw" id="3okjBs8odUD" role="0kSFX">
                <ref role="3cqZAo" node="3okjBs8o4_R" resolve="o" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3okjBs8of_p" role="3cqZAp">
          <node concept="3clFbC" id="3okjBs8ooN4" role="3cqZAk">
            <node concept="2OqwBi" id="3okjBs8oqSV" role="3uHU7w">
              <node concept="37vLTw" id="3okjBs8opZS" role="2Oq$k0">
                <ref role="3cqZAo" node="3okjBs8od8$" resolve="otherComment" />
              </node>
              <node concept="2OwXpG" id="3okjBs8orXM" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1MQr" resolve="id" />
              </node>
            </node>
            <node concept="2OqwBi" id="3okjBs8oh7q" role="3uHU7B">
              <node concept="Xjq3P" id="3okjBs8ogmU" role="2Oq$k0" />
              <node concept="2OwXpG" id="3okjBs8ohVm" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1MQr" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3okjBs8o32z" role="1B3o_S" />
      <node concept="10P_77" id="3okjBs8o3IS" role="3clF45" />
      <node concept="37vLTG" id="3okjBs8o4_R" role="3clF46">
        <property role="TrG5h" value="o" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="3okjBs8o4_Q" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="__fp3ctWRW" role="jymVt" />
    <node concept="2YIFZL" id="__fp3cu0TY" role="jymVt">
      <property role="TrG5h" value="parseTextPortion" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="__fp3ctZY$" role="3clF47">
        <node concept="3cpWs8" id="__fp3cu6Zs" role="3cqZAp">
          <node concept="3cpWsn" id="__fp3cu6Zt" role="3cpWs9">
            <property role="TrG5h" value="hasNodeId" />
            <property role="3TUv4t" value="true" />
            <node concept="10P_77" id="__fp3cu6Zq" role="1tU5fm" />
            <node concept="2OqwBi" id="__fp3cu6Zu" role="33vP2m">
              <node concept="2OqwBi" id="__fp3cu6Zv" role="2Oq$k0">
                <node concept="37vLTw" id="__fp3cu6Zw" role="2Oq$k0">
                  <ref role="3cqZAo" node="__fp3cu1VG" resolve="commentText" />
                </node>
                <node concept="liA8E" id="__fp3cu6Zx" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toLowerCase():java.lang.String" resolve="toLowerCase" />
                </node>
              </node>
              <node concept="liA8E" id="__fp3cu6Zy" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                <node concept="Xl_RD" id="__fp3cu6Zz" role="37wK5m">
                  <property role="Xl_RC" value="node:" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="__fp3cu9W1" role="3cqZAp">
          <node concept="3clFbS" id="__fp3cu9W3" role="3clFbx">
            <node concept="3cpWs8" id="__fp3cudQz" role="3cqZAp">
              <node concept="3cpWsn" id="__fp3cudQ$" role="3cpWs9">
                <property role="TrG5h" value="indexOfTextStart" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="__fp3cudQv" role="1tU5fm" />
                <node concept="3cpWs3" id="__fp3cvNHX" role="33vP2m">
                  <node concept="3cmrfG" id="__fp3cvP5e" role="3uHU7w">
                    <property role="3cmrfH" value="1" />
                  </node>
                  <node concept="2OqwBi" id="__fp3cudQ_" role="3uHU7B">
                    <node concept="37vLTw" id="__fp3cudQA" role="2Oq$k0">
                      <ref role="3cqZAo" node="__fp3cu1VG" resolve="commentText" />
                    </node>
                    <node concept="liA8E" id="__fp3cudQB" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String):int" resolve="indexOf" />
                      <node concept="Xl_RD" id="__fp3cudQC" role="37wK5m">
                        <property role="Xl_RC" value="\n" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="__fp3cueXE" role="3cqZAp">
              <node concept="3clFbS" id="__fp3cueXG" role="3clFbx">
                <node concept="3cpWs6" id="__fp3cucgp" role="3cqZAp">
                  <node concept="2OqwBi" id="__fp3cud4A" role="3cqZAk">
                    <node concept="37vLTw" id="__fp3cucCj" role="2Oq$k0">
                      <ref role="3cqZAo" node="__fp3cu1VG" resolve="commentText" />
                    </node>
                    <node concept="liA8E" id="__fp3cudBz" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.substring(int):java.lang.String" resolve="substring" />
                      <node concept="37vLTw" id="__fp3cupiJ" role="37wK5m">
                        <ref role="3cqZAo" node="__fp3cudQ$" resolve="indexOfTextStart" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="__fp3culal" role="3clFbw">
                <node concept="3eOVzh" id="__fp3cunpx" role="3uHU7w">
                  <node concept="2OqwBi" id="__fp3cuowo" role="3uHU7w">
                    <node concept="37vLTw" id="__fp3cunJL" role="2Oq$k0">
                      <ref role="3cqZAo" node="__fp3cu1VG" resolve="commentText" />
                    </node>
                    <node concept="liA8E" id="__fp3cuoRR" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.length():int" resolve="length" />
                    </node>
                  </node>
                  <node concept="37vLTw" id="__fp3culze" role="3uHU7B">
                    <ref role="3cqZAo" node="__fp3cudQ$" resolve="indexOfTextStart" />
                  </node>
                </node>
                <node concept="3y3z36" id="__fp3cuiH1" role="3uHU7B">
                  <node concept="37vLTw" id="__fp3cui98" role="3uHU7B">
                    <ref role="3cqZAo" node="__fp3cudQ$" resolve="indexOfTextStart" />
                  </node>
                  <node concept="3cmrfG" id="__fp3cvQMT" role="3uHU7w">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="__fp3cuagf" role="3clFbw">
            <ref role="3cqZAo" node="__fp3cu6Zt" resolve="hasNodeId" />
          </node>
        </node>
        <node concept="3cpWs6" id="__fp3cuqWw" role="3cqZAp">
          <node concept="37vLTw" id="__fp3curG1" role="3cqZAk">
            <ref role="3cqZAo" node="__fp3cu1VG" resolve="commentText" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="__fp3ctZMN" role="3clF45" />
      <node concept="3Tm6S6" id="__fp3ctYMo" role="1B3o_S" />
      <node concept="37vLTG" id="__fp3cu1VG" role="3clF46">
        <property role="TrG5h" value="commentText" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="__fp3cu1VF" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="__fp3cuvOw" role="jymVt" />
    <node concept="2YIFZL" id="__fp3cuwMY" role="jymVt">
      <property role="TrG5h" value="parseNodePortion" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3clFbS" id="__fp3cuwMZ" role="3clF47">
        <node concept="3cpWs8" id="__fp3cuwN0" role="3cqZAp">
          <node concept="3cpWsn" id="__fp3cuwN1" role="3cpWs9">
            <property role="TrG5h" value="hasNodeId" />
            <property role="3TUv4t" value="true" />
            <node concept="10P_77" id="__fp3cuwN2" role="1tU5fm" />
            <node concept="2OqwBi" id="__fp3cuwN3" role="33vP2m">
              <node concept="2OqwBi" id="__fp3cuwN4" role="2Oq$k0">
                <node concept="37vLTw" id="__fp3cuwN5" role="2Oq$k0">
                  <ref role="3cqZAo" node="__fp3cuwNB" resolve="commentText" />
                </node>
                <node concept="liA8E" id="__fp3cuwN6" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~String.toLowerCase():java.lang.String" resolve="toLowerCase" />
                </node>
              </node>
              <node concept="liA8E" id="__fp3cuwN7" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.startsWith(java.lang.String):boolean" resolve="startsWith" />
                <node concept="Xl_RD" id="__fp3cuwN8" role="37wK5m">
                  <property role="Xl_RC" value="node:" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="__fp3cuwN9" role="3cqZAp">
          <node concept="3clFbS" id="__fp3cuwNa" role="3clFbx">
            <node concept="3cpWs8" id="__fp3cu$ZZ" role="3cqZAp">
              <node concept="3cpWsn" id="__fp3cu_02" role="3cpWs9">
                <property role="TrG5h" value="indexOfColon" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="__fp3cu$ZX" role="1tU5fm" />
                <node concept="2OqwBi" id="__fp3cuAda" role="33vP2m">
                  <node concept="37vLTw" id="__fp3cu_GZ" role="2Oq$k0">
                    <ref role="3cqZAo" node="__fp3cuwNB" resolve="commentText" />
                  </node>
                  <node concept="liA8E" id="__fp3cuA$x" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String):int" resolve="indexOf" />
                    <node concept="Xl_RD" id="__fp3cuAKM" role="37wK5m">
                      <property role="Xl_RC" value=":" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs8" id="__fp3cuwNb" role="3cqZAp">
              <node concept="3cpWsn" id="__fp3cuwNc" role="3cpWs9">
                <property role="TrG5h" value="indexOfNewline" />
                <property role="3TUv4t" value="true" />
                <node concept="10Oyi0" id="__fp3cuwNd" role="1tU5fm" />
                <node concept="2OqwBi" id="__fp3cuwNe" role="33vP2m">
                  <node concept="37vLTw" id="__fp3cuwNf" role="2Oq$k0">
                    <ref role="3cqZAo" node="__fp3cuwNB" resolve="commentText" />
                  </node>
                  <node concept="liA8E" id="__fp3cuwNg" role="2OqNvi">
                    <ref role="37wK5l" to="wyt6:~String.indexOf(java.lang.String):int" resolve="indexOf" />
                    <node concept="Xl_RD" id="__fp3cuwNh" role="37wK5m">
                      <property role="Xl_RC" value="\n" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbJ" id="__fp3cuwNi" role="3cqZAp">
              <node concept="3clFbS" id="__fp3cuwNj" role="3clFbx">
                <node concept="3cpWs6" id="__fp3cuwNk" role="3cqZAp">
                  <node concept="2OqwBi" id="__fp3cuwNl" role="3cqZAk">
                    <node concept="37vLTw" id="__fp3cuwNm" role="2Oq$k0">
                      <ref role="3cqZAo" node="__fp3cuwNB" resolve="commentText" />
                    </node>
                    <node concept="liA8E" id="__fp3cuwNn" role="2OqNvi">
                      <ref role="37wK5l" to="wyt6:~String.substring(int,int):java.lang.String" resolve="substring" />
                      <node concept="3cpWs3" id="__fp3cuGfm" role="37wK5m">
                        <node concept="3cmrfG" id="__fp3cuGpT" role="3uHU7w">
                          <property role="3cmrfH" value="1" />
                        </node>
                        <node concept="37vLTw" id="__fp3cuEwf" role="3uHU7B">
                          <ref role="3cqZAo" node="__fp3cu_02" resolve="indexOfColon" />
                        </node>
                      </node>
                      <node concept="37vLTw" id="__fp3cuwNo" role="37wK5m">
                        <ref role="3cqZAo" node="__fp3cuwNc" resolve="indexOfNewline" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="1Wc70l" id="__fp3cuwNp" role="3clFbw">
                <node concept="3y3z36" id="__fp3cuCDB" role="3uHU7w">
                  <node concept="3cmrfG" id="__fp3cuCPA" role="3uHU7w">
                    <property role="3cmrfH" value="-1" />
                  </node>
                  <node concept="37vLTw" id="__fp3cuB0H" role="3uHU7B">
                    <ref role="3cqZAo" node="__fp3cu_02" resolve="indexOfColon" />
                  </node>
                </node>
                <node concept="3y3z36" id="__fp3cuwNv" role="3uHU7B">
                  <node concept="37vLTw" id="__fp3cuwNw" role="3uHU7B">
                    <ref role="3cqZAo" node="__fp3cuwNc" resolve="indexOfNewline" />
                  </node>
                  <node concept="3cmrfG" id="__fp3cuwNx" role="3uHU7w">
                    <property role="3cmrfH" value="-1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="37vLTw" id="__fp3cuwNy" role="3clFbw">
            <ref role="3cqZAo" node="__fp3cuwN1" resolve="hasNodeId" />
          </node>
        </node>
        <node concept="3cpWs6" id="__fp3cuwNz" role="3cqZAp">
          <node concept="10Nm6u" id="__fp3cuKX4" role="3cqZAk" />
        </node>
      </node>
      <node concept="17QB3L" id="__fp3cuwN_" role="3clF45" />
      <node concept="3Tm6S6" id="__fp3cuwNA" role="1B3o_S" />
      <node concept="37vLTG" id="__fp3cuwNB" role="3clF46">
        <property role="TrG5h" value="commentText" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="__fp3cuwNC" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="__fp3cuwJr" role="jymVt" />
  </node>
  <node concept="312cEu" id="2hVa5m$1dBY">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketCommentActivity" />
    <node concept="2tJIrI" id="2hVa5m$1_GP" role="jymVt" />
    <node concept="312cEg" id="2hVa5m$1Avx" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="commentAction" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1A77" role="1B3o_S" />
      <node concept="17QB3L" id="2hVa5m$1Ant" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="2hVa5m$1_oP" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="comment" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="2hVa5m$1$mV" role="1B3o_S" />
      <node concept="3uibUv" id="2hVa5m$1_gJ" role="1tU5fm">
        <ref role="3uigEE" node="2hVa5m$1$n6" resolve="BitbucketComment" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1_yR" role="jymVt" />
    <node concept="3Tm1VV" id="2hVa5m$1dBZ" role="1B3o_S" />
    <node concept="3uibUv" id="2hVa5m$1dGk" role="1zkMxy">
      <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
    </node>
    <node concept="3uibUv" id="2hVa5m$1$AL" role="EKbjA">
      <ref role="3uigEE" to="m3q8:4Ew7qBDrroM" resolve="Comment" />
    </node>
    <node concept="3clFb_" id="2hVa5m$1$BQ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="2hVa5m$1$BS" role="1B3o_S" />
      <node concept="10Oyi0" id="2hVa5m$1$BT" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1$BX" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1$BZ" role="3clF47">
        <node concept="3cpWs6" id="5ihn07Co1dg" role="3cqZAp">
          <node concept="2OqwBi" id="5ihn07Co1dh" role="3cqZAk">
            <node concept="2OqwBi" id="5ihn07Co1di" role="2Oq$k0">
              <node concept="Xjq3P" id="5ihn07Co1dj" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07Co1dk" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1_oP" resolve="comment" />
              </node>
            </node>
            <node concept="liA8E" id="5ihn07Co1dl" role="2OqNvi">
              <ref role="37wK5l" node="2hVa5m$1M7P" resolve="getId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$C0" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1L9C" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1$C1" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getText" />
      <node concept="3Tm1VV" id="2hVa5m$1$C3" role="1B3o_S" />
      <node concept="17QB3L" id="2hVa5m$1$C4" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1$C8" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1$Ca" role="3clF47">
        <node concept="3cpWs6" id="5ihn07Co0Ou" role="3cqZAp">
          <node concept="2OqwBi" id="5ihn07Co0Ov" role="3cqZAk">
            <node concept="2OqwBi" id="5ihn07Co0Ow" role="2Oq$k0">
              <node concept="Xjq3P" id="5ihn07Co0Ox" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07Co0Oy" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1_oP" resolve="comment" />
              </node>
            </node>
            <node concept="liA8E" id="5ihn07Co0Oz" role="2OqNvi">
              <ref role="37wK5l" node="2hVa5m$1M7Z" resolve="getText" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$Cb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1KTN" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1$Cc" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAuthor" />
      <node concept="3Tm1VV" id="2hVa5m$1$Ce" role="1B3o_S" />
      <node concept="3uibUv" id="2hVa5m$1$Cf" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrsxM" resolve="User" />
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$Cj" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1$Cl" role="3clF47">
        <node concept="3cpWs6" id="5ihn07Co0w1" role="3cqZAp">
          <node concept="2OqwBi" id="5ihn07Co0w2" role="3cqZAk">
            <node concept="2OqwBi" id="5ihn07Co0w3" role="2Oq$k0">
              <node concept="Xjq3P" id="5ihn07Co0w4" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07Co0w5" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1_oP" resolve="comment" />
              </node>
            </node>
            <node concept="liA8E" id="5ihn07Co0w6" role="2OqNvi">
              <ref role="37wK5l" node="2hVa5m$1M89" resolve="getAuthor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$Cm" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1KDZ" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1$Cp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getUpdatedDate" />
      <node concept="3Tm1VV" id="2hVa5m$1$Cr" role="1B3o_S" />
      <node concept="3uibUv" id="__fp3c_DMP" role="3clF45">
        <ref role="3uigEE" to="28m1:~Instant" resolve="Instant" />
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$Cw" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1$Cy" role="3clF47">
        <node concept="3cpWs6" id="5ihn07Co0ej" role="3cqZAp">
          <node concept="2OqwBi" id="5ihn07Co0ek" role="3cqZAk">
            <node concept="2OqwBi" id="5ihn07Co0el" role="2Oq$k0">
              <node concept="Xjq3P" id="5ihn07Co0em" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07Co0en" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1_oP" resolve="comment" />
              </node>
            </node>
            <node concept="liA8E" id="5ihn07Co0eo" role="2OqNvi">
              <ref role="37wK5l" node="2hVa5m$1M8l" resolve="getUpdatedDate" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$Cz" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1Kqc" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1$CA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getReplies" />
      <node concept="3Tm1VV" id="2hVa5m$1$CC" role="1B3o_S" />
      <node concept="3uibUv" id="2hVa5m$1$CD" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3qUE_q" id="2hVa5m$2$UH" role="11_B2D">
          <node concept="3uibUv" id="2hVa5m$2_fJ" role="3qUE_r">
            <ref role="3uigEE" to="m3q8:4Ew7qBDrroM" resolve="Comment" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$CI" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1$CK" role="3clF47">
        <node concept="3cpWs6" id="5ihn07CnZRw" role="3cqZAp">
          <node concept="2OqwBi" id="5ihn07CnZRx" role="3cqZAk">
            <node concept="2OqwBi" id="5ihn07CnZRy" role="2Oq$k0">
              <node concept="Xjq3P" id="5ihn07CnZRz" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07CnZR$" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1_oP" resolve="comment" />
              </node>
            </node>
            <node concept="liA8E" id="5ihn07CnZR_" role="2OqNvi">
              <ref role="37wK5l" node="2hVa5m$1M8x" resolve="getReplies" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$CL" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1Kaq" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1$CO" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFilePath" />
      <node concept="3Tm1VV" id="2hVa5m$1$CQ" role="1B3o_S" />
      <node concept="17QB3L" id="2hVa5m$1$CR" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1$CV" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1$CX" role="3clF47">
        <node concept="3cpWs6" id="5ihn07CnZzV" role="3cqZAp">
          <node concept="2OqwBi" id="5ihn07CnZzW" role="3cqZAk">
            <node concept="2OqwBi" id="5ihn07CnZzX" role="2Oq$k0">
              <node concept="Xjq3P" id="5ihn07CnZzY" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07CnZzZ" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1_oP" resolve="comment" />
              </node>
            </node>
            <node concept="liA8E" id="5ihn07CnZ$0" role="2OqNvi">
              <ref role="37wK5l" node="2hVa5m$1M8I" resolve="getFilePath" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$CY" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2hVa5m$1JUD" role="jymVt" />
    <node concept="3clFb_" id="2hVa5m$1$CZ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCommentedNodeURL" />
      <node concept="3Tm1VV" id="2hVa5m$1$D1" role="1B3o_S" />
      <node concept="17QB3L" id="5ihn07CnUEu" role="3clF45" />
      <node concept="2AHcQZ" id="2hVa5m$1$D6" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
      <node concept="3clFbS" id="2hVa5m$1$D8" role="3clF47">
        <node concept="3cpWs6" id="5ihn07CnYY6" role="3cqZAp">
          <node concept="2OqwBi" id="5ihn07CnYY7" role="3cqZAk">
            <node concept="2OqwBi" id="5ihn07CnYY8" role="2Oq$k0">
              <node concept="Xjq3P" id="5ihn07CnYY9" role="2Oq$k0" />
              <node concept="2OwXpG" id="5ihn07CnYYa" role="2OqNvi">
                <ref role="2Oxat5" node="2hVa5m$1_oP" resolve="comment" />
              </node>
            </node>
            <node concept="liA8E" id="5ihn07CnYYb" role="2OqNvi">
              <ref role="37wK5l" node="2hVa5m$1M8S" resolve="getCommentedNodeURL" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2hVa5m$1$D9" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="5ihn07CnZex" role="jymVt" />
    <node concept="3UR2Jj" id="2hVa5m$1LT5" role="lGtFl">
      <node concept="TZ5HA" id="2hVa5m$1LT6" role="TZ5H$">
        <node concept="1dT_AC" id="2hVa5m$1LT7" role="1dT_Ay">
          <property role="1dT_AB" value="A Bitbucket comment activity. Delegates to the contained comment for all information." />
        </node>
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4dp0YvduXPw">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketCommentRequestBody" />
    <node concept="312cEg" id="4dp0YvduXVe" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="text" />
      <property role="3TUv4t" value="false" />
      <node concept="17QB3L" id="4dp0YvduXV3" role="1tU5fm" />
      <node concept="3Tm6S6" id="4dp0YvduXVq" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="4dp0Yvdvr4P" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="parentComment" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4dp0YvdvqZE" role="1B3o_S" />
      <node concept="3uibUv" id="4dp0Yvdvr4A" role="1tU5fm">
        <ref role="3uigEE" node="4dp0YvduYat" resolve="BitbucketCommentRequestBody.ParentComment" />
      </node>
    </node>
    <node concept="312cEg" id="4jyU69OoHCb" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="anchor" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4jyU69OoHlt" role="1B3o_S" />
      <node concept="3uibUv" id="4jyU69OoHBP" role="1tU5fm">
        <ref role="3uigEE" node="4jyU69Ool2_" resolve="BitbucketCommentRequestBody.Anchor" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dp0Yvdvr5h" role="jymVt" />
    <node concept="312cEu" id="4dp0YvduYat" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="ParentComment" />
      <node concept="312cEg" id="4dp0YvduYuL" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="4dp0YvduYhO" role="1B3o_S" />
        <node concept="10Oyi0" id="4dp0YvduYuE" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="4dp0YvdwCbF" role="jymVt" />
      <node concept="3clFbW" id="4dp0YvdwCsk" role="jymVt">
        <node concept="3cqZAl" id="4dp0YvdwCsl" role="3clF45" />
        <node concept="3clFbS" id="4dp0YvdwCsn" role="3clF47">
          <node concept="3clFbF" id="4dp0YvdwCPd" role="3cqZAp">
            <node concept="37vLTI" id="4dp0YvdwFM3" role="3clFbG">
              <node concept="37vLTw" id="4dp0YvdwGmk" role="37vLTx">
                <ref role="3cqZAo" node="4dp0YvdwC$9" resolve="id" />
              </node>
              <node concept="2OqwBi" id="4dp0YvdwCUH" role="37vLTJ">
                <node concept="Xjq3P" id="4dp0YvdwCPc" role="2Oq$k0" />
                <node concept="2OwXpG" id="4dp0YvdwD1K" role="2OqNvi">
                  <ref role="2Oxat5" node="4dp0YvduYuL" resolve="id" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="4dp0YvdwCkB" role="1B3o_S" />
        <node concept="37vLTG" id="4dp0YvdwC$9" role="3clF46">
          <property role="TrG5h" value="id" />
          <property role="3TUv4t" value="true" />
          <node concept="10Oyi0" id="4dp0YvdwC$8" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="4jyU69OoIue" role="jymVt" />
      <node concept="3clFb_" id="4jyU69OoJ0y" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getId" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="4jyU69OoJ0_" role="3clF47">
          <node concept="3cpWs6" id="4jyU69OoJOL" role="3cqZAp">
            <node concept="2OqwBi" id="4jyU69OoJOM" role="3cqZAk">
              <node concept="Xjq3P" id="4jyU69OoJON" role="2Oq$k0" />
              <node concept="2OwXpG" id="4jyU69OoJOO" role="2OqNvi">
                <ref role="2Oxat5" node="4dp0YvduYuL" resolve="id" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4jyU69OoIN4" role="1B3o_S" />
        <node concept="10Oyi0" id="4jyU69OoITC" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="4jyU69OoI_F" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="4jyU69OokOC" role="jymVt" />
    <node concept="312cEu" id="4jyU69Ool2_" role="jymVt">
      <property role="2bfB8j" value="true" />
      <property role="TrG5h" value="Anchor" />
      <node concept="2tJIrI" id="4jyU69OolaT" role="jymVt" />
      <node concept="312cEg" id="4jyU69OolnW" role="jymVt">
        <property role="34CwA1" value="false" />
        <property role="eg7rD" value="false" />
        <property role="TrG5h" value="path" />
        <property role="3TUv4t" value="false" />
        <node concept="3Tm6S6" id="4jyU69Oolho" role="1B3o_S" />
        <node concept="17QB3L" id="4jyU69OolnP" role="1tU5fm" />
      </node>
      <node concept="2tJIrI" id="4jyU69Ooloe" role="jymVt" />
      <node concept="3clFbW" id="4jyU69OoloA" role="jymVt">
        <node concept="3cqZAl" id="4jyU69OoloB" role="3clF45" />
        <node concept="3clFbS" id="4jyU69OoloC" role="3clF47">
          <node concept="3clFbF" id="4jyU69OoloD" role="3cqZAp">
            <node concept="37vLTI" id="4jyU69OoloE" role="3clFbG">
              <node concept="37vLTw" id="4jyU69OoloF" role="37vLTx">
                <ref role="3cqZAo" node="4jyU69OoloK" resolve="path" />
              </node>
              <node concept="2OqwBi" id="4jyU69OoloG" role="37vLTJ">
                <node concept="Xjq3P" id="4jyU69OoloH" role="2Oq$k0" />
                <node concept="2OwXpG" id="4jyU69OolTn" role="2OqNvi">
                  <ref role="2Oxat5" node="4jyU69OolnW" resolve="path" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm6S6" id="4jyU69OoloJ" role="1B3o_S" />
        <node concept="37vLTG" id="4jyU69OoloK" role="3clF46">
          <property role="TrG5h" value="path" />
          <property role="3TUv4t" value="true" />
          <node concept="17QB3L" id="4jyU69Oom9t" role="1tU5fm" />
        </node>
      </node>
      <node concept="2tJIrI" id="4jyU69Oolol" role="jymVt" />
      <node concept="3clFb_" id="4jyU69OoJW8" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="getPath" />
        <property role="od$2w" value="false" />
        <property role="DiZV1" value="false" />
        <property role="2aFKle" value="false" />
        <node concept="3clFbS" id="4jyU69OoJW9" role="3clF47">
          <node concept="3cpWs6" id="4jyU69OoJWa" role="3cqZAp">
            <node concept="2OqwBi" id="4jyU69OoJWb" role="3cqZAk">
              <node concept="Xjq3P" id="4jyU69OoJWc" role="2Oq$k0" />
              <node concept="2OwXpG" id="4jyU69OoKPD" role="2OqNvi">
                <ref role="2Oxat5" node="4jyU69OolnW" resolve="path" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3Tm1VV" id="4jyU69OoJWe" role="1B3o_S" />
        <node concept="17QB3L" id="4jyU69OoKhg" role="3clF45" />
      </node>
      <node concept="2tJIrI" id="4jyU69OoJT7" role="jymVt" />
    </node>
    <node concept="2tJIrI" id="4dp0Yvdvr5z" role="jymVt" />
    <node concept="3clFbW" id="4dp0YvdvrfC" role="jymVt">
      <node concept="3cqZAl" id="4dp0YvdvrfD" role="3clF45" />
      <node concept="3clFbS" id="4dp0YvdvrfF" role="3clF47">
        <node concept="3clFbF" id="4dp0YvdvB1I" role="3cqZAp">
          <node concept="37vLTI" id="4dp0YvdvC6Q" role="3clFbG">
            <node concept="1rXfSq" id="4dp0YvdwATb" role="37vLTx">
              <ref role="37wK5l" node="4dp0YvdwAfK" resolve="getText" />
              <node concept="37vLTw" id="4dp0YvdwB09" role="37wK5m">
                <ref role="3cqZAo" node="4dp0YvdvARc" resolve="request" />
              </node>
            </node>
            <node concept="2OqwBi" id="4dp0YvdvB7e" role="37vLTJ">
              <node concept="Xjq3P" id="4dp0YvdvB1H" role="2Oq$k0" />
              <node concept="2OwXpG" id="4dp0YvdvBej" role="2OqNvi">
                <ref role="2Oxat5" node="4dp0YvduXVe" resolve="text" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4dp0YvdwHfC" role="3cqZAp">
          <node concept="3clFbS" id="4dp0YvdwHfE" role="3clFbx">
            <node concept="3clFbF" id="4dp0YvdwBbN" role="3cqZAp">
              <node concept="37vLTI" id="4dp0YvdwBSK" role="3clFbG">
                <node concept="2ShNRf" id="4dp0YvdwKrC" role="37vLTx">
                  <node concept="1pGfFk" id="4dp0YvdwL6Z" role="2ShVmc">
                    <ref role="37wK5l" node="4dp0YvdwCsk" resolve="BitbucketCommentRequestBody.ParentComment" />
                    <node concept="2OqwBi" id="4dp0YvdwLr0" role="37wK5m">
                      <node concept="37vLTw" id="4dp0YvdwLdL" role="2Oq$k0">
                        <ref role="3cqZAo" node="4dp0YvdvARc" resolve="request" />
                      </node>
                      <node concept="2OwXpG" id="4dp0YvdwLIh" role="2OqNvi">
                        <ref role="2Oxat5" to="2jep:4dp0YvdvjuO" resolve="replyToId" />
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="2OqwBi" id="4dp0YvdwBiu" role="37vLTJ">
                  <node concept="Xjq3P" id="4dp0YvdwBbL" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4dp0YvdwBpF" role="2OqNvi">
                    <ref role="2Oxat5" node="4dp0Yvdvr4P" resolve="parentComment" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4dp0YvdwK1w" role="3clFbw">
            <node concept="10Nm6u" id="4dp0YvdwK75" role="3uHU7w" />
            <node concept="2OqwBi" id="4dp0YvdwHzX" role="3uHU7B">
              <node concept="37vLTw" id="4dp0YvdwHnK" role="2Oq$k0">
                <ref role="3cqZAo" node="4dp0YvdvARc" resolve="request" />
              </node>
              <node concept="2OwXpG" id="4dp0YvdwHF2" role="2OqNvi">
                <ref role="2Oxat5" to="2jep:4dp0YvdvjuO" resolve="replyToId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4jyU69OomrJ" role="3cqZAp">
          <node concept="3clFbS" id="4jyU69OomrL" role="3clFbx">
            <node concept="3clFbF" id="4jyU69OoHTx" role="3cqZAp">
              <node concept="37vLTI" id="4jyU69OoIno" role="3clFbG">
                <node concept="2OqwBi" id="4jyU69OoHXQ" role="37vLTJ">
                  <node concept="Xjq3P" id="4jyU69OoHTv" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4jyU69OoIbn" role="2OqNvi">
                    <ref role="2Oxat5" node="4jyU69OoHCb" resolve="anchor" />
                  </node>
                </node>
                <node concept="2ShNRf" id="4jyU69OoIoL" role="37vLTx">
                  <node concept="1pGfFk" id="4jyU69OoIoM" role="2ShVmc">
                    <ref role="37wK5l" node="4jyU69OoloA" resolve="BitbucketCommentRequestBody.Anchor" />
                    <node concept="2OqwBi" id="4jyU69OoIoN" role="37wK5m">
                      <node concept="37vLTw" id="4jyU69OoIoO" role="2Oq$k0">
                        <ref role="3cqZAo" node="4dp0YvdvARc" resolve="request" />
                      </node>
                      <node concept="2OwXpG" id="4jyU69OoIoP" role="2OqNvi">
                        <ref role="2Oxat5" to="2jep:4jyU69OlrVS" resolve="filePath" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4jyU69OonrB" role="3clFbw">
            <node concept="10Nm6u" id="4jyU69OonwF" role="3uHU7w" />
            <node concept="2OqwBi" id="4jyU69OomP7" role="3uHU7B">
              <node concept="37vLTw" id="4jyU69OomDo" role="2Oq$k0">
                <ref role="3cqZAo" node="4dp0YvdvARc" resolve="request" />
              </node>
              <node concept="2OwXpG" id="4jyU69OomZm" role="2OqNvi">
                <ref role="2Oxat5" to="2jep:4jyU69OlrVS" resolve="filePath" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="4dp0YvdvARc" role="3clF46">
        <property role="TrG5h" value="request" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4dp0YvdvARb" role="1tU5fm">
          <ref role="3uigEE" to="2jep:4dp0Yvdvjqg" resolve="PostCommentRequest" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4dp0YvdvCZj" role="jymVt" />
    <node concept="3clFb_" id="4jyU69OoLLy" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getText" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4jyU69OoLL_" role="3clF47">
        <node concept="3cpWs6" id="4jyU69OoM3R" role="3cqZAp">
          <node concept="2OqwBi" id="4jyU69OoMg_" role="3cqZAk">
            <node concept="Xjq3P" id="4jyU69OoM7t" role="2Oq$k0" />
            <node concept="2OwXpG" id="4jyU69OoMuR" role="2OqNvi">
              <ref role="2Oxat5" node="4dp0YvduXVe" resolve="text" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4jyU69OoLyX" role="1B3o_S" />
      <node concept="17QB3L" id="4jyU69OoLLt" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="4jyU69OoMXw" role="jymVt" />
    <node concept="3clFb_" id="4jyU69OoMAJ" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getParentComment" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4jyU69OoMAK" role="3clF47">
        <node concept="3cpWs6" id="4jyU69OoMAL" role="3cqZAp">
          <node concept="2OqwBi" id="4jyU69OoMAM" role="3cqZAk">
            <node concept="Xjq3P" id="4jyU69OoMAN" role="2Oq$k0" />
            <node concept="2OwXpG" id="4jyU69OoNWe" role="2OqNvi">
              <ref role="2Oxat5" node="4dp0Yvdvr4P" resolve="parentComment" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4jyU69OoMAP" role="1B3o_S" />
      <node concept="3uibUv" id="4jyU69OoOaI" role="3clF45">
        <ref role="3uigEE" node="4dp0YvduYat" resolve="BitbucketCommentRequestBody.ParentComment" />
      </node>
    </node>
    <node concept="2tJIrI" id="4jyU69OoN8V" role="jymVt" />
    <node concept="3clFb_" id="4jyU69OoMLR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getAnchor" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4jyU69OoMLS" role="3clF47">
        <node concept="3cpWs6" id="4jyU69OoMLT" role="3cqZAp">
          <node concept="2OqwBi" id="4jyU69OoMLU" role="3cqZAk">
            <node concept="Xjq3P" id="4jyU69OoMLV" role="2Oq$k0" />
            <node concept="2OwXpG" id="4jyU69OoP4$" role="2OqNvi">
              <ref role="2Oxat5" node="4jyU69OoHCb" resolve="anchor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4jyU69OoMLX" role="1B3o_S" />
      <node concept="3uibUv" id="4jyU69OoOLq" role="3clF45">
        <ref role="3uigEE" node="4jyU69Ool2_" resolve="BitbucketCommentRequestBody.Anchor" />
      </node>
    </node>
    <node concept="2tJIrI" id="4jyU69OoLkw" role="jymVt" />
    <node concept="2YIFZL" id="4dp0YvdwAfK" role="jymVt">
      <property role="TrG5h" value="getText" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4dp0YvdwAfM" role="3clF47">
        <node concept="3cpWs8" id="4dp0YvdwAfN" role="3cqZAp">
          <node concept="3cpWsn" id="4dp0YvdwAfO" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4dp0YvdwAfP" role="1tU5fm">
              <ref role="3uigEE" to="wyt6:~StringBuilder" resolve="StringBuilder" />
            </node>
            <node concept="2ShNRf" id="4dp0YvdwAfQ" role="33vP2m">
              <node concept="1pGfFk" id="4dp0YvdwAfR" role="2ShVmc">
                <ref role="37wK5l" to="wyt6:~StringBuilder.&lt;init&gt;()" resolve="StringBuilder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbJ" id="4dp0YvdwAfS" role="3cqZAp">
          <node concept="3clFbS" id="4dp0YvdwAfT" role="3clFbx">
            <node concept="3clFbF" id="4dp0YvdwAfU" role="3cqZAp">
              <node concept="2OqwBi" id="4dp0YvdwAfV" role="3clFbG">
                <node concept="37vLTw" id="4dp0YvdwAfW" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dp0YvdwAfO" resolve="builder" />
                </node>
                <node concept="liA8E" id="4dp0YvdwAfX" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="4dp0YvdwAfY" role="37wK5m">
                    <property role="Xl_RC" value="node:" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4dp0YvdwAfZ" role="3cqZAp">
              <node concept="2OqwBi" id="4dp0YvdwAg0" role="3clFbG">
                <node concept="37vLTw" id="4dp0YvdwAg1" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dp0YvdwAfO" resolve="builder" />
                </node>
                <node concept="liA8E" id="4dp0YvdwAg2" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="2OqwBi" id="5ihn07CnTLo" role="37wK5m">
                    <node concept="37vLTw" id="5ihn07CnTzh" role="2Oq$k0">
                      <ref role="3cqZAo" node="4dp0YvdwAgL" resolve="request" />
                    </node>
                    <node concept="2OwXpG" id="5ihn07CnU1o" role="2OqNvi">
                      <ref role="2Oxat5" to="2jep:4dp0Yvdvjwe" resolve="nodeURL" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3clFbF" id="4dp0YvdwAgq" role="3cqZAp">
              <node concept="2OqwBi" id="4dp0YvdwAgr" role="3clFbG">
                <node concept="37vLTw" id="4dp0YvdwAgs" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dp0YvdwAfO" resolve="builder" />
                </node>
                <node concept="liA8E" id="4dp0YvdwAgt" role="2OqNvi">
                  <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
                  <node concept="Xl_RD" id="4dp0YvdwAgu" role="37wK5m">
                    <property role="Xl_RC" value="\n" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3y3z36" id="4dp0YvdwAgv" role="3clFbw">
            <node concept="10Nm6u" id="4dp0YvdwAgw" role="3uHU7w" />
            <node concept="2OqwBi" id="4dp0YvdwAgx" role="3uHU7B">
              <node concept="37vLTw" id="4dp0YvdwAgy" role="2Oq$k0">
                <ref role="3cqZAo" node="4dp0YvdwAgL" resolve="request" />
              </node>
              <node concept="2OwXpG" id="4dp0YvdwAgz" role="2OqNvi">
                <ref role="2Oxat5" to="2jep:4dp0Yvdvjwe" resolve="nodeURL" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4dp0YvdwAg$" role="3cqZAp">
          <node concept="2OqwBi" id="4dp0YvdwAg_" role="3clFbG">
            <node concept="37vLTw" id="4dp0YvdwAgA" role="2Oq$k0">
              <ref role="3cqZAo" node="4dp0YvdwAfO" resolve="builder" />
            </node>
            <node concept="liA8E" id="4dp0YvdwAgB" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.append(java.lang.String):java.lang.StringBuilder" resolve="append" />
              <node concept="2OqwBi" id="4dp0YvdwAgC" role="37wK5m">
                <node concept="37vLTw" id="4dp0YvdwAgD" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dp0YvdwAgL" resolve="request" />
                </node>
                <node concept="2OwXpG" id="4dp0YvdwAgE" role="2OqNvi">
                  <ref role="2Oxat5" to="2jep:4dp0Yvdvjuw" resolve="commentText" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4dp0YvdwAgF" role="3cqZAp">
          <node concept="2OqwBi" id="4dp0YvdwAgG" role="3cqZAk">
            <node concept="37vLTw" id="4dp0YvdwAgH" role="2Oq$k0">
              <ref role="3cqZAo" node="4dp0YvdwAfO" resolve="builder" />
            </node>
            <node concept="liA8E" id="4dp0YvdwAgI" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~StringBuilder.toString():java.lang.String" resolve="toString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4dp0YvdwAgK" role="3clF45" />
      <node concept="37vLTG" id="4dp0YvdwAgL" role="3clF46">
        <property role="TrG5h" value="request" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4dp0YvdwAgM" role="1tU5fm">
          <ref role="3uigEE" to="2jep:4dp0Yvdvjqg" resolve="PostCommentRequest" />
        </node>
      </node>
      <node concept="3Tm6S6" id="4dp0YvdwAgJ" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="5ihn07CdSrh" role="jymVt" />
  </node>
  <node concept="312cEu" id="2hVa5m$3qAF">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketMergedActivity" />
    <node concept="3Tm1VV" id="2hVa5m$3qAG" role="1B3o_S" />
    <node concept="3uibUv" id="2hVa5m$3qFx" role="1zkMxy">
      <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
    </node>
  </node>
  <node concept="312cEu" id="2hVa5m$3qBh">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketOpenedActivity" />
    <node concept="3Tm1VV" id="2hVa5m$3qBi" role="1B3o_S" />
    <node concept="3uibUv" id="2hVa5m$3qD$" role="1zkMxy">
      <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
    </node>
  </node>
  <node concept="312cEu" id="3e72Pa5KYAm">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketRescopedActivity" />
    <node concept="3Tm1VV" id="3e72Pa5KYAn" role="1B3o_S" />
    <node concept="3uibUv" id="3e72Pa5KYCz" role="1zkMxy">
      <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
    </node>
  </node>
  <node concept="312cEu" id="4Ew7qBDrCpm">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketReview" />
    <node concept="312cEg" id="4Ew7qBDrDr5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="id" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrCUW" role="1B3o_S" />
      <node concept="10Oyi0" id="4Ew7qBDrDi9" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrEMw" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="version" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrEo$" role="1B3o_S" />
      <node concept="10Oyi0" id="4Ew7qBDrED$" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrEXf" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="title" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrDQC" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrDY1" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrFMX" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="description" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrFoY" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrFE1" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrGCO" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="state" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrGeM" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrGvS" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrHub" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="createdDate" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrH46" role="1B3o_S" />
      <node concept="3cpWsb" id="4Ew7qBDrHlf" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrI1Q" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="updatedDate" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrHKC" role="1B3o_S" />
      <node concept="3cpWsb" id="4Ew7qBDrHSg" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDrKOo" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="fromRef" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrItX" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDrKFq" role="1tU5fm">
        <ref role="3uigEE" node="4Ew7qBDrIDP" resolve="BitbucketBranchRef" />
      </node>
    </node>
    <node concept="312cEg" id="4Ew7qBDrLak" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="toRef" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDrLal" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDrLam" role="1tU5fm">
        <ref role="3uigEE" node="4Ew7qBDrIDP" resolve="BitbucketBranchRef" />
      </node>
    </node>
    <node concept="312cEg" id="4Ew7qBDsDDv" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="author" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsnhU" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDsDwx" role="1tU5fm">
        <ref role="3uigEE" node="4Ew7qBDsnV5" resolve="BitbucketReviewParticipant" />
      </node>
    </node>
    <node concept="312cEg" id="4Ew7qBDsGP7" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="reviewers" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsGP8" role="1B3o_S" />
      <node concept="_YKpA" id="4Ew7qBDsJdA" role="1tU5fm">
        <node concept="3uibUv" id="4Ew7qBDsJdC" role="_ZDj9">
          <ref role="3uigEE" node="4Ew7qBDsnV5" resolve="BitbucketReviewParticipant" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="4Ew7qBDsHte" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="participants" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsHtf" role="1B3o_S" />
      <node concept="_YKpA" id="4Ew7qBDsJwd" role="1tU5fm">
        <node concept="3uibUv" id="4Ew7qBDsJwe" role="_ZDj9">
          <ref role="3uigEE" node="4Ew7qBDsnV5" resolve="BitbucketReviewParticipant" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Ew7qBDsHqr" role="jymVt" />
    <node concept="3Tm1VV" id="4Ew7qBDrCpn" role="1B3o_S" />
    <node concept="3uibUv" id="4Ew7qBDrCpV" role="EKbjA">
      <ref role="3uigEE" to="m3q8:4Ew7qBDj1oK" resolve="Review" />
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCq7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="4Ew7qBDrCq9" role="1B3o_S" />
      <node concept="10Oyi0" id="4Ew7qBDtqRG" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDrCqb" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDttpl" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDtuuZ" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDttww" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDtvmH" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDrDr5" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqc" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqd" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getTitle" />
      <node concept="3Tm1VV" id="4Ew7qBDrCqf" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrCqg" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDrCqh" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDrWmD" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDrWP1" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDrWtT" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDrXgI" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDrEXf" resolve="title" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqi" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqj" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getDescription" />
      <node concept="3Tm1VV" id="4Ew7qBDrCql" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrCqm" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDrCqn" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDrZl5" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDrZFo" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDrZsb" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDs08e" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDrFMX" resolve="description" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqo" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqp" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getState" />
      <node concept="3Tm1VV" id="4Ew7qBDrCqr" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDrCqs" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrtlx" resolve="Review.ReviewState" />
      </node>
      <node concept="3clFbS" id="4Ew7qBDrCqt" role="3clF47">
        <node concept="3clFbJ" id="4Ew7qBDs1a0" role="3cqZAp">
          <node concept="3clFbS" id="4Ew7qBDs1a2" role="3clFbx">
            <node concept="3cpWs6" id="4Ew7qBDs36j" role="3cqZAp">
              <node concept="Rm8GO" id="4Ew7qBDs3X8" role="3cqZAk">
                <ref role="1Px2BO" to="m3q8:4Ew7qBDrtlx" resolve="Review.ReviewState" />
                <ref role="Rm8GQ" to="m3q8:4Ew7qBDrtok" resolve="OPEN" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4Ew7qBDs26k" role="3clFbw">
            <node concept="2OqwBi" id="4Ew7qBDszJp" role="2Oq$k0">
              <node concept="Xjq3P" id="4Ew7qBDszQW" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Ew7qBDszJs" role="2OqNvi">
                <ref role="2Oxat5" node="4Ew7qBDrGCO" resolve="state" />
              </node>
            </node>
            <node concept="liA8E" id="4Ew7qBDs2_Z" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
              <node concept="Xl_RD" id="4Ew7qBDs2H3" role="37wK5m">
                <property role="Xl_RC" value="open" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4Ew7qBDs6Ho" role="3eNLev">
            <node concept="3clFbS" id="4Ew7qBDs6Hq" role="3eOfB_">
              <node concept="3cpWs6" id="4Ew7qBDs97a" role="3cqZAp">
                <node concept="Rm8GO" id="4Ew7qBDs9rX" role="3cqZAk">
                  <ref role="1Px2BO" to="m3q8:4Ew7qBDrtlx" resolve="Review.ReviewState" />
                  <ref role="Rm8GQ" to="m3q8:4Ew7qBDrtrz" resolve="MERGED" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4Ew7qBDs8ms" role="3eO9$A">
              <node concept="2OqwBi" id="4Ew7qBDs$8I" role="2Oq$k0">
                <node concept="Xjq3P" id="4Ew7qBDs$gh" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDs$8L" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDrGCO" resolve="state" />
                </node>
              </node>
              <node concept="liA8E" id="4Ew7qBDs8mu" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
                <node concept="Xl_RD" id="4Ew7qBDs8mv" role="37wK5m">
                  <property role="Xl_RC" value="merged" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4Ew7qBDs8$$" role="3eNLev">
            <node concept="3clFbS" id="4Ew7qBDs8$A" role="3eOfB_">
              <node concept="3cpWs6" id="4Ew7qBDs9hf" role="3cqZAp">
                <node concept="Rm8GO" id="4Ew7qBDs9LN" role="3cqZAk">
                  <ref role="1Px2BO" to="m3q8:4Ew7qBDrtlx" resolve="Review.ReviewState" />
                  <ref role="Rm8GQ" to="m3q8:4Ew7qBDrtq8" resolve="DECLINED" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4Ew7qBDs8Td" role="3eO9$A">
              <node concept="2OqwBi" id="4Ew7qBDs$y3" role="2Oq$k0">
                <node concept="Xjq3P" id="4Ew7qBDs$DA" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDs$y6" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDrGCO" resolve="state" />
                </node>
              </node>
              <node concept="liA8E" id="4Ew7qBDs8Tf" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
                <node concept="Xl_RD" id="4Ew7qBDs8Tg" role="37wK5m">
                  <property role="Xl_RC" value="declined" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4Ew7qBDsa77" role="9aQIa">
            <node concept="3clFbS" id="4Ew7qBDsa78" role="9aQI4">
              <node concept="3SKdUt" id="4Ew7qBDsbjh" role="3cqZAp">
                <node concept="3SKdUq" id="4Ew7qBDsbjj" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: Throw exception here?" />
                </node>
              </node>
              <node concept="3cpWs6" id="4Ew7qBDsaD_" role="3cqZAp">
                <node concept="10Nm6u" id="4Ew7qBDsaKF" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqu" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getCreatedDate" />
      <node concept="3Tm1VV" id="4Ew7qBDrCqz" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDrCq$" role="3clF45">
        <ref role="3uigEE" to="28m1:~ZonedDateTime" resolve="ZonedDateTime" />
      </node>
      <node concept="3clFbS" id="4Ew7qBDrCq_" role="3clF47">
        <node concept="3cpWs8" id="4Ew7qBDsd4F" role="3cqZAp">
          <node concept="3cpWsn" id="4Ew7qBDsd4G" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="instant" />
            <node concept="3uibUv" id="4Ew7qBDsd4H" role="1tU5fm">
              <ref role="3uigEE" to="28m1:~Instant" resolve="Instant" />
            </node>
            <node concept="2YIFZM" id="4Ew7qBDsd4I" role="33vP2m">
              <ref role="37wK5l" to="28m1:~Instant.ofEpochSecond(long):java.time.Instant" resolve="ofEpochSecond" />
              <ref role="1Pybhc" to="28m1:~Instant" resolve="Instant" />
              <node concept="FJ1c_" id="4Ew7qBDsd4J" role="37wK5m">
                <node concept="3cmrfG" id="4Ew7qBDsd4K" role="3uHU7w">
                  <property role="3cmrfH" value="1000" />
                </node>
                <node concept="2OqwBi" id="4Ew7qBDsd4L" role="3uHU7B">
                  <node concept="Xjq3P" id="4Ew7qBDsd4M" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4Ew7qBDsd4N" role="2OqNvi">
                    <ref role="2Oxat5" node="4Ew7qBDrHub" resolve="createdDate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Ew7qBDsdJ8" role="3cqZAp">
          <node concept="2YIFZM" id="4Ew7qBDsd4T" role="3cqZAk">
            <ref role="37wK5l" to="28m1:~ZonedDateTime.ofInstant(java.time.Instant,java.time.ZoneId):java.time.ZonedDateTime" resolve="ofInstant" />
            <ref role="1Pybhc" to="28m1:~ZonedDateTime" resolve="ZonedDateTime" />
            <node concept="37vLTw" id="4Ew7qBDsd4U" role="37wK5m">
              <ref role="3cqZAo" node="4Ew7qBDsd4G" resolve="instant" />
            </node>
            <node concept="10M0yZ" id="4Ew7qBDsd4V" role="37wK5m">
              <ref role="3cqZAo" to="28m1:~ZoneOffset.UTC" resolve="UTC" />
              <ref role="1PxDUh" to="28m1:~ZoneOffset" resolve="ZoneOffset" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqA" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getLastUpdatedDate" />
      <node concept="3Tm1VV" id="4Ew7qBDrCqF" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDrCqG" role="3clF45">
        <ref role="3uigEE" to="28m1:~ZonedDateTime" resolve="ZonedDateTime" />
      </node>
      <node concept="3clFbS" id="4Ew7qBDrCqH" role="3clF47">
        <node concept="3cpWs8" id="4Ew7qBDsewl" role="3cqZAp">
          <node concept="3cpWsn" id="4Ew7qBDsewm" role="3cpWs9">
            <property role="3TUv4t" value="true" />
            <property role="TrG5h" value="instant" />
            <node concept="3uibUv" id="4Ew7qBDsewn" role="1tU5fm">
              <ref role="3uigEE" to="28m1:~Instant" resolve="Instant" />
            </node>
            <node concept="2YIFZM" id="4Ew7qBDsewo" role="33vP2m">
              <ref role="1Pybhc" to="28m1:~Instant" resolve="Instant" />
              <ref role="37wK5l" to="28m1:~Instant.ofEpochSecond(long):java.time.Instant" resolve="ofEpochSecond" />
              <node concept="FJ1c_" id="4Ew7qBDsewp" role="37wK5m">
                <node concept="3cmrfG" id="4Ew7qBDsewq" role="3uHU7w">
                  <property role="3cmrfH" value="1000" />
                </node>
                <node concept="2OqwBi" id="4Ew7qBDsewr" role="3uHU7B">
                  <node concept="Xjq3P" id="4Ew7qBDsews" role="2Oq$k0" />
                  <node concept="2OwXpG" id="4Ew7qBDseXG" role="2OqNvi">
                    <ref role="2Oxat5" node="4Ew7qBDrI1Q" resolve="updatedDate" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Ew7qBDseww" role="3cqZAp">
          <node concept="2YIFZM" id="4Ew7qBDsewx" role="3cqZAk">
            <ref role="1Pybhc" to="28m1:~ZonedDateTime" resolve="ZonedDateTime" />
            <ref role="37wK5l" to="28m1:~ZonedDateTime.ofInstant(java.time.Instant,java.time.ZoneId):java.time.ZonedDateTime" resolve="ofInstant" />
            <node concept="37vLTw" id="4Ew7qBDsewy" role="37wK5m">
              <ref role="3cqZAo" node="4Ew7qBDsewm" resolve="instant" />
            </node>
            <node concept="10M0yZ" id="4Ew7qBDsewz" role="37wK5m">
              <ref role="1PxDUh" to="28m1:~ZoneOffset" resolve="ZoneOffset" />
              <ref role="3cqZAo" to="28m1:~ZoneOffset.UTC" resolve="UTC" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqL" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getFromBranch" />
      <node concept="3Tm1VV" id="4Ew7qBDrCqN" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrCqO" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDrCqP" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDsfDS" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsgiN" role="3cqZAk">
            <node concept="2OqwBi" id="5IbzmGeyD11" role="2Oq$k0">
              <node concept="Xjq3P" id="5IbzmGeyD0Z" role="2Oq$k0" />
              <node concept="2OwXpG" id="5IbzmGeyD10" role="2OqNvi">
                <ref role="2Oxat5" node="4Ew7qBDrKOo" resolve="fromRef" />
              </node>
            </node>
            <node concept="liA8E" id="4Ew7qBDsgTg" role="2OqNvi">
              <ref role="37wK5l" node="4Ew7qBDsksv" resolve="getDisplayId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqR" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getToBranch" />
      <node concept="3Tm1VV" id="4Ew7qBDrCqT" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDrCqU" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDrCqV" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDshC2" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsihl" role="3cqZAk">
            <node concept="2OqwBi" id="5IbzmGeyD16" role="2Oq$k0">
              <node concept="Xjq3P" id="5IbzmGeyD14" role="2Oq$k0" />
              <node concept="2OwXpG" id="5IbzmGeyD15" role="2OqNvi">
                <ref role="2Oxat5" node="4Ew7qBDrLak" resolve="toRef" />
              </node>
            </node>
            <node concept="liA8E" id="4Ew7qBDsiSi" role="2OqNvi">
              <ref role="37wK5l" node="4Ew7qBDsksv" resolve="getDisplayId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCqW" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCqX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getAuthor" />
      <node concept="3Tm1VV" id="4Ew7qBDrCqZ" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDrCr0" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrsxM" resolve="User" />
      </node>
      <node concept="3clFbS" id="4Ew7qBDrCr1" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDsChw" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsEXX" role="3cqZAk">
            <node concept="2OqwBi" id="4Ew7qBDsC_V" role="2Oq$k0">
              <node concept="Xjq3P" id="4Ew7qBDsCoA" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Ew7qBDsEmG" role="2OqNvi">
                <ref role="2Oxat5" node="4Ew7qBDsDDv" resolve="author" />
              </node>
            </node>
            <node concept="liA8E" id="4Ew7qBDsFEo" role="2OqNvi">
              <ref role="37wK5l" node="4Ew7qBDsnVE" resolve="getUser" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCr2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDrCr5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getParticipants" />
      <node concept="3Tm1VV" id="4Ew7qBDrCr7" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDrCr8" role="3clF45">
        <ref role="3uigEE" to="33ny:~List" resolve="List" />
        <node concept="3uibUv" id="4Ew7qBDrCr9" role="11_B2D">
          <ref role="3uigEE" to="m3q8:4Ew7qBDrv7X" resolve="ReviewParticipant" />
        </node>
      </node>
      <node concept="3clFbS" id="4Ew7qBDrCra" role="3clF47">
        <node concept="3cpWs8" id="4Ew7qBDsLXn" role="3cqZAp">
          <node concept="3cpWsn" id="4Ew7qBDsLXq" role="3cpWs9">
            <property role="TrG5h" value="participants" />
            <property role="3TUv4t" value="true" />
            <node concept="_YKpA" id="4Ew7qBDsLXl" role="1tU5fm">
              <node concept="3uibUv" id="4Ew7qBDsM42" role="_ZDj9">
                <ref role="3uigEE" to="m3q8:4Ew7qBDrv7X" resolve="ReviewParticipant" />
              </node>
            </node>
            <node concept="2ShNRf" id="4Ew7qBDsMl2" role="33vP2m">
              <node concept="2Jqq0_" id="4Ew7qBDsMdZ" role="2ShVmc">
                <node concept="3uibUv" id="4Ew7qBDsMe0" role="HW$YZ">
                  <ref role="3uigEE" to="m3q8:4Ew7qBDrv7X" resolve="ReviewParticipant" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Ew7qBDsMGA" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsNjN" role="3clFbG">
            <node concept="37vLTw" id="4Ew7qBDsMG$" role="2Oq$k0">
              <ref role="3cqZAo" node="4Ew7qBDsLXq" resolve="participants" />
            </node>
            <node concept="TSZUe" id="4Ew7qBDsO4P" role="2OqNvi">
              <node concept="2OqwBi" id="4Ew7qBDsOsI" role="25WWJ7">
                <node concept="Xjq3P" id="4Ew7qBDsOey" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDsODK" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDsDDv" resolve="author" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Ew7qBDsP9h" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsPPj" role="3clFbG">
            <node concept="37vLTw" id="4Ew7qBDsP9f" role="2Oq$k0">
              <ref role="3cqZAo" node="4Ew7qBDsLXq" resolve="participants" />
            </node>
            <node concept="X8dFx" id="4Ew7qBDsQAD" role="2OqNvi">
              <node concept="2OqwBi" id="4Ew7qBDsR6U" role="25WWJ7">
                <node concept="Xjq3P" id="4Ew7qBDsQHK" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDsRuK" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDsGP7" resolve="reviewers" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Ew7qBDsSb9" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsSba" role="3clFbG">
            <node concept="37vLTw" id="4Ew7qBDsSbb" role="2Oq$k0">
              <ref role="3cqZAo" node="4Ew7qBDsLXq" resolve="participants" />
            </node>
            <node concept="X8dFx" id="4Ew7qBDsSbc" role="2OqNvi">
              <node concept="2OqwBi" id="4Ew7qBDsSbd" role="25WWJ7">
                <node concept="Xjq3P" id="4Ew7qBDsSbe" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDsSMa" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDsHte" resolve="participants" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4Ew7qBDsTEM" role="3cqZAp">
          <node concept="37vLTw" id="4Ew7qBDsUN5" role="3cqZAk">
            <ref role="3cqZAo" node="4Ew7qBDsLXq" resolve="participants" />
          </node>
        </node>
        <node concept="3clFbH" id="4Ew7qBDsSaM" role="3cqZAp" />
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDrCrb" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="4Ew7qBDsnV5">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketReviewParticipant" />
    <node concept="312cEg" id="4Ew7qBDsvp8" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="user" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsvcF" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDsvmm" role="1tU5fm">
        <ref role="3uigEE" node="4Ew7qBDso0z" resolve="BitbucketUser" />
      </node>
    </node>
    <node concept="312cEg" id="4Ew7qBDsvMB" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="role" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsvAb" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDsvJF" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDswrq" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="status" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsvWN" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDswoD" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4Ew7qBDsv35" role="jymVt" />
    <node concept="3Tm1VV" id="4Ew7qBDsnV6" role="1B3o_S" />
    <node concept="3uibUv" id="4Ew7qBDsnVu" role="EKbjA">
      <ref role="3uigEE" to="m3q8:4Ew7qBDrv7X" resolve="ReviewParticipant" />
    </node>
    <node concept="3clFb_" id="4Ew7qBDsnVE" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getUser" />
      <node concept="3Tm1VV" id="4Ew7qBDsnVG" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDsnVH" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrsxM" resolve="User" />
      </node>
      <node concept="3clFbS" id="4Ew7qBDsnVI" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDsAKH" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDsBpc" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDsB8e" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDsBAN" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDsvp8" resolve="user" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDsnVJ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDsnVM" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getRole" />
      <node concept="3Tm1VV" id="4Ew7qBDsnVO" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDsnVP" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrvnj" resolve="ReviewParticipant.ReviewerRole" />
      </node>
      <node concept="3clFbS" id="4Ew7qBDsnVQ" role="3clF47">
        <node concept="3clFbJ" id="4Ew7qBDsx17" role="3cqZAp">
          <node concept="3clFbS" id="4Ew7qBDsx18" role="3clFbx">
            <node concept="3cpWs6" id="4Ew7qBDsx19" role="3cqZAp">
              <node concept="Rm8GO" id="4Ew7qBDsxD0" role="3cqZAk">
                <ref role="1Px2BO" to="m3q8:4Ew7qBDrvnj" resolve="ReviewParticipant.ReviewerRole" />
                <ref role="Rm8GQ" to="m3q8:4Ew7qBDrvoY" resolve="AUTHOR" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4Ew7qBDsx1b" role="3clFbw">
            <node concept="2OqwBi" id="4Ew7qBDsyK3" role="2Oq$k0">
              <node concept="Xjq3P" id="4Ew7qBDsyyc" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Ew7qBDsyX8" role="2OqNvi">
                <ref role="2Oxat5" node="4Ew7qBDsvMB" resolve="role" />
              </node>
            </node>
            <node concept="liA8E" id="4Ew7qBDsx1d" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
              <node concept="Xl_RD" id="4Ew7qBDsx1e" role="37wK5m">
                <property role="Xl_RC" value="author" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4Ew7qBDsx1f" role="3eNLev">
            <node concept="3clFbS" id="4Ew7qBDsx1g" role="3eOfB_">
              <node concept="3cpWs6" id="4Ew7qBDsx1h" role="3cqZAp">
                <node concept="Rm8GO" id="4Ew7qBDsxVr" role="3cqZAk">
                  <ref role="1Px2BO" to="m3q8:4Ew7qBDrvnj" resolve="ReviewParticipant.ReviewerRole" />
                  <ref role="Rm8GQ" to="m3q8:4Ew7qBDrvq4" resolve="REVIEWER" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4Ew7qBDsx1j" role="3eO9$A">
              <node concept="liA8E" id="4Ew7qBDsx1l" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
                <node concept="Xl_RD" id="4Ew7qBDsykd" role="37wK5m">
                  <property role="Xl_RC" value="reviewer" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Ew7qBDsz1$" role="2Oq$k0">
                <node concept="Xjq3P" id="4Ew7qBDsz1_" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDsz1A" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDsvMB" resolve="role" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4Ew7qBDsx1n" role="3eNLev">
            <node concept="3clFbS" id="4Ew7qBDsx1o" role="3eOfB_">
              <node concept="3cpWs6" id="4Ew7qBDsx1p" role="3cqZAp">
                <node concept="Rm8GO" id="4Ew7qBDsy26" role="3cqZAk">
                  <ref role="1Px2BO" to="m3q8:4Ew7qBDrvnj" resolve="ReviewParticipant.ReviewerRole" />
                  <ref role="Rm8GQ" to="m3q8:4Ew7qBDrw8g" resolve="PARTICIPANT" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4Ew7qBDsx1r" role="3eO9$A">
              <node concept="liA8E" id="4Ew7qBDsx1t" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
                <node concept="Xl_RD" id="4Ew7qBDsx1u" role="37wK5m">
                  <property role="Xl_RC" value="participant" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Ew7qBDsz6j" role="2Oq$k0">
                <node concept="Xjq3P" id="4Ew7qBDsz6k" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDsz6l" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDsvMB" resolve="role" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4Ew7qBDsx1v" role="9aQIa">
            <node concept="3clFbS" id="4Ew7qBDsx1w" role="9aQI4">
              <node concept="3SKdUt" id="4Ew7qBDsx1x" role="3cqZAp">
                <node concept="3SKdUq" id="4Ew7qBDsx1y" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: Throw exception here?" />
                </node>
              </node>
              <node concept="3cpWs6" id="4Ew7qBDsx1z" role="3cqZAp">
                <node concept="10Nm6u" id="4Ew7qBDsx1$" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDsnVR" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDsnVU" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getStatus" />
      <node concept="3Tm1VV" id="4Ew7qBDsnVW" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDsnVX" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrvMJ" resolve="ReviewParticipant.ReviewerStatus" />
      </node>
      <node concept="3clFbS" id="4Ew7qBDsnVY" role="3clF47">
        <node concept="3clFbJ" id="4Ew7qBDs$PW" role="3cqZAp">
          <node concept="3clFbS" id="4Ew7qBDs$PX" role="3clFbx">
            <node concept="3cpWs6" id="4Ew7qBDs$PY" role="3cqZAp">
              <node concept="Rm8GO" id="4Ew7qBDs_gY" role="3cqZAk">
                <ref role="1Px2BO" to="m3q8:4Ew7qBDrvMJ" resolve="ReviewParticipant.ReviewerStatus" />
                <ref role="Rm8GQ" to="m3q8:4Ew7qBDrvOB" resolve="APPROVED" />
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="4Ew7qBDs$Q0" role="3clFbw">
            <node concept="2OqwBi" id="4Ew7qBDs$Q1" role="2Oq$k0">
              <node concept="Xjq3P" id="4Ew7qBDs$Q2" role="2Oq$k0" />
              <node concept="2OwXpG" id="4Ew7qBDsArh" role="2OqNvi">
                <ref role="2Oxat5" node="4Ew7qBDswrq" resolve="status" />
              </node>
            </node>
            <node concept="liA8E" id="4Ew7qBDs$Q4" role="2OqNvi">
              <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
              <node concept="Xl_RD" id="4Ew7qBDs$Q5" role="37wK5m">
                <property role="Xl_RC" value="approved" />
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="4Ew7qBDs$Q6" role="3eNLev">
            <node concept="3clFbS" id="4Ew7qBDs$Q7" role="3eOfB_">
              <node concept="3cpWs6" id="4Ew7qBDs$Q8" role="3cqZAp">
                <node concept="Rm8GO" id="4Ew7qBDs_z2" role="3cqZAk">
                  <ref role="1Px2BO" to="m3q8:4Ew7qBDrvMJ" resolve="ReviewParticipant.ReviewerStatus" />
                  <ref role="Rm8GQ" to="m3q8:4Ew7qBDrvQu" resolve="UNAPPROVED" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="4Ew7qBDs$Qa" role="3eO9$A">
              <node concept="liA8E" id="4Ew7qBDs$Qb" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equalsIgnoreCase(java.lang.String):boolean" resolve="equalsIgnoreCase" />
                <node concept="Xl_RD" id="4Ew7qBDs$Qc" role="37wK5m">
                  <property role="Xl_RC" value="unapproved" />
                </node>
              </node>
              <node concept="2OqwBi" id="4Ew7qBDs$Qd" role="2Oq$k0">
                <node concept="Xjq3P" id="4Ew7qBDs$Qe" role="2Oq$k0" />
                <node concept="2OwXpG" id="4Ew7qBDsAd8" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDswrq" resolve="status" />
                </node>
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="4Ew7qBDs$Qq" role="9aQIa">
            <node concept="3clFbS" id="4Ew7qBDs$Qr" role="9aQI4">
              <node concept="3SKdUt" id="4Ew7qBDs$Qs" role="3cqZAp">
                <node concept="3SKdUq" id="4Ew7qBDs$Qt" role="3SKWNk">
                  <property role="3SKdUp" value="TODO: Throw exception here?" />
                </node>
              </node>
              <node concept="3cpWs6" id="4Ew7qBDs$Qu" role="3cqZAp">
                <node concept="10Nm6u" id="4Ew7qBDs$Qv" role="3cqZAk" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDsnVZ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="2hVa5m$3q$k">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketSimpleUserActivity" />
    <node concept="312cEg" id="FcpLTH9BOq" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="user" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="FcpLTH9BFb" role="1B3o_S" />
      <node concept="3uibUv" id="FcpLTH9BOg" role="1tU5fm">
        <ref role="3uigEE" node="4Ew7qBDso0z" resolve="BitbucketUser" />
      </node>
    </node>
    <node concept="312cEg" id="24VqSbHgNky" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="action" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="24VqSbHgMVR" role="1B3o_S" />
      <node concept="3uibUv" id="24VqSbHgNhw" role="1tU5fm">
        <ref role="3uigEE" node="24VqSbHfHST" resolve="BitbucketActionType" />
      </node>
    </node>
    <node concept="2tJIrI" id="FcpLTH9rO5" role="jymVt" />
    <node concept="3clFbW" id="24VqSbHfBUL" role="jymVt">
      <node concept="37vLTG" id="24VqSbHgCDT" role="3clF46">
        <property role="TrG5h" value="user" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="24VqSbHgCNx" role="1tU5fm">
          <ref role="3uigEE" node="4Ew7qBDso0z" resolve="BitbucketUser" />
        </node>
      </node>
      <node concept="37vLTG" id="24VqSbHgCO1" role="3clF46">
        <property role="TrG5h" value="actionType" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="24VqSbHgJzU" role="1tU5fm">
          <ref role="3uigEE" node="24VqSbHfHST" resolve="BitbucketActionType" />
        </node>
      </node>
      <node concept="3cqZAl" id="24VqSbHfBUM" role="3clF45" />
      <node concept="3clFbS" id="24VqSbHfBUO" role="3clF47">
        <node concept="3clFbF" id="24VqSbHgJSZ" role="3cqZAp">
          <node concept="37vLTI" id="24VqSbHgLdH" role="3clFbG">
            <node concept="37vLTw" id="24VqSbHgLtf" role="37vLTx">
              <ref role="3cqZAo" node="24VqSbHgCDT" resolve="user" />
            </node>
            <node concept="2OqwBi" id="24VqSbHgK6p" role="37vLTJ">
              <node concept="Xjq3P" id="24VqSbHgJSY" role="2Oq$k0" />
              <node concept="2OwXpG" id="24VqSbHgKmN" role="2OqNvi">
                <ref role="2Oxat5" node="FcpLTH9BOq" resolve="user" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="24VqSbHgM5J" role="3cqZAp">
          <node concept="37vLTI" id="24VqSbHgPuC" role="3clFbG">
            <node concept="37vLTw" id="24VqSbHgPMQ" role="37vLTx">
              <ref role="3cqZAo" node="24VqSbHgCO1" resolve="actionType" />
            </node>
            <node concept="2OqwBi" id="24VqSbHgMnS" role="37vLTJ">
              <node concept="Xjq3P" id="24VqSbHgM5H" role="2Oq$k0" />
              <node concept="2OwXpG" id="24VqSbHgNMJ" role="2OqNvi">
                <ref role="2Oxat5" node="24VqSbHgNky" resolve="action" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="24VqSbHfBUP" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="FcpLTH9BQ0" role="jymVt" />
    <node concept="3clFb_" id="3PiydVXfz9W" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="doneByUser" />
      <node concept="3Tm1VV" id="3PiydVXfz9Y" role="1B3o_S" />
      <node concept="3uibUv" id="3PiydVXfz9Z" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDrsxM" resolve="User" />
      </node>
      <node concept="3clFbS" id="3PiydVXfza1" role="3clF47">
        <node concept="3cpWs6" id="3PiydVXf_dn" role="3cqZAp">
          <node concept="2OqwBi" id="3PiydVXf_TE" role="3cqZAk">
            <node concept="Xjq3P" id="3PiydVXf_sM" role="2Oq$k0" />
            <node concept="2OwXpG" id="3PiydVXfAdc" role="2OqNvi">
              <ref role="2Oxat5" node="FcpLTH9BOq" resolve="user" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3PiydVXfza2" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3PiydVXfArf" role="jymVt" />
    <node concept="3clFb_" id="3PiydVXfza5" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="actionText" />
      <node concept="3Tm1VV" id="3PiydVXfza7" role="1B3o_S" />
      <node concept="17QB3L" id="3PiydVXfza8" role="3clF45" />
      <node concept="3clFbS" id="3PiydVXfzaa" role="3clF47">
        <node concept="3cpWs6" id="24VqSbHh$rq" role="3cqZAp">
          <node concept="2OqwBi" id="24VqSbHhAIZ" role="3cqZAk">
            <node concept="2OqwBi" id="24VqSbHh_aG" role="2Oq$k0">
              <node concept="Xjq3P" id="24VqSbHh$_V" role="2Oq$k0" />
              <node concept="2OwXpG" id="24VqSbHh_Si" role="2OqNvi">
                <ref role="2Oxat5" node="24VqSbHgNky" resolve="action" />
              </node>
            </node>
            <node concept="liA8E" id="4xwNC9qBQU$" role="2OqNvi">
              <ref role="37wK5l" node="24VqSbHi9$A" resolve="getDisplayString" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3PiydVXfzab" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2uD4oyGix9C" role="jymVt" />
    <node concept="3clFb_" id="2uD4oyGixCX" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="actionColor" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2uD4oyGixD0" role="3clF47">
        <node concept="3cpWs6" id="2uD4oyGixYw" role="3cqZAp">
          <node concept="2OqwBi" id="2uD4oyGiziq" role="3cqZAk">
            <node concept="2OqwBi" id="2uD4oyGiymO" role="2Oq$k0">
              <node concept="Xjq3P" id="2uD4oyGiy5x" role="2Oq$k0" />
              <node concept="2OwXpG" id="2uD4oyGiyId" role="2OqNvi">
                <ref role="2Oxat5" node="24VqSbHgNky" resolve="action" />
              </node>
            </node>
            <node concept="liA8E" id="2uD4oyGizOY" role="2OqNvi">
              <ref role="37wK5l" node="2uD4oyGiuLW" resolve="getDisplayColor" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2uD4oyGixoE" role="1B3o_S" />
      <node concept="3uibUv" id="2uD4oyGixAY" role="3clF45">
        <ref role="3uigEE" to="z60i:~Color" resolve="Color" />
      </node>
      <node concept="2AHcQZ" id="2uD4oyGiDx1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3Tm1VV" id="2hVa5m$3q$l" role="1B3o_S" />
    <node concept="3uibUv" id="3PiydVXfyVU" role="1zkMxy">
      <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
    </node>
    <node concept="3uibUv" id="3PiydVXfz2j" role="EKbjA">
      <ref role="3uigEE" to="m3q8:3PiydVXfg5W" resolve="SimpleUserActivity" />
    </node>
  </node>
  <node concept="312cEu" id="4Ew7qBDso0z">
    <property role="3GE5qa" value="model" />
    <property role="TrG5h" value="BitbucketUser" />
    <node concept="312cEg" id="4Ew7qBDsouj" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="id" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsoi0" role="1B3o_S" />
      <node concept="10Oyi0" id="4Ew7qBDsoBS" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDsW$T" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="emailAddress" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsWhq" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDsWoo" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDsXp4" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="active" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsX5y" role="1B3o_S" />
      <node concept="10P_77" id="4Ew7qBDsXcz" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDsXOq" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="slug" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsXHk" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDsXOo" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDsp0$" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="name" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDsoOe" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDsoXO" role="1tU5fm" />
    </node>
    <node concept="312cEg" id="4Ew7qBDspna" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="displayName" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="4Ew7qBDspdv" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDspkd" role="1tU5fm" />
    </node>
    <node concept="2tJIrI" id="4Ew7qBDso8w" role="jymVt" />
    <node concept="3Tm1VV" id="4Ew7qBDso0$" role="1B3o_S" />
    <node concept="3uibUv" id="4Ew7qBDso0W" role="EKbjA">
      <ref role="3uigEE" to="m3q8:4Ew7qBDrsxM" resolve="User" />
    </node>
    <node concept="3clFb_" id="4Ew7qBDso18" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getId" />
      <node concept="3Tm1VV" id="4Ew7qBDso1a" role="1B3o_S" />
      <node concept="10Oyi0" id="4Ew7qBDtzky" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDso1c" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDspBQ" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDtyAN" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDtymh" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDtyTn" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDsouj" resolve="id" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDso1d" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDso1e" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getName" />
      <node concept="3Tm1VV" id="4Ew7qBDso1g" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDso1h" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDso1i" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDsrOi" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDssa_" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDsrVo" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDssvD" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDsp0$" resolve="name" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDso1j" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="3clFb_" id="4Ew7qBDso1k" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getDisplayName" />
      <node concept="3Tm1VV" id="4Ew7qBDso1m" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDso1n" role="3clF45" />
      <node concept="3clFbS" id="4Ew7qBDso1o" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDssTf" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDstfy" role="3cqZAk">
            <node concept="Xjq3P" id="4Ew7qBDst0l" role="2Oq$k0" />
            <node concept="2OwXpG" id="4Ew7qBDst_J" role="2OqNvi">
              <ref role="2Oxat5" node="4Ew7qBDspna" resolve="displayName" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="4Ew7qBDso1p" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
  </node>
  <node concept="1lYeZD" id="623PeBeUsgp">
    <property role="3GE5qa" value="configuration.server" />
    <property role="TrG5h" value="BitbucketServerIntegrationEP" />
    <ref role="1lYe$Y" to="ii13:2n3pEWhwCOi" resolve="CodeReviewerIntegrationEP" />
    <node concept="3Tm1VV" id="623PeBeUsgq" role="1B3o_S" />
    <node concept="2tJIrI" id="623PeBeUsgr" role="jymVt" />
    <node concept="3tTeZs" id="623PeBeUsgs" role="jymVt">
      <property role="3tTeZt" value="activate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0CPy" resolve="activate" />
    </node>
    <node concept="3tTeZs" id="623PeBeUsgt" role="jymVt">
      <property role="3tTeZt" value="deactivate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0BDO" resolve="deactivate" />
    </node>
    <node concept="2tJIrI" id="623PeBeUsgu" role="jymVt" />
    <node concept="q3mfD" id="623PeBeUsgv" role="jymVt">
      <property role="TrG5h" value="get" />
      <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
      <node concept="3Tm1VV" id="623PeBeUsgx" role="1B3o_S" />
      <node concept="3clFbS" id="623PeBeUsgz" role="3clF47">
        <node concept="3cpWs6" id="623PeBeUsxv" role="3cqZAp">
          <node concept="2ShNRf" id="623PeBeUs_g" role="3cqZAk">
            <node concept="HV5vD" id="623PeBeUwuB" role="2ShVmc">
              <ref role="HV5vE" node="2n3pEWhuFVp" resolve="BitbucketServerIntegration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="q3mfm" id="623PeBeUsg$" role="3clF45">
        <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
        <ref role="1QQUv3" node="623PeBeUsgv" resolve="get" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="3c3vDUlbIty">
    <property role="TrG5h" value="BitbucketServerConnection" />
    <property role="3GE5qa" value="configuration.server" />
    <node concept="312cEg" id="4Ew7qBDqX_x" role="jymVt">
      <property role="TrG5h" value="client" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="4Ew7qBDqX_y" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDqEPg" role="1tU5fm">
        <ref role="3uigEE" to="gwgf:~OkHttpClient" resolve="OkHttpClient" />
      </node>
      <node concept="2ShNRf" id="4Ew7qBDqEYU" role="33vP2m">
        <node concept="1pGfFk" id="4Ew7qBDqEUV" role="2ShVmc">
          <ref role="37wK5l" to="gwgf:~OkHttpClient.&lt;init&gt;()" resolve="OkHttpClient" />
        </node>
      </node>
    </node>
    <node concept="312cEg" id="FcpLTGVPJr" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="serializer" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="FcpLTGVNP4" role="1B3o_S" />
      <node concept="3uibUv" id="FcpLTGVPCL" role="1tU5fm">
        <ref role="3uigEE" node="FcpLTGVjS7" resolve="BitbucketServerSerializer" />
      </node>
    </node>
    <node concept="312cEg" id="3yDmnco$uey" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="nextRequestId" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tm6S6" id="3yDmnco$tsJ" role="1B3o_S" />
      <node concept="3uibUv" id="FcpLTGXe0P" role="1tU5fm">
        <ref role="3uigEE" to="i5cy:~AtomicInteger" resolve="AtomicInteger" />
      </node>
    </node>
    <node concept="2tJIrI" id="6j8xKyAqwiZ" role="jymVt" />
    <node concept="312cEg" id="78s6gAknWJ0" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="config" />
      <property role="3TUv4t" value="false" />
      <node concept="3Tm6S6" id="78s6gAknUOl" role="1B3o_S" />
      <node concept="3uibUv" id="623PeBeVVUL" role="1tU5fm">
        <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Ew7qBDvGgd" role="jymVt" />
    <node concept="3clFbW" id="78s6gAknN2h" role="jymVt">
      <node concept="3cqZAl" id="78s6gAknN2i" role="3clF45" />
      <node concept="3clFbS" id="78s6gAknN2k" role="3clF47">
        <node concept="3clFbF" id="78s6gAknXKJ" role="3cqZAp">
          <node concept="37vLTI" id="78s6gAknYrN" role="3clFbG">
            <node concept="37vLTw" id="78s6gAknYJM" role="37vLTx">
              <ref role="3cqZAo" node="78s6gAknOcs" resolve="configuration" />
            </node>
            <node concept="2OqwBi" id="78s6gAknXQV" role="37vLTJ">
              <node concept="Xjq3P" id="78s6gAknXKI" role="2Oq$k0" />
              <node concept="2OwXpG" id="78s6gAknY19" role="2OqNvi">
                <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FcpLTGVRwK" role="3cqZAp">
          <node concept="37vLTI" id="FcpLTGVS_N" role="3clFbG">
            <node concept="2ShNRf" id="FcpLTGVSSe" role="37vLTx">
              <node concept="1pGfFk" id="FcpLTGVUpi" role="2ShVmc">
                <ref role="37wK5l" node="FcpLTGVk27" resolve="BitbucketServerSerializer" />
              </node>
            </node>
            <node concept="2OqwBi" id="FcpLTGVRFC" role="37vLTJ">
              <node concept="Xjq3P" id="FcpLTGVRwI" role="2Oq$k0" />
              <node concept="2OwXpG" id="FcpLTGVRZX" role="2OqNvi">
                <ref role="2Oxat5" node="FcpLTGVPJr" resolve="serializer" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="FcpLTGXkrQ" role="3cqZAp">
          <node concept="37vLTI" id="FcpLTGXm19" role="3clFbG">
            <node concept="2ShNRf" id="FcpLTGXmnS" role="37vLTx">
              <node concept="1pGfFk" id="FcpLTGXnW8" role="2ShVmc">
                <ref role="37wK5l" to="i5cy:~AtomicInteger.&lt;init&gt;(int)" resolve="AtomicInteger" />
                <node concept="3cmrfG" id="FcpLTGXo94" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="FcpLTGXk_P" role="37vLTJ">
              <node concept="Xjq3P" id="FcpLTGXkrO" role="2Oq$k0" />
              <node concept="2OwXpG" id="FcpLTGXkKr" role="2OqNvi">
                <ref role="2Oxat5" node="3yDmnco$uey" resolve="nextRequestId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="78s6gAknLsZ" role="1B3o_S" />
      <node concept="37vLTG" id="78s6gAknOcs" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="623PeBeVXtC" role="1tU5fm">
          <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
        </node>
        <node concept="2AHcQZ" id="5xIRlXid8zL" role="2AJF6D">
          <ref role="2AI5Lk" to="mhfm:~NotNull" resolve="NotNull" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="6j8xKyAqpbd" role="jymVt" />
    <node concept="3clFb_" id="6j8xKyAqqw0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="reconfigure" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6j8xKyAqqw3" role="3clF47">
        <node concept="3clFbF" id="6j8xKyAqtnm" role="3cqZAp">
          <node concept="37vLTI" id="6j8xKyAqu9G" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyAquvm" role="37vLTx">
              <ref role="3cqZAo" node="6j8xKyAqrvb" resolve="newConfig" />
            </node>
            <node concept="2OqwBi" id="6j8xKyAqt$L" role="37vLTJ">
              <node concept="Xjq3P" id="6j8xKyAqtnl" role="2Oq$k0" />
              <node concept="2OwXpG" id="6j8xKyAqtJ2" role="2OqNvi">
                <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="6j8xKyAqptX" role="1B3o_S" />
      <node concept="3cqZAl" id="6j8xKyAqqrD" role="3clF45" />
      <node concept="37vLTG" id="6j8xKyAqrvb" role="3clF46">
        <property role="TrG5h" value="newConfig" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="623PeBeVX_9" role="1tU5fm">
          <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="4Ew7qBDiEtK" role="jymVt" />
    <node concept="3clFb_" id="4Ew7qBDiOAk" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUrlForPullRequests" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Ew7qBDiOAn" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDiOJW" role="3cqZAp">
          <node concept="3cpWs3" id="4Ew7qBDiSPQ" role="3cqZAk">
            <node concept="Xl_RD" id="4Ew7qBDiSUd" role="3uHU7w">
              <property role="Xl_RC" value="/pull-requests" />
            </node>
            <node concept="2OqwBi" id="78s6gAkpjgF" role="3uHU7B">
              <node concept="2OqwBi" id="78s6gAkphHO" role="2Oq$k0">
                <node concept="Xjq3P" id="78s6gAkpgZA" role="2Oq$k0" />
                <node concept="2OwXpG" id="78s6gAkpiyT" role="2OqNvi">
                  <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
                </node>
              </node>
              <node concept="liA8E" id="78s6gAkpk33" role="2OqNvi">
                <ref role="37wK5l" node="78s6gAko8Nt" resolve="getRepositoryUrl" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4dp0YvduUS1" role="1B3o_S" />
      <node concept="17QB3L" id="4Ew7qBDiOAc" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="78s6gAkpA8b" role="jymVt" />
    <node concept="3clFb_" id="78s6gAkpBVV" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUrlForPullRequestById" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="78s6gAkpBVY" role="3clF47">
        <node concept="3cpWs6" id="78s6gAkpErR" role="3cqZAp">
          <node concept="3cpWs3" id="2hVa5mzY1hr" role="3cqZAk">
            <node concept="37vLTw" id="2hVa5mzY2NM" role="3uHU7w">
              <ref role="3cqZAo" node="78s6gAkpDxq" resolve="id" />
            </node>
            <node concept="3cpWs3" id="78s6gAkpH99" role="3uHU7B">
              <node concept="1rXfSq" id="5IbzmGeyCZU" role="3uHU7B">
                <ref role="37wK5l" node="4Ew7qBDiOAk" resolve="getUrlForPullRequests" />
              </node>
              <node concept="Xl_RD" id="78s6gAkpHgx" role="3uHU7w">
                <property role="Xl_RC" value="/" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4dp0YvduTBk" role="1B3o_S" />
      <node concept="17QB3L" id="78s6gAkpBgF" role="3clF45" />
      <node concept="37vLTG" id="78s6gAkpDxq" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="78s6gAkpDxp" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="78s6gAkp42t" role="jymVt" />
    <node concept="3clFb_" id="78s6gAkp6x2" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="constructBranchQuery" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="78s6gAkp6x5" role="3clF47">
        <node concept="3cpWs8" id="78s6gAkp9bU" role="3cqZAp">
          <node concept="3cpWsn" id="78s6gAkp9bV" role="3cpWs9">
            <property role="TrG5h" value="fullBranchName" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="78s6gAkp9bW" role="1tU5fm" />
            <node concept="3cpWs3" id="78s6gAkp9bX" role="33vP2m">
              <node concept="37vLTw" id="78s6gAkp9bY" role="3uHU7w">
                <ref role="3cqZAo" node="78s6gAkp7pw" resolve="branchName" />
              </node>
              <node concept="Xl_RD" id="78s6gAkp9bZ" role="3uHU7B">
                <property role="Xl_RC" value="refs/heads/" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="78s6gAkp9c0" role="3cqZAp">
          <node concept="3cpWsn" id="78s6gAkp9c1" role="3cpWs9">
            <property role="TrG5h" value="branchQuery" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="78s6gAkp9c2" role="1tU5fm" />
            <node concept="3cpWs3" id="3uLUR6wRtZE" role="33vP2m">
              <node concept="Xl_RD" id="3uLUR6wRCm5" role="3uHU7w">
                <property role="Xl_RC" value="&amp;direction=OUTGOING&amp;state=ALL" />
              </node>
              <node concept="3cpWs3" id="78s6gAkp9c3" role="3uHU7B">
                <node concept="Xl_RD" id="78s6gAkp9c5" role="3uHU7B">
                  <property role="Xl_RC" value="at=" />
                </node>
                <node concept="37vLTw" id="78s6gAkp9c4" role="3uHU7w">
                  <ref role="3cqZAo" node="78s6gAkp9bV" resolve="fullBranchName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="78s6gAkp8pJ" role="3cqZAp">
          <node concept="37vLTw" id="78s6gAkpbkE" role="3cqZAk">
            <ref role="3cqZAo" node="78s6gAkp9c1" resolve="branchQuery" />
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="78s6gAkp5Q$" role="3clF45" />
      <node concept="37vLTG" id="78s6gAkp7pw" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="78s6gAkp7pv" role="1tU5fm" />
      </node>
      <node concept="3Tmbuc" id="4dp0YvduSmo" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6j8xKyAuQTR" role="jymVt" />
    <node concept="3clFb_" id="6j8xKyAuSir" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUrlForActivitiesOnPullRequest" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6j8xKyAuSiu" role="3clF47">
        <node concept="3cpWs6" id="6j8xKyAv2BC" role="3cqZAp">
          <node concept="3cpWs3" id="6j8xKyAv6tD" role="3cqZAk">
            <node concept="Xl_RD" id="6j8xKyAv6_3" role="3uHU7w">
              <property role="Xl_RC" value="/activities" />
            </node>
            <node concept="1rXfSq" id="5IbzmGeyCZV" role="3uHU7B">
              <ref role="37wK5l" node="78s6gAkpBVV" resolve="getUrlForPullRequestById" />
              <node concept="37vLTw" id="6j8xKyAv4Uv" role="37wK5m">
                <ref role="3cqZAo" node="6j8xKyAuTmS" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4dp0YvduPOL" role="1B3o_S" />
      <node concept="17QB3L" id="6j8xKyAuRtq" role="3clF45" />
      <node concept="37vLTG" id="6j8xKyAuTmS" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="6j8xKyAuTmR" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="__fp3cwhDN" role="jymVt" />
    <node concept="3clFb_" id="__fp3cwk4J" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getUrlForCommentsOnPullRequest" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="__fp3cwk4M" role="3clF47">
        <node concept="3cpWs6" id="__fp3cwnUS" role="3cqZAp">
          <node concept="3cpWs3" id="__fp3cwu9J" role="3cqZAk">
            <node concept="Xl_RD" id="__fp3cwukw" role="3uHU7w">
              <property role="Xl_RC" value="/comments" />
            </node>
            <node concept="1rXfSq" id="5IbzmGeyCZW" role="3uHU7B">
              <ref role="37wK5l" node="78s6gAkpBVV" resolve="getUrlForPullRequestById" />
              <node concept="37vLTw" id="__fp3cwrD2" role="37wK5m">
                <ref role="3cqZAo" node="__fp3cwm1a" resolve="id" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="4dp0YvduO$4" role="1B3o_S" />
      <node concept="17QB3L" id="__fp3cwiuP" role="3clF45" />
      <node concept="37vLTG" id="__fp3cwm1a" role="3clF46">
        <property role="TrG5h" value="id" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="__fp3cwm19" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Ew7qBDiOqJ" role="jymVt" />
    <node concept="3clFb_" id="4Ew7qBDi$K_" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requestReviewForBranchName" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Ew7qBDi$KC" role="3clF47">
        <node concept="3cpWs8" id="6j8xKyAvn80" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAvn81" role="3cpWs9">
            <property role="TrG5h" value="requestId" />
            <property role="3TUv4t" value="true" />
            <node concept="1rXfSq" id="FcpLTGXQA6" role="33vP2m">
              <ref role="37wK5l" node="FcpLTGXQA2" resolve="nextRequestId" />
            </node>
            <node concept="10Oyi0" id="6j8xKyAvn7Z" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="78s6gAkpdwE" role="3cqZAp">
          <node concept="3cpWsn" id="78s6gAkpdwF" role="3cpWs9">
            <property role="TrG5h" value="branchQuery" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="78s6gAkpdwC" role="1tU5fm" />
            <node concept="1rXfSq" id="78s6gAkpdwG" role="33vP2m">
              <ref role="37wK5l" node="78s6gAkp6x2" resolve="constructBranchQuery" />
              <node concept="37vLTw" id="78s6gAkpdwH" role="37wK5m">
                <ref role="3cqZAo" node="4Ew7qBDi$Qf" resolve="branchName" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6j8xKyApXOG" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyApXOH" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="6j8xKyApXOF" role="1tU5fm" />
            <node concept="3cpWs3" id="6j8xKyApXOI" role="33vP2m">
              <node concept="37vLTw" id="6j8xKyApXOJ" role="3uHU7w">
                <ref role="3cqZAo" node="78s6gAkpdwF" resolve="branchQuery" />
              </node>
              <node concept="3cpWs3" id="6j8xKyApXOK" role="3uHU7B">
                <node concept="1rXfSq" id="6j8xKyApXOL" role="3uHU7B">
                  <ref role="37wK5l" node="4Ew7qBDiOAk" resolve="getUrlForPullRequests" />
                </node>
                <node concept="Xl_RD" id="6j8xKyApXOM" role="3uHU7w">
                  <property role="Xl_RC" value="?" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3okjBs8u$UE" role="3cqZAp">
          <node concept="2OqwBi" id="3okjBs8u$UG" role="3clFbG">
            <node concept="10M0yZ" id="3okjBs8u$UH" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="3okjBs8u$UI" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3okjBs8u$UJ" role="37wK5m">
                <node concept="Xl_RD" id="3okjBs8u$UK" role="3uHU7B">
                  <property role="Xl_RC" value="Requesting: " />
                </node>
                <node concept="37vLTw" id="3okjBs8u$UL" role="3uHU7w">
                  <ref role="3cqZAo" node="6j8xKyApXOH" resolve="url" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="3okjBs8u$La" role="3cqZAp" />
        <node concept="3cpWs8" id="6j8xKyAqKPu" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAqKPv" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6j8xKyAqKPs" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request$Builder" resolve="Request.Builder" />
            </node>
            <node concept="2ShNRf" id="6j8xKyAqKPw" role="33vP2m">
              <node concept="1pGfFk" id="6j8xKyAqKPx" role="2ShVmc">
                <ref role="37wK5l" to="gwgf:~Request$Builder.&lt;init&gt;()" resolve="Request.Builder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAqME6" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAqNqJ" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyAqME4" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyAqKPv" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyAqNZE" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.get():okhttp3.Request$Builder" resolve="get" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAqOS4" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAqPCY" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyAqOS2" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyAqKPv" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyAqQe6" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.url(java.lang.String):okhttp3.Request$Builder" resolve="url" />
              <node concept="37vLTw" id="6j8xKyAqQmf" role="37wK5m">
                <ref role="3cqZAo" node="6j8xKyApXOH" resolve="url" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAqRq1" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAqSbj" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyAqRpZ" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyAqKPv" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyAqX23" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.addHeader(java.lang.String,java.lang.String):okhttp3.Request$Builder" resolve="addHeader" />
              <node concept="Xl_RD" id="6j8xKyAqXad" role="37wK5m">
                <property role="Xl_RC" value="Authorization" />
              </node>
              <node concept="2OqwBi" id="6j8xKyAr5do" role="37wK5m">
                <node concept="2OqwBi" id="6j8xKyAr4C8" role="2Oq$k0">
                  <node concept="Xjq3P" id="6j8xKyAr4q9" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6j8xKyAr4Ts" role="2OqNvi">
                    <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
                  </node>
                </node>
                <node concept="liA8E" id="6j8xKyAr5rv" role="2OqNvi">
                  <ref role="37wK5l" node="6j8xKyAr1aU" resolve="getBearerAuthHeader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4Ew7qBDqLqq" role="3cqZAp">
          <node concept="3cpWsn" id="4Ew7qBDqLqr" role="3cpWs9">
            <property role="TrG5h" value="request" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4Ew7qBDqLqs" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request" resolve="Request" />
            </node>
            <node concept="2OqwBi" id="4Ew7qBDqM3n" role="33vP2m">
              <node concept="liA8E" id="4Ew7qBDqMfM" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~Request$Builder.build():okhttp3.Request" resolve="build" />
              </node>
              <node concept="37vLTw" id="6j8xKyArbCw" role="2Oq$k0">
                <ref role="3cqZAo" node="6j8xKyAqKPv" resolve="builder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="4Ew7qBDqNhF" role="3cqZAp">
          <node concept="2OqwBi" id="4Ew7qBDqOL5" role="3clFbG">
            <node concept="2OqwBi" id="4Ew7qBDqOeM" role="2Oq$k0">
              <node concept="2OqwBi" id="5IbzmGeyD0C" role="2Oq$k0">
                <node concept="Xjq3P" id="5IbzmGeyD0A" role="2Oq$k0" />
                <node concept="2OwXpG" id="5IbzmGeyD0B" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDqX_x" resolve="client" />
                </node>
              </node>
              <node concept="liA8E" id="4Ew7qBDqO$Z" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~OkHttpClient.newCall(okhttp3.Request):okhttp3.Call" resolve="newCall" />
                <node concept="37vLTw" id="4Ew7qBDqODR" role="37wK5m">
                  <ref role="3cqZAo" node="4Ew7qBDqLqr" resolve="request" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="4Ew7qBDqPIz" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Call.enqueue(okhttp3.Callback):void" resolve="enqueue" />
              <node concept="2ShNRf" id="4Ew7qBDqQ0r" role="37wK5m">
                <node concept="YeOm9" id="4Ew7qBDqQS9" role="2ShVmc">
                  <node concept="1Y3b0j" id="4Ew7qBDqQSc" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="gwgf:~Callback" resolve="Callback" />
                    <node concept="3Tm1VV" id="4Ew7qBDqQSd" role="1B3o_S" />
                    <node concept="3clFb_" id="4Ew7qBDqQSe" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onFailure" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="4Ew7qBDqQSf" role="1B3o_S" />
                      <node concept="3cqZAl" id="4Ew7qBDqQSh" role="3clF45" />
                      <node concept="37vLTG" id="4Ew7qBDqQSi" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="4Ew7qBDqQSj" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4Ew7qBDqQSk" role="3clF46">
                        <property role="TrG5h" value="exception" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="4Ew7qBDqQSl" role="1tU5fm">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="4Ew7qBDqQSm" role="3clF47">
                        <node concept="3SKdUt" id="4Ew7qBDtcIE" role="3cqZAp">
                          <node concept="3SKdUq" id="4Ew7qBDtcIG" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: This needs to be *way* more robust" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="4Ew7qBDtbeW" role="3cqZAp">
                          <node concept="2OqwBi" id="4Ew7qBDtbqg" role="3clFbG">
                            <node concept="37vLTw" id="4Ew7qBDtbeV" role="2Oq$k0">
                              <ref role="3cqZAo" node="4Ew7qBDqVPa" resolve="onFailure" />
                            </node>
                            <node concept="1Bd96e" id="4Ew7qBDtbta" role="2OqNvi">
                              <node concept="37vLTw" id="__fp3cxcCI" role="1BdPVh">
                                <ref role="3cqZAo" node="6j8xKyAvn81" resolve="requestId" />
                              </node>
                              <node concept="2OqwBi" id="4Ew7qBDtc15" role="1BdPVh">
                                <node concept="37vLTw" id="4Ew7qBDtbCj" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4Ew7qBDqQSk" resolve="exception" />
                                </node>
                                <node concept="liA8E" id="4Ew7qBDtcm2" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="4Ew7qBDqQSo" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onResponse" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="4Ew7qBDqQSp" role="1B3o_S" />
                      <node concept="3cqZAl" id="4Ew7qBDqQSr" role="3clF45" />
                      <node concept="37vLTG" id="4Ew7qBDqQSs" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="4Ew7qBDqQSt" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="4Ew7qBDqQSu" role="3clF46">
                        <property role="TrG5h" value="response" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="4Ew7qBDqQSv" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Response" resolve="Response" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="4Ew7qBDqQSw" role="Sfmx6">
                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                      </node>
                      <node concept="3clFbS" id="4Ew7qBDqQSx" role="3clF47">
                        <node concept="2GUZhq" id="4Ew7qBDr3dk" role="3cqZAp">
                          <node concept="3clFbS" id="4Ew7qBDr3dm" role="2GV8ay">
                            <node concept="3clFbJ" id="4Ew7qBDt5aJ" role="3cqZAp">
                              <node concept="3clFbS" id="4Ew7qBDt5aL" role="3clFbx">
                                <node concept="3cpWs8" id="2hVa5mzX8gu" role="3cqZAp">
                                  <node concept="3cpWsn" id="2hVa5mzX8gv" role="3cpWs9">
                                    <property role="TrG5h" value="body" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="17QB3L" id="2hVa5mzX8X8" role="1tU5fm" />
                                    <node concept="2OqwBi" id="2hVa5mzX8gw" role="33vP2m">
                                      <node concept="2OqwBi" id="2hVa5mzX8gx" role="2Oq$k0">
                                        <node concept="37vLTw" id="2hVa5mzX8gy" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4Ew7qBDqQSu" resolve="response" />
                                        </node>
                                        <node concept="liA8E" id="2hVa5mzX8gz" role="2OqNvi">
                                          <ref role="37wK5l" to="gwgf:~Response.body():okhttp3.ResponseBody" resolve="body" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="2hVa5mzX8g$" role="2OqNvi">
                                        <ref role="37wK5l" to="gwgf:~ResponseBody.string():java.lang.String" resolve="string" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="4Ew7qBDt98n" role="3cqZAp">
                                  <node concept="3cpWsn" id="4Ew7qBDt98o" role="3cpWs9">
                                    <property role="TrG5h" value="parsedReviews" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="_YKpA" id="4dp0YvdFHpE" role="1tU5fm">
                                      <node concept="3uibUv" id="4dp0YvdFIi0" role="_ZDj9">
                                        <ref role="3uigEE" node="4Ew7qBDrCpm" resolve="BitbucketReview" />
                                      </node>
                                    </node>
                                    <node concept="2OqwBi" id="FcpLTGVZ_y" role="33vP2m">
                                      <node concept="2OqwBi" id="FcpLTGVYVS" role="2Oq$k0">
                                        <node concept="Xjq3P" id="FcpLTGVYBm" role="2Oq$k0">
                                          <ref role="1HBi2w" node="3c3vDUlbIty" resolve="BitbucketServerConnection" />
                                        </node>
                                        <node concept="2OwXpG" id="FcpLTGVZi5" role="2OqNvi">
                                          <ref role="2Oxat5" node="FcpLTGVPJr" resolve="serializer" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="FcpLTGVZUV" role="2OqNvi">
                                        <ref role="37wK5l" node="4dp0YvdFfVH" resolve="parseReviewQuery" />
                                        <node concept="37vLTw" id="FcpLTGW0lr" role="37wK5m">
                                          <ref role="3cqZAo" node="2hVa5mzX8gv" resolve="body" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbJ" id="4dp0YvdFwhi" role="3cqZAp">
                                  <node concept="3clFbS" id="4dp0YvdFwhk" role="3clFbx">
                                    <node concept="3clFbF" id="4dp0YvdG1LI" role="3cqZAp">
                                      <node concept="2OqwBi" id="4dp0YvdG1LJ" role="3clFbG">
                                        <node concept="37vLTw" id="4dp0YvdG1LK" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4Ew7qBDqVPa" resolve="onFailure" />
                                        </node>
                                        <node concept="1Bd96e" id="4dp0YvdG1LL" role="2OqNvi">
                                          <node concept="37vLTw" id="4dp0YvdG1LM" role="1BdPVh">
                                            <ref role="3cqZAo" node="6j8xKyAvn81" resolve="requestId" />
                                          </node>
                                          <node concept="3cpWs3" id="4dp0YvdG4RK" role="1BdPVh">
                                            <node concept="37vLTw" id="4dp0YvdG5_i" role="3uHU7w">
                                              <ref role="3cqZAo" node="4Ew7qBDi$Qf" resolve="branchName" />
                                            </node>
                                            <node concept="Xl_RD" id="4dp0YvdG1LT" role="3uHU7B">
                                              <property role="Xl_RC" value="No review found for branch: " />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="3clFbC" id="4dp0YvdFOYT" role="3clFbw">
                                    <node concept="3cmrfG" id="4dp0YvdFPBy" role="3uHU7w">
                                      <property role="3cmrfH" value="0" />
                                    </node>
                                    <node concept="2OqwBi" id="4dp0YvdFJZ5" role="3uHU7B">
                                      <node concept="37vLTw" id="4dp0YvdFx4j" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4Ew7qBDt98o" resolve="parsedReviews" />
                                      </node>
                                      <node concept="34oBXx" id="4dp0YvdFKM2" role="2OqNvi" />
                                    </node>
                                  </node>
                                  <node concept="3eNFk2" id="4dp0YvdFQpB" role="3eNLev">
                                    <node concept="3eOSWO" id="4dp0YvdFXrO" role="3eO9$A">
                                      <node concept="3cmrfG" id="4dp0YvdFXKC" role="3uHU7w">
                                        <property role="3cmrfH" value="1" />
                                      </node>
                                      <node concept="2OqwBi" id="4dp0YvdFSs2" role="3uHU7B">
                                        <node concept="37vLTw" id="4dp0YvdFRmX" role="2Oq$k0">
                                          <ref role="3cqZAo" node="4Ew7qBDt98o" resolve="parsedReviews" />
                                        </node>
                                        <node concept="34oBXx" id="4dp0YvdFTeX" role="2OqNvi" />
                                      </node>
                                    </node>
                                    <node concept="3clFbS" id="4dp0YvdFQpD" role="3eOfB_">
                                      <node concept="3clFbF" id="4dp0YvdG1s$" role="3cqZAp">
                                        <node concept="2OqwBi" id="4dp0YvdG1s_" role="3clFbG">
                                          <node concept="37vLTw" id="4dp0YvdG1sA" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4Ew7qBDqVPa" resolve="onFailure" />
                                          </node>
                                          <node concept="1Bd96e" id="4dp0YvdG1sB" role="2OqNvi">
                                            <node concept="37vLTw" id="4dp0YvdG1sC" role="1BdPVh">
                                              <ref role="3cqZAo" node="6j8xKyAvn81" resolve="requestId" />
                                            </node>
                                            <node concept="3cpWs3" id="4dp0YvdG1sI" role="1BdPVh">
                                              <node concept="Xl_RD" id="4dp0YvdG1sJ" role="3uHU7B">
                                                <property role="Xl_RC" value="More than one review found for branch" />
                                              </node>
                                              <node concept="37vLTw" id="4dp0YvdG7ze" role="3uHU7w">
                                                <ref role="3cqZAo" node="4Ew7qBDi$Qf" resolve="branchName" />
                                              </node>
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                  <node concept="9aQIb" id="4dp0YvdFXTp" role="9aQIa">
                                    <node concept="3clFbS" id="4dp0YvdFXTq" role="9aQI4">
                                      <node concept="3clFbF" id="4Ew7qBDt9O$" role="3cqZAp">
                                        <node concept="2OqwBi" id="4Ew7qBDta5u" role="3clFbG">
                                          <node concept="37vLTw" id="4Ew7qBDt9Oy" role="2Oq$k0">
                                            <ref role="3cqZAo" node="4Ew7qBDqWu4" resolve="onSuccess" />
                                          </node>
                                          <node concept="1Bd96e" id="4Ew7qBDta9H" role="2OqNvi">
                                            <node concept="37vLTw" id="__fp3cxeU7" role="1BdPVh">
                                              <ref role="3cqZAo" node="6j8xKyAvn81" resolve="requestId" />
                                            </node>
                                            <node concept="2OqwBi" id="4dp0YvdG05_" role="1BdPVh">
                                              <node concept="37vLTw" id="4Ew7qBDtasr" role="2Oq$k0">
                                                <ref role="3cqZAo" node="4Ew7qBDt98o" resolve="parsedReviews" />
                                              </node>
                                              <node concept="1uHKPH" id="4dp0YvdG0TA" role="2OqNvi" />
                                            </node>
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="4Ew7qBDt6G4" role="3clFbw">
                                <node concept="2OqwBi" id="4Ew7qBDt5Iq" role="3uHU7B">
                                  <node concept="37vLTw" id="4Ew7qBDt5n$" role="2Oq$k0">
                                    <ref role="3cqZAo" node="4Ew7qBDqQSu" resolve="response" />
                                  </node>
                                  <node concept="liA8E" id="4Ew7qBDt600" role="2OqNvi">
                                    <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="4Ew7qBDt7E1" role="3uHU7w">
                                  <property role="3cmrfH" value="200" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="4Ew7qBDtd71" role="9aQIa">
                                <node concept="3clFbS" id="4Ew7qBDtd72" role="9aQI4">
                                  <node concept="3SKdUt" id="4Ew7qBDtma6" role="3cqZAp">
                                    <node concept="3SKdUq" id="4Ew7qBDtma8" role="3SKWNk">
                                      <property role="3SKdUp" value="TODO: This needs to be more robust" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="4Ew7qBDte54" role="3cqZAp">
                                    <node concept="2OqwBi" id="4Ew7qBDtehr" role="3clFbG">
                                      <node concept="37vLTw" id="4Ew7qBDte53" role="2Oq$k0">
                                        <ref role="3cqZAo" node="4Ew7qBDqVPa" resolve="onFailure" />
                                      </node>
                                      <node concept="1Bd96e" id="4Ew7qBDtelM" role="2OqNvi">
                                        <node concept="37vLTw" id="__fp3cxfsO" role="1BdPVh">
                                          <ref role="3cqZAo" node="6j8xKyAvn81" resolve="requestId" />
                                        </node>
                                        <node concept="3cpWs3" id="4Ew7qBDtje_" role="1BdPVh">
                                          <node concept="2OqwBi" id="4Ew7qBDtjZ6" role="3uHU7w">
                                            <node concept="37vLTw" id="4Ew7qBDtj_j" role="2Oq$k0">
                                              <ref role="3cqZAo" node="4Ew7qBDqQSu" resolve="response" />
                                            </node>
                                            <node concept="liA8E" id="4Ew7qBDtknw" role="2OqNvi">
                                              <ref role="37wK5l" to="gwgf:~Response.message():java.lang.String" resolve="message" />
                                            </node>
                                          </node>
                                          <node concept="3cpWs3" id="4Ew7qBDtiaq" role="3uHU7B">
                                            <node concept="3cpWs3" id="4Ew7qBDtfjP" role="3uHU7B">
                                              <node concept="Xl_RD" id="4Ew7qBDteye" role="3uHU7B">
                                                <property role="Xl_RC" value="Request failed with error " />
                                              </node>
                                              <node concept="2OqwBi" id="4Ew7qBDtg6k" role="3uHU7w">
                                                <node concept="37vLTw" id="4Ew7qBDtfGX" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="4Ew7qBDqQSu" resolve="response" />
                                                </node>
                                                <node concept="liA8E" id="4Ew7qBDtgoZ" role="2OqNvi">
                                                  <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="4Ew7qBDtile" role="3uHU7w">
                                              <property role="Xl_RC" value=": " />
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
                          <node concept="3clFbS" id="4Ew7qBDr3dn" role="2GVbov">
                            <node concept="3clFbF" id="4Ew7qBDr3y5" role="3cqZAp">
                              <node concept="2OqwBi" id="4Ew7qBDr3Qk" role="3clFbG">
                                <node concept="37vLTw" id="4Ew7qBDr3y4" role="2Oq$k0">
                                  <ref role="3cqZAo" node="4Ew7qBDqQSu" resolve="response" />
                                </node>
                                <node concept="liA8E" id="4Ew7qBDr47Q" role="2OqNvi">
                                  <ref role="37wK5l" to="gwgf:~Response.close():void" resolve="close" />
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
        </node>
        <node concept="3cpWs6" id="3yDmnco$w8D" role="3cqZAp">
          <node concept="37vLTw" id="6j8xKyAvn84" role="3cqZAk">
            <ref role="3cqZAo" node="6j8xKyAvn81" resolve="requestId" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="4Ew7qBDi$FE" role="1B3o_S" />
      <node concept="10Oyi0" id="3yDmnco$sJA" role="3clF45" />
      <node concept="37vLTG" id="4Ew7qBDi$Qf" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4Ew7qBDi$Qe" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="4Ew7qBDqWu4" role="3clF46">
        <property role="TrG5h" value="onSuccess" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3yDmncoAewn" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwEjr" role="1ajw0F" />
          <node concept="3uibUv" id="4Ew7qBDqZT5" role="1ajw0F">
            <ref role="3uigEE" to="m3q8:4Ew7qBDj1oK" resolve="Review" />
          </node>
          <node concept="3cqZAl" id="4Ew7qBDqWMx" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="4Ew7qBDqVPa" role="3clF46">
        <property role="TrG5h" value="onFailure" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3yDmncoAeEr" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwE_U" role="1ajw0F" />
          <node concept="17QB3L" id="4Ew7qBDta_J" role="1ajw0F" />
          <node concept="3cqZAl" id="4Ew7qBDqW9y" role="1ajl9A" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3yDmncoyvN6" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3yDmncozBxC" role="jymVt" />
    <node concept="3clFb_" id="3yDmncozCk0" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requestReviewForId" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3yDmncozCk1" role="3clF47">
        <node concept="3cpWs8" id="6j8xKyAvbcV" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAvbcW" role="3cpWs9">
            <property role="TrG5h" value="requestId" />
            <property role="3TUv4t" value="true" />
            <node concept="1rXfSq" id="FcpLTGXQA7" role="33vP2m">
              <ref role="37wK5l" node="FcpLTGXQA2" resolve="nextRequestId" />
            </node>
            <node concept="10Oyi0" id="6j8xKyAvbcU" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="6j8xKyAq0VI" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAq0VJ" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="6j8xKyAq0VG" role="1tU5fm" />
            <node concept="1rXfSq" id="6j8xKyAq0VK" role="33vP2m">
              <ref role="37wK5l" node="78s6gAkpBVV" resolve="getUrlForPullRequestById" />
              <node concept="37vLTw" id="6j8xKyAq0VL" role="37wK5m">
                <ref role="3cqZAo" node="3yDmncozClP" resolve="reviewId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAq1YY" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAq1YV" role="3clFbG">
            <node concept="10M0yZ" id="6j8xKyAq1YW" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="6j8xKyAq1YX" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3okjBs8uwAp" role="37wK5m">
                <node concept="Xl_RD" id="3okjBs8uwNk" role="3uHU7B">
                  <property role="Xl_RC" value="Requesting: " />
                </node>
                <node concept="37vLTw" id="6j8xKyAq2Tr" role="3uHU7w">
                  <ref role="3cqZAo" node="6j8xKyAq0VJ" resolve="url" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6j8xKyArbQJ" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyArbQK" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6j8xKyArbQH" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request$Builder" resolve="Request.Builder" />
            </node>
            <node concept="2ShNRf" id="6j8xKyArbQL" role="33vP2m">
              <node concept="1pGfFk" id="6j8xKyArbQM" role="2ShVmc">
                <ref role="37wK5l" to="gwgf:~Request$Builder.&lt;init&gt;()" resolve="Request.Builder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyArfe5" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyArfZC" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyArfe3" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyArbQK" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyArgmB" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.get():okhttp3.Request$Builder" resolve="get" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyArdyA" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyArejL" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyArdy$" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyArbQK" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyAreOl" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.url(java.lang.String):okhttp3.Request$Builder" resolve="url" />
              <node concept="37vLTw" id="6j8xKyAreWu" role="37wK5m">
                <ref role="3cqZAo" node="6j8xKyAq0VJ" resolve="url" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyArhzu" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyArhzv" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyArhzw" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyArbQK" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyArhzx" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.addHeader(java.lang.String,java.lang.String):okhttp3.Request$Builder" resolve="addHeader" />
              <node concept="Xl_RD" id="6j8xKyArhzy" role="37wK5m">
                <property role="Xl_RC" value="Authorization" />
              </node>
              <node concept="2OqwBi" id="6j8xKyArhzz" role="37wK5m">
                <node concept="2OqwBi" id="6j8xKyArhz$" role="2Oq$k0">
                  <node concept="Xjq3P" id="6j8xKyArhz_" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6j8xKyArhzA" role="2OqNvi">
                    <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
                  </node>
                </node>
                <node concept="liA8E" id="6j8xKyArhzB" role="2OqNvi">
                  <ref role="37wK5l" node="6j8xKyAr1aU" resolve="getBearerAuthHeader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="3yDmncozCkf" role="3cqZAp">
          <node concept="3cpWsn" id="3yDmncozCkg" role="3cpWs9">
            <property role="TrG5h" value="request" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="3yDmncozCkh" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request" resolve="Request" />
            </node>
            <node concept="2OqwBi" id="3yDmncozCki" role="33vP2m">
              <node concept="37vLTw" id="6j8xKyArjz0" role="2Oq$k0">
                <ref role="3cqZAo" node="6j8xKyArbQK" resolve="builder" />
              </node>
              <node concept="liA8E" id="3yDmncozCku" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~Request$Builder.build():okhttp3.Request" resolve="build" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3yDmncozCkv" role="3cqZAp">
          <node concept="2OqwBi" id="3yDmncozCkw" role="3clFbG">
            <node concept="2OqwBi" id="3yDmncozCkx" role="2Oq$k0">
              <node concept="2OqwBi" id="5IbzmGeyD0H" role="2Oq$k0">
                <node concept="Xjq3P" id="5IbzmGeyD0F" role="2Oq$k0" />
                <node concept="2OwXpG" id="5IbzmGeyD0G" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDqX_x" resolve="client" />
                </node>
              </node>
              <node concept="liA8E" id="3yDmncozCkz" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~OkHttpClient.newCall(okhttp3.Request):okhttp3.Call" resolve="newCall" />
                <node concept="37vLTw" id="3yDmncozCk$" role="37wK5m">
                  <ref role="3cqZAo" node="3yDmncozCkg" resolve="request" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="3yDmncozCk_" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Call.enqueue(okhttp3.Callback):void" resolve="enqueue" />
              <node concept="2ShNRf" id="3yDmncozCkA" role="37wK5m">
                <node concept="YeOm9" id="3yDmncozCkB" role="2ShVmc">
                  <node concept="1Y3b0j" id="3yDmncozCkC" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <ref role="1Y3XeK" to="gwgf:~Callback" resolve="Callback" />
                    <node concept="3Tm1VV" id="3yDmncozCkD" role="1B3o_S" />
                    <node concept="3clFb_" id="3yDmncozCkE" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onFailure" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="3yDmncozCkF" role="1B3o_S" />
                      <node concept="3cqZAl" id="3yDmncozCkG" role="3clF45" />
                      <node concept="37vLTG" id="3yDmncozCkH" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="3yDmncozCkI" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3yDmncozCkJ" role="3clF46">
                        <property role="TrG5h" value="exception" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="3yDmncozCkK" role="1tU5fm">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="3yDmncozCkL" role="3clF47">
                        <node concept="3SKdUt" id="3yDmncozCkM" role="3cqZAp">
                          <node concept="3SKdUq" id="3yDmncozCkN" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: This needs to be *way* more robust" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="3yDmncozCkO" role="3cqZAp">
                          <node concept="2OqwBi" id="3yDmncozCkP" role="3clFbG">
                            <node concept="37vLTw" id="3yDmncozCkQ" role="2Oq$k0">
                              <ref role="3cqZAo" node="3yDmncozClW" resolve="onFailure" />
                            </node>
                            <node concept="1Bd96e" id="3yDmncozCkR" role="2OqNvi">
                              <node concept="37vLTw" id="__fp3cxfYB" role="1BdPVh">
                                <ref role="3cqZAo" node="6j8xKyAvbcW" resolve="requestId" />
                              </node>
                              <node concept="2OqwBi" id="3yDmncozCkS" role="1BdPVh">
                                <node concept="37vLTw" id="3yDmncozCkT" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3yDmncozCkJ" resolve="exception" />
                                </node>
                                <node concept="liA8E" id="3yDmncozCkU" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="3yDmncozCkV" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onResponse" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="3yDmncozCkW" role="1B3o_S" />
                      <node concept="3cqZAl" id="3yDmncozCkX" role="3clF45" />
                      <node concept="37vLTG" id="3yDmncozCkY" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="3yDmncozCkZ" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="3yDmncozCl0" role="3clF46">
                        <property role="TrG5h" value="response" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="3yDmncozCl1" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Response" resolve="Response" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="3yDmncozCl2" role="Sfmx6">
                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                      </node>
                      <node concept="3clFbS" id="3yDmncozCl3" role="3clF47">
                        <node concept="2GUZhq" id="3yDmncozCl4" role="3cqZAp">
                          <node concept="3clFbS" id="3yDmncozCl5" role="2GV8ay">
                            <node concept="3clFbJ" id="3yDmncozCl6" role="3cqZAp">
                              <node concept="3clFbS" id="3yDmncozCl7" role="3clFbx">
                                <node concept="3cpWs8" id="2hVa5mzY8U4" role="3cqZAp">
                                  <node concept="3cpWsn" id="2hVa5mzY8U5" role="3cpWs9">
                                    <property role="TrG5h" value="body" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="17QB3L" id="2hVa5mzZI6x" role="1tU5fm" />
                                    <node concept="2OqwBi" id="2hVa5mzY8U6" role="33vP2m">
                                      <node concept="2OqwBi" id="2hVa5mzY8U7" role="2Oq$k0">
                                        <node concept="37vLTw" id="2hVa5mzY8U8" role="2Oq$k0">
                                          <ref role="3cqZAo" node="3yDmncozCl0" resolve="response" />
                                        </node>
                                        <node concept="liA8E" id="2hVa5mzY8U9" role="2OqNvi">
                                          <ref role="37wK5l" to="gwgf:~Response.body():okhttp3.ResponseBody" resolve="body" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="2hVa5mzY8Ua" role="2OqNvi">
                                        <ref role="37wK5l" to="gwgf:~ResponseBody.string():java.lang.String" resolve="string" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3cpWs8" id="3yDmncozCl8" role="3cqZAp">
                                  <node concept="3cpWsn" id="3yDmncozCl9" role="3cpWs9">
                                    <property role="TrG5h" value="parsedReview" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="3uibUv" id="FcpLTGWtGg" role="1tU5fm">
                                      <ref role="3uigEE" to="m3q8:4Ew7qBDj1oK" resolve="Review" />
                                    </node>
                                    <node concept="2OqwBi" id="FcpLTGW4fh" role="33vP2m">
                                      <node concept="2OqwBi" id="FcpLTGW28J" role="2Oq$k0">
                                        <node concept="Xjq3P" id="FcpLTGW1Xw" role="2Oq$k0">
                                          <ref role="1HBi2w" node="3c3vDUlbIty" resolve="BitbucketServerConnection" />
                                        </node>
                                        <node concept="2OwXpG" id="FcpLTGW2vx" role="2OqNvi">
                                          <ref role="2Oxat5" node="FcpLTGVPJr" resolve="serializer" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="FcpLTGW4$M" role="2OqNvi">
                                        <ref role="37wK5l" node="4Ew7qBDr0pA" resolve="parseReview" />
                                        <node concept="37vLTw" id="FcpLTGW4Zi" role="37wK5m">
                                          <ref role="3cqZAo" node="2hVa5mzY8U5" resolve="body" />
                                        </node>
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="3yDmncozClh" role="3cqZAp">
                                  <node concept="2OqwBi" id="3yDmncozCli" role="3clFbG">
                                    <node concept="37vLTw" id="3yDmncozClj" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3yDmncozClR" resolve="onSuccess" />
                                    </node>
                                    <node concept="1Bd96e" id="3yDmncozClk" role="2OqNvi">
                                      <node concept="37vLTw" id="__fp3cxgqG" role="1BdPVh">
                                        <ref role="3cqZAo" node="6j8xKyAvbcW" resolve="requestId" />
                                      </node>
                                      <node concept="37vLTw" id="3yDmncozCll" role="1BdPVh">
                                        <ref role="3cqZAo" node="3yDmncozCl9" resolve="parsedReview" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="3yDmncozClm" role="3clFbw">
                                <node concept="2OqwBi" id="3yDmncozCln" role="3uHU7B">
                                  <node concept="37vLTw" id="3yDmncozClo" role="2Oq$k0">
                                    <ref role="3cqZAo" node="3yDmncozCl0" resolve="response" />
                                  </node>
                                  <node concept="liA8E" id="3yDmncozClp" role="2OqNvi">
                                    <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="3yDmncozClq" role="3uHU7w">
                                  <property role="3cmrfH" value="200" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="3yDmncozClr" role="9aQIa">
                                <node concept="3clFbS" id="3yDmncozCls" role="9aQI4">
                                  <node concept="3SKdUt" id="3yDmncozClt" role="3cqZAp">
                                    <node concept="3SKdUq" id="3yDmncozClu" role="3SKWNk">
                                      <property role="3SKdUp" value="TODO: This needs to be more robust" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="3yDmncozClv" role="3cqZAp">
                                    <node concept="2OqwBi" id="3yDmncozClw" role="3clFbG">
                                      <node concept="37vLTw" id="3yDmncozClx" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3yDmncozClW" resolve="onFailure" />
                                      </node>
                                      <node concept="1Bd96e" id="3yDmncozCly" role="2OqNvi">
                                        <node concept="37vLTw" id="__fp3cxiw_" role="1BdPVh">
                                          <ref role="3cqZAo" node="6j8xKyAvbcW" resolve="requestId" />
                                        </node>
                                        <node concept="3cpWs3" id="3yDmncozClz" role="1BdPVh">
                                          <node concept="2OqwBi" id="3yDmncozCl$" role="3uHU7w">
                                            <node concept="37vLTw" id="3yDmncozCl_" role="2Oq$k0">
                                              <ref role="3cqZAo" node="3yDmncozCl0" resolve="response" />
                                            </node>
                                            <node concept="liA8E" id="3yDmncozClA" role="2OqNvi">
                                              <ref role="37wK5l" to="gwgf:~Response.message():java.lang.String" resolve="message" />
                                            </node>
                                          </node>
                                          <node concept="3cpWs3" id="3yDmncozClB" role="3uHU7B">
                                            <node concept="3cpWs3" id="3yDmncozClC" role="3uHU7B">
                                              <node concept="Xl_RD" id="3yDmncozClD" role="3uHU7B">
                                                <property role="Xl_RC" value="Request failed with error " />
                                              </node>
                                              <node concept="2OqwBi" id="3yDmncozClE" role="3uHU7w">
                                                <node concept="37vLTw" id="3yDmncozClF" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="3yDmncozCl0" resolve="response" />
                                                </node>
                                                <node concept="liA8E" id="3yDmncozClG" role="2OqNvi">
                                                  <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="3yDmncozClH" role="3uHU7w">
                                              <property role="Xl_RC" value=": " />
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
                          <node concept="3clFbS" id="3yDmncozClI" role="2GVbov">
                            <node concept="3clFbF" id="3yDmncozClJ" role="3cqZAp">
                              <node concept="2OqwBi" id="3yDmncozClK" role="3clFbG">
                                <node concept="37vLTw" id="3yDmncozClL" role="2Oq$k0">
                                  <ref role="3cqZAo" node="3yDmncozCl0" resolve="response" />
                                </node>
                                <node concept="liA8E" id="3yDmncozClM" role="2OqNvi">
                                  <ref role="37wK5l" to="gwgf:~Response.close():void" resolve="close" />
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
        </node>
        <node concept="3cpWs6" id="3yDmnco$zMM" role="3cqZAp">
          <node concept="37vLTw" id="6j8xKyAvbcZ" role="3cqZAk">
            <ref role="3cqZAo" node="6j8xKyAvbcW" resolve="requestId" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="3yDmncozClN" role="1B3o_S" />
      <node concept="10Oyi0" id="3yDmnco$s72" role="3clF45" />
      <node concept="37vLTG" id="3yDmncozClP" role="3clF46">
        <property role="TrG5h" value="reviewId" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="3yDmncozG4p" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3yDmncozClR" role="3clF46">
        <property role="TrG5h" value="onSuccess" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3yDmnco_o63" role="1tU5fm">
          <node concept="3cqZAl" id="3yDmncoAATx" role="1ajl9A" />
          <node concept="10Oyi0" id="__fp3cwDz1" role="1ajw0F" />
          <node concept="3uibUv" id="3yDmnco_o$X" role="1ajw0F">
            <ref role="3uigEE" to="m3q8:4Ew7qBDj1oK" resolve="Review" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="3yDmncozClW" role="3clF46">
        <property role="TrG5h" value="onFailure" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3yDmncoAegi" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwDaU" role="1ajw0F" />
          <node concept="17QB3L" id="3yDmncozCm0" role="1ajw0F" />
          <node concept="3cqZAl" id="3yDmncozClY" role="1ajl9A" />
        </node>
      </node>
      <node concept="2AHcQZ" id="3yDmncozCm1" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="4Ew7qBDtmAh" role="jymVt" />
    <node concept="3clFb_" id="3yDmncoyyc$" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requestActivitiesForReview" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="3yDmncoyycA" role="1B3o_S" />
      <node concept="10Oyi0" id="3yDmnco$rvD" role="3clF45" />
      <node concept="37vLTG" id="3yDmncoyycC" role="3clF46">
        <property role="TrG5h" value="reviewId" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="3yDmncozGvV" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="3yDmncoyycE" role="3clF46">
        <property role="TrG5h" value="onSuccess" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3yDmncoAe2o" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwDPu" role="1ajw0F" />
          <node concept="3uibUv" id="3yDmncoyycG" role="1ajw0F">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="FcpLTGYuFN" role="11_B2D">
              <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
            </node>
          </node>
          <node concept="3cqZAl" id="3yDmncoyycI" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="3yDmncoyycK" role="3clF46">
        <property role="TrG5h" value="onFailure" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="3yDmncoAe9u" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwCMO" role="1ajw0F" />
          <node concept="17QB3L" id="3yDmncoy$ht" role="1ajw0F" />
          <node concept="3cqZAl" id="3yDmncoyycM" role="1ajl9A" />
        </node>
      </node>
      <node concept="3clFbS" id="3yDmncoyycP" role="3clF47">
        <node concept="3cpWs8" id="6j8xKyAviCF" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAviCG" role="3cpWs9">
            <property role="TrG5h" value="requestId" />
            <property role="3TUv4t" value="true" />
            <node concept="1rXfSq" id="FcpLTGXQA8" role="33vP2m">
              <ref role="37wK5l" node="FcpLTGXQA2" resolve="nextRequestId" />
            </node>
            <node concept="10Oyi0" id="6j8xKyAviCE" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="6j8xKyAuPUK" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAuPUL" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="6j8xKyAuPUM" role="1tU5fm" />
            <node concept="1rXfSq" id="6j8xKyAuPUN" role="33vP2m">
              <ref role="37wK5l" node="6j8xKyAuSir" resolve="getUrlForActivitiesOnPullRequest" />
              <node concept="37vLTw" id="6j8xKyAuPUO" role="37wK5m">
                <ref role="3cqZAo" node="3yDmncoyycC" resolve="reviewId" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="3okjBs8uyhh" role="3cqZAp">
          <node concept="2OqwBi" id="3okjBs8uyhj" role="3clFbG">
            <node concept="10M0yZ" id="3okjBs8uyhk" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="3okjBs8uyhl" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3okjBs8uyhm" role="37wK5m">
                <node concept="Xl_RD" id="3okjBs8uyhn" role="3uHU7B">
                  <property role="Xl_RC" value="Requesting: " />
                </node>
                <node concept="37vLTw" id="3okjBs8uyho" role="3uHU7w">
                  <ref role="3cqZAo" node="6j8xKyAuPUL" resolve="url" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6j8xKyAuPV0" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAuPV1" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6j8xKyAuPV2" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request$Builder" resolve="Request.Builder" />
            </node>
            <node concept="2ShNRf" id="6j8xKyAuPV3" role="33vP2m">
              <node concept="1pGfFk" id="6j8xKyAuPV4" role="2ShVmc">
                <ref role="37wK5l" to="gwgf:~Request$Builder.&lt;init&gt;()" resolve="Request.Builder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAuPV5" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAuPV6" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyAuPV7" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyAuPV1" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyAuPV8" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.get():okhttp3.Request$Builder" resolve="get" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAuPV9" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAuPVa" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyAuPVb" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyAuPV1" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyAuPVc" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.url(java.lang.String):okhttp3.Request$Builder" resolve="url" />
              <node concept="37vLTw" id="6j8xKyAuPVd" role="37wK5m">
                <ref role="3cqZAo" node="6j8xKyAuPUL" resolve="url" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAuPVe" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAuPVf" role="3clFbG">
            <node concept="37vLTw" id="6j8xKyAuPVg" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyAuPV1" resolve="builder" />
            </node>
            <node concept="liA8E" id="6j8xKyAuPVh" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.addHeader(java.lang.String,java.lang.String):okhttp3.Request$Builder" resolve="addHeader" />
              <node concept="Xl_RD" id="6j8xKyAuPVi" role="37wK5m">
                <property role="Xl_RC" value="Authorization" />
              </node>
              <node concept="2OqwBi" id="6j8xKyAuPVj" role="37wK5m">
                <node concept="2OqwBi" id="6j8xKyAuPVk" role="2Oq$k0">
                  <node concept="Xjq3P" id="6j8xKyAuPVl" role="2Oq$k0" />
                  <node concept="2OwXpG" id="6j8xKyAuPVm" role="2OqNvi">
                    <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
                  </node>
                </node>
                <node concept="liA8E" id="6j8xKyAuPVn" role="2OqNvi">
                  <ref role="37wK5l" node="6j8xKyAr1aU" resolve="getBearerAuthHeader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6j8xKyAuPVu" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyAuPVv" role="3cpWs9">
            <property role="TrG5h" value="request" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6j8xKyAuPVw" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request" resolve="Request" />
            </node>
            <node concept="2OqwBi" id="6j8xKyAuPVx" role="33vP2m">
              <node concept="37vLTw" id="6j8xKyAuPVy" role="2Oq$k0">
                <ref role="3cqZAo" node="6j8xKyAuPV1" resolve="builder" />
              </node>
              <node concept="liA8E" id="6j8xKyAuPVz" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~Request$Builder.build():okhttp3.Request" resolve="build" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="6j8xKyAvvVz" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyAvvV$" role="3clFbG">
            <node concept="2OqwBi" id="6j8xKyAvvV_" role="2Oq$k0">
              <node concept="2OqwBi" id="5IbzmGeyD0M" role="2Oq$k0">
                <node concept="Xjq3P" id="5IbzmGeyD0K" role="2Oq$k0" />
                <node concept="2OwXpG" id="5IbzmGeyD0L" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDqX_x" resolve="client" />
                </node>
              </node>
              <node concept="liA8E" id="6j8xKyAvvVB" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~OkHttpClient.newCall(okhttp3.Request):okhttp3.Call" resolve="newCall" />
                <node concept="37vLTw" id="6j8xKyAvvVC" role="37wK5m">
                  <ref role="3cqZAo" node="6j8xKyAuPVv" resolve="request" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="6j8xKyAvvVD" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Call.enqueue(okhttp3.Callback):void" resolve="enqueue" />
              <node concept="2ShNRf" id="6j8xKyAvvVE" role="37wK5m">
                <node concept="YeOm9" id="6j8xKyAvvVF" role="2ShVmc">
                  <node concept="1Y3b0j" id="6j8xKyAvvVG" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="gwgf:~Callback" resolve="Callback" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="6j8xKyAvvVH" role="1B3o_S" />
                    <node concept="3clFb_" id="6j8xKyAvvVI" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onFailure" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="6j8xKyAvvVJ" role="1B3o_S" />
                      <node concept="3cqZAl" id="6j8xKyAvvVK" role="3clF45" />
                      <node concept="37vLTG" id="6j8xKyAvvVL" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="6j8xKyAvvVM" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="6j8xKyAvvVN" role="3clF46">
                        <property role="TrG5h" value="exception" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="6j8xKyAvvVO" role="1tU5fm">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="6j8xKyAvvVP" role="3clF47">
                        <node concept="3SKdUt" id="6j8xKyAvvVQ" role="3cqZAp">
                          <node concept="3SKdUq" id="6j8xKyAvvVR" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: This needs to be *way* more robust" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="6j8xKyAvvVS" role="3cqZAp">
                          <node concept="2OqwBi" id="6j8xKyAvvVT" role="3clFbG">
                            <node concept="37vLTw" id="6j8xKyAvvVU" role="2Oq$k0">
                              <ref role="3cqZAo" node="3yDmncoyycK" resolve="onFailure" />
                            </node>
                            <node concept="1Bd96e" id="6j8xKyAvvVV" role="2OqNvi">
                              <node concept="37vLTw" id="__fp3cxj2m" role="1BdPVh">
                                <ref role="3cqZAo" node="6j8xKyAviCG" resolve="requestId" />
                              </node>
                              <node concept="2OqwBi" id="6j8xKyAvvVW" role="1BdPVh">
                                <node concept="37vLTw" id="6j8xKyAvvVX" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6j8xKyAvvVN" resolve="exception" />
                                </node>
                                <node concept="liA8E" id="6j8xKyAvvVY" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="6j8xKyAvvVZ" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onResponse" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="6j8xKyAvvW0" role="1B3o_S" />
                      <node concept="3cqZAl" id="6j8xKyAvvW1" role="3clF45" />
                      <node concept="37vLTG" id="6j8xKyAvvW2" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="6j8xKyAvvW3" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="6j8xKyAvvW4" role="3clF46">
                        <property role="TrG5h" value="response" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="6j8xKyAvvW5" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Response" resolve="Response" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="6j8xKyAvvW6" role="Sfmx6">
                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                      </node>
                      <node concept="3clFbS" id="6j8xKyAvvW7" role="3clF47">
                        <node concept="2GUZhq" id="6j8xKyAvvW8" role="3cqZAp">
                          <node concept="3clFbS" id="6j8xKyAvvW9" role="2GV8ay">
                            <node concept="3clFbJ" id="6j8xKyAvvWa" role="3cqZAp">
                              <node concept="3clFbS" id="6j8xKyAvvWb" role="3clFbx">
                                <node concept="3cpWs8" id="6j8xKyAvvWc" role="3cqZAp">
                                  <node concept="3cpWsn" id="6j8xKyAvvWd" role="3cpWs9">
                                    <property role="TrG5h" value="parsedActivities" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="2OqwBi" id="FcpLTGW9YK" role="33vP2m">
                                      <node concept="2OqwBi" id="FcpLTGW9h5" role="2Oq$k0">
                                        <node concept="Xjq3P" id="FcpLTGW8Mn" role="2Oq$k0">
                                          <ref role="1HBi2w" node="3c3vDUlbIty" resolve="BitbucketServerConnection" />
                                        </node>
                                        <node concept="2OwXpG" id="FcpLTGW9Ct" role="2OqNvi">
                                          <ref role="2Oxat5" node="FcpLTGVPJr" resolve="serializer" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="FcpLTGWakB" role="2OqNvi">
                                        <ref role="37wK5l" node="6j8xKyA_5qH" resolve="parseActivities" />
                                        <node concept="2OqwBi" id="6j8xKyAvvWg" role="37wK5m">
                                          <node concept="2OqwBi" id="6j8xKyAvvWh" role="2Oq$k0">
                                            <node concept="37vLTw" id="6j8xKyAvvWi" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6j8xKyAvvW4" resolve="response" />
                                            </node>
                                            <node concept="liA8E" id="6j8xKyAvvWj" role="2OqNvi">
                                              <ref role="37wK5l" to="gwgf:~Response.body():okhttp3.ResponseBody" resolve="body" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="6j8xKyAvvWk" role="2OqNvi">
                                            <ref role="37wK5l" to="gwgf:~ResponseBody.string():java.lang.String" resolve="string" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="_YKpA" id="6j8xKyA_CuH" role="1tU5fm">
                                      <node concept="3uibUv" id="FcpLTGX4ft" role="_ZDj9">
                                        <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="6j8xKyAvvWl" role="3cqZAp">
                                  <node concept="2OqwBi" id="6j8xKyAvvWm" role="3clFbG">
                                    <node concept="37vLTw" id="6j8xKyAvvWn" role="2Oq$k0">
                                      <ref role="3cqZAo" node="3yDmncoyycE" resolve="onSuccess" />
                                    </node>
                                    <node concept="1Bd96e" id="6j8xKyAvvWo" role="2OqNvi">
                                      <node concept="37vLTw" id="__fp3cxl4U" role="1BdPVh">
                                        <ref role="3cqZAo" node="6j8xKyAviCG" resolve="requestId" />
                                      </node>
                                      <node concept="37vLTw" id="6j8xKyAvvWp" role="1BdPVh">
                                        <ref role="3cqZAo" node="6j8xKyAvvWd" resolve="parsedActivities" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="6j8xKyAvvWq" role="3clFbw">
                                <node concept="2OqwBi" id="6j8xKyAvvWr" role="3uHU7B">
                                  <node concept="37vLTw" id="6j8xKyAvvWs" role="2Oq$k0">
                                    <ref role="3cqZAo" node="6j8xKyAvvW4" resolve="response" />
                                  </node>
                                  <node concept="liA8E" id="6j8xKyAvvWt" role="2OqNvi">
                                    <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="6j8xKyAvvWu" role="3uHU7w">
                                  <property role="3cmrfH" value="200" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="6j8xKyAvvWv" role="9aQIa">
                                <node concept="3clFbS" id="6j8xKyAvvWw" role="9aQI4">
                                  <node concept="3SKdUt" id="6j8xKyAvvWx" role="3cqZAp">
                                    <node concept="3SKdUq" id="6j8xKyAvvWy" role="3SKWNk">
                                      <property role="3SKdUp" value="TODO: This needs to be more robust" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="6j8xKyAvvWz" role="3cqZAp">
                                    <node concept="2OqwBi" id="6j8xKyAvvW$" role="3clFbG">
                                      <node concept="37vLTw" id="6j8xKyAvvW_" role="2Oq$k0">
                                        <ref role="3cqZAo" node="3yDmncoyycK" resolve="onFailure" />
                                      </node>
                                      <node concept="1Bd96e" id="6j8xKyAvvWA" role="2OqNvi">
                                        <node concept="37vLTw" id="__fp3cxlBu" role="1BdPVh">
                                          <ref role="3cqZAo" node="6j8xKyAviCG" resolve="requestId" />
                                        </node>
                                        <node concept="3cpWs3" id="6j8xKyAvvWB" role="1BdPVh">
                                          <node concept="2OqwBi" id="6j8xKyAvvWC" role="3uHU7w">
                                            <node concept="37vLTw" id="6j8xKyAvvWD" role="2Oq$k0">
                                              <ref role="3cqZAo" node="6j8xKyAvvW4" resolve="response" />
                                            </node>
                                            <node concept="liA8E" id="6j8xKyAvvWE" role="2OqNvi">
                                              <ref role="37wK5l" to="gwgf:~Response.message():java.lang.String" resolve="message" />
                                            </node>
                                          </node>
                                          <node concept="3cpWs3" id="6j8xKyAvvWF" role="3uHU7B">
                                            <node concept="3cpWs3" id="6j8xKyAvvWG" role="3uHU7B">
                                              <node concept="Xl_RD" id="6j8xKyAvvWH" role="3uHU7B">
                                                <property role="Xl_RC" value="Request failed with error " />
                                              </node>
                                              <node concept="2OqwBi" id="6j8xKyAvvWI" role="3uHU7w">
                                                <node concept="37vLTw" id="6j8xKyAvvWJ" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="6j8xKyAvvW4" resolve="response" />
                                                </node>
                                                <node concept="liA8E" id="6j8xKyAvvWK" role="2OqNvi">
                                                  <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="6j8xKyAvvWL" role="3uHU7w">
                                              <property role="Xl_RC" value=": " />
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
                          <node concept="3clFbS" id="6j8xKyAvvWM" role="2GVbov">
                            <node concept="3clFbF" id="6j8xKyAvvWN" role="3cqZAp">
                              <node concept="2OqwBi" id="6j8xKyAvvWO" role="3clFbG">
                                <node concept="37vLTw" id="6j8xKyAvvWP" role="2Oq$k0">
                                  <ref role="3cqZAo" node="6j8xKyAvvW4" resolve="response" />
                                </node>
                                <node concept="liA8E" id="6j8xKyAvvWQ" role="2OqNvi">
                                  <ref role="37wK5l" to="gwgf:~Response.close():void" resolve="close" />
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
        </node>
        <node concept="3clFbH" id="6j8xKyAuPUD" role="3cqZAp" />
        <node concept="3cpWs6" id="3yDmnco$$hq" role="3cqZAp">
          <node concept="37vLTw" id="6j8xKyAviCJ" role="3cqZAk">
            <ref role="3cqZAo" node="6j8xKyAviCG" resolve="requestId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="3yDmncoyycQ" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="__fp3cw8v2" role="jymVt" />
    <node concept="3clFb_" id="__fp3cw5qx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="postCommentToReview" />
      <node concept="3Tm1VV" id="__fp3cw5qz" role="1B3o_S" />
      <node concept="10Oyi0" id="__fp3cw5q$" role="3clF45" />
      <node concept="37vLTG" id="4dp0Yvdv$Bl" role="3clF46">
        <property role="TrG5h" value="commentRequest" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4dp0Yvdv$Bi" role="1tU5fm">
          <ref role="3uigEE" to="2jep:4dp0Yvdvjqg" resolve="PostCommentRequest" />
        </node>
      </node>
      <node concept="37vLTG" id="__fp3cw5qB" role="3clF46">
        <property role="TrG5h" value="onSuccess" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="__fp3cw5qC" role="1tU5fm">
          <node concept="3cqZAl" id="__fp3cw5qD" role="1ajl9A" />
          <node concept="10Oyi0" id="__fp3cwBRw" role="1ajw0F" />
          <node concept="3uibUv" id="__fp3cw5qE" role="1ajw0F">
            <ref role="3uigEE" to="m3q8:4Ew7qBDrroM" resolve="Comment" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="__fp3cw5qF" role="3clF46">
        <property role="TrG5h" value="onFailure" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="__fp3cw5qG" role="1tU5fm">
          <node concept="3cqZAl" id="__fp3cw5qH" role="1ajl9A" />
          <node concept="10Oyi0" id="__fp3cwCqJ" role="1ajw0F" />
          <node concept="17QB3L" id="__fp3cw5qI" role="1ajw0F" />
        </node>
      </node>
      <node concept="3clFbS" id="__fp3cw5qM" role="3clF47">
        <node concept="3cpWs8" id="__fp3cwbGS" role="3cqZAp">
          <node concept="3cpWsn" id="__fp3cwbGT" role="3cpWs9">
            <property role="TrG5h" value="requestId" />
            <property role="3TUv4t" value="true" />
            <node concept="1rXfSq" id="FcpLTGXQA5" role="33vP2m">
              <ref role="37wK5l" node="FcpLTGXQA2" resolve="nextRequestId" />
            </node>
            <node concept="10Oyi0" id="__fp3cwbGU" role="1tU5fm" />
          </node>
        </node>
        <node concept="3cpWs8" id="__fp3cwbGX" role="3cqZAp">
          <node concept="3cpWsn" id="__fp3cwbGY" role="3cpWs9">
            <property role="TrG5h" value="url" />
            <property role="3TUv4t" value="true" />
            <node concept="17QB3L" id="__fp3cwbGZ" role="1tU5fm" />
            <node concept="1rXfSq" id="__fp3cwbH0" role="33vP2m">
              <ref role="37wK5l" node="__fp3cwk4J" resolve="getUrlForCommentsOnPullRequest" />
              <node concept="2OqwBi" id="4dp0YvdJcUn" role="37wK5m">
                <node concept="37vLTw" id="4dp0YvdJcvg" role="2Oq$k0">
                  <ref role="3cqZAo" node="4dp0Yvdv$Bl" resolve="commentRequest" />
                </node>
                <node concept="liA8E" id="4dp0YvdJdkd" role="2OqNvi">
                  <ref role="37wK5l" to="2jep:4dp0YvdJ1o6" resolve="getReviewId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="__fp3cwbH2" role="3cqZAp">
          <node concept="2OqwBi" id="__fp3cwbH3" role="3clFbG">
            <node concept="10M0yZ" id="__fp3cwbH4" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="__fp3cwbH5" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="__fp3cwbH6" role="37wK5m">
                <node concept="Xl_RD" id="__fp3cwbH7" role="3uHU7B">
                  <property role="Xl_RC" value="Requesting: " />
                </node>
                <node concept="37vLTw" id="__fp3cwbH8" role="3uHU7w">
                  <ref role="3cqZAo" node="__fp3cwbGY" resolve="url" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="__fp3cwbHg" role="3cqZAp">
          <node concept="3cpWsn" id="__fp3cwbHh" role="3cpWs9">
            <property role="TrG5h" value="builder" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="__fp3cwbHi" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request$Builder" resolve="Request.Builder" />
            </node>
            <node concept="2ShNRf" id="__fp3cwbHj" role="33vP2m">
              <node concept="1pGfFk" id="__fp3cwbHk" role="2ShVmc">
                <ref role="37wK5l" to="gwgf:~Request$Builder.&lt;init&gt;()" resolve="Request.Builder" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="__fp3cwbHl" role="3cqZAp">
          <node concept="2OqwBi" id="__fp3cwbHm" role="3clFbG">
            <node concept="37vLTw" id="__fp3cwbHn" role="2Oq$k0">
              <ref role="3cqZAo" node="__fp3cwbHh" resolve="builder" />
            </node>
            <node concept="liA8E" id="__fp3cwbHo" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.post(okhttp3.RequestBody):okhttp3.Request$Builder" resolve="post" />
              <node concept="2YIFZM" id="__fp3cwyNn" role="37wK5m">
                <ref role="37wK5l" to="gwgf:~RequestBody.create(okhttp3.MediaType,java.lang.String):okhttp3.RequestBody" resolve="create" />
                <ref role="1Pybhc" to="gwgf:~RequestBody" resolve="RequestBody" />
                <node concept="2YIFZM" id="__fp3cwyNo" role="37wK5m">
                  <ref role="1Pybhc" to="gwgf:~MediaType" resolve="MediaType" />
                  <ref role="37wK5l" to="gwgf:~MediaType.parse(java.lang.String):okhttp3.MediaType" resolve="parse" />
                  <node concept="Xl_RD" id="__fp3cwyNp" role="37wK5m">
                    <property role="Xl_RC" value="application/json" />
                  </node>
                </node>
                <node concept="2OqwBi" id="4dp0YvdwjIV" role="37wK5m">
                  <node concept="2OqwBi" id="5IbzmGeyD0R" role="2Oq$k0">
                    <node concept="Xjq3P" id="5IbzmGeyD0P" role="2Oq$k0" />
                    <node concept="2OwXpG" id="5IbzmGeyD0Q" role="2OqNvi">
                      <ref role="2Oxat5" node="FcpLTGVPJr" resolve="serializer" />
                    </node>
                  </node>
                  <node concept="liA8E" id="4dp0YvdwNP1" role="2OqNvi">
                    <ref role="37wK5l" node="4dp0YvdwoAC" resolve="toJsonString" />
                    <node concept="37vLTw" id="4dp0YvdwOdJ" role="37wK5m">
                      <ref role="3cqZAo" node="4dp0Yvdv$Bl" resolve="commentRequest" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="__fp3cwbHp" role="3cqZAp">
          <node concept="2OqwBi" id="__fp3cwbHq" role="3clFbG">
            <node concept="37vLTw" id="__fp3cwbHr" role="2Oq$k0">
              <ref role="3cqZAo" node="__fp3cwbHh" resolve="builder" />
            </node>
            <node concept="liA8E" id="__fp3cwbHs" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.url(java.lang.String):okhttp3.Request$Builder" resolve="url" />
              <node concept="37vLTw" id="__fp3cwbHt" role="37wK5m">
                <ref role="3cqZAo" node="__fp3cwbGY" resolve="url" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="__fp3cwbHu" role="3cqZAp">
          <node concept="2OqwBi" id="__fp3cwbHv" role="3clFbG">
            <node concept="37vLTw" id="__fp3cwbHw" role="2Oq$k0">
              <ref role="3cqZAo" node="__fp3cwbHh" resolve="builder" />
            </node>
            <node concept="liA8E" id="__fp3cwbHx" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Request$Builder.addHeader(java.lang.String,java.lang.String):okhttp3.Request$Builder" resolve="addHeader" />
              <node concept="Xl_RD" id="__fp3cwbHy" role="37wK5m">
                <property role="Xl_RC" value="Authorization" />
              </node>
              <node concept="2OqwBi" id="__fp3cwbHz" role="37wK5m">
                <node concept="2OqwBi" id="__fp3cwbH$" role="2Oq$k0">
                  <node concept="Xjq3P" id="__fp3cwbH_" role="2Oq$k0" />
                  <node concept="2OwXpG" id="__fp3cwbHA" role="2OqNvi">
                    <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
                  </node>
                </node>
                <node concept="liA8E" id="__fp3cwbHB" role="2OqNvi">
                  <ref role="37wK5l" node="6j8xKyAr1aU" resolve="getBearerAuthHeader" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="__fp3cwbHJ" role="3cqZAp">
          <node concept="3cpWsn" id="__fp3cwbHK" role="3cpWs9">
            <property role="TrG5h" value="request" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="__fp3cwbHL" role="1tU5fm">
              <ref role="3uigEE" to="gwgf:~Request" resolve="Request" />
            </node>
            <node concept="2OqwBi" id="__fp3cwbHM" role="33vP2m">
              <node concept="37vLTw" id="__fp3cwbHN" role="2Oq$k0">
                <ref role="3cqZAo" node="__fp3cwbHh" resolve="builder" />
              </node>
              <node concept="liA8E" id="__fp3cwbHO" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~Request$Builder.build():okhttp3.Request" resolve="build" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="__fp3cwbHP" role="3cqZAp">
          <node concept="2OqwBi" id="__fp3cwbHQ" role="3clFbG">
            <node concept="2OqwBi" id="__fp3cwbHR" role="2Oq$k0">
              <node concept="2OqwBi" id="5IbzmGeyD0W" role="2Oq$k0">
                <node concept="Xjq3P" id="5IbzmGeyD0U" role="2Oq$k0" />
                <node concept="2OwXpG" id="5IbzmGeyD0V" role="2OqNvi">
                  <ref role="2Oxat5" node="4Ew7qBDqX_x" resolve="client" />
                </node>
              </node>
              <node concept="liA8E" id="__fp3cwbHT" role="2OqNvi">
                <ref role="37wK5l" to="gwgf:~OkHttpClient.newCall(okhttp3.Request):okhttp3.Call" resolve="newCall" />
                <node concept="37vLTw" id="__fp3cwbHU" role="37wK5m">
                  <ref role="3cqZAo" node="__fp3cwbHK" resolve="request" />
                </node>
              </node>
            </node>
            <node concept="liA8E" id="__fp3cwbHV" role="2OqNvi">
              <ref role="37wK5l" to="gwgf:~Call.enqueue(okhttp3.Callback):void" resolve="enqueue" />
              <node concept="2ShNRf" id="__fp3cwbHW" role="37wK5m">
                <node concept="YeOm9" id="__fp3cwbHX" role="2ShVmc">
                  <node concept="1Y3b0j" id="__fp3cwbHY" role="YeSDq">
                    <property role="2bfB8j" value="true" />
                    <ref role="1Y3XeK" to="gwgf:~Callback" resolve="Callback" />
                    <ref role="37wK5l" to="wyt6:~Object.&lt;init&gt;()" resolve="Object" />
                    <node concept="3Tm1VV" id="__fp3cwbHZ" role="1B3o_S" />
                    <node concept="3clFb_" id="__fp3cwbI0" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onFailure" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="__fp3cwbI1" role="1B3o_S" />
                      <node concept="3cqZAl" id="__fp3cwbI2" role="3clF45" />
                      <node concept="37vLTG" id="__fp3cwbI3" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="__fp3cwbI4" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="__fp3cwbI5" role="3clF46">
                        <property role="TrG5h" value="exception" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="__fp3cwbI6" role="1tU5fm">
                          <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="__fp3cwbI7" role="3clF47">
                        <node concept="3SKdUt" id="__fp3cwbI8" role="3cqZAp">
                          <node concept="3SKdUq" id="__fp3cwbI9" role="3SKWNk">
                            <property role="3SKdUp" value="TODO: This needs to be *way* more robust" />
                          </node>
                        </node>
                        <node concept="3clFbF" id="__fp3cwbIa" role="3cqZAp">
                          <node concept="2OqwBi" id="__fp3cwbIb" role="3clFbG">
                            <node concept="37vLTw" id="__fp3cwbIc" role="2Oq$k0">
                              <ref role="3cqZAo" node="__fp3cw5qF" resolve="onFailure" />
                            </node>
                            <node concept="1Bd96e" id="__fp3cwbId" role="2OqNvi">
                              <node concept="37vLTw" id="__fp3cxpaC" role="1BdPVh">
                                <ref role="3cqZAo" node="__fp3cwbGT" resolve="requestId" />
                              </node>
                              <node concept="2OqwBi" id="__fp3cwbIe" role="1BdPVh">
                                <node concept="37vLTw" id="__fp3cwbIf" role="2Oq$k0">
                                  <ref role="3cqZAo" node="__fp3cwbI5" resolve="exception" />
                                </node>
                                <node concept="liA8E" id="__fp3cwbIg" role="2OqNvi">
                                  <ref role="37wK5l" to="wyt6:~Throwable.getMessage():java.lang.String" resolve="getMessage" />
                                </node>
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                    <node concept="3clFb_" id="__fp3cwbIh" role="jymVt">
                      <property role="1EzhhJ" value="false" />
                      <property role="TrG5h" value="onResponse" />
                      <property role="DiZV1" value="false" />
                      <property role="od$2w" value="false" />
                      <node concept="3Tm1VV" id="__fp3cwbIi" role="1B3o_S" />
                      <node concept="3cqZAl" id="__fp3cwbIj" role="3clF45" />
                      <node concept="37vLTG" id="__fp3cwbIk" role="3clF46">
                        <property role="TrG5h" value="call" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="__fp3cwbIl" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Call" resolve="Call" />
                        </node>
                      </node>
                      <node concept="37vLTG" id="__fp3cwbIm" role="3clF46">
                        <property role="TrG5h" value="response" />
                        <property role="3TUv4t" value="true" />
                        <node concept="3uibUv" id="__fp3cwbIn" role="1tU5fm">
                          <ref role="3uigEE" to="gwgf:~Response" resolve="Response" />
                        </node>
                      </node>
                      <node concept="3uibUv" id="__fp3cwbIo" role="Sfmx6">
                        <ref role="3uigEE" to="guwi:~IOException" resolve="IOException" />
                      </node>
                      <node concept="3clFbS" id="__fp3cwbIp" role="3clF47">
                        <node concept="2GUZhq" id="__fp3cwbIq" role="3cqZAp">
                          <node concept="3clFbS" id="__fp3cwbIr" role="2GV8ay">
                            <node concept="3clFbJ" id="__fp3cwbIs" role="3cqZAp">
                              <node concept="3clFbS" id="__fp3cwbIt" role="3clFbx">
                                <node concept="3cpWs8" id="__fp3cwbIu" role="3cqZAp">
                                  <node concept="3cpWsn" id="__fp3cwbIv" role="3cpWs9">
                                    <property role="TrG5h" value="parsedComment" />
                                    <property role="3TUv4t" value="true" />
                                    <node concept="2OqwBi" id="FcpLTGWdh2" role="33vP2m">
                                      <node concept="2OqwBi" id="FcpLTGWcuQ" role="2Oq$k0">
                                        <node concept="Xjq3P" id="FcpLTGWc1Z" role="2Oq$k0">
                                          <ref role="1HBi2w" node="3c3vDUlbIty" resolve="BitbucketServerConnection" />
                                        </node>
                                        <node concept="2OwXpG" id="FcpLTGWcPm" role="2OqNvi">
                                          <ref role="2Oxat5" node="FcpLTGVPJr" resolve="serializer" />
                                        </node>
                                      </node>
                                      <node concept="liA8E" id="FcpLTGWdA9" role="2OqNvi">
                                        <ref role="37wK5l" node="__fp3cxuZm" resolve="parseComment" />
                                        <node concept="2OqwBi" id="__fp3cwbIz" role="37wK5m">
                                          <node concept="2OqwBi" id="__fp3cwbI$" role="2Oq$k0">
                                            <node concept="37vLTw" id="__fp3cwbI_" role="2Oq$k0">
                                              <ref role="3cqZAo" node="__fp3cwbIm" resolve="response" />
                                            </node>
                                            <node concept="liA8E" id="__fp3cwbIA" role="2OqNvi">
                                              <ref role="37wK5l" to="gwgf:~Response.body():okhttp3.ResponseBody" resolve="body" />
                                            </node>
                                          </node>
                                          <node concept="liA8E" id="__fp3cwbIB" role="2OqNvi">
                                            <ref role="37wK5l" to="gwgf:~ResponseBody.string():java.lang.String" resolve="string" />
                                          </node>
                                        </node>
                                      </node>
                                    </node>
                                    <node concept="3uibUv" id="__fp3cxEwB" role="1tU5fm">
                                      <ref role="3uigEE" to="m3q8:4Ew7qBDrroM" resolve="Comment" />
                                    </node>
                                  </node>
                                </node>
                                <node concept="3clFbF" id="__fp3cwbIC" role="3cqZAp">
                                  <node concept="2OqwBi" id="__fp3cwbID" role="3clFbG">
                                    <node concept="37vLTw" id="__fp3cwbIE" role="2Oq$k0">
                                      <ref role="3cqZAo" node="__fp3cw5qB" resolve="onSuccess" />
                                    </node>
                                    <node concept="1Bd96e" id="__fp3cwbIF" role="2OqNvi">
                                      <node concept="37vLTw" id="__fp3cxpy0" role="1BdPVh">
                                        <ref role="3cqZAo" node="__fp3cwbGT" resolve="requestId" />
                                      </node>
                                      <node concept="37vLTw" id="__fp3cwbIG" role="1BdPVh">
                                        <ref role="3cqZAo" node="__fp3cwbIv" resolve="parsedComment" />
                                      </node>
                                    </node>
                                  </node>
                                </node>
                              </node>
                              <node concept="3clFbC" id="__fp3cwbIH" role="3clFbw">
                                <node concept="2OqwBi" id="__fp3cwbII" role="3uHU7B">
                                  <node concept="37vLTw" id="__fp3cwbIJ" role="2Oq$k0">
                                    <ref role="3cqZAo" node="__fp3cwbIm" resolve="response" />
                                  </node>
                                  <node concept="liA8E" id="__fp3cwbIK" role="2OqNvi">
                                    <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                  </node>
                                </node>
                                <node concept="3cmrfG" id="__fp3cwbIL" role="3uHU7w">
                                  <property role="3cmrfH" value="201" />
                                </node>
                              </node>
                              <node concept="9aQIb" id="__fp3cwbIM" role="9aQIa">
                                <node concept="3clFbS" id="__fp3cwbIN" role="9aQI4">
                                  <node concept="3SKdUt" id="__fp3cwbIO" role="3cqZAp">
                                    <node concept="3SKdUq" id="__fp3cwbIP" role="3SKWNk">
                                      <property role="3SKdUp" value="TODO: This needs to be more robust" />
                                    </node>
                                  </node>
                                  <node concept="3clFbF" id="__fp3cwbIQ" role="3cqZAp">
                                    <node concept="2OqwBi" id="__fp3cwbIR" role="3clFbG">
                                      <node concept="37vLTw" id="__fp3cwbIS" role="2Oq$k0">
                                        <ref role="3cqZAo" node="__fp3cw5qF" resolve="onFailure" />
                                      </node>
                                      <node concept="1Bd96e" id="__fp3cwbIT" role="2OqNvi">
                                        <node concept="37vLTw" id="__fp3cxqb_" role="1BdPVh">
                                          <ref role="3cqZAo" node="__fp3cwbGT" resolve="requestId" />
                                        </node>
                                        <node concept="3cpWs3" id="__fp3cwbIU" role="1BdPVh">
                                          <node concept="2OqwBi" id="__fp3cwbIV" role="3uHU7w">
                                            <node concept="37vLTw" id="__fp3cwbIW" role="2Oq$k0">
                                              <ref role="3cqZAo" node="__fp3cwbIm" resolve="response" />
                                            </node>
                                            <node concept="liA8E" id="__fp3cwbIX" role="2OqNvi">
                                              <ref role="37wK5l" to="gwgf:~Response.message():java.lang.String" resolve="message" />
                                            </node>
                                          </node>
                                          <node concept="3cpWs3" id="__fp3cwbIY" role="3uHU7B">
                                            <node concept="3cpWs3" id="__fp3cwbIZ" role="3uHU7B">
                                              <node concept="Xl_RD" id="__fp3cwbJ0" role="3uHU7B">
                                                <property role="Xl_RC" value="Request failed with error " />
                                              </node>
                                              <node concept="2OqwBi" id="__fp3cwbJ1" role="3uHU7w">
                                                <node concept="37vLTw" id="__fp3cwbJ2" role="2Oq$k0">
                                                  <ref role="3cqZAo" node="__fp3cwbIm" resolve="response" />
                                                </node>
                                                <node concept="liA8E" id="__fp3cwbJ3" role="2OqNvi">
                                                  <ref role="37wK5l" to="gwgf:~Response.code():int" resolve="code" />
                                                </node>
                                              </node>
                                            </node>
                                            <node concept="Xl_RD" id="__fp3cwbJ4" role="3uHU7w">
                                              <property role="Xl_RC" value=": " />
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
                          <node concept="3clFbS" id="__fp3cwbJ5" role="2GVbov">
                            <node concept="3clFbF" id="__fp3cwbJ6" role="3cqZAp">
                              <node concept="2OqwBi" id="__fp3cwbJ7" role="3clFbG">
                                <node concept="37vLTw" id="__fp3cwbJ8" role="2Oq$k0">
                                  <ref role="3cqZAo" node="__fp3cwbIm" resolve="response" />
                                </node>
                                <node concept="liA8E" id="__fp3cwbJ9" role="2OqNvi">
                                  <ref role="37wK5l" to="gwgf:~Response.close():void" resolve="close" />
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
        </node>
        <node concept="3clFbH" id="__fp3cwzwQ" role="3cqZAp" />
        <node concept="3cpWs6" id="__fp3cwzQ2" role="3cqZAp">
          <node concept="37vLTw" id="__fp3cw$LD" role="3cqZAk">
            <ref role="3cqZAo" node="__fp3cwbGT" resolve="requestId" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="__fp3cw5qN" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="3LQpZV9_Dfa" role="jymVt" />
    <node concept="3clFb_" id="3LQpZV9_HL7" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConfig" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3LQpZV9_HLa" role="3clF47">
        <node concept="3cpWs6" id="3LQpZV9_JXv" role="3cqZAp">
          <node concept="2OqwBi" id="3LQpZV9_Kkt" role="3cqZAk">
            <node concept="Xjq3P" id="3LQpZV9_K4G" role="2Oq$k0" />
            <node concept="2OwXpG" id="3LQpZV9_MhY" role="2OqNvi">
              <ref role="2Oxat5" node="78s6gAknWJ0" resolve="config" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tmbuc" id="3LQpZV9_FuK" role="1B3o_S" />
      <node concept="3uibUv" id="623PeBeW44x" role="3clF45">
        <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dp0Yvdvc6l" role="jymVt" />
    <node concept="3clFb_" id="FcpLTGXQA2" role="jymVt">
      <property role="TrG5h" value="nextRequestId" />
      <node concept="3Tm6S6" id="FcpLTGXQA3" role="1B3o_S" />
      <node concept="10Oyi0" id="FcpLTGXQA4" role="3clF45" />
      <node concept="3clFbS" id="FcpLTGXQxm" role="3clF47">
        <node concept="3cpWs6" id="FcpLTGXQzD" role="3cqZAp">
          <node concept="2OqwBi" id="FcpLTGXQzE" role="3cqZAk">
            <node concept="2OqwBi" id="FcpLTGXQzF" role="2Oq$k0">
              <node concept="Xjq3P" id="FcpLTGXQzG" role="2Oq$k0" />
              <node concept="2OwXpG" id="FcpLTGXQzH" role="2OqNvi">
                <ref role="2Oxat5" node="3yDmnco$uey" resolve="nextRequestId" />
              </node>
            </node>
            <node concept="liA8E" id="FcpLTGXQzI" role="2OqNvi">
              <ref role="37wK5l" to="i5cy:~AtomicInteger.getAndIncrement():int" resolve="getAndIncrement" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBeW5_7" role="jymVt" />
    <node concept="3Tm1VV" id="3c3vDUlbItz" role="1B3o_S" />
    <node concept="3uibUv" id="3yDmncoyvtl" role="EKbjA">
      <ref role="3uigEE" to="m3q8:4Ew7qBDr4JM" resolve="CodeReviewerConnection" />
      <node concept="3uibUv" id="FcpLTGYrbj" role="11_B2D">
        <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="FcpLTGVjS7">
    <property role="3GE5qa" value="configuration.server" />
    <property role="TrG5h" value="BitbucketServerSerializer" />
    <node concept="312cEg" id="FcpLTGVkcl" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="gson" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="FcpLTGVkcf" role="1tU5fm">
        <ref role="3uigEE" to="wy2b:~Gson" resolve="Gson" />
      </node>
      <node concept="3Tm6S6" id="FcpLTGVkcz" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="FcpLTGVkcE" role="jymVt" />
    <node concept="3clFbW" id="FcpLTGVk27" role="jymVt">
      <node concept="3cqZAl" id="FcpLTGVk28" role="3clF45" />
      <node concept="3clFbS" id="FcpLTGVk2a" role="3clF47">
        <node concept="3clFbF" id="FcpLTGVv59" role="3cqZAp">
          <node concept="37vLTI" id="FcpLTGVvKX" role="3clFbG">
            <node concept="1rXfSq" id="FcpLTGVvYy" role="37vLTx">
              <ref role="37wK5l" node="4Ew7qBDvHkV" resolve="createGson" />
            </node>
            <node concept="2OqwBi" id="FcpLTGVvaD" role="37vLTJ">
              <node concept="Xjq3P" id="FcpLTGVv58" role="2Oq$k0" />
              <node concept="2OwXpG" id="FcpLTGVvhJ" role="2OqNvi">
                <ref role="2Oxat5" node="FcpLTGVkcl" resolve="gson" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="623PeBeVxuC" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="FcpLTGVuA2" role="jymVt" />
    <node concept="2YIFZL" id="4Ew7qBDvHkV" role="jymVt">
      <property role="TrG5h" value="createGson" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Ew7qBDvHkY" role="3clF47">
        <node concept="3SKdUt" id="FcpLTGZdZK" role="3cqZAp">
          <node concept="3SKdUq" id="FcpLTGZdZM" role="3SKWNk">
            <property role="3SKdUp" value="type adapter is NOT a hierarchy adapter, because we just use it to identify the activity subclass" />
          </node>
        </node>
        <node concept="3cpWs6" id="FcpLTGYWV5" role="3cqZAp">
          <node concept="2OqwBi" id="FcpLTGZ1xw" role="3cqZAk">
            <node concept="2OqwBi" id="FcpLTGYYNz" role="2Oq$k0">
              <node concept="2ShNRf" id="FcpLTGYXe$" role="2Oq$k0">
                <node concept="1pGfFk" id="FcpLTGYYB6" role="2ShVmc">
                  <ref role="37wK5l" to="wy2b:~GsonBuilder.&lt;init&gt;()" resolve="GsonBuilder" />
                </node>
              </node>
              <node concept="liA8E" id="FcpLTGYZ1g" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~GsonBuilder.registerTypeAdapter(java.lang.reflect.Type,java.lang.Object):com.google.gson.GsonBuilder" resolve="registerTypeAdapter" />
                <node concept="3VsKOn" id="FcpLTGYZuK" role="37wK5m">
                  <ref role="3VsUkX" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
                </node>
                <node concept="2ShNRf" id="FcpLTGYZR6" role="37wK5m">
                  <node concept="HV5vD" id="FcpLTGZ1gM" role="2ShVmc">
                    <ref role="HV5vE" node="Jm1BRJQ$KI" resolve="BitbucketServerSerializer.BitbucketActivityJsonAdapter" />
                  </node>
                </node>
              </node>
            </node>
            <node concept="liA8E" id="FcpLTGZ1Wm" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~GsonBuilder.create():com.google.gson.Gson" resolve="create" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="4Ew7qBDvGLJ" role="1B3o_S" />
      <node concept="3uibUv" id="4Ew7qBDvHkJ" role="3clF45">
        <ref role="3uigEE" to="wy2b:~Gson" resolve="Gson" />
      </node>
    </node>
    <node concept="2tJIrI" id="FcpLTGVtPz" role="jymVt" />
    <node concept="3clFb_" id="6j8xKyA_5qH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="parseActivities" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="6j8xKyA_5qK" role="3clF47">
        <node concept="3cpWs8" id="FcpLTGTb5K" role="3cqZAp">
          <node concept="3cpWsn" id="FcpLTGTb5L" role="3cpWs9">
            <property role="TrG5h" value="activityQueryType" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="FcpLTGTb5J" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Type" resolve="Type" />
            </node>
            <node concept="2OqwBi" id="FcpLTGV7sV" role="33vP2m">
              <node concept="2YIFZM" id="FcpLTGUXEA" role="2Oq$k0">
                <ref role="1Pybhc" to="14ci:~TypeToken" resolve="TypeToken" />
                <ref role="37wK5l" to="14ci:~TypeToken.getParameterized(java.lang.reflect.Type,java.lang.reflect.Type...):com.google.gson.reflect.TypeToken" resolve="getParameterized" />
                <node concept="3VsKOn" id="FcpLTGV0OY" role="37wK5m">
                  <ref role="3VsUkX" to="ii13:3c3vDUlrFZ5" resolve="QueryJson" />
                </node>
                <node concept="3VsKOn" id="FcpLTGV5Ce" role="37wK5m">
                  <ref role="3VsUkX" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
                </node>
              </node>
              <node concept="liA8E" id="FcpLTGV9ks" role="2OqNvi">
                <ref role="37wK5l" to="14ci:~TypeToken.getType():java.lang.reflect.Type" resolve="getType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="6j8xKyA_9wI" role="3cqZAp">
          <node concept="3cpWsn" id="6j8xKyA_9wJ" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="6j8xKyA_9wK" role="1tU5fm">
              <ref role="3uigEE" to="ii13:3c3vDUlrFZ5" resolve="QueryJson" />
              <node concept="3uibUv" id="FcpLTGWpot" role="11_B2D">
                <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
              </node>
            </node>
            <node concept="2OqwBi" id="6j8xKyA_aeJ" role="33vP2m">
              <node concept="2OqwBi" id="FcpLTGVosY" role="2Oq$k0">
                <node concept="Xjq3P" id="FcpLTGVo0n" role="2Oq$k0" />
                <node concept="2OwXpG" id="FcpLTGVoQQ" role="2OqNvi">
                  <ref role="2Oxat5" node="FcpLTGVkcl" resolve="gson" />
                </node>
              </node>
              <node concept="liA8E" id="6j8xKyA_axG" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~Gson.fromJson(java.lang.String,java.lang.reflect.Type):java.lang.Object" resolve="fromJson" />
                <node concept="37vLTw" id="6j8xKyA_aKs" role="37wK5m">
                  <ref role="3cqZAo" node="6j8xKyA_6J6" resolve="data" />
                </node>
                <node concept="37vLTw" id="FcpLTGTb5U" role="37wK5m">
                  <ref role="3cqZAo" node="FcpLTGTb5L" resolve="activityQueryType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="6j8xKyA_wvv" role="3cqZAp">
          <node concept="2OqwBi" id="6j8xKyA_y2a" role="3cqZAk">
            <node concept="37vLTw" id="6j8xKyA_wRM" role="2Oq$k0">
              <ref role="3cqZAo" node="6j8xKyA_9wJ" resolve="query" />
            </node>
            <node concept="2OwXpG" id="6j8xKyA_zpm" role="2OqNvi">
              <ref role="2Oxat5" to="ii13:6j8xKyA_8vM" resolve="values" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="6j8xKyA_54i" role="3clF45">
        <node concept="3uibUv" id="FcpLTGWn0z" role="_ZDj9">
          <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
        </node>
      </node>
      <node concept="37vLTG" id="6j8xKyA_6J6" role="3clF46">
        <property role="TrG5h" value="data" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="6j8xKyA_6J5" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="FcpLTGVI03" role="jymVt" />
    <node concept="3clFb_" id="4Ew7qBDr0pA" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="parseReview" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4Ew7qBDr0pD" role="3clF47">
        <node concept="3cpWs6" id="4Ew7qBDt4su" role="3cqZAp">
          <node concept="2OqwBi" id="FcpLTGWiMe" role="3cqZAk">
            <node concept="2OqwBi" id="FcpLTGWiMf" role="2Oq$k0">
              <node concept="Xjq3P" id="FcpLTGWiMg" role="2Oq$k0" />
              <node concept="2OwXpG" id="FcpLTGWiMh" role="2OqNvi">
                <ref role="2Oxat5" node="FcpLTGVkcl" resolve="gson" />
              </node>
            </node>
            <node concept="liA8E" id="FcpLTGWiMi" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~Gson.fromJson(java.lang.String,java.lang.Class):java.lang.Object" resolve="fromJson" />
              <node concept="37vLTw" id="FcpLTGWiMj" role="37wK5m">
                <ref role="3cqZAo" node="4Ew7qBDr0Gj" resolve="data" />
              </node>
              <node concept="3VsKOn" id="FcpLTGWiMk" role="37wK5m">
                <ref role="3VsUkX" node="4Ew7qBDrCpm" resolve="BitbucketReview" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="4Ew7qBDsZLV" role="3clF45">
        <ref role="3uigEE" node="4Ew7qBDrCpm" resolve="BitbucketReview" />
      </node>
      <node concept="37vLTG" id="4Ew7qBDr0Gj" role="3clF46">
        <property role="TrG5h" value="data" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4Ew7qBDr0Gi" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dp0YvdFh_H" role="jymVt" />
    <node concept="3clFb_" id="4dp0YvdFfVH" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="parseReviewQuery" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4dp0YvdFfVI" role="3clF47">
        <node concept="3cpWs8" id="4dp0YvdFiAx" role="3cqZAp">
          <node concept="3cpWsn" id="4dp0YvdFiAy" role="3cpWs9">
            <property role="TrG5h" value="reviewQueryType" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4dp0YvdFiAz" role="1tU5fm">
              <ref role="3uigEE" to="t6h5:~Type" resolve="Type" />
            </node>
            <node concept="2OqwBi" id="4dp0YvdFiA$" role="33vP2m">
              <node concept="2YIFZM" id="4dp0YvdFiA_" role="2Oq$k0">
                <ref role="37wK5l" to="14ci:~TypeToken.getParameterized(java.lang.reflect.Type,java.lang.reflect.Type...):com.google.gson.reflect.TypeToken" resolve="getParameterized" />
                <ref role="1Pybhc" to="14ci:~TypeToken" resolve="TypeToken" />
                <node concept="3VsKOn" id="4dp0YvdFiAA" role="37wK5m">
                  <ref role="3VsUkX" to="ii13:3c3vDUlrFZ5" resolve="QueryJson" />
                </node>
                <node concept="3VsKOn" id="4dp0YvdFiAB" role="37wK5m">
                  <ref role="3VsUkX" node="4Ew7qBDrCpm" resolve="BitbucketReview" />
                </node>
              </node>
              <node concept="liA8E" id="4dp0YvdFiAC" role="2OqNvi">
                <ref role="37wK5l" to="14ci:~TypeToken.getType():java.lang.reflect.Type" resolve="getType" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs8" id="4dp0YvdFiAD" role="3cqZAp">
          <node concept="3cpWsn" id="4dp0YvdFiAE" role="3cpWs9">
            <property role="TrG5h" value="query" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="4dp0YvdFiAF" role="1tU5fm">
              <ref role="3uigEE" to="ii13:3c3vDUlrFZ5" resolve="QueryJson" />
              <node concept="3uibUv" id="4dp0YvdFnD8" role="11_B2D">
                <ref role="3uigEE" node="4Ew7qBDrCpm" resolve="BitbucketReview" />
              </node>
            </node>
            <node concept="2OqwBi" id="4dp0YvdFiAH" role="33vP2m">
              <node concept="2OqwBi" id="4dp0YvdFiAI" role="2Oq$k0">
                <node concept="Xjq3P" id="4dp0YvdFiAJ" role="2Oq$k0" />
                <node concept="2OwXpG" id="4dp0YvdFiAK" role="2OqNvi">
                  <ref role="2Oxat5" node="FcpLTGVkcl" resolve="gson" />
                </node>
              </node>
              <node concept="liA8E" id="4dp0YvdFiAL" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~Gson.fromJson(java.lang.String,java.lang.reflect.Type):java.lang.Object" resolve="fromJson" />
                <node concept="37vLTw" id="4dp0YvdFiAM" role="37wK5m">
                  <ref role="3cqZAo" node="4dp0YvdFfVS" resolve="data" />
                </node>
                <node concept="37vLTw" id="4dp0YvdFiAN" role="37wK5m">
                  <ref role="3cqZAo" node="4dp0YvdFiAy" resolve="reviewQueryType" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="4dp0YvdFiAU" role="3cqZAp">
          <node concept="2OqwBi" id="4dp0YvdFiAV" role="3cqZAk">
            <node concept="37vLTw" id="4dp0YvdFiAW" role="2Oq$k0">
              <ref role="3cqZAo" node="4dp0YvdFiAE" resolve="query" />
            </node>
            <node concept="2OwXpG" id="4dp0YvdFiAX" role="2OqNvi">
              <ref role="2Oxat5" to="ii13:6j8xKyA_8vM" resolve="values" />
            </node>
          </node>
        </node>
      </node>
      <node concept="_YKpA" id="4dp0YvdFD3p" role="3clF45">
        <node concept="3uibUv" id="4dp0YvdFD3q" role="_ZDj9">
          <ref role="3uigEE" node="4Ew7qBDrCpm" resolve="BitbucketReview" />
        </node>
      </node>
      <node concept="37vLTG" id="4dp0YvdFfVS" role="3clF46">
        <property role="TrG5h" value="data" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="4dp0YvdFfVT" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="6j8xKyA_3tO" role="jymVt" />
    <node concept="3clFb_" id="__fp3cxuZm" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="parseComment" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="__fp3cxuZp" role="3clF47">
        <node concept="3cpWs6" id="__fp3cxDje" role="3cqZAp">
          <node concept="2OqwBi" id="FcpLTGWjeP" role="3cqZAk">
            <node concept="2OqwBi" id="FcpLTGWjeQ" role="2Oq$k0">
              <node concept="Xjq3P" id="FcpLTGWjeR" role="2Oq$k0" />
              <node concept="2OwXpG" id="FcpLTGWjeS" role="2OqNvi">
                <ref role="2Oxat5" node="FcpLTGVkcl" resolve="gson" />
              </node>
            </node>
            <node concept="liA8E" id="FcpLTGWjeT" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~Gson.fromJson(java.lang.String,java.lang.Class):java.lang.Object" resolve="fromJson" />
              <node concept="37vLTw" id="FcpLTGWjeU" role="37wK5m">
                <ref role="3cqZAo" node="__fp3cxxcg" resolve="data" />
              </node>
              <node concept="3VsKOn" id="FcpLTGWjeV" role="37wK5m">
                <ref role="3VsUkX" node="2hVa5m$1$n6" resolve="BitbucketComment" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3uibUv" id="FcpLTGWm$w" role="3clF45">
        <ref role="3uigEE" node="2hVa5m$1$n6" resolve="BitbucketComment" />
      </node>
      <node concept="37vLTG" id="__fp3cxxcg" role="3clF46">
        <property role="TrG5h" value="data" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="__fp3cxxcf" role="1tU5fm" />
      </node>
    </node>
    <node concept="2tJIrI" id="4dp0Yvdwl3C" role="jymVt" />
    <node concept="3clFb_" id="4dp0YvdwoAC" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="toJsonString" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="4dp0YvdwoAF" role="3clF47">
        <node concept="3cpWs6" id="4dp0YvdwpLc" role="3cqZAp">
          <node concept="2OqwBi" id="4dp0Yvdwr5D" role="3cqZAk">
            <node concept="2OqwBi" id="4dp0Yvdwq3f" role="2Oq$k0">
              <node concept="Xjq3P" id="4dp0YvdwpQO" role="2Oq$k0" />
              <node concept="2OwXpG" id="4dp0Yvdwqyi" role="2OqNvi">
                <ref role="2Oxat5" node="FcpLTGVkcl" resolve="gson" />
              </node>
            </node>
            <node concept="liA8E" id="4dp0Yvdwr$R" role="2OqNvi">
              <ref role="37wK5l" to="wy2b:~Gson.toJson(java.lang.Object):java.lang.String" resolve="toJson" />
              <node concept="2ShNRf" id="4dp0YvdwyjF" role="37wK5m">
                <node concept="1pGfFk" id="4dp0YvdwzsO" role="2ShVmc">
                  <ref role="37wK5l" node="4dp0YvdvrfC" resolve="BitbucketCommentRequestBody" />
                  <node concept="37vLTw" id="4dp0YvdwzZP" role="37wK5m">
                    <ref role="3cqZAo" node="4dp0YvdwpaV" resolve="request" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="17QB3L" id="4dp0Yvdwmxr" role="3clF45" />
      <node concept="37vLTG" id="4dp0YvdwpaV" role="3clF46">
        <property role="TrG5h" value="request" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="4dp0YvdwwNK" role="1tU5fm">
          <ref role="3uigEE" to="2jep:4dp0Yvdvjqg" resolve="PostCommentRequest" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="FcpLTGVL0t" role="jymVt" />
    <node concept="312cEu" id="Jm1BRJQ$KI" role="jymVt">
      <property role="2bfB8j" value="false" />
      <property role="1sVAO0" value="false" />
      <property role="1EXbeo" value="false" />
      <property role="TrG5h" value="BitbucketActivityJsonAdapter" />
      <node concept="Wx3nA" id="FcpLTGRvyC" role="jymVt">
        <property role="TrG5h" value="ACTIVITY_TYPE_MEMBER" />
        <property role="2dlcS1" value="false" />
        <property role="3TUv4t" value="true" />
        <property role="2dld4O" value="false" />
        <node concept="17QB3L" id="FcpLTGRvyG" role="1tU5fm" />
        <node concept="Xl_RD" id="FcpLTGRvyF" role="33vP2m">
          <property role="Xl_RC" value="action" />
        </node>
        <node concept="3Tm6S6" id="FcpLTGRvyE" role="1B3o_S" />
      </node>
      <node concept="2tJIrI" id="FcpLTGVdFT" role="jymVt" />
      <node concept="3clFb_" id="Jm1BRJQBzM" role="jymVt">
        <property role="1EzhhJ" value="false" />
        <property role="TrG5h" value="deserialize" />
        <property role="DiZV1" value="false" />
        <property role="od$2w" value="false" />
        <node concept="3Tm1VV" id="Jm1BRJQBzN" role="1B3o_S" />
        <node concept="3uibUv" id="Jm1BRJQBzX" role="3clF45">
          <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
        </node>
        <node concept="37vLTG" id="Jm1BRJQBzQ" role="3clF46">
          <property role="TrG5h" value="element" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="Jm1BRJQBzR" role="1tU5fm">
            <ref role="3uigEE" to="wy2b:~JsonElement" resolve="JsonElement" />
          </node>
        </node>
        <node concept="37vLTG" id="Jm1BRJQBzS" role="3clF46">
          <property role="TrG5h" value="type" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="Jm1BRJQBzT" role="1tU5fm">
            <ref role="3uigEE" to="t6h5:~Type" resolve="Type" />
          </node>
        </node>
        <node concept="37vLTG" id="Jm1BRJQBzU" role="3clF46">
          <property role="TrG5h" value="context" />
          <property role="3TUv4t" value="true" />
          <node concept="3uibUv" id="Jm1BRJQBzV" role="1tU5fm">
            <ref role="3uigEE" to="wy2b:~JsonDeserializationContext" resolve="JsonDeserializationContext" />
          </node>
        </node>
        <node concept="3uibUv" id="Jm1BRJQBzW" role="Sfmx6">
          <ref role="3uigEE" to="wy2b:~JsonParseException" resolve="JsonParseException" />
        </node>
        <node concept="3clFbS" id="Jm1BRJQBzY" role="3clF47">
          <node concept="3cpWs8" id="Jm1BRJQClP" role="3cqZAp">
            <node concept="3cpWsn" id="Jm1BRJQClN" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="activityObj" />
              <node concept="3uibUv" id="Jm1BRJQCxO" role="1tU5fm">
                <ref role="3uigEE" to="wy2b:~JsonObject" resolve="JsonObject" />
              </node>
              <node concept="2OqwBi" id="Jm1BRJQFTq" role="33vP2m">
                <node concept="37vLTw" id="Jm1BRJQFt4" role="2Oq$k0">
                  <ref role="3cqZAo" node="Jm1BRJQBzQ" resolve="element" />
                </node>
                <node concept="liA8E" id="Jm1BRJQG5U" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonElement.getAsJsonObject():com.google.gson.JsonObject" resolve="getAsJsonObject" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Jm1BRJQGDI" role="3cqZAp">
            <property role="TyiWK" value="true" />
            <property role="TyiWL" value="false" />
            <node concept="3clFbS" id="Jm1BRJQGDK" role="3clFbx">
              <node concept="3SKdUt" id="4xwNC9qCM6Q" role="3cqZAp">
                <node concept="3SKdUq" id="4xwNC9qCM6R" role="3SKWNk">
                  <property role="3SKdUp" value="unknown action type, return a generic activity as a placeholder" />
                </node>
              </node>
              <node concept="3cpWs6" id="24VqSbHfEA3" role="3cqZAp">
                <node concept="2OqwBi" id="4xwNC9qBZXs" role="3cqZAk">
                  <node concept="37vLTw" id="4xwNC9qBZhD" role="2Oq$k0">
                    <ref role="3cqZAo" node="Jm1BRJQBzU" resolve="context" />
                  </node>
                  <node concept="liA8E" id="4xwNC9qC0vx" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonDeserializationContext.deserialize(com.google.gson.JsonElement,java.lang.reflect.Type):java.lang.Object" resolve="deserialize" />
                    <node concept="37vLTw" id="4xwNC9qC1aL" role="37wK5m">
                      <ref role="3cqZAo" node="Jm1BRJQBzQ" resolve="element" />
                    </node>
                    <node concept="3VsKOn" id="4xwNC9qC2ie" role="37wK5m">
                      <ref role="3VsUkX" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3fqX7Q" id="FcpLTGUMRM" role="3clFbw">
              <node concept="2OqwBi" id="FcpLTGUMRO" role="3fr31v">
                <node concept="37vLTw" id="FcpLTGUMRP" role="2Oq$k0">
                  <ref role="3cqZAo" node="Jm1BRJQClN" resolve="activityObj" />
                </node>
                <node concept="liA8E" id="FcpLTGUMRQ" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonObject.has(java.lang.String):boolean" resolve="has" />
                  <node concept="37vLTw" id="623PeBeVqhY" role="37wK5m">
                    <ref role="3cqZAo" node="FcpLTGRvyC" resolve="ACTIVITY_TYPE_MEMBER" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbH" id="FcpLTGQY$d" role="3cqZAp" />
          <node concept="3cpWs8" id="Jm1BRJQPVa" role="3cqZAp">
            <node concept="3cpWsn" id="Jm1BRJQPV8" role="3cpWs9">
              <property role="3TUv4t" value="true" />
              <property role="TrG5h" value="activityType" />
              <node concept="17QB3L" id="Jm1BRJQQ8f" role="1tU5fm" />
              <node concept="2OqwBi" id="Jm1BRJQS21" role="33vP2m">
                <node concept="2OqwBi" id="Jm1BRJQR71" role="2Oq$k0">
                  <node concept="37vLTw" id="Jm1BRJQQAe" role="2Oq$k0">
                    <ref role="3cqZAo" node="Jm1BRJQClN" resolve="activityObj" />
                  </node>
                  <node concept="liA8E" id="Jm1BRJQRsX" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonObject.get(java.lang.String):com.google.gson.JsonElement" resolve="get" />
                    <node concept="37vLTw" id="623PeBeVqi5" role="37wK5m">
                      <ref role="3cqZAo" node="FcpLTGRvyC" resolve="ACTIVITY_TYPE_MEMBER" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="Jm1BRJQSfa" role="2OqNvi">
                  <ref role="37wK5l" to="wy2b:~JsonElement.getAsString():java.lang.String" resolve="getAsString" />
                </node>
              </node>
            </node>
          </node>
          <node concept="3clFbJ" id="Jm1BRJQSYq" role="3cqZAp">
            <node concept="3clFbS" id="Jm1BRJQSYs" role="3clFbx">
              <node concept="3cpWs6" id="Jm1BRJQXbu" role="3cqZAp">
                <node concept="2OqwBi" id="FcpLTGQPst" role="3cqZAk">
                  <node concept="37vLTw" id="FcpLTGQPsu" role="2Oq$k0">
                    <ref role="3cqZAo" node="Jm1BRJQBzU" resolve="context" />
                  </node>
                  <node concept="liA8E" id="FcpLTGQPsv" role="2OqNvi">
                    <ref role="37wK5l" to="wy2b:~JsonDeserializationContext.deserialize(com.google.gson.JsonElement,java.lang.reflect.Type):java.lang.Object" resolve="deserialize" />
                    <node concept="37vLTw" id="FcpLTGQPsw" role="37wK5m">
                      <ref role="3cqZAo" node="Jm1BRJQBzQ" resolve="element" />
                    </node>
                    <node concept="3VsKOn" id="FcpLTGQPsx" role="37wK5m">
                      <ref role="3VsUkX" node="2hVa5m$1dBY" resolve="BitbucketCommentActivity" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="2OqwBi" id="Jm1BRJQVcx" role="3clFbw">
              <node concept="37vLTw" id="Jm1BRJQTrq" role="2Oq$k0">
                <ref role="3cqZAo" node="Jm1BRJQPV8" resolve="activityType" />
              </node>
              <node concept="liA8E" id="Jm1BRJQVEc" role="2OqNvi">
                <ref role="37wK5l" to="wyt6:~String.equals(java.lang.Object):boolean" resolve="equals" />
                <node concept="Xl_RD" id="Jm1BRJQWso" role="37wK5m">
                  <property role="Xl_RC" value="COMMENTED" />
                </node>
              </node>
            </node>
            <node concept="3eNFk2" id="FcpLTGP4V7" role="3eNLev">
              <node concept="3y3z36" id="24VqSbHgB1U" role="3eO9$A">
                <node concept="10Nm6u" id="24VqSbHgBDO" role="3uHU7w" />
                <node concept="unr1b" id="4xwNC9qB5KB" role="3uHU7B">
                  <ref role="un$jP" node="24VqSbHfHST" resolve="BitbucketActionType" />
                  <node concept="37vLTw" id="4xwNC9qB63s" role="unwt0">
                    <ref role="3cqZAo" node="Jm1BRJQPV8" resolve="activityType" />
                  </node>
                </node>
              </node>
              <node concept="3clFbS" id="FcpLTGP4V9" role="3eOfB_">
                <node concept="3cpWs6" id="FcpLTGP7RK" role="3cqZAp">
                  <node concept="2OqwBi" id="FcpLTH8UYc" role="3cqZAk">
                    <node concept="37vLTw" id="FcpLTH8Ufj" role="2Oq$k0">
                      <ref role="3cqZAo" node="Jm1BRJQBzU" resolve="context" />
                    </node>
                    <node concept="liA8E" id="FcpLTH8V$8" role="2OqNvi">
                      <ref role="37wK5l" to="wy2b:~JsonDeserializationContext.deserialize(com.google.gson.JsonElement,java.lang.reflect.Type):java.lang.Object" resolve="deserialize" />
                      <node concept="37vLTw" id="FcpLTH8Wjf" role="37wK5m">
                        <ref role="3cqZAo" node="Jm1BRJQBzQ" resolve="element" />
                      </node>
                      <node concept="3VsKOn" id="FcpLTH8XKp" role="37wK5m">
                        <ref role="3VsUkX" node="2hVa5m$3q$k" resolve="BitbucketSimpleUserActivity" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3SKdUt" id="4xwNC9qCLEv" role="3cqZAp">
            <node concept="3SKdUq" id="4xwNC9qCLEx" role="3SKWNk">
              <property role="3SKdUp" value="unknown action type, return a generic activity as a placeholder" />
            </node>
          </node>
          <node concept="3cpWs6" id="4xwNC9qBTon" role="3cqZAp">
            <node concept="2OqwBi" id="4xwNC9qBUJ1" role="3cqZAk">
              <node concept="37vLTw" id="4xwNC9qBU3v" role="2Oq$k0">
                <ref role="3cqZAo" node="Jm1BRJQBzU" resolve="context" />
              </node>
              <node concept="liA8E" id="4xwNC9qBVgO" role="2OqNvi">
                <ref role="37wK5l" to="wy2b:~JsonDeserializationContext.deserialize(com.google.gson.JsonElement,java.lang.reflect.Type):java.lang.Object" resolve="deserialize" />
                <node concept="37vLTw" id="4xwNC9qBXHF" role="37wK5m">
                  <ref role="3cqZAo" node="Jm1BRJQBzQ" resolve="element" />
                </node>
                <node concept="3VsKOn" id="4xwNC9qBWB6" role="37wK5m">
                  <ref role="3VsUkX" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="2AHcQZ" id="Jm1BRJQBzZ" role="2AJF6D">
          <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
        </node>
      </node>
      <node concept="3Tm6S6" id="Jm1BRJQyvr" role="1B3o_S" />
      <node concept="3uibUv" id="Jm1BRJQBcM" role="EKbjA">
        <ref role="3uigEE" to="wy2b:~JsonDeserializer" resolve="JsonDeserializer" />
        <node concept="3uibUv" id="Jm1BRJQBsF" role="11_B2D">
          <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
        </node>
      </node>
    </node>
    <node concept="3Tm1VV" id="623PeBeVwML" role="1B3o_S" />
  </node>
  <node concept="312cEu" id="6AMQKPcB9R$">
    <property role="3GE5qa" value="configuration.mock" />
    <property role="TrG5h" value="MockBitbucketServerConfiguration" />
    <node concept="2tJIrI" id="6AMQKPcBatp" role="jymVt" />
    <node concept="312cEg" id="6AMQKPcBcEb" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="pullRequestId" />
      <property role="3TUv4t" value="false" />
      <node concept="10Oyi0" id="6AMQKPcBcD1" role="1tU5fm" />
      <node concept="3Tmbuc" id="623PeBeXF_e" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6AMQKPcBczk" role="jymVt" />
    <node concept="3clFbW" id="6AMQKPcBatu" role="jymVt">
      <node concept="37vLTG" id="623PeBf5qUR" role="3clF46">
        <property role="TrG5h" value="token" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf5qUS" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf5qUT" role="3clF46">
        <property role="TrG5h" value="hostname" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf5qUU" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf5qUV" role="3clF46">
        <property role="TrG5h" value="apiVersion" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf5qUW" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf5qUX" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf5qUY" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf5qUZ" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf5qV0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf5r7_" role="3clF46">
        <property role="TrG5h" value="pullRequestId" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="623PeBf5rnj" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="6AMQKPcBatv" role="3clF45" />
      <node concept="3clFbS" id="6AMQKPcBatw" role="3clF47">
        <node concept="XkiVB" id="623PeBeXJXb" role="3cqZAp">
          <ref role="37wK5l" node="2n3pEWhoGmj" resolve="BitbucketServerConfiguration" />
          <node concept="37vLTw" id="623PeBf5ryc" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf5qUR" resolve="token" />
          </node>
          <node concept="37vLTw" id="623PeBf5rMq" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf5qUT" resolve="hostname" />
          </node>
          <node concept="37vLTw" id="623PeBf5s2M" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf5qUV" resolve="apiVersion" />
          </node>
          <node concept="37vLTw" id="623PeBf5sji" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf5qUX" resolve="project" />
          </node>
          <node concept="37vLTw" id="623PeBf5szU" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf5qUZ" resolve="repository" />
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf5sIT" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf5tGQ" role="3clFbG">
            <node concept="37vLTw" id="623PeBf5uj3" role="37vLTx">
              <ref role="3cqZAo" node="623PeBf5r7_" resolve="pullRequestId" />
            </node>
            <node concept="2OqwBi" id="623PeBf5sN5" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf5sIR" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf5t41" role="2OqNvi">
                <ref role="2Oxat5" node="6AMQKPcBcEb" resolve="pullRequestId" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="623PeBf2lYE" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="623PeBf7NLN" role="jymVt" />
    <node concept="3clFbW" id="623PeBf7N4a" role="jymVt">
      <node concept="37vLTG" id="623PeBf7N4b" role="3clF46">
        <property role="TrG5h" value="token" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf7N4c" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf7N4d" role="3clF46">
        <property role="TrG5h" value="hostname" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf7N4e" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf7N4f" role="3clF46">
        <property role="TrG5h" value="apiVersion" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf7N4g" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf7N4h" role="3clF46">
        <property role="TrG5h" value="project" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf7N4i" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf7N4j" role="3clF46">
        <property role="TrG5h" value="repository" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf7N4k" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="623PeBf7N4l" role="3clF46">
        <property role="TrG5h" value="pullRequestId" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="623PeBf7OxV" role="1tU5fm" />
      </node>
      <node concept="3cqZAl" id="623PeBf7N4n" role="3clF45" />
      <node concept="3clFbS" id="623PeBf7N4o" role="3clF47">
        <node concept="XkiVB" id="623PeBf7N4p" role="3cqZAp">
          <ref role="37wK5l" node="2n3pEWhoGmj" resolve="BitbucketServerConfiguration" />
          <node concept="37vLTw" id="623PeBf7N4q" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf7N4b" resolve="token" />
          </node>
          <node concept="37vLTw" id="623PeBf7N4r" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf7N4d" resolve="hostname" />
          </node>
          <node concept="37vLTw" id="623PeBf7N4s" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf7N4f" resolve="apiVersion" />
          </node>
          <node concept="37vLTw" id="623PeBf7N4t" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf7N4h" resolve="project" />
          </node>
          <node concept="37vLTw" id="623PeBf7N4u" role="37wK5m">
            <ref role="3cqZAo" node="623PeBf7N4j" resolve="repository" />
          </node>
        </node>
        <node concept="SfApY" id="623PeBf7OPa" role="3cqZAp">
          <node concept="3clFbS" id="623PeBf7OPb" role="SfCbr">
            <node concept="3clFbF" id="623PeBf7OPc" role="3cqZAp">
              <node concept="37vLTI" id="623PeBf7OPd" role="3clFbG">
                <node concept="2OqwBi" id="623PeBf7OPe" role="37vLTJ">
                  <node concept="Xjq3P" id="623PeBf7OPf" role="2Oq$k0" />
                  <node concept="2OwXpG" id="623PeBf7OPg" role="2OqNvi">
                    <ref role="2Oxat5" node="6AMQKPcBcEb" resolve="pullRequestId" />
                  </node>
                </node>
                <node concept="2YIFZM" id="623PeBf7OPh" role="37vLTx">
                  <ref role="37wK5l" to="wyt6:~Integer.parseInt(java.lang.String):int" resolve="parseInt" />
                  <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                  <node concept="37vLTw" id="623PeBf7PRQ" role="37wK5m">
                    <ref role="3cqZAo" node="623PeBf7N4l" resolve="pullRequestId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="TDmWw" id="623PeBf7OPj" role="TEbGg">
            <node concept="3cpWsn" id="623PeBf7OPk" role="TDEfY">
              <property role="TrG5h" value="e" />
              <property role="3TUv4t" value="true" />
              <node concept="3uibUv" id="623PeBf7OPl" role="1tU5fm">
                <ref role="3uigEE" to="wyt6:~NumberFormatException" resolve="NumberFormatException" />
              </node>
            </node>
            <node concept="3clFbS" id="623PeBf7OPm" role="TDEfX">
              <node concept="3SKdUt" id="623PeBf7OPn" role="3cqZAp">
                <node concept="3SKdUq" id="623PeBf7OPo" role="3SKWNk">
                  <property role="3SKdUp" value="ignore" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="623PeBf7N4_" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="6AMQKPcBi5G" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhu6RD" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPullRequestId" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="2n3pEWhu6RE" role="3clF47">
        <node concept="3cpWs6" id="2n3pEWhuilp" role="3cqZAp">
          <node concept="2OqwBi" id="2n3pEWhuovi" role="3cqZAk">
            <node concept="Xjq3P" id="2n3pEWhun$G" role="2Oq$k0" />
            <node concept="2OwXpG" id="623PeBf2dYw" role="2OqNvi">
              <ref role="2Oxat5" node="6AMQKPcBcEb" resolve="pullRequestId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="2n3pEWhu6RJ" role="1B3o_S" />
      <node concept="10Oyi0" id="623PeBf6_dA" role="3clF45" />
      <node concept="2AHcQZ" id="2n3pEWhu6RL" role="2AJF6D">
        <ref role="2AI5Lk" to="mhfm:~Nullable" resolve="Nullable" />
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBf21QA" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhj7xi" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="hashCode" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2n3pEWhj7xj" role="1B3o_S" />
      <node concept="10Oyi0" id="2n3pEWhj7xk" role="3clF45" />
      <node concept="3clFbS" id="2n3pEWhj7xl" role="3clF47">
        <node concept="3cpWs8" id="623PeBeWtjP" role="3cqZAp">
          <node concept="3cpWsn" id="623PeBeWtjQ" role="3cpWs9">
            <property role="TrG5h" value="hash" />
            <node concept="10Oyi0" id="623PeBeWtjR" role="1tU5fm" />
            <node concept="3cmrfG" id="623PeBeWtjS" role="33vP2m">
              <property role="3cmrfH" value="1" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBeWtjT" role="3cqZAp">
          <node concept="37vLTI" id="623PeBeWtjU" role="3clFbG">
            <node concept="3cpWs3" id="623PeBeWtjV" role="37vLTx">
              <node concept="17qRlL" id="623PeBeWtjW" role="3uHU7B">
                <node concept="37vLTw" id="623PeBeWtjX" role="3uHU7B">
                  <ref role="3cqZAo" node="623PeBeWtjQ" resolve="hash" />
                </node>
                <node concept="3cmrfG" id="623PeBeWtjY" role="3uHU7w">
                  <property role="3cmrfH" value="17" />
                </node>
              </node>
              <node concept="3nyPlj" id="623PeBeWuFD" role="3uHU7w">
                <ref role="37wK5l" node="2n3pEWhhX$c" resolve="hashCode" />
              </node>
            </node>
            <node concept="37vLTw" id="623PeBeWtk4" role="37vLTJ">
              <ref role="3cqZAo" node="623PeBeWtjQ" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBeWtkd" role="3cqZAp">
          <node concept="37vLTI" id="623PeBeWtke" role="3clFbG">
            <node concept="3cpWs3" id="623PeBeWtkf" role="37vLTx">
              <node concept="17qRlL" id="623PeBeWtkg" role="3uHU7B">
                <node concept="37vLTw" id="623PeBeWtkh" role="3uHU7B">
                  <ref role="3cqZAo" node="623PeBeWtjQ" resolve="hash" />
                </node>
                <node concept="3cmrfG" id="623PeBeWtki" role="3uHU7w">
                  <property role="3cmrfH" value="31" />
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBeWtkk" role="3uHU7w">
                <node concept="Xjq3P" id="623PeBeWtkl" role="2Oq$k0" />
                <node concept="2OwXpG" id="623PeBeWxvX" role="2OqNvi">
                  <ref role="2Oxat5" node="6AMQKPcBcEb" resolve="pullRequestId" />
                </node>
              </node>
            </node>
            <node concept="37vLTw" id="623PeBeWtko" role="37vLTJ">
              <ref role="3cqZAo" node="623PeBeWtjQ" resolve="hash" />
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="623PeBeWtlJ" role="3cqZAp">
          <node concept="37vLTw" id="623PeBeWtlK" role="3cqZAk">
            <ref role="3cqZAo" node="623PeBeWtjQ" resolve="hash" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="2n3pEWhj7z7" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhj7$s" role="jymVt" />
    <node concept="3clFb_" id="2n3pEWhj7$t" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="equals" />
      <property role="DiZV1" value="false" />
      <property role="od$2w" value="false" />
      <node concept="3Tm1VV" id="2n3pEWhj7$u" role="1B3o_S" />
      <node concept="10P_77" id="2n3pEWhj7$v" role="3clF45" />
      <node concept="37vLTG" id="2n3pEWhj7$w" role="3clF46">
        <property role="TrG5h" value="obj" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="2n3pEWhj7$x" role="1tU5fm">
          <ref role="3uigEE" to="wyt6:~Object" resolve="Object" />
        </node>
      </node>
      <node concept="3clFbS" id="2n3pEWhj7$y" role="3clF47">
        <node concept="3clFbJ" id="2n3pEWhj7$z" role="3cqZAp">
          <node concept="3clFbS" id="2n3pEWhj7$$" role="3clFbx">
            <node concept="3cpWs6" id="2n3pEWhj7$_" role="3cqZAp">
              <node concept="3clFbT" id="2n3pEWhj7$A" role="3cqZAk">
                <property role="3clFbU" value="false" />
              </node>
            </node>
          </node>
          <node concept="22lmx$" id="2n3pEWhj7$B" role="3clFbw">
            <node concept="3clFbC" id="2n3pEWhj7$J" role="3uHU7B">
              <node concept="37vLTw" id="2n3pEWhj7$K" role="3uHU7B">
                <ref role="3cqZAo" node="2n3pEWhj7$w" resolve="obj" />
              </node>
              <node concept="10Nm6u" id="2n3pEWhj7$L" role="3uHU7w" />
            </node>
            <node concept="3fqX7Q" id="2n3pEWhjjny" role="3uHU7w">
              <node concept="1eOMI4" id="2n3pEWhjjnz" role="3fr31v">
                <node concept="2ZW3vV" id="2n3pEWhjjn$" role="1eOMHV">
                  <node concept="3uibUv" id="2n3pEWhjk1q" role="2ZW6by">
                    <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
                  </node>
                  <node concept="37vLTw" id="2n3pEWhjjnA" role="2ZW6bz">
                    <ref role="3cqZAo" node="2n3pEWhj7$w" resolve="obj" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3eNFk2" id="2n3pEWhj7$M" role="3eNLev">
            <node concept="3clFbS" id="2n3pEWhj7$N" role="3eOfB_">
              <node concept="3cpWs6" id="2n3pEWhj7$O" role="3cqZAp">
                <node concept="3clFbT" id="2n3pEWhj7$P" role="3cqZAk">
                  <property role="3clFbU" value="true" />
                </node>
              </node>
            </node>
            <node concept="3clFbC" id="2n3pEWhj7$Q" role="3eO9$A">
              <node concept="Xjq3P" id="2n3pEWhj7$R" role="3uHU7w" />
              <node concept="37vLTw" id="2n3pEWhj7$S" role="3uHU7B">
                <ref role="3cqZAo" node="2n3pEWhj7$w" resolve="obj" />
              </node>
            </node>
          </node>
          <node concept="9aQIb" id="2n3pEWhj7$T" role="9aQIa">
            <node concept="3clFbS" id="2n3pEWhj7$U" role="9aQI4">
              <node concept="3cpWs8" id="2n3pEWhj7$V" role="3cqZAp">
                <node concept="3cpWsn" id="2n3pEWhj7$W" role="3cpWs9">
                  <property role="TrG5h" value="that" />
                  <property role="3TUv4t" value="true" />
                  <node concept="3uibUv" id="2n3pEWhjkqu" role="1tU5fm">
                    <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
                  </node>
                  <node concept="10QFUN" id="2n3pEWhj7$Y" role="33vP2m">
                    <node concept="3uibUv" id="2n3pEWhjkRH" role="10QFUM">
                      <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
                    </node>
                    <node concept="37vLTw" id="2n3pEWhj7_0" role="10QFUP">
                      <ref role="3cqZAo" node="2n3pEWhj7$w" resolve="obj" />
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3clFbJ" id="2n3pEWhj7_1" role="3cqZAp">
                <node concept="3clFbS" id="2n3pEWhj7_2" role="3clFbx">
                  <node concept="3cpWs6" id="2n3pEWhj7_3" role="3cqZAp">
                    <node concept="3clFbT" id="2n3pEWhj7_4" role="3cqZAk">
                      <property role="3clFbU" value="false" />
                    </node>
                  </node>
                </node>
                <node concept="3y3z36" id="2n3pEWhjphS" role="3clFbw">
                  <node concept="2OqwBi" id="2n3pEWhjqI1" role="3uHU7w">
                    <node concept="37vLTw" id="2n3pEWhjqm1" role="2Oq$k0">
                      <ref role="3cqZAo" node="2n3pEWhj7$W" resolve="that" />
                    </node>
                    <node concept="2OwXpG" id="2n3pEWhjr58" role="2OqNvi">
                      <ref role="2Oxat5" node="6AMQKPcBcEb" resolve="pullRequestId" />
                    </node>
                  </node>
                  <node concept="2OqwBi" id="2n3pEWhjmU$" role="3uHU7B">
                    <node concept="Xjq3P" id="2n3pEWhjmk1" role="2Oq$k0" />
                    <node concept="2OwXpG" id="2n3pEWhjnWk" role="2OqNvi">
                      <ref role="2Oxat5" node="6AMQKPcBcEb" resolve="pullRequestId" />
                    </node>
                  </node>
                </node>
                <node concept="9aQIb" id="2n3pEWhjAJS" role="9aQIa">
                  <node concept="3clFbS" id="2n3pEWhjAJT" role="9aQI4">
                    <node concept="3cpWs6" id="2n3pEWhjByw" role="3cqZAp">
                      <node concept="3nyPlj" id="2n3pEWhjBRO" role="3cqZAk">
                        <ref role="37wK5l" node="2n3pEWhhX$k" resolve="equals" />
                        <node concept="37vLTw" id="2n3pEWhjDNM" role="37wK5m">
                          <ref role="3cqZAo" node="2n3pEWhj7$W" resolve="that" />
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
      <node concept="2AHcQZ" id="2n3pEWhj7Ad" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="2n3pEWhj7qJ" role="jymVt" />
    <node concept="3Tm1VV" id="6AMQKPcB9R_" role="1B3o_S" />
    <node concept="3uibUv" id="623PeBeWfAM" role="1zkMxy">
      <ref role="3uigEE" node="2n3pEWho7Hh" resolve="BitbucketServerConfiguration" />
    </node>
  </node>
  <node concept="312cEu" id="78s6gAknHcB">
    <property role="3GE5qa" value="configuration.mock" />
    <property role="TrG5h" value="MockBitbucketServerConnection" />
    <node concept="2tJIrI" id="623PeBf6suj" role="jymVt" />
    <node concept="3clFbW" id="78s6gAkoV_W" role="jymVt">
      <node concept="3cqZAl" id="78s6gAkoV_X" role="3clF45" />
      <node concept="3clFbS" id="78s6gAkoV_Z" role="3clF47">
        <node concept="XkiVB" id="78s6gAkoW19" role="3cqZAp">
          <ref role="37wK5l" node="78s6gAknN2h" resolve="BitbucketServerConnection" />
          <node concept="37vLTw" id="3e72Pa5J$sF" role="37wK5m">
            <ref role="3cqZAo" node="3e72Pa5JzKt" resolve="configuration" />
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="78s6gAkoVo8" role="1B3o_S" />
      <node concept="37vLTG" id="3e72Pa5JzKt" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="6AMQKPcBPUE" role="1tU5fm">
          <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3LQpZV9_V5Z" role="jymVt" />
    <node concept="3clFb_" id="3LQpZV9_Wf9" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getPullRequestId" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3clFbS" id="3LQpZV9_Wfc" role="3clF47">
        <node concept="3cpWs6" id="3LQpZV9A0tK" role="3cqZAp">
          <node concept="2OqwBi" id="6AMQKPcBUpK" role="3cqZAk">
            <node concept="0kSF2" id="6AMQKPcBSgg" role="2Oq$k0">
              <node concept="3uibUv" id="6AMQKPcBTee" role="0kSFW">
                <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
              </node>
              <node concept="1rXfSq" id="3LQpZV9_Ysn" role="0kSFX">
                <ref role="37wK5l" node="3LQpZV9_HL7" resolve="getConfig" />
              </node>
            </node>
            <node concept="liA8E" id="6AMQKPcBVtS" role="2OqNvi">
              <ref role="37wK5l" node="2n3pEWhu6RD" resolve="getPullRequestId" />
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm6S6" id="3LQpZV9_Vf_" role="1B3o_S" />
      <node concept="10Oyi0" id="3LQpZV9_Xn4" role="3clF45" />
    </node>
    <node concept="2tJIrI" id="78s6gAkq4BU" role="jymVt" />
    <node concept="3clFb_" id="78s6gAkq4Vv" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requestReviewForBranchName" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="78s6gAkq4Xe" role="1B3o_S" />
      <node concept="10Oyi0" id="78s6gAkq4Xf" role="3clF45" />
      <node concept="37vLTG" id="78s6gAkq4Xg" role="3clF46">
        <property role="TrG5h" value="branchName" />
        <property role="3TUv4t" value="true" />
        <node concept="17QB3L" id="78s6gAkq4Xh" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="78s6gAkq4Xi" role="3clF46">
        <property role="TrG5h" value="onSuccess" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="78s6gAkq4Xj" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwHpx" role="1ajw0F" />
          <node concept="3uibUv" id="78s6gAkq4Xk" role="1ajw0F">
            <ref role="3uigEE" to="m3q8:4Ew7qBDj1oK" resolve="Review" />
          </node>
          <node concept="3cqZAl" id="78s6gAkq4Xl" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="78s6gAkq4Xm" role="3clF46">
        <property role="TrG5h" value="onFailure" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="78s6gAkq4Xn" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwIoB" role="1ajw0F" />
          <node concept="17QB3L" id="78s6gAkq4Xo" role="1ajw0F" />
          <node concept="3cqZAl" id="78s6gAkq4Xp" role="1ajl9A" />
        </node>
      </node>
      <node concept="2AHcQZ" id="78s6gAkq4Xq" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="78s6gAkq4Xr" role="3clF47">
        <node concept="3clFbF" id="78s6gAkq612" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkq60Z" role="3clFbG">
            <node concept="10M0yZ" id="6j8xKyAuAt_" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="78s6gAkq611" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="3LQpZV9Akwf" role="37wK5m">
                <node concept="1rXfSq" id="3LQpZV9AlJ2" role="3uHU7w">
                  <ref role="37wK5l" node="3LQpZV9_Wf9" resolve="getPullRequestId" />
                </node>
                <node concept="3cpWs3" id="3LQpZV9Aea9" role="3uHU7B">
                  <node concept="3cpWs3" id="3LQpZV9Ac3H" role="3uHU7B">
                    <node concept="Xl_RD" id="3LQpZV9A5eu" role="3uHU7B">
                      <property role="Xl_RC" value="Replacing request for review with branch name " />
                    </node>
                    <node concept="37vLTw" id="3LQpZV9AcXR" role="3uHU7w">
                      <ref role="3cqZAo" node="78s6gAkq4Xg" resolve="branchName" />
                    </node>
                  </node>
                  <node concept="Xl_RD" id="3LQpZV9Afhc" role="3uHU7w">
                    <property role="Xl_RC" value=" with request for review with ID " />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="3LQpZV9At$0" role="3cqZAp">
          <node concept="1rXfSq" id="3LQpZV9AuF4" role="3cqZAk">
            <ref role="37wK5l" node="78s6gAkq4Xx" resolve="requestReviewForId" />
            <node concept="1rXfSq" id="3LQpZV9AvLY" role="37wK5m">
              <ref role="37wK5l" node="3LQpZV9_Wf9" resolve="getPullRequestId" />
            </node>
            <node concept="37vLTw" id="3LQpZV9Azvv" role="37wK5m">
              <ref role="3cqZAo" node="78s6gAkq4Xi" resolve="onSuccess" />
            </node>
            <node concept="37vLTw" id="3LQpZV9A_xs" role="37wK5m">
              <ref role="3cqZAo" node="78s6gAkq4Xm" resolve="onFailure" />
            </node>
          </node>
        </node>
        <node concept="1X3_iC" id="3LQpZV9AssC" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3cpWs6" id="__fp3cp6$8" role="8Wnug">
            <node concept="3nyPlj" id="__fp3cp6$9" role="3cqZAk">
              <ref role="37wK5l" node="4Ew7qBDi$K_" resolve="requestReviewForBranchName" />
              <node concept="Xl_RD" id="__fp3cp6$a" role="37wK5m">
                <property role="Xl_RC" value="feature/YP-1787" />
              </node>
              <node concept="37vLTw" id="__fp3cp6$b" role="37wK5m">
                <ref role="3cqZAo" node="78s6gAkq4Xi" resolve="onSuccess" />
              </node>
              <node concept="37vLTw" id="__fp3cp6$c" role="37wK5m">
                <ref role="3cqZAo" node="78s6gAkq4Xm" resolve="onFailure" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3LQpZV9A2h8" role="jymVt" />
    <node concept="3clFb_" id="78s6gAkq4Xx" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requestReviewForId" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="78s6gAkq4Z7" role="1B3o_S" />
      <node concept="10Oyi0" id="78s6gAkq4Z8" role="3clF45" />
      <node concept="37vLTG" id="78s6gAkq4Z9" role="3clF46">
        <property role="TrG5h" value="reviewId" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="78s6gAkq4Za" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="78s6gAkq4Zb" role="3clF46">
        <property role="TrG5h" value="onSuccess" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="78s6gAkq4Zc" role="1tU5fm">
          <node concept="3cqZAl" id="78s6gAkq4Zd" role="1ajl9A" />
          <node concept="10Oyi0" id="__fp3cwJnN" role="1ajw0F" />
          <node concept="3uibUv" id="78s6gAkq4Ze" role="1ajw0F">
            <ref role="3uigEE" to="m3q8:4Ew7qBDj1oK" resolve="Review" />
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="78s6gAkq4Zf" role="3clF46">
        <property role="TrG5h" value="onFailure" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="78s6gAkq4Zg" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwKn5" role="1ajw0F" />
          <node concept="17QB3L" id="78s6gAkq4Zh" role="1ajw0F" />
          <node concept="3cqZAl" id="78s6gAkq4Zi" role="1ajl9A" />
        </node>
      </node>
      <node concept="2AHcQZ" id="78s6gAkq4Zj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="78s6gAkq4Zk" role="3clF47">
        <node concept="3cpWs8" id="3LQpZV9Aovi" role="3cqZAp">
          <node concept="3cpWsn" id="3LQpZV9Aovj" role="3cpWs9">
            <property role="TrG5h" value="testPullRequestId" />
            <property role="3TUv4t" value="true" />
            <node concept="10Oyi0" id="3LQpZV9Aovh" role="1tU5fm" />
            <node concept="1rXfSq" id="3LQpZV9Aovk" role="33vP2m">
              <ref role="37wK5l" node="3LQpZV9_Wf9" resolve="getPullRequestId" />
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="78s6gAkq7Bm" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkq7Bn" role="3clFbG">
            <node concept="10M0yZ" id="6j8xKyAuB2c" role="2Oq$k0">
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
            </node>
            <node concept="liA8E" id="78s6gAkq7Bp" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="78s6gAkq7Bq" role="37wK5m">
                <node concept="Xl_RD" id="78s6gAkq7Bs" role="3uHU7B">
                  <property role="Xl_RC" value="Requesting review by id " />
                </node>
                <node concept="37vLTw" id="3LQpZV9Aovl" role="3uHU7w">
                  <ref role="3cqZAo" node="3LQpZV9Aovj" resolve="testPullRequestId" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="__fp3cp7yW" role="3cqZAp">
          <node concept="3nyPlj" id="__fp3cp7yX" role="3cqZAk">
            <ref role="37wK5l" node="3yDmncozCk0" resolve="requestReviewForId" />
            <node concept="37vLTw" id="3LQpZV9_TSK" role="37wK5m">
              <ref role="3cqZAo" node="3LQpZV9Aovj" resolve="testPullRequestId" />
            </node>
            <node concept="37vLTw" id="__fp3cp7yZ" role="37wK5m">
              <ref role="3cqZAo" node="78s6gAkq4Zb" resolve="onSuccess" />
            </node>
            <node concept="37vLTw" id="__fp3cp7z0" role="37wK5m">
              <ref role="3cqZAo" node="78s6gAkq4Zf" resolve="onFailure" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="3LQpZV9A3bg" role="jymVt" />
    <node concept="3clFb_" id="78s6gAkq4Zq" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="requestActivitiesForReview" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="78s6gAkq4Zr" role="1B3o_S" />
      <node concept="10Oyi0" id="78s6gAkq4Zs" role="3clF45" />
      <node concept="37vLTG" id="78s6gAkq4Zt" role="3clF46">
        <property role="TrG5h" value="reviewId" />
        <property role="3TUv4t" value="true" />
        <node concept="10Oyi0" id="78s6gAkq4Zu" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="78s6gAkq4Zv" role="3clF46">
        <property role="TrG5h" value="onSuccess" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="78s6gAkq4Zw" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwLmu" role="1ajw0F" />
          <node concept="3uibUv" id="78s6gAkq4Zx" role="1ajw0F">
            <ref role="3uigEE" to="33ny:~List" resolve="List" />
            <node concept="3uibUv" id="FcpLTGYLOx" role="11_B2D">
              <ref role="3uigEE" node="4Ew7qBDtNjy" resolve="BitbucketActivity" />
            </node>
          </node>
          <node concept="3cqZAl" id="78s6gAkq4Zz" role="1ajl9A" />
        </node>
      </node>
      <node concept="37vLTG" id="78s6gAkq4Z$" role="3clF46">
        <property role="TrG5h" value="onFailure" />
        <property role="3TUv4t" value="true" />
        <node concept="1ajhzC" id="78s6gAkq4Z_" role="1tU5fm">
          <node concept="10Oyi0" id="__fp3cwMm2" role="1ajw0F" />
          <node concept="17QB3L" id="78s6gAkq4ZA" role="1ajw0F" />
          <node concept="3cqZAl" id="78s6gAkq4ZB" role="1ajl9A" />
        </node>
      </node>
      <node concept="2AHcQZ" id="78s6gAkq4ZI" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
      <node concept="3clFbS" id="78s6gAkq4ZJ" role="3clF47">
        <node concept="3clFbF" id="78s6gAkq992" role="3cqZAp">
          <node concept="2OqwBi" id="78s6gAkq98Z" role="3clFbG">
            <node concept="10M0yZ" id="6j8xKyAuBC9" role="2Oq$k0">
              <ref role="1PxDUh" to="wyt6:~System" resolve="System" />
              <ref role="3cqZAo" to="wyt6:~System.out" resolve="out" />
            </node>
            <node concept="liA8E" id="78s6gAkq991" role="2OqNvi">
              <ref role="37wK5l" to="guwi:~PrintStream.println(java.lang.String):void" resolve="println" />
              <node concept="3cpWs3" id="78s6gAkqa06" role="37wK5m">
                <node concept="1rXfSq" id="3LQpZV9A1u5" role="3uHU7w">
                  <ref role="37wK5l" node="3LQpZV9_Wf9" resolve="getPullRequestId" />
                </node>
                <node concept="Xl_RD" id="78s6gAkq9iB" role="3uHU7B">
                  <property role="Xl_RC" value="Requesting review activities " />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="__fp3cp8xK" role="3cqZAp">
          <node concept="3nyPlj" id="__fp3cp8xL" role="3cqZAk">
            <ref role="37wK5l" node="3yDmncoyyc$" resolve="requestActivitiesForReview" />
            <node concept="37vLTw" id="__fp3cp8xM" role="37wK5m">
              <ref role="3cqZAo" node="78s6gAkq4Zt" resolve="reviewId" />
            </node>
            <node concept="37vLTw" id="__fp3cp8xN" role="37wK5m">
              <ref role="3cqZAo" node="78s6gAkq4Zv" resolve="onSuccess" />
            </node>
            <node concept="37vLTw" id="__fp3cp8xO" role="37wK5m">
              <ref role="3cqZAo" node="78s6gAkq4Z$" resolve="onFailure" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBeWHNw" role="jymVt" />
    <node concept="3Tm1VV" id="78s6gAknHcC" role="1B3o_S" />
    <node concept="3uibUv" id="623PeBeWB07" role="1zkMxy">
      <ref role="3uigEE" node="3c3vDUlbIty" resolve="BitbucketServerConnection" />
    </node>
  </node>
  <node concept="1lYeZD" id="623PeBeWIGI">
    <property role="3GE5qa" value="configuration.mock" />
    <property role="TrG5h" value="MockBitbucketServerIntegrationEP" />
    <ref role="1lYe$Y" to="ii13:2n3pEWhwCOi" resolve="CodeReviewerIntegrationEP" />
    <node concept="3Tm1VV" id="623PeBeWIGJ" role="1B3o_S" />
    <node concept="2tJIrI" id="623PeBeWIGK" role="jymVt" />
    <node concept="3tTeZs" id="623PeBeWIGL" role="jymVt">
      <property role="3tTeZt" value="activate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0CPy" resolve="activate" />
    </node>
    <node concept="3tTeZs" id="623PeBeWIGM" role="jymVt">
      <property role="3tTeZt" value="deactivate" />
      <ref role="3tTeZr" to="90d:3zLwYDe0BDO" resolve="deactivate" />
    </node>
    <node concept="2tJIrI" id="623PeBeWIGN" role="jymVt" />
    <node concept="q3mfD" id="623PeBeWIGO" role="jymVt">
      <property role="TrG5h" value="get" />
      <ref role="2VtyIY" to="90d:3zLwYDe0svr" resolve="get" />
      <node concept="3Tm1VV" id="623PeBeWIGP" role="1B3o_S" />
      <node concept="3clFbS" id="623PeBeWIGQ" role="3clF47">
        <node concept="3cpWs6" id="623PeBeWIGR" role="3cqZAp">
          <node concept="2ShNRf" id="623PeBeWIGS" role="3cqZAk">
            <node concept="HV5vD" id="623PeBeWIGT" role="2ShVmc">
              <ref role="HV5vE" node="623PeBeWN8b" resolve="MockBitbucketServerIntegration" />
            </node>
          </node>
        </node>
      </node>
      <node concept="q3mfm" id="623PeBeWIGU" role="3clF45">
        <ref role="1QQUv3" node="623PeBeWIGO" resolve="get" />
        <ref role="q3mfh" to="90d:3zLwYDe0sv$" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="623PeBeWN8b">
    <property role="TrG5h" value="MockBitbucketServerIntegration" />
    <property role="3GE5qa" value="configuration.mock" />
    <node concept="2tJIrI" id="623PeBf2AAi" role="jymVt" />
    <node concept="3clFb_" id="623PeBf2Akr" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getConnection" />
      <node concept="3Tm1VV" id="623PeBf2Akt" role="1B3o_S" />
      <node concept="3uibUv" id="623PeBf2Aku" role="3clF45">
        <ref role="3uigEE" to="m3q8:4Ew7qBDr4JM" resolve="CodeReviewerConnection" />
      </node>
      <node concept="3clFbS" id="623PeBf2Akv" role="3clF47">
        <node concept="3cpWs6" id="623PeBf2AIB" role="3cqZAp">
          <node concept="10Nm6u" id="623PeBf2AIC" role="3cqZAk" />
        </node>
      </node>
      <node concept="2AHcQZ" id="623PeBf2Akw" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBf2A10" role="jymVt" />
    <node concept="3clFb_" id="623PeBeWN8d" role="jymVt">
      <property role="TrG5h" value="createConfigurationView" />
      <property role="1EzhhJ" value="false" />
      <node concept="3uibUv" id="623PeBf2_Um" role="3clF45">
        <ref role="3uigEE" node="623PeBeWPEO" resolve="MockBitbucketServerConfigurationView" />
      </node>
      <node concept="3Tm1VV" id="623PeBeWN8g" role="1B3o_S" />
      <node concept="3clFbS" id="623PeBeWN8h" role="3clF47">
        <node concept="3cpWs6" id="623PeBeWN8i" role="3cqZAp">
          <node concept="2ShNRf" id="623PeBeWN8j" role="3cqZAk">
            <node concept="1pGfFk" id="623PeBeWN8k" role="2ShVmc">
              <ref role="37wK5l" node="623PeBeWPF9" resolve="MockBitbucketServerConfigurationView" />
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="623PeBeWN8l" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBeWN8m" role="jymVt" />
    <node concept="3clFb_" id="623PeBeWN8n" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="2aFKle" value="false" />
      <property role="TrG5h" value="getPresentation" />
      <node concept="3Tm1VV" id="623PeBeWN8o" role="1B3o_S" />
      <node concept="17QB3L" id="623PeBeWN8p" role="3clF45" />
      <node concept="3clFbS" id="623PeBeWN8q" role="3clF47">
        <node concept="3cpWs6" id="623PeBeWN8r" role="3cqZAp">
          <node concept="Xl_RD" id="623PeBeWN8s" role="3cqZAk">
            <property role="Xl_RC" value="Bitbucket Server (custom pull request ID)" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="623PeBeWN8t" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBeWN8u" role="jymVt" />
    <node concept="3Tm1VV" id="623PeBeWN8v" role="1B3o_S" />
    <node concept="3uibUv" id="623PeBeWN8w" role="EKbjA">
      <ref role="3uigEE" to="ii13:2n3pEWhn$xu" resolve="CodeReviewerIntegration" />
      <node concept="3uibUv" id="623PeBeWNou" role="11_B2D">
        <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
      </node>
    </node>
  </node>
  <node concept="312cEu" id="623PeBeWPEO">
    <property role="3GE5qa" value="configuration.mock" />
    <property role="TrG5h" value="MockBitbucketServerConfigurationView" />
    <node concept="2tJIrI" id="623PeBf1vMp" role="jymVt" />
    <node concept="312cEg" id="623PeBf9_Wd" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="tokenField" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBf9_We" role="1B3o_S" />
      <node concept="3uibUv" id="623PeBf9_Wf" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="312cEg" id="623PeBf9_Wg" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="hostnameField" />
      <property role="3TUv4t" value="true" />
      <node concept="3Tmbuc" id="623PeBf9_Wh" role="1B3o_S" />
      <node concept="3uibUv" id="623PeBf9_Wi" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
    </node>
    <node concept="312cEg" id="623PeBf9_Wj" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="apiVersionField" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="623PeBf9_Wl" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="3Tmbuc" id="623PeBf9MwB" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="623PeBf9_Wm" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="projectField" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="623PeBf9_Wo" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="3Tmbuc" id="623PeBf9K9X" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="623PeBf9_Wp" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="repositoryField" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="623PeBf9_Wr" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="3Tmbuc" id="623PeBf9KWb" role="1B3o_S" />
    </node>
    <node concept="312cEg" id="623PeBeWPF5" role="jymVt">
      <property role="34CwA1" value="false" />
      <property role="eg7rD" value="false" />
      <property role="TrG5h" value="pullRequestIdField" />
      <property role="3TUv4t" value="true" />
      <node concept="3uibUv" id="623PeBeWPF7" role="1tU5fm">
        <ref role="3uigEE" to="dxuu:~JTextField" resolve="JTextField" />
      </node>
      <node concept="3Tmbuc" id="623PeBf9LIp" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="623PeBeWPF8" role="jymVt" />
    <node concept="3clFbW" id="623PeBeWPF9" role="jymVt">
      <node concept="3cqZAl" id="623PeBeWPFa" role="3clF45" />
      <node concept="3clFbS" id="623PeBeWPFb" role="3clF47">
        <node concept="3clFbF" id="623PeBf9p4H" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf9p4I" role="3clFbG">
            <node concept="2ShNRf" id="623PeBf9p4J" role="37vLTx">
              <node concept="1pGfFk" id="623PeBf9p4K" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
            <node concept="2OqwBi" id="623PeBf9p4L" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf9p4M" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9p4N" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wd" resolve="tokenField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9p8F" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf9p8G" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9p8H" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf9p8I" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9p8J" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wg" resolve="hostnameField" />
              </node>
            </node>
            <node concept="2ShNRf" id="623PeBf9p8K" role="37vLTx">
              <node concept="1pGfFk" id="623PeBf9p8L" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9pcD" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf9pcE" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9pcF" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf9pcG" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9pcH" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wj" resolve="apiVersionField" />
              </node>
            </node>
            <node concept="2ShNRf" id="623PeBf9pcI" role="37vLTx">
              <node concept="1pGfFk" id="623PeBf9pcJ" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9pgB" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf9pgC" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9pgD" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf9pgE" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9pgF" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wm" resolve="projectField" />
              </node>
            </node>
            <node concept="2ShNRf" id="623PeBf9pgG" role="37vLTx">
              <node concept="1pGfFk" id="623PeBf9pgH" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9pk_" role="3cqZAp">
          <node concept="37vLTI" id="623PeBf9pkA" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9pkB" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBf9pkC" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9pkD" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wp" resolve="repositoryField" />
              </node>
            </node>
            <node concept="2ShNRf" id="623PeBf9pkE" role="37vLTx">
              <node concept="1pGfFk" id="623PeBf9pkF" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBeWPFJ" role="3cqZAp">
          <node concept="37vLTI" id="623PeBeWPFK" role="3clFbG">
            <node concept="2OqwBi" id="623PeBeWPFL" role="37vLTJ">
              <node concept="Xjq3P" id="623PeBeWPFM" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBeWPFN" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBeWPF5" resolve="pullRequestIdField" />
              </node>
            </node>
            <node concept="2ShNRf" id="623PeBeWPFO" role="37vLTx">
              <node concept="1pGfFk" id="623PeBeWPFP" role="2ShVmc">
                <ref role="37wK5l" to="dxuu:~JTextField.&lt;init&gt;()" resolve="JTextField" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9poz" role="3cqZAp" />
        <node concept="3clFbF" id="623PeBf9po$" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9po_" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9poA" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9poB" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.setLayout(java.awt.LayoutManager):void" resolve="setLayout" />
              <node concept="2ShNRf" id="623PeBf9poC" role="37wK5m">
                <node concept="1pGfFk" id="623PeBf9poD" role="2ShVmc">
                  <ref role="37wK5l" to="z60i:~GridBagLayout.&lt;init&gt;()" resolve="GridBagLayout" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9poE" role="3cqZAp" />
        <node concept="3cpWs8" id="623PeBf9poF" role="3cqZAp">
          <node concept="3cpWsn" id="623PeBf9poG" role="3cpWs9">
            <property role="TrG5h" value="defaultConstraints" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="623PeBf9poH" role="1tU5fm">
              <ref role="3uigEE" to="rm1r:5xIRlXi6V0N" resolve="GBC" />
            </node>
            <node concept="2OqwBi" id="623PeBf9poI" role="33vP2m">
              <node concept="2OqwBi" id="623PeBf9poJ" role="2Oq$k0">
                <node concept="2OqwBi" id="623PeBf9poK" role="2Oq$k0">
                  <node concept="2OqwBi" id="623PeBf9poL" role="2Oq$k0">
                    <node concept="2ShNRf" id="623PeBf9poM" role="2Oq$k0">
                      <node concept="1pGfFk" id="623PeBf9poN" role="2ShVmc">
                        <ref role="37wK5l" to="rm1r:5xIRlXi7bIk" resolve="GBC" />
                      </node>
                    </node>
                    <node concept="liA8E" id="623PeBf9poO" role="2OqNvi">
                      <ref role="37wK5l" to="rm1r:5xIRlXi6Bow" resolve="withGridHeight" />
                      <node concept="3cmrfG" id="623PeBf9poP" role="37wK5m">
                        <property role="3cmrfH" value="1" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf9poQ" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6_aE" resolve="withGridWidth" />
                    <node concept="3cmrfG" id="623PeBf9poR" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9poS" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6IM1" resolve="withFill" />
                  <node concept="10M0yZ" id="623PeBf9poT" role="37wK5m">
                    <ref role="3cqZAo" to="z60i:~GridBagConstraints.HORIZONTAL" resolve="HORIZONTAL" />
                    <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                  </node>
                </node>
              </node>
              <node concept="liA8E" id="623PeBf9poU" role="2OqNvi">
                <ref role="37wK5l" to="rm1r:5xIRlXi6ESk" resolve="withWeightX" />
                <node concept="3cmrfG" id="623PeBf9poV" role="37wK5m">
                  <property role="3cmrfH" value="1" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9poX" role="3cqZAp" />
        <node concept="3clFbF" id="623PeBf9poY" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9poZ" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9pp0" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9pp1" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="623PeBf9pp2" role="37wK5m">
                <node concept="1pGfFk" id="623PeBf9pp3" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="623PeBf9pp4" role="37wK5m">
                    <property role="Xl_RC" value="Token:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9pp5" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9pp6" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9pp7" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pp8" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9pp9" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9ppa" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9ppb" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9ppc" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9ppd" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9ppe" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9ppf" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="623PeBf9ppg" role="37wK5m">
                <node concept="Xjq3P" id="623PeBf9pph" role="2Oq$k0" />
                <node concept="2OwXpG" id="623PeBf9ppi" role="2OqNvi">
                  <ref role="2Oxat5" node="623PeBf9_Wd" resolve="tokenField" />
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9ppj" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9ppk" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9ppl" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9ppm" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9ppn" role="37wK5m">
                      <property role="3cmrfH" value="0" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9ppo" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9ppp" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9pth" role="3cqZAp" />
        <node concept="3clFbF" id="623PeBf9pti" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9ptj" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9ptk" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9ptl" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="623PeBf9ptm" role="37wK5m">
                <node concept="1pGfFk" id="623PeBf9ptn" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="623PeBf9pto" role="37wK5m">
                    <property role="Xl_RC" value="Hostname:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9ptp" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9ptq" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9ptr" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pts" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9ptt" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9ptu" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9ptv" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9ptw" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9ptx" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9pty" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9ptz" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="623PeBf9pt$" role="37wK5m">
                <node concept="Xjq3P" id="623PeBf9pt_" role="2Oq$k0" />
                <node concept="2OwXpG" id="623PeBf9ptA" role="2OqNvi">
                  <ref role="2Oxat5" node="623PeBf9_Wg" resolve="hostnameField" />
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9ptB" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9ptC" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9ptD" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9ptE" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9ptF" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9ptG" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9ptH" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9px_" role="3cqZAp" />
        <node concept="3clFbF" id="623PeBf9pxA" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9pxB" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9pxC" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9pxD" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="623PeBf9pxE" role="37wK5m">
                <node concept="1pGfFk" id="623PeBf9pxF" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="623PeBf9pxG" role="37wK5m">
                    <property role="Xl_RC" value="API Version:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9pxH" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9pxI" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9pxJ" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pxK" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9pxL" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9pxM" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9pxN" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9pxO" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9pxP" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9pxQ" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9pxR" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="623PeBf9pxS" role="37wK5m">
                <node concept="Xjq3P" id="623PeBf9pxT" role="2Oq$k0" />
                <node concept="2OwXpG" id="623PeBf9pxU" role="2OqNvi">
                  <ref role="2Oxat5" node="623PeBf9_Wj" resolve="apiVersionField" />
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9pxV" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9pxW" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9pxX" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pxY" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9pxZ" role="37wK5m">
                      <property role="3cmrfH" value="2" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9py0" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9py1" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9p_T" role="3cqZAp" />
        <node concept="3clFbF" id="623PeBf9p_U" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9p_V" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9p_W" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9p_X" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="623PeBf9p_Y" role="37wK5m">
                <node concept="1pGfFk" id="623PeBf9p_Z" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="623PeBf9pA0" role="37wK5m">
                    <property role="Xl_RC" value="Project:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9pA1" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9pA2" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9pA3" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pA4" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9pA5" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9pA6" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9pA7" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9pA8" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9pA9" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9pAa" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9pAb" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="623PeBf9pAc" role="37wK5m">
                <node concept="Xjq3P" id="623PeBf9pAd" role="2Oq$k0" />
                <node concept="2OwXpG" id="623PeBf9pAe" role="2OqNvi">
                  <ref role="2Oxat5" node="623PeBf9_Wm" resolve="projectField" />
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9pAf" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9pAg" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9pAh" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pAi" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9pAj" role="37wK5m">
                      <property role="3cmrfH" value="3" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9pAk" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9pAl" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9pEd" role="3cqZAp" />
        <node concept="3clFbF" id="623PeBf9pEe" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9pEf" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9pEg" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9pEh" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="623PeBf9pEi" role="37wK5m">
                <node concept="1pGfFk" id="623PeBf9pEj" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="623PeBf9pEk" role="37wK5m">
                    <property role="Xl_RC" value="Repository:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9pEl" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9pEm" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9pEn" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pEo" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9pEp" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9pEq" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9pEr" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9pEs" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9pEt" role="3clFbG">
            <node concept="Xjq3P" id="623PeBf9pEu" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBf9pEv" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="623PeBf9pEw" role="37wK5m">
                <node concept="Xjq3P" id="623PeBf9pEx" role="2Oq$k0" />
                <node concept="2OwXpG" id="623PeBf9pEy" role="2OqNvi">
                  <ref role="2Oxat5" node="623PeBf9_Wp" resolve="repositoryField" />
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBf9pEz" role="37wK5m">
                <node concept="2OqwBi" id="623PeBf9pE$" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBf9pE_" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBf9pEA" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBf9pEB" role="37wK5m">
                      <property role="3cmrfH" value="4" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBf9pEC" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBf9pED" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBf9pIx" role="3cqZAp" />
        <node concept="3clFbF" id="623PeBeWPIx" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBeWPIy" role="3clFbG">
            <node concept="Xjq3P" id="623PeBeWPIz" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBeWPI$" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2ShNRf" id="623PeBeWPI_" role="37wK5m">
                <node concept="1pGfFk" id="623PeBeWPIA" role="2ShVmc">
                  <ref role="37wK5l" to="dxuu:~JLabel.&lt;init&gt;(java.lang.String)" resolve="JLabel" />
                  <node concept="Xl_RD" id="623PeBeWPIB" role="37wK5m">
                    <property role="Xl_RC" value="Pull Request ID:" />
                  </node>
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBeWPIC" role="37wK5m">
                <node concept="2OqwBi" id="623PeBeWPID" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBeWPIE" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBeWPIF" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBeWPIG" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBeWPIH" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBeWPII" role="37wK5m">
                    <property role="3cmrfH" value="0" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBeWPIJ" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBeWPIK" role="3clFbG">
            <node concept="Xjq3P" id="623PeBeWPIL" role="2Oq$k0" />
            <node concept="liA8E" id="623PeBeWPIM" role="2OqNvi">
              <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
              <node concept="2OqwBi" id="623PeBeWPIN" role="37wK5m">
                <node concept="Xjq3P" id="623PeBeWPIO" role="2Oq$k0" />
                <node concept="2OwXpG" id="623PeBeWPIP" role="2OqNvi">
                  <ref role="2Oxat5" node="623PeBeWPF5" resolve="pullRequestIdField" />
                </node>
              </node>
              <node concept="2OqwBi" id="623PeBeWPIQ" role="37wK5m">
                <node concept="2OqwBi" id="623PeBeWPIR" role="2Oq$k0">
                  <node concept="37vLTw" id="623PeBeWPIS" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBf9poG" resolve="defaultConstraints" />
                  </node>
                  <node concept="liA8E" id="623PeBeWPIT" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                    <node concept="3cmrfG" id="623PeBeWPIU" role="37wK5m">
                      <property role="3cmrfH" value="5" />
                    </node>
                  </node>
                </node>
                <node concept="liA8E" id="623PeBeWPIV" role="2OqNvi">
                  <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                  <node concept="3cmrfG" id="623PeBeWPIW" role="37wK5m">
                    <property role="3cmrfH" value="1" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbH" id="623PeBeWPIX" role="3cqZAp" />
        <node concept="1X3_iC" id="623PeBf5KTr" role="lGtFl">
          <property role="3V$3am" value="statement" />
          <property role="3V$3ak" value="f3061a53-9226-4cc5-a443-f952ceaf5816/1068580123136/1068581517665" />
          <node concept="3clFbF" id="623PeBeWPIY" role="8Wnug">
            <node concept="2OqwBi" id="623PeBeWPIZ" role="3clFbG">
              <node concept="Xjq3P" id="623PeBeWPJ0" role="2Oq$k0" />
              <node concept="liA8E" id="623PeBeWPJ1" role="2OqNvi">
                <ref role="37wK5l" to="z60i:~Container.add(java.awt.Component,java.lang.Object):void" resolve="add" />
                <node concept="2ShNRf" id="623PeBeWPJ2" role="37wK5m">
                  <node concept="1pGfFk" id="623PeBeWPJ3" role="2ShVmc">
                    <ref role="37wK5l" to="dxuu:~JPanel.&lt;init&gt;()" resolve="JPanel" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBeWPJ4" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBeWPJ5" role="2Oq$k0">
                    <node concept="2OqwBi" id="623PeBeWPJ6" role="2Oq$k0">
                      <node concept="2OqwBi" id="623PeBeWPJ7" role="2Oq$k0">
                        <node concept="2OqwBi" id="623PeBeWPJ8" role="2Oq$k0">
                          <node concept="2ShNRf" id="623PeBeWPJ9" role="2Oq$k0">
                            <node concept="1pGfFk" id="623PeBeWPJa" role="2ShVmc">
                              <ref role="37wK5l" to="rm1r:5xIRlXi7bIk" resolve="GBC" />
                            </node>
                          </node>
                          <node concept="liA8E" id="623PeBeWPJb" role="2OqNvi">
                            <ref role="37wK5l" to="rm1r:5xIRlXi6_aE" resolve="withGridWidth" />
                            <node concept="3cmrfG" id="623PeBeWPJc" role="37wK5m">
                              <property role="3cmrfH" value="2" />
                            </node>
                          </node>
                        </node>
                        <node concept="liA8E" id="623PeBeWPJd" role="2OqNvi">
                          <ref role="37wK5l" to="rm1r:5xIRlXi6xQ2" resolve="withGridX" />
                          <node concept="3cmrfG" id="623PeBeWPJe" role="37wK5m">
                            <property role="3cmrfH" value="0" />
                          </node>
                        </node>
                      </node>
                      <node concept="liA8E" id="623PeBeWPJf" role="2OqNvi">
                        <ref role="37wK5l" to="rm1r:5xIRlXi6zHX" resolve="withGridY" />
                        <node concept="3cmrfG" id="623PeBeWPJg" role="37wK5m">
                          <property role="3cmrfH" value="6" />
                        </node>
                      </node>
                    </node>
                    <node concept="liA8E" id="623PeBeWPJh" role="2OqNvi">
                      <ref role="37wK5l" to="rm1r:5xIRlXi6IM1" resolve="withFill" />
                      <node concept="10M0yZ" id="623PeBeWPJi" role="37wK5m">
                        <ref role="1PxDUh" to="z60i:~GridBagConstraints" resolve="GridBagConstraints" />
                        <ref role="3cqZAo" to="z60i:~GridBagConstraints.BOTH" resolve="BOTH" />
                      </node>
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBeWPJj" role="2OqNvi">
                    <ref role="37wK5l" to="rm1r:5xIRlXi6GYs" resolve="withWeightY" />
                    <node concept="3cmrfG" id="623PeBeWPJk" role="37wK5m">
                      <property role="3cmrfH" value="1" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3Tm1VV" id="623PeBeWPJl" role="1B3o_S" />
    </node>
    <node concept="2tJIrI" id="623PeBeWPJm" role="jymVt" />
    <node concept="3clFb_" id="623PeBeWPJn" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="initializeWith" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="623PeBeWPJo" role="1B3o_S" />
      <node concept="3cqZAl" id="623PeBeWPJp" role="3clF45" />
      <node concept="37vLTG" id="623PeBeWPJq" role="3clF46">
        <property role="TrG5h" value="configuration" />
        <property role="3TUv4t" value="true" />
        <node concept="3uibUv" id="623PeBf5czO" role="1tU5fm">
          <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
        </node>
      </node>
      <node concept="3clFbS" id="623PeBeWPJs" role="3clF47">
        <node concept="3clFbF" id="623PeBf9Ol_" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9OlA" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9OlB" role="2Oq$k0">
              <node concept="Xjq3P" id="623PeBf9OlC" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9OlD" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wd" resolve="tokenField" />
              </node>
            </node>
            <node concept="liA8E" id="623PeBf9OlE" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="623PeBf9OlF" role="37wK5m">
                <node concept="37vLTw" id="623PeBf9OlG" role="2Oq$k0">
                  <ref role="3cqZAo" node="623PeBeWPJq" resolve="configuration" />
                </node>
                <node concept="liA8E" id="623PeBf9OlH" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWht0kH" resolve="getToken" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9OlJ" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9OlK" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9OlL" role="2Oq$k0">
              <node concept="Xjq3P" id="623PeBf9OlM" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9OlN" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wg" resolve="hostnameField" />
              </node>
            </node>
            <node concept="liA8E" id="623PeBf9OlO" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="623PeBf9OlP" role="37wK5m">
                <node concept="37vLTw" id="623PeBf9OlQ" role="2Oq$k0">
                  <ref role="3cqZAo" node="623PeBeWPJq" resolve="configuration" />
                </node>
                <node concept="liA8E" id="623PeBf9OlR" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhtg0N" resolve="getHostName" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9OlT" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9OlU" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9OlV" role="2Oq$k0">
              <node concept="Xjq3P" id="623PeBf9OlW" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9OlX" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wj" resolve="apiVersionField" />
              </node>
            </node>
            <node concept="liA8E" id="623PeBf9OlY" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="623PeBf9OlZ" role="37wK5m">
                <node concept="37vLTw" id="623PeBf9Om0" role="2Oq$k0">
                  <ref role="3cqZAo" node="623PeBeWPJq" resolve="configuration" />
                </node>
                <node concept="liA8E" id="623PeBf9Om1" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhtG8b" resolve="getAPIVersion" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9Om3" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9Om4" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9Om5" role="2Oq$k0">
              <node concept="Xjq3P" id="623PeBf9Om6" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9Om7" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wm" resolve="projectField" />
              </node>
            </node>
            <node concept="liA8E" id="623PeBf9Om8" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="623PeBf9Om9" role="37wK5m">
                <node concept="37vLTw" id="623PeBf9Oma" role="2Oq$k0">
                  <ref role="3cqZAo" node="623PeBeWPJq" resolve="configuration" />
                </node>
                <node concept="liA8E" id="623PeBf9Omb" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhtZgJ" resolve="getProject" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBf9Omd" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBf9Ome" role="3clFbG">
            <node concept="2OqwBi" id="623PeBf9Omf" role="2Oq$k0">
              <node concept="Xjq3P" id="623PeBf9Omg" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBf9Omh" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBf9_Wp" resolve="repositoryField" />
              </node>
            </node>
            <node concept="liA8E" id="623PeBf9Omi" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2OqwBi" id="623PeBf9Omj" role="37wK5m">
                <node concept="37vLTw" id="623PeBf9Omk" role="2Oq$k0">
                  <ref role="3cqZAo" node="623PeBeWPJq" resolve="configuration" />
                </node>
                <node concept="liA8E" id="623PeBf9Oml" role="2OqNvi">
                  <ref role="37wK5l" node="2n3pEWhu3qp" resolve="getRepository" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3clFbF" id="623PeBeWPKa" role="3cqZAp">
          <node concept="2OqwBi" id="623PeBeWPKb" role="3clFbG">
            <node concept="2OqwBi" id="623PeBeWPKc" role="2Oq$k0">
              <node concept="Xjq3P" id="623PeBeWPKd" role="2Oq$k0" />
              <node concept="2OwXpG" id="623PeBeWPKe" role="2OqNvi">
                <ref role="2Oxat5" node="623PeBeWPF5" resolve="pullRequestIdField" />
              </node>
            </node>
            <node concept="liA8E" id="623PeBeWPKf" role="2OqNvi">
              <ref role="37wK5l" to="r791:~JTextComponent.setText(java.lang.String):void" resolve="setText" />
              <node concept="2YIFZM" id="623PeBf7dog" role="37wK5m">
                <ref role="37wK5l" to="wyt6:~Integer.toString(int):java.lang.String" resolve="toString" />
                <ref role="1Pybhc" to="wyt6:~Integer" resolve="Integer" />
                <node concept="2OqwBi" id="623PeBeWPKg" role="37wK5m">
                  <node concept="37vLTw" id="623PeBeWPKh" role="2Oq$k0">
                    <ref role="3cqZAo" node="623PeBeWPJq" resolve="configuration" />
                  </node>
                  <node concept="liA8E" id="623PeBeWPKi" role="2OqNvi">
                    <ref role="37wK5l" node="2n3pEWhu6RD" resolve="getPullRequestId" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="623PeBeWPKj" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBeWPKk" role="jymVt" />
    <node concept="3clFb_" id="623PeBeWPKl" role="jymVt">
      <property role="1EzhhJ" value="false" />
      <property role="TrG5h" value="getConfiguration" />
      <property role="od$2w" value="false" />
      <property role="DiZV1" value="false" />
      <property role="2aFKle" value="false" />
      <node concept="3Tm1VV" id="623PeBeWPKm" role="1B3o_S" />
      <node concept="3uibUv" id="623PeBf1ijt" role="3clF45">
        <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
      </node>
      <node concept="3clFbS" id="623PeBeWPKo" role="3clF47">
        <node concept="3cpWs8" id="623PeBf5jF$" role="3cqZAp">
          <node concept="3cpWsn" id="623PeBf5jF_" role="3cpWs9">
            <property role="TrG5h" value="configuration" />
            <property role="3TUv4t" value="true" />
            <node concept="3uibUv" id="623PeBf5naC" role="1tU5fm">
              <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
            </node>
            <node concept="2ShNRf" id="623PeBf5jFB" role="33vP2m">
              <node concept="1pGfFk" id="623PeBf5jFC" role="2ShVmc">
                <ref role="37wK5l" node="623PeBf7N4a" resolve="MockBitbucketServerConfiguration" />
                <node concept="2OqwBi" id="623PeBf5jFD" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf5jFE" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf5jFF" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf5jFG" role="2OqNvi">
                      <ref role="2Oxat5" node="623PeBf9_Wd" resolve="tokenField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf5jFH" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf5jFI" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf5jFJ" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf5jFK" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf5jFL" role="2OqNvi">
                      <ref role="2Oxat5" node="623PeBf9_Wg" resolve="hostnameField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf5jFM" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf5jFN" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf5jFO" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf5jFP" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf5jFQ" role="2OqNvi">
                      <ref role="2Oxat5" node="623PeBf9_Wj" resolve="apiVersionField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf5jFR" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf5jFS" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf5jFT" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf5jFU" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf5jFV" role="2OqNvi">
                      <ref role="2Oxat5" node="623PeBf9_Wm" resolve="projectField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf5jFW" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf5jFX" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf5jFY" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf5jFZ" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf5jG0" role="2OqNvi">
                      <ref role="2Oxat5" node="623PeBf9_Wp" resolve="repositoryField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf5jG1" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
                <node concept="2OqwBi" id="623PeBf5DV6" role="37wK5m">
                  <node concept="2OqwBi" id="623PeBf5Acs" role="2Oq$k0">
                    <node concept="Xjq3P" id="623PeBf5$Cb" role="2Oq$k0" />
                    <node concept="2OwXpG" id="623PeBf5C1E" role="2OqNvi">
                      <ref role="2Oxat5" node="623PeBeWPF5" resolve="pullRequestIdField" />
                    </node>
                  </node>
                  <node concept="liA8E" id="623PeBf5GCa" role="2OqNvi">
                    <ref role="37wK5l" to="r791:~JTextComponent.getText():java.lang.String" resolve="getText" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="623PeBf5jG7" role="3cqZAp">
          <node concept="37vLTw" id="623PeBf5jG8" role="3cqZAk">
            <ref role="3cqZAo" node="623PeBf5jF_" resolve="configuration" />
          </node>
        </node>
      </node>
      <node concept="2AHcQZ" id="623PeBeWPL5" role="2AJF6D">
        <ref role="2AI5Lk" to="wyt6:~Override" resolve="Override" />
      </node>
    </node>
    <node concept="2tJIrI" id="623PeBeWPL6" role="jymVt" />
    <node concept="3Tm1VV" id="623PeBeWPL9" role="1B3o_S" />
    <node concept="3uibUv" id="623PeBf9nnj" role="1zkMxy">
      <ref role="3uigEE" to="dxuu:~JPanel" resolve="JPanel" />
    </node>
    <node concept="3uibUv" id="623PeBf1eps" role="EKbjA">
      <ref role="3uigEE" to="ii13:623PeBf12mu" resolve="CodeReviewerConfigurationView" />
      <node concept="3uibUv" id="623PeBf1gMY" role="11_B2D">
        <ref role="3uigEE" node="6AMQKPcB9R$" resolve="MockBitbucketServerConfiguration" />
      </node>
    </node>
  </node>
  <node concept="2DaZZR" id="623PeBfado6" />
</model>

