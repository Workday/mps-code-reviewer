<?xml version="1.0" encoding="UTF-8"?>
<solution name="com.workday.mps.review.build.meta" uuid="647b24df-0989-4dda-8a80-df171228d489" moduleVersion="0" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
  </models>
  <facets>
    <facet type="java">
      <classes generated="true" path="${module}/classes_gen" />
    </facet>
  </facets>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">422c2909-59d6-41a9-b318-40e6256b250f(jetbrains.mps.ide.build)</dependency>
    <dependency reexport="false">3ae9cfda-f938-4524-b4ca-fbcba3b0525b(com.mbeddr.platform)</dependency>
    <dependency reexport="false">35a83c38-8969-4574-b716-a7b3acd78eec(com.workday.mps.git4mps)</dependency>
  </dependencies>
  <languageVersions>
    <language slang="l:798100da-4f0a-421a-b991-71f8c50ce5d2:jetbrains.mps.build" version="0" />
    <language slang="l:0cf935df-4699-4e9c-a132-fa109541cba3:jetbrains.mps.build.mps" version="7" />
    <language slang="l:ceab5195-25ea-4f22-9b92-103b95ca8c0c:jetbrains.mps.lang.core" version="2" />
  </languageVersions>
  <dependencyVersions>
    <module reference="3ae9cfda-f938-4524-b4ca-fbcba3b0525b(com.mbeddr.platform)" version="0" />
    <module reference="35a83c38-8969-4574-b716-a7b3acd78eec(com.workday.mps.git4mps)" version="0" />
    <module reference="647b24df-0989-4dda-8a80-df171228d489(com.workday.mps.review.build.meta)" version="0" />
    <module reference="422c2909-59d6-41a9-b318-40e6256b250f(jetbrains.mps.ide.build)" version="0" />
  </dependencyVersions>
</solution>

