<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:ce9396f7-a2dc-46eb-9df9-af482f8fe831(com.workday.mps.git4mps.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="7" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="al5i" ref="r:742f344d-4dc4-4862-992c-4bc94b094870(com.mbeddr.mpsutil.dev.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="9126048691955220717" name="jetbrains.mps.build.structure.BuildLayout_File" flags="ng" index="28jJK3">
        <child id="9126048691955220762" name="path" index="28jJRO" />
      </concept>
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="927724900262033858" name="jetbrains.mps.build.structure.BuildSource_JavaOptions" flags="ng" index="2_Ic$z">
        <property id="927724900262033861" name="generateDebugInfo" index="2_Ic$$" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
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
      <concept id="8654221991637384182" name="jetbrains.mps.build.structure.BuildFileIncludesSelector" flags="ng" index="3qWCbU">
        <property id="8654221991637384184" name="pattern" index="3qWCbO" />
      </concept>
      <concept id="4701820937132344003" name="jetbrains.mps.build.structure.BuildLayout_Container" flags="ng" index="1y1bJS">
        <child id="7389400916848037006" name="children" index="39821P" />
      </concept>
      <concept id="5610619299013057363" name="jetbrains.mps.build.structure.BuildLayout_ImportContent" flags="ng" index="3ygNvl">
        <reference id="5610619299013057365" name="target" index="3ygNvj" />
        <child id="6789562173791401562" name="selectors" index="1juEy9" />
      </concept>
      <concept id="5610619299014309452" name="jetbrains.mps.build.structure.BuildSource_JavaExternalJarRef" flags="ng" index="3yrxFa">
        <reference id="5610619299014309453" name="jar" index="3yrxFb" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="4903714810883702019" name="jetbrains.mps.build.structure.BuildTextStringPart" flags="ng" index="3Mxwew">
        <property id="4903714810883755350" name="text" index="3MwjfP" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps">
      <concept id="7832771629084799699" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginVendor" flags="ng" index="2iUeEo">
        <property id="7832771629084799702" name="name" index="2iUeEt" />
        <property id="7832771629084799701" name="url" index="2iUeEu" />
      </concept>
      <concept id="6592112598314498932" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPlugin" flags="ng" index="m$_wf">
        <property id="6592112598314498927" name="id" index="m$_wk" />
        <child id="7832771629084912518" name="vendor" index="2iVFfd" />
        <child id="6592112598314498931" name="version" index="m$_w8" />
        <child id="6592112598314499050" name="content" index="m$_yh" />
        <child id="6592112598314499028" name="dependencies" index="m$_yJ" />
        <child id="6592112598314499021" name="name" index="m$_yQ" />
        <child id="6592112598314855574" name="containerName" index="m_cZH" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
        <child id="3570488090019868128" name="packagingType" index="pUk7w" />
      </concept>
      <concept id="6592112598314499036" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule" flags="ng" index="m$_yB">
        <property id="4034578608468849375" name="customPackaging" index="1ZOk41" />
        <reference id="6592112598314499037" name="target" index="m$_yA" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="3570488090019868064" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ManualPluginLayoutType" flags="ng" index="pUk6w" />
      <concept id="3570488090019868065" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_AutoPluginLayoutType" flags="ng" index="pUk6x" />
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
        <child id="4356762679305730677" name="jarLocations" index="3yL2VB" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="4356762679305675652" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml_CustomJarLocation" flags="ng" index="3yLZsm">
        <property id="4356762679305675654" name="packagedLocation" index="3yLZsk" />
        <child id="4356762679305675653" name="path" index="3yLZsn" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="2798275735916344703" name="customLocation" index="2gdwQb" />
        <child id="4278635856200826394" name="path" index="1BurEY" />
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
  <node concept="1l3spW" id="3wrDZJThqks">
    <property role="TrG5h" value="git4mpsPlugin" />
    <property role="2DA0ip" value="../../dist" />
    <property role="turDy" value="git4mpsPlugin.xml" />
    <node concept="2_Ic$z" id="3wrDZJThqn3" role="3989C9">
      <property role="2_Ic$$" value="true" />
    </node>
    <node concept="10PD9b" id="3wrDZJThqkt" role="10PD9s" />
    <node concept="3b7kt6" id="3wrDZJThqku" role="10PD9s" />
    <node concept="398rNT" id="24ZpFMHU9ep" role="1l3spd">
      <property role="TrG5h" value="project.home" />
      <node concept="55IIr" id="24ZpFMHU9eq" role="398pKh">
        <node concept="2Ry0Ak" id="24ZpFMHU9er" role="iGT6I">
          <property role="2Ry0Am" value=".." />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="24ZpFMHU2ix" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="24ZpFMHU2kM" role="398pKh">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="24ZpFMHU2oo" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="24ZpFMHU9es" role="1l3spd">
      <property role="TrG5h" value="mps_home" />
      <node concept="398BVA" id="24ZpFMHU9et" role="398pKh">
        <ref role="398BVh" node="24ZpFMHU2ix" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="24ZpFMHU9eu" role="iGT6I">
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
    <node concept="2sgV4H" id="4hhvq7oWSQZ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4hhvq7oWSR0" role="2JcizS">
        <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3PM$dUayXCy" role="1l3spa">
      <ref role="1l3spb" node="4GMBmWUHnV9" resolve="IDEA_gitplugin_stubs" />
      <node concept="398BVA" id="7mrE8nX2hmb" role="2JcizS">
        <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
        <node concept="2Ry0Ak" id="7mrE8nX2hmR" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
        </node>
      </node>
    </node>
    <node concept="2sgV4H" id="24ZpFMHU7SY" role="1l3spa">
      <ref role="1l3spb" to="al5i:3AVJcIMlF8l" resolve="com.mbeddr.platform" />
      <node concept="398BVA" id="24ZpFMHU7TK" role="2JcizS">
        <ref role="398BVh" node="24ZpFMHU2s7" resolve="com.mbeddr.platform.artifacts" />
      </node>
    </node>
    <node concept="1l3spV" id="3wrDZJThql0" role="1l3spN">
      <node concept="m$_wl" id="7mrE8nX2hr0" role="39821P">
        <ref role="m_rDy" node="3wrDZJThqkR" resolve="com.workday.mps.git4mps" />
        <node concept="398223" id="7mrE8nX9Ool" role="39821P">
          <node concept="3_J27D" id="7mrE8nX9Oon" role="Nbhlr">
            <node concept="3Mxwew" id="7mrE8nX9Opj" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="3ygNvl" id="7mrE8nX9Oqw" role="39821P">
            <ref role="3ygNvj" node="5ded7SEwNA6" resolve="lib" />
            <node concept="3qWCbU" id="7mrE8nX9Osj" role="1juEy9">
              <property role="3qWCbO" value="*" />
            </node>
          </node>
        </node>
        <node concept="398223" id="7mrE8nX2hr1" role="39821P">
          <node concept="3_J27D" id="7mrE8nX2hr2" role="Nbhlr">
            <node concept="3Mxwew" id="7mrE8nX2hr3" role="3MwsjC">
              <property role="3MwjfP" value="languages" />
            </node>
          </node>
          <node concept="L2wRC" id="7mrE8nX2hr4" role="39821P">
            <ref role="L2wRA" node="3wrDZJThqp9" resolve="git4mps" />
            <node concept="3yLZsm" id="7mrE8nX2hr5" role="3yL2VB">
              <property role="3yLZsk" value="/plugins/git4idea/lib/git4idea-rt.jar" />
              <node concept="398BVA" id="7mrE8nX2hr6" role="3yLZsn">
                <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
                <node concept="2Ry0Ak" id="7mrE8nX2hr7" role="iGT6I">
                  <property role="2Ry0Am" value="plugins" />
                  <node concept="2Ry0Ak" id="7mrE8nX2hr8" role="2Ry0An">
                    <property role="2Ry0Am" value="git4idea" />
                    <node concept="2Ry0Ak" id="7mrE8nX2hr9" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7mrE8nX2hra" role="2Ry0An">
                        <property role="2Ry0Am" value="git4idea-rt.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3yLZsm" id="7mrE8nX2hrb" role="3yL2VB">
              <property role="3yLZsk" value="/plugins/git4idea/lib/git4idea.jar" />
              <node concept="398BVA" id="7mrE8nX2hrc" role="3yLZsn">
                <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
                <node concept="2Ry0Ak" id="7mrE8nX2hrd" role="iGT6I">
                  <property role="2Ry0Am" value="plugins" />
                  <node concept="2Ry0Ak" id="7mrE8nX2hre" role="2Ry0An">
                    <property role="2Ry0Am" value="git4idea" />
                    <node concept="2Ry0Ak" id="7mrE8nX2hrf" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                      <node concept="2Ry0Ak" id="7mrE8nX2hrg" role="2Ry0An">
                        <property role="2Ry0Am" value="git4idea.jar" />
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pUk6w" id="7Y8OAkM0N29" role="pUk7w" />
      </node>
      <node concept="m$_wl" id="7Oiry496RLE" role="39821P">
        <ref role="m_rDy" node="7Oiry496Rtp" resolve="com.workday.mps.git4mps.build" />
        <node concept="pUk6x" id="7Y8OAkM0N2a" role="pUk7w" />
      </node>
    </node>
    <node concept="m$_wf" id="3wrDZJThqkR" role="3989C9">
      <property role="m$_wk" value="com.workday.mps.git4mps" />
      <node concept="3_J27D" id="3wrDZJThqkS" role="m$_yQ">
        <node concept="3Mxwew" id="3wrDZJThqkT" role="3MwsjC">
          <property role="3MwjfP" value="Git Integration - MPS Stubs" />
        </node>
      </node>
      <node concept="3_J27D" id="3wrDZJThqkU" role="m$_w8">
        <node concept="3Mxwew" id="3wrDZJThqkV" role="3MwsjC">
          <property role="3MwjfP" value="1.0.0" />
        </node>
      </node>
      <node concept="m$_yB" id="7SqVNqmc0Ql" role="m$_yh">
        <property role="1ZOk41" value="true" />
        <ref role="m$_yA" node="3wrDZJThqp9" resolve="git4mps" />
      </node>
      <node concept="3_J27D" id="3wrDZJThqkY" role="m_cZH">
        <node concept="3Mxwew" id="3wrDZJThqkZ" role="3MwsjC">
          <property role="3MwjfP" value="com.workday.mps.git4mps" />
        </node>
      </node>
      <node concept="3_J27D" id="3wrDZJThql5" role="3s6cr7">
        <node concept="3Mxwew" id="3wrDZJThql7" role="3MwsjC">
          <property role="3MwjfP" value="MPS BaseLanguage stubs for git4idea IDEA plugin. This is necessary for MPS plugins to work with the Git Integration." />
        </node>
      </node>
      <node concept="2iUeEo" id="3wrDZJThql9" role="2iVFfd">
        <property role="2iUeEt" value="Workday" />
        <property role="2iUeEu" value="https://www.workday.com/" />
      </node>
      <node concept="m$_yC" id="7Oiry496REE" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
    </node>
    <node concept="m$_wf" id="7Oiry496Rtp" role="3989C9">
      <property role="m$_wk" value="com.workday.mps.git4mps.build" />
      <node concept="3_J27D" id="7Oiry496Rtr" role="m$_yQ">
        <node concept="3Mxwew" id="7Oiry496RyJ" role="3MwsjC">
          <property role="3MwjfP" value="com.workday.mps.git4mps.build" />
        </node>
      </node>
      <node concept="3_J27D" id="7Oiry496Rtt" role="m_cZH">
        <node concept="3Mxwew" id="7Oiry496RyL" role="3MwsjC">
          <property role="3MwjfP" value="com.workday.mps.git4mps.build" />
        </node>
      </node>
      <node concept="3_J27D" id="7Oiry496Rtv" role="m$_w8">
        <node concept="3Mxwew" id="7Oiry496Rzr" role="3MwsjC">
          <property role="3MwjfP" value="1.0.0" />
        </node>
      </node>
      <node concept="m$_yB" id="7Oiry496R$5" role="m$_yh">
        <ref role="m$_yA" node="3wrDZJThs02" resolve="com.workday.mps.git4mps" />
      </node>
      <node concept="m$_yC" id="7Oiry496R$J" role="m$_yJ">
        <ref role="m$_y1" to="al5i:33r_JpZ6k_l" resolve="com.mbeddr.platform.build" />
      </node>
      <node concept="2iUeEo" id="7Oiry496RFm" role="2iVFfd">
        <property role="2iUeEt" value="Workday" />
        <property role="2iUeEu" value="https://www.workday.com/" />
      </node>
    </node>
    <node concept="1E1JtA" id="3wrDZJThqp9" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="git4mps" />
      <property role="3LESm3" value="b435930b-30fc-42f3-9225-ec36209b7a33" />
      <property role="2GAjPV" value="true" />
      <node concept="398BVA" id="3wrDZJThqpa" role="3LF7KH">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="3wrDZJThqpb" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="3wrDZJThqpc" role="2Ry0An">
            <property role="2Ry0Am" value="git4mps" />
            <node concept="2Ry0Ak" id="3wrDZJThqpd" role="2Ry0An">
              <property role="2Ry0Am" value="git4mps.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3wrDZJThqpe" role="3bR37C">
        <node concept="3bR9La" id="3wrDZJThqpf" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
        </node>
      </node>
      <node concept="1SiIV0" id="3wrDZJThqpg" role="3bR37C">
        <node concept="3bR9La" id="3wrDZJThqph" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
        </node>
      </node>
      <node concept="1SiIV0" id="3wrDZJThqpi" role="3bR37C">
        <node concept="3bR9La" id="3wrDZJThqpj" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="3wrDZJThqpk" role="3bR37C">
        <node concept="1BurEX" id="3wrDZJThqpl" role="1SiIV1">
          <node concept="398BVA" id="3wrDZJThqpm" role="1BurEY">
            <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
            <node concept="2Ry0Ak" id="3wrDZJThqpn" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="3wrDZJThqpo" role="2Ry0An">
                <property role="2Ry0Am" value="git4idea" />
                <node concept="2Ry0Ak" id="3wrDZJThqpp" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3wrDZJThqpq" role="2Ry0An">
                    <property role="2Ry0Am" value="git4idea-rt.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3yrxFa" id="3wrDZJThqtc" role="2gdwQb">
            <ref role="3yrxFb" node="5ded7SEwYHh" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3wrDZJThqps" role="3bR37C">
        <node concept="1BurEX" id="3wrDZJThqpt" role="1SiIV1">
          <node concept="398BVA" id="3wrDZJThqpu" role="1BurEY">
            <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
            <node concept="2Ry0Ak" id="3wrDZJThqpv" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="3wrDZJThqpw" role="2Ry0An">
                <property role="2Ry0Am" value="git4idea" />
                <node concept="2Ry0Ak" id="3wrDZJThqpx" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3wrDZJThqpy" role="2Ry0An">
                    <property role="2Ry0Am" value="git4idea.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3yrxFa" id="3wrDZJThqtN" role="2gdwQb">
            <ref role="3yrxFb" node="5ded7SEwYN$" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="3wrDZJThs02" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.workday.mps.git4mps" />
      <property role="3LESm3" value="35a83c38-8969-4574-b716-a7b3acd78eec" />
      <node concept="398BVA" id="3wrDZJThs49" role="3LF7KH">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="3wrDZJThs5n" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="3wrDZJThs7G" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.git4mps" />
            <node concept="2Ry0Ak" id="7mrE8nX2huj" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.git4mps.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3wrDZJThsa3" role="3bR37C">
        <node concept="3bR9La" id="3wrDZJThsa4" role="1SiIV1">
          <ref role="3bR37D" to="ffeo:78GwwOvB3tw" resolve="jetbrains.mps.ide.build" />
        </node>
      </node>
      <node concept="1SiIV0" id="3wrDZJThsa5" role="3bR37C">
        <node concept="3bR9La" id="3wrDZJThsa6" role="1SiIV1">
          <ref role="3bR37D" to="al5i:7Pr7tifzlku" resolve="com.mbeddr.platform" />
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4GMBmWUHnV9">
    <property role="2DA0ip" value="../../dist" />
    <property role="TrG5h" value="IDEA_gitplugin_stubs" />
    <property role="turDy" value="ideaGitPlugin.xml" />
    <node concept="398rNT" id="7SqVNqmbZQb" role="1l3spd">
      <property role="TrG5h" value="project.home" />
      <node concept="55IIr" id="7SqVNqmbZQc" role="398pKh">
        <node concept="2Ry0Ak" id="7SqVNqmbZQd" role="iGT6I">
          <property role="2Ry0Am" value=".." />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7SqVNqmbZOo" role="1l3spd">
      <property role="TrG5h" value="artifacts.root" />
      <node concept="398BVA" id="7SqVNqmbZOp" role="398pKh">
        <ref role="398BVh" node="7SqVNqmbZQb" resolve="project.home" />
        <node concept="2Ry0Ak" id="7SqVNqmbZOq" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="7SqVNqmbZOr" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="7SqVNqmbZOs" role="398pKh">
        <ref role="398BVh" node="7SqVNqmbZOo" resolve="artifacts.root" />
        <node concept="2Ry0Ak" id="7SqVNqmbZOt" role="iGT6I">
          <property role="2Ry0Am" value="MPS" />
        </node>
      </node>
    </node>
    <node concept="398rNT" id="645f3xJ3KbN" role="1l3spd">
      <property role="TrG5h" value="git4idea.home" />
      <node concept="398BVA" id="4GMBmWUH$WL" role="398pKh">
        <ref role="398BVh" node="7SqVNqmbZOr" resolve="mps.home" />
        <node concept="2Ry0Ak" id="4GMBmWUH$WQ" role="iGT6I">
          <property role="2Ry0Am" value="plugins" />
          <node concept="2Ry0Ak" id="4GMBmWUH$WV" role="2Ry0An">
            <property role="2Ry0Am" value="git4idea" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="4GMBmWUHnVa" role="auvoZ" />
    <node concept="1l3spV" id="4GMBmWUHnVb" role="1l3spN">
      <node concept="m$_wl" id="4GMBmWUH$Xn" role="39821P">
        <ref role="m_rDy" node="4GMBmWUHpN2" resolve="Git4Idea" />
        <node concept="398223" id="5ded7SEwNA6" role="39821P">
          <node concept="3_J27D" id="5ded7SEwNA8" role="Nbhlr">
            <node concept="3Mxwew" id="5ded7SEwNSZ" role="3MwsjC">
              <property role="3MwjfP" value="lib" />
            </node>
          </node>
          <node concept="28jJK3" id="5ded7SEwYHh" role="39821P">
            <node concept="398BVA" id="5ded7SEwYHL" role="28jJRO">
              <ref role="398BVh" node="645f3xJ3KbN" resolve="git4idea.home" />
              <node concept="2Ry0Ak" id="5ded7SEwYHR" role="iGT6I">
                <property role="2Ry0Am" value="lib" />
                <node concept="2Ry0Ak" id="5ded7SEwYHW" role="2Ry0An">
                  <property role="2Ry0Am" value="git4idea-rt.jar" />
                </node>
              </node>
            </node>
          </node>
          <node concept="28jJK3" id="5ded7SEwYN$" role="39821P">
            <node concept="398BVA" id="5ded7SEwYN_" role="28jJRO">
              <ref role="398BVh" node="645f3xJ3KbN" resolve="git4idea.home" />
              <node concept="2Ry0Ak" id="5ded7SEwYNA" role="iGT6I">
                <property role="2Ry0Am" value="lib" />
                <node concept="2Ry0Ak" id="5ded7SEwYQC" role="2Ry0An">
                  <property role="2Ry0Am" value="git4idea.jar" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node concept="pUk6x" id="7Y8OAkM0N2b" role="pUk7w" />
      </node>
    </node>
    <node concept="10PD9b" id="4GMBmWUHpMO" role="10PD9s" />
    <node concept="3b7kt6" id="4GMBmWUHpMT" role="10PD9s" />
    <node concept="m$_wf" id="4GMBmWUHpN2" role="3989C9">
      <property role="m$_wk" value="Git4Idea" />
      <node concept="3_J27D" id="4GMBmWUHpN3" role="m_cZH">
        <node concept="3Mxwew" id="4GMBmWUHq6$" role="3MwsjC">
          <property role="3MwjfP" value="git4idea" />
        </node>
      </node>
      <node concept="3_J27D" id="4GMBmWUHpN4" role="m$_w8">
        <node concept="3Mxwew" id="4GMBmWUHq6K" role="3MwsjC">
          <property role="3MwjfP" value="&lt;empty&gt;" />
        </node>
      </node>
      <node concept="3_J27D" id="4GMBmWUHpN5" role="m$_yQ">
        <node concept="3Mxwew" id="4GMBmWUHq6f" role="3MwsjC">
          <property role="3MwjfP" value="Git Integration" />
        </node>
      </node>
    </node>
  </node>
</model>

