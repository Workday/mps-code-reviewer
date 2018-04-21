<?xml version="1.0" encoding="UTF-8"?>
<solution name="com.workday.mps.review" uuid="301737e2-0a75-4665-a1a3-af0218114a24" moduleVersion="0" pluginKind="PLUGIN_OTHER" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${module}/lib" type="java_classes">
      <sourceRoot location="gson-2.8.0.jar" />
      <sourceRoot location="okhttp-3.10.0.jar" />
      <sourceRoot location="okio-1.14.0.jar" />
      <sourceRoot location="gson-2.8.2.jar" />
    </modelRoot>
  </models>
  <stubModelEntries>
    <stubModelEntry path="${module}/lib/okhttp-3.10.0.jar" />
    <stubModelEntry path="${module}/lib/okio-1.14.0.jar" />
    <stubModelEntry path="${module}/lib/gson-2.8.2.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="true">39100436-4455-4b98-b3a6-4512d25abac4(com.workday.mps.flux)</dependency>
    <dependency reexport="false">6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)</dependency>
    <dependency reexport="false">742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)</dependency>
    <dependency reexport="false">8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)</dependency>
    <dependency reexport="true">498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)</dependency>
    <dependency reexport="false">b7b6b13b-3ca1-4444-85ae-5f7f691136b9(com.workday.mps.review.git)</dependency>
    <dependency reexport="false">1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:d2a1d976-43a2-462f-ac3a-9b258ced839d:com.mbeddr.mpsutil.multilingual.baseLanguage" version="0" />
    <language slang="l:23f985f2-965f-4af1-aee8-a32677429514:com.mbeddr.mpsutil.multilingual.common" version="0" />
    <language slang="l:1e7c1f95-336c-4cec-b00e-8cc6e0c2b265:com.mbeddr.mpsutil.preferenceform" version="0" />
    <language slang="l:442d3b7d-fe4a-4293-a7c1-6744d440ecaa:com.mbeddr.mpsutil.richstring" version="0" />
    <language slang="l:92d2ea16-5a42-4fdf-a676-c7604efe3504:de.slisson.mps.richtext" version="0" />
    <language slang="l:f3061a53-9226-4cc5-a443-f952ceaf5816:jetbrains.mps.baseLanguage" version="5" />
    <language slang="l:443f4c36-fcf5-4eb6-9500-8d06ed259e3e:jetbrains.mps.baseLanguage.classifiers" version="0" />
    <language slang="l:fd392034-7849-419d-9071-12563d152375:jetbrains.mps.baseLanguage.closures" version="0" />
    <language slang="l:83888646-71ce-4f1c-9c53-c54016f6ad4f:jetbrains.mps.baseLanguage.collections" version="0" />
    <language slang="l:f2801650-65d5-424e-bb1b-463a8781b786:jetbrains.mps.baseLanguage.javadoc" version="2" />
    <language slang="l:a247e09e-2435-45ba-b8d2-07e93feba96a:jetbrains.mps.baseLanguage.tuples" version="0" />
    <language slang="l:63650c59-16c8-498a-99c8-005c7ee9515d:jetbrains.mps.lang.access" version="0" />
    <language slang="l:fe9d76d7-5809-45c9-ae28-a40915b4d6ff:jetbrains.mps.lang.checkedName" version="0" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="1" />
    <language slang="l:28f9e497-3b42-4291-aeba-0a1039153ab1:jetbrains.mps.lang.plugin" version="2" />
    <language slang="l:ef7bf5ac-d06c-4342-b11d-e42104eb9343:jetbrains.mps.lang.plugin.standalone" version="0" />
    <language slang="l:982eb8df-2c96-4bd7-9963-11712ea622e5:jetbrains.mps.lang.resources" version="2" />
    <language slang="l:7866978e-a0f0-4cc7-81bc-4d213d9375e1:jetbrains.mps.lang.smodel" version="8" />
    <language slang="l:9ded098b-ad6a-4657-bfd9-48636cfe8bc3:jetbrains.mps.lang.traceable" version="0" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3f233e7f-b8a6-46d2-a57f-795d56775243(Annotations)" version="0" />
    <module reference="6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)" version="0" />
    <module reference="6ed54515-acc8-4d1e-a16c-9fd6cfe951ea(MPS.Core)" version="0" />
    <module reference="1ed103c3-3aa6-49b7-9c21-6765ee11f224(MPS.Editor)" version="0" />
    <module reference="498d89d2-c2e9-11e2-ad49-6cf049e62fe5(MPS.IDEA)" version="0" />
    <module reference="8865b7a8-5271-43d3-884c-6fd1d9cfdd34(MPS.OpenAPI)" version="0" />
    <module reference="742f6602-5a2f-4313-aa6e-ae1cd4ffdc61(MPS.Platform)" version="0" />
    <module reference="467a50a8-ae35-442b-b6e7-9a3f96ae8052(com.mbeddr.doc.aspect.ui)" version="0" />
    <module reference="39100436-4455-4b98-b3a6-4512d25abac4(com.workday.mps.flux)" version="0" />
    <module reference="301737e2-0a75-4665-a1a3-af0218114a24(com.workday.mps.review)" version="0" />
    <module reference="b7b6b13b-3ca1-4444-85ae-5f7f691136b9(com.workday.mps.review.git)" version="0" />
    <module reference="fb4f8661-54a7-4583-ba4f-fad87946ade2(dependencies)" version="0" />
    <module reference="b435930b-30fc-42f3-9225-ec36209b7a33(git4mps)" version="0" />
  </dependencyVersions>
</solution>

