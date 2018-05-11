<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:cc980320-202c-4c08-9af1-b362f75ceda0(com.workday.mps.review.build.meta)">
  <persistence version="9" />
  <languages>
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="5" />
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
        <property id="4915877860348071612" name="fileName" index="turDy" />
        <property id="5204048710541015587" name="internalBaseDirectory" index="2DA0ip" />
        <child id="4796668409958418110" name="scriptsDir" index="auvoZ" />
        <child id="6647099934206700656" name="plugins" index="10PD9s" />
        <child id="7389400916848080626" name="parts" index="3989C9" />
        <child id="5617550519002745381" name="dependencies" index="1l3spa" />
        <child id="5617550519002745378" name="macros" index="1l3spd" />
        <child id="5617550519002745372" name="layout" index="1l3spN" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="322010710375871467" name="jetbrains.mps.build.mps.structure.BuildMps_AbstractModule" flags="ng" index="3LEN3z">
        <property id="8369506495128725901" name="compact" index="BnDLt" />
        <property id="322010710375892619" name="uuid" index="3LESm3" />
        <child id="322010710375956261" name="path" index="3LF7KH" />
      </concept>
      <concept id="7259033139236285166" name="jetbrains.mps.build.mps.structure.BuildMps_ExtractedModuleDependency" flags="nn" index="1SiIV0">
        <child id="7259033139236285167" name="dependency" index="1SiIV1" />
      </concept>
    </language>
  </registry>
  <node concept="1l3spW" id="3c3vDUluHHE">
    <property role="2DA0ip" value="../../buildScripts" />
    <property role="TrG5h" value="reviewPluginBuildScripts" />
    <property role="turDy" value="reviewPluginBuildScripts.xml" />
    <node concept="1E1JtA" id="3PM$dUaz5gE" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.workday.mps.git4mps" />
      <property role="3LESm3" value="35a83c38-8969-4574-b716-a7b3acd78eec" />
      <property role="2GAjPV" value="false" />
      <node concept="398BVA" id="3PM$dUaz5hF" role="3LF7KH">
        <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
        <node concept="2Ry0Ak" id="3PM$dUaz5hZ" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="3PM$dUaz5ii" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.git4mps" />
            <node concept="2Ry0Ak" id="7mrE8nX2hsP" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.git4mps.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3PM$dUaz5i_" role="3bR37C">
        <node concept="3bR9La" id="3PM$dUaz5iA" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3PM$dUaz5iB" role="3bR37C">
        <node concept="3bR9La" id="3PM$dUaz5iC" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="al5i:7Pr7tifzlku" resolve="com.mbeddr.platform" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="4hhvq7oWSQZ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4hhvq7oWSR0" role="2JcizS">
        <ref role="398BVh" node="3c3vDUluOxG" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="24ZpFMHU7SY" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="24ZpFMHU7TK" role="2JcizS">
        <ref role="398BVh" node="24ZpFMHU2s7" resolve="com.mbeddr.platform.artifacts" />
      </node>
    </node>
    <node concept="398rNT" id="3c3vDUluIXm" role="1l3spd">
      <property role="TrG5h" value="project.home" />
      <node concept="55IIr" id="3c3vDUluIXy" role="398pKh">
        <node concept="2Ry0Ak" id="3c3vDUluIY6" role="iGT6I">
          <property role="2Ry0Am" value=".." />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="24ZpFMHU2ix" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="24ZpFMHU2kM" role="398pKh">
        <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
        <node concept="2Ry0Ak" id="24ZpFMHU2oo" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="3c3vDUluOxG" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="3c3vDUluOye" role="398pKh">
        <ref role="398BVh" node="24ZpFMHU2ix" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="3c3vDUluOz1" role="iGT6I">
          <property role="2Ry0Am" value="MPS" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="24ZpFMHU2s7" role="1l3spd">
      <property role="TrG5h" value="com.mbeddr.platform.artifacts" />
      <node concept="398BVA" id="24ZpFMHU2s8" role="398pKh">
        <ref role="398BVh" node="24ZpFMHU2ix" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="24ZpFMHU2z_" role="iGT6I">
          <property role="2Ry0Am" value="com.mbeddr.platform" />
        </node>
      </node>
    </node>
    <node concept="55IIr" id="3c3vDUluHHF" role="auvoZ" />
    <node concept="1l3spV" id="3c3vDUluHHG" role="1l3spN">
      <node concept="L2wRC" id="3PM$dUaz5kc" role="39821P">
        <ref role="L2wRA" node="3PM$dUaz5gE" resolve="com.workday.mps.git4mps" />
      </node>
      <node concept="L2wRC" id="24ZpFMHU7Vd" role="39821P">
        <ref role="L2wRA" node="24ZpFMHU7Uv" resolve="com.workday.mps.review.build" />
      </node>
    </node>
    <node concept="10PD9b" id="3c3vDUluHHH" role="10PD9s" />
    <node concept="3b7kt6" id="3c3vDUluIVL" role="10PD9s" />
    <node concept="1E1JtA" id="24ZpFMHU7Uv" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.workday.mps.review.build" />
      <property role="3LESm3" value="aa79ef09-da8f-4761-af89-e6223d0e9718" />
      <property role="2GAjPV" value="false" />
      <node concept="398BVA" id="24ZpFMHU7Uz" role="3LF7KH">
        <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
        <node concept="2Ry0Ak" id="24ZpFMHU7UD" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="24ZpFMHU7UI" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.review.build" />
            <node concept="2Ry0Ak" id="24ZpFMHU7UN" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.review.build.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="24ZpFMHU7UP" role="3bR37C">
        <node concept="3bR9La" id="24ZpFMHU7UQ" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="24ZpFMHUlOC" role="3bR37C">
        <node concept="3bR9La" id="24ZpFMHUlOD" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="al5i:7Pr7tifzlku" resolve="com.mbeddr.platform" />
        </node>
      </node>
      <node concept="1SiIV0" id="3PM$dUazcEx" role="3bR37C">
        <node concept="3bR9La" id="3PM$dUazcEy" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" node="3PM$dUaz5gE" resolve="com.workday.mps.git4mps" />
        </node>
      </node>
    </node>
  </node>
</model>

