<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:60f8facb-4a7a-44c0-97ce-9973f6b5d56d(com.workday.mps.review.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="5" />
    <use id="479c7a8c-02f9-43b5-9139-d910cb22f298" name="jetbrains.mps.core.xml" version="0" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="hh2c" ref="r:5c70a88b-9c77-4970-b930-a9ff601a03a0(jetbrains.mps.ide.idea.plugin.build)" />
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
      <concept id="2750015747481074431" name="jetbrains.mps.build.structure.BuildLayout_Files" flags="ng" index="2HvfSZ">
        <child id="2750015747481074432" name="path" index="2HvfZ0" />
      </concept>
      <concept id="4380385936562003279" name="jetbrains.mps.build.structure.BuildString" flags="ng" index="NbPM2">
        <child id="4903714810883783243" name="parts" index="3MwsjC" />
      </concept>
      <concept id="8618885170173601777" name="jetbrains.mps.build.structure.BuildCompositePath" flags="nn" index="2Ry0Ak">
        <property id="8618885170173601779" name="head" index="2Ry0Am" />
        <child id="8618885170173601778" name="tail" index="2Ry0An" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
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
        <child id="3542413272732620719" name="aspects" index="1hWBAP" />
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
      <concept id="5610619299014309452" name="jetbrains.mps.build.structure.BuildSource_JavaExternalJarRef" flags="ng" index="3yrxFa">
        <reference id="5610619299014309453" name="jar" index="3yrxFb" />
      </concept>
      <concept id="841011766566059607" name="jetbrains.mps.build.structure.BuildStringNotEmpty" flags="ng" index="3_J27D" />
      <concept id="5248329904287794596" name="jetbrains.mps.build.structure.BuildInputFiles" flags="ng" index="3LXTmp">
        <child id="5248329904287794598" name="dir" index="3LXTmr" />
        <child id="5248329904287794679" name="selectors" index="3LXTna" />
      </concept>
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
      <concept id="6503355885715333289" name="jetbrains.mps.build.mps.structure.BuildMpsAspect" flags="ng" index="2igEWh">
        <property id="6503355885715353788" name="bootstrap" index="2igJW4" />
        <property id="7981469545489178349" name="generationMaxHeapSizeInMb" index="3UIfUI" />
      </concept>
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
      </concept>
      <concept id="6592112598314499036" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule" flags="ng" index="m$_yB">
        <property id="4034578608468849375" name="customPackaging" index="1ZOk41" />
        <reference id="6592112598314499037" name="target" index="m$_yA" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1265949165890536423" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleJars" flags="ng" index="L2wRC">
        <reference id="1265949165890536425" name="module" index="L2wRA" />
        <child id="4356762679305730677" name="jarLocations" index="3yL2VB" />
      </concept>
      <concept id="868032131020265945" name="jetbrains.mps.build.mps.structure.BuildMPSPlugin" flags="ng" index="3b7kt6" />
      <concept id="5253498789149381388" name="jetbrains.mps.build.mps.structure.BuildMps_Module" flags="ng" index="3bQrTs">
        <property id="1500819558096356884" name="doNotCompile" index="2GAjPV" />
        <child id="5253498789149547825" name="sources" index="3bR31x" />
        <child id="5253498789149547704" name="dependencies" index="3bR37C" />
      </concept>
      <concept id="5253498789149585690" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnModule" flags="ng" index="3bR9La">
        <property id="5253498789149547713" name="reexport" index="3bR36h" />
        <reference id="5253498789149547705" name="module" index="3bR37D" />
      </concept>
      <concept id="763829979718664966" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleResources" flags="ng" index="3rtmxn">
        <child id="763829979718664967" name="files" index="3rtmxm" />
      </concept>
      <concept id="4356762679305675652" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_ModuleXml_CustomJarLocation" flags="ng" index="3yLZsm">
        <property id="4356762679305675654" name="packagedLocation" index="3yLZsk" />
        <child id="4356762679305675653" name="path" index="3yLZsn" />
      </concept>
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="2798275735916344703" name="customLocation" index="2gdwQb" />
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="4278635856200794926" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyExtendLanguage" flags="ng" index="1Busua">
        <reference id="4278635856200794928" name="language" index="1Busuk" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731840248" name="jetbrains.mps.build.mps.structure.BuildMps_Language" flags="ng" index="1E1JtD" />
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
    <property role="2DA0ip" value="../../dist" />
    <property role="TrG5h" value="reviewPlugin" />
    <property role="turDy" value="reviewPlugin.xml" />
    <node concept="2igEWh" id="NvAZPok206" role="1hWBAP">
      <property role="3UIfUI" value="1024" />
      <property role="2igJW4" value="true" />
    </node>
    <node concept="2_Ic$z" id="3c3vDUlvURm" role="3989C9">
      <property role="2_Ic$$" value="true" />
    </node>
    <node concept="2sgV4H" id="4hhvq7oWSQZ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4hhvq7oWSR0" role="2JcizS">
        <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
      </node>
    </node>
    <node concept="2sgV4H" id="7SqVNqmc0Tt" role="1l3spa">
      <ref role="1l3spb" node="4GMBmWUHnV9" resolve="IDEA_gitplugin_subs" />
      <node concept="398BVA" id="7SqVNqmc0Va" role="2JcizS">
        <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
        <node concept="2Ry0Ak" id="7SqVNqmc0W1" role="iGT6I">
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
    <node concept="55IIr" id="3c3vDUluHHF" role="auvoZ" />
    <node concept="1l3spV" id="3c3vDUluHHG" role="1l3spN">
      <node concept="3981dG" id="145rAk1QFxH" role="39821P">
        <node concept="3_J27D" id="145rAk1QFxI" role="Nbhlr">
          <node concept="3Mxwew" id="145rAk1QFxN" role="3MwsjC">
            <property role="3MwjfP" value="com.workday.mps.review.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="145rAk1QFxP" role="39821P">
          <ref role="m_rDy" node="7ZoWiKcez96" resolve="com.workday.mps.review" />
          <node concept="398223" id="5gg_jpIHI0o" role="39821P">
            <node concept="2HvfSZ" id="3c3vDUlvyB3" role="39821P">
              <node concept="398BVA" id="3c3vDUlvyCX" role="2HvfZ0">
                <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
                <node concept="2Ry0Ak" id="3c3vDUlvyEb" role="iGT6I">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="3c3vDUlvyEi" role="2Ry0An">
                    <property role="2Ry0Am" value="com.workday.mps.review" />
                    <node concept="2Ry0Ak" id="NvAZPok24z" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="5gg_jpIHI0p" role="Nbhlr">
              <node concept="3Mxwew" id="5gg_jpIHI0A" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="3981dG" id="7SqVNqmc0B5" role="39821P">
        <node concept="3_J27D" id="7SqVNqmc0B6" role="Nbhlr">
          <node concept="3Mxwew" id="7SqVNqmc0B7" role="3MwsjC">
            <property role="3MwjfP" value="git4mps.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="7SqVNqmc0B8" role="39821P">
          <ref role="m_rDy" node="24ZpFMHUaDd" resolve="git4mps" />
          <node concept="398223" id="7SqVNqmc0HO" role="39821P">
            <node concept="3_J27D" id="7SqVNqmc0HP" role="Nbhlr">
              <node concept="3Mxwew" id="7SqVNqmc0HW" role="3MwsjC">
                <property role="3MwjfP" value="languages" />
              </node>
            </node>
            <node concept="L2wRC" id="7SqVNqmc0Jt" role="39821P">
              <ref role="L2wRA" node="7SqVNqmbZUB" resolve="git4mps" />
              <node concept="3yLZsm" id="386y71hfagv" role="3yL2VB">
                <property role="3yLZsk" value="/plugins/git4idea/lib/git4idea-rt.jar" />
                <node concept="398BVA" id="386y71hfaj_" role="3yLZsn">
                  <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="386y71hfajC" role="iGT6I">
                    <property role="2Ry0Am" value="plugins" />
                    <node concept="2Ry0Ak" id="1VZZCFrW2ji" role="2Ry0An">
                      <property role="2Ry0Am" value="git4idea" />
                      <node concept="2Ry0Ak" id="1VZZCFrW2jj" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                        <node concept="2Ry0Ak" id="1VZZCFrW2jk" role="2Ry0An">
                          <property role="2Ry0Am" value="git4idea-rt.jar" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node concept="3yLZsm" id="386y71hfagD" role="3yL2VB">
                <property role="3yLZsk" value="/plugins/git4idea/lib/git4idea.jar" />
                <node concept="398BVA" id="386y71hfak3" role="3yLZsn">
                  <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
                  <node concept="2Ry0Ak" id="386y71hfak6" role="iGT6I">
                    <property role="2Ry0Am" value="plugins" />
                    <node concept="2Ry0Ak" id="1VZZCFrW2ok" role="2Ry0An">
                      <property role="2Ry0Am" value="git4idea" />
                      <node concept="2Ry0Ak" id="1VZZCFrW2ol" role="2Ry0An">
                        <property role="2Ry0Am" value="lib" />
                        <node concept="2Ry0Ak" id="1VZZCFrW2om" role="2Ry0An">
                          <property role="2Ry0Am" value="git4idea.jar" />
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
    <node concept="10PD9b" id="3c3vDUluHHH" role="10PD9s" />
    <node concept="3b7kt6" id="3c3vDUluIVL" role="10PD9s" />
    <node concept="m$_wf" id="24ZpFMHUaDd" role="3989C9">
      <property role="m$_wk" value="git4mps" />
      <node concept="3_J27D" id="24ZpFMHUaDh" role="m$_yQ">
        <node concept="3Mxwew" id="24ZpFMHUaDi" role="3MwsjC">
          <property role="3MwjfP" value="Git Integration - MPS Stubs" />
        </node>
      </node>
      <node concept="3_J27D" id="24ZpFMHUaDj" role="m_cZH">
        <node concept="3Mxwew" id="24ZpFMHUaDk" role="3MwsjC">
          <property role="3MwjfP" value="git4mps" />
        </node>
      </node>
      <node concept="3_J27D" id="24ZpFMHUaDl" role="m$_w8">
        <node concept="3Mxwew" id="24ZpFMHUaDm" role="3MwsjC">
          <property role="3MwjfP" value="1.0.0" />
        </node>
      </node>
      <node concept="3_J27D" id="24ZpFMHUaDn" role="3s6cr7">
        <node concept="3Mxwew" id="24ZpFMHUaDo" role="3MwsjC">
          <property role="3MwjfP" value="MPS BaseLanguage stubs for git4idea IDEA plugin. This is necessary for MPS plugins to work with the Git Integration." />
        </node>
      </node>
      <node concept="m$_yC" id="24ZpFMHUaDq" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="24ZpFMHUaDr" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:RJsmGEieyQ" resolve="jetbrains.mps.vcs" />
      </node>
      <node concept="m$_yC" id="7SqVNqmc1me" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:I6XuqGYf8K" resolve="Git4Idea" />
      </node>
      <node concept="m$_yB" id="7SqVNqmc0Ql" role="m$_yh">
        <property role="1ZOk41" value="true" />
        <ref role="m$_yA" node="7SqVNqmbZUB" resolve="git4mps" />
      </node>
      <node concept="2iUeEo" id="lCZbGfRXeR" role="2iVFfd">
        <property role="2iUeEt" value="Workday" />
        <property role="2iUeEu" value="https://www.workday.com/" />
      </node>
    </node>
    <node concept="m$_wf" id="7ZoWiKcez96" role="3989C9">
      <property role="m$_wk" value="com.workday.mps.review" />
      <node concept="3_J27D" id="7ZoWiKcez98" role="m$_yQ">
        <node concept="3Mxwew" id="7ZoWiKcez9x" role="3MwsjC">
          <property role="3MwjfP" value="MPS Code Review" />
        </node>
      </node>
      <node concept="3_J27D" id="7ZoWiKcez9a" role="m_cZH">
        <node concept="3Mxwew" id="7ZoWiKcezc1" role="3MwsjC">
          <property role="3MwjfP" value="com.workday.mps.review" />
        </node>
      </node>
      <node concept="3_J27D" id="7ZoWiKcez9c" role="m$_w8">
        <node concept="3Mxwew" id="7ZoWiKcezcb" role="3MwsjC">
          <property role="3MwjfP" value="1.0.0" />
        </node>
      </node>
      <node concept="3_J27D" id="7ZoWiKcezc5" role="3s6cr7">
        <node concept="3Mxwew" id="7ZoWiKcezc7" role="3MwsjC">
          <property role="3MwjfP" value="MPS code review plugin for interaction with pull requests. Provides basic review information, inline comment support, and more." />
        </node>
      </node>
      <node concept="2iUeEo" id="7ZoWiKcezcd" role="2iVFfd">
        <property role="2iUeEt" value="Workday" />
        <property role="2iUeEu" value="https://www.workday.com/" />
      </node>
      <node concept="m$_yC" id="7ZoWiKceS$J" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="3c3vDUlxVVQ" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:RJsmGEieyQ" resolve="jetbrains.mps.vcs" />
      </node>
      <node concept="m$_yC" id="24ZpFMHUaIA" role="m$_yJ">
        <ref role="m$_y1" node="24ZpFMHUaDd" resolve="git4mps" />
      </node>
      <node concept="m$_yB" id="7SqVNqmc1gN" role="m$_yh">
        <ref role="m$_yA" node="3c3vDUlvEDO" resolve="com.workday.mps.flux" />
      </node>
      <node concept="m$_yB" id="7SqVNqmc1hF" role="m$_yh">
        <ref role="m$_yA" node="NvAZPok1o0" resolve="com.workday.mps.review" />
      </node>
      <node concept="m$_yB" id="7SqVNqmc1iE" role="m$_yh">
        <ref role="m$_yA" node="NvAZPok1$i" resolve="com.workday.mps.review.git" />
      </node>
      <node concept="m$_yB" id="7SqVNqmc1ks" role="m$_yh">
        <ref role="m$_yA" node="NvAZPok1Na" resolve="com.workday.mps.review.lang" />
      </node>
    </node>
    <node concept="1E1JtA" id="7SqVNqmbZUB" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="git4mps" />
      <property role="3LESm3" value="b435930b-30fc-42f3-9225-ec36209b7a33" />
      <property role="2GAjPV" value="true" />
      <node concept="398BVA" id="7SqVNqmbZUC" role="3LF7KH">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="7SqVNqmbZUD" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="7SqVNqmbZUE" role="2Ry0An">
            <property role="2Ry0Am" value="git4mps" />
            <node concept="2Ry0Ak" id="2_WcI2qoxAf" role="2Ry0An">
              <property role="2Ry0Am" value="git4mps.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="7SqVNqmbZUG" role="3bR37C">
        <node concept="3bR9La" id="7SqVNqmbZUH" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
        </node>
      </node>
      <node concept="1SiIV0" id="7SqVNqmbZUI" role="3bR37C">
        <node concept="3bR9La" id="7SqVNqmbZUJ" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
        </node>
      </node>
      <node concept="1SiIV0" id="7SqVNqmbZUK" role="3bR37C">
        <node concept="3bR9La" id="7SqVNqmbZUL" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="1VZZCFrVOm3" role="3bR37C">
        <node concept="1BurEX" id="1VZZCFrVOm4" role="1SiIV1">
          <node concept="398BVA" id="1VZZCFrVOlU" role="1BurEY">
            <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
            <node concept="2Ry0Ak" id="1VZZCFrVOlV" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="1VZZCFrW21g" role="2Ry0An">
                <property role="2Ry0Am" value="git4idea" />
                <node concept="2Ry0Ak" id="1VZZCFrW21h" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1VZZCFrW21i" role="2Ry0An">
                    <property role="2Ry0Am" value="git4idea-rt.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3yrxFa" id="1WYef1dBkhn" role="2gdwQb">
            <ref role="3yrxFb" node="5ded7SEwYHh" />
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="1VZZCFrVOme" role="3bR37C">
        <node concept="1BurEX" id="1VZZCFrVOmf" role="1SiIV1">
          <node concept="398BVA" id="1VZZCFrVOm5" role="1BurEY">
            <ref role="398BVh" node="24ZpFMHU9es" resolve="mps_home" />
            <node concept="2Ry0Ak" id="1VZZCFrVOm6" role="iGT6I">
              <property role="2Ry0Am" value="plugins" />
              <node concept="2Ry0Ak" id="1VZZCFrW25J" role="2Ry0An">
                <property role="2Ry0Am" value="git4idea" />
                <node concept="2Ry0Ak" id="1VZZCFrW25K" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="1VZZCFrW25L" role="2Ry0An">
                    <property role="2Ry0Am" value="git4idea.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node concept="3yrxFa" id="1WYef1dBkhX" role="2gdwQb">
            <ref role="3yrxFb" node="5ded7SEwYN$" />
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="3c3vDUlvEDO" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.workday.mps.flux" />
      <property role="3LESm3" value="39100436-4455-4b98-b3a6-4512d25abac4" />
      <property role="2GAjPV" value="false" />
      <node concept="398BVA" id="3c3vDUlvEG7" role="3LF7KH">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="3c3vDUlvEIj" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="3c3vDUlvEJs" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.flux" />
            <node concept="2Ry0Ak" id="NvAZPok1zF" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.flux.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3c3vDUlvEOj" role="3bR37C">
        <node concept="3bR9La" id="3c3vDUlvEOk" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="3rtmxn" id="7Uvm6D4BW1i" role="3bR31x">
        <node concept="3LXTmp" id="7Uvm6D4BW1j" role="3rtmxm">
          <node concept="3qWCbU" id="7Uvm6D4BW1k" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="398BVA" id="7Uvm6D4BW1l" role="3LXTmr">
            <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
            <node concept="2Ry0Ak" id="7Uvm6D4BW1m" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Uvm6D4BW1n" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.flux" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="NvAZPok1o0" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.workday.mps.review" />
      <property role="3LESm3" value="301737e2-0a75-4665-a1a3-af0218114a24" />
      <property role="2GAjPV" value="false" />
      <node concept="398BVA" id="NvAZPok1o2" role="3LF7KH">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="NvAZPok1o3" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="NvAZPok1o4" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.review" />
            <node concept="2Ry0Ak" id="NvAZPok1_X" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.review.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1o6" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1o7" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1oa" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1ob" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1oc" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1od" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1og" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1oh" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1Af" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1Ag" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1H905DlDUSw" resolve="MPS.OpenAPI" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1Aj" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1Ak" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" node="NvAZPok1$i" resolve="com.workday.mps.review.git" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1S8" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1S9" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" node="3c3vDUlvEDO" resolve="com.workday.mps.flux" />
        </node>
      </node>
      <node concept="3rtmxn" id="7Uvm6D4BW1p" role="3bR31x">
        <node concept="3LXTmp" id="7Uvm6D4BW1q" role="3rtmxm">
          <node concept="3qWCbU" id="7Uvm6D4BW1r" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="398BVA" id="7Uvm6D4BW1s" role="3LXTmr">
            <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
            <node concept="2Ry0Ak" id="7Uvm6D4BW1t" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Uvm6D4BW1u" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3yDmncox1a_" role="3bR37C">
        <node concept="1BurEX" id="3yDmncox1aA" role="1SiIV1">
          <node concept="398BVA" id="3yDmncox1aw" role="1BurEY">
            <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
            <node concept="2Ry0Ak" id="3yDmncox1ax" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="3yDmncox1ay" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review" />
                <node concept="2Ry0Ak" id="3yDmncox1az" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3yDmncox1a$" role="2Ry0An">
                    <property role="2Ry0Am" value="okhttp-3.10.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="3yDmncox1aG" role="3bR37C">
        <node concept="1BurEX" id="3yDmncox1aH" role="1SiIV1">
          <node concept="398BVA" id="3yDmncox1aB" role="1BurEY">
            <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
            <node concept="2Ry0Ak" id="3yDmncox1aC" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="3yDmncox1aD" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review" />
                <node concept="2Ry0Ak" id="3yDmncox1aE" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="3yDmncox1aF" role="2Ry0An">
                    <property role="2Ry0Am" value="okio-1.14.0.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="4dp0YvdNW$1" role="3bR37C">
        <node concept="3bR9La" id="4dp0YvdNW$2" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
        </node>
      </node>
      <node concept="1SiIV0" id="4nMF5a0Wj$u" role="3bR37C">
        <node concept="1BurEX" id="4nMF5a0Wj$v" role="1SiIV1">
          <node concept="398BVA" id="4nMF5a0Wj$p" role="1BurEY">
            <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
            <node concept="2Ry0Ak" id="4nMF5a0Wj$q" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="4nMF5a0Wj$r" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review" />
                <node concept="2Ry0Ak" id="4nMF5a0Wj$s" role="2Ry0An">
                  <property role="2Ry0Am" value="lib" />
                  <node concept="2Ry0Ak" id="4nMF5a0Wj$t" role="2Ry0An">
                    <property role="2Ry0Am" value="gson-2.8.2.jar" />
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtA" id="NvAZPok1$i" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.workday.mps.review.git" />
      <property role="3LESm3" value="b7b6b13b-3ca1-4444-85ae-5f7f691136b9" />
      <property role="2GAjPV" value="false" />
      <node concept="398BVA" id="NvAZPok1$k" role="3LF7KH">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="NvAZPok1$l" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="NvAZPok1$m" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.review.git" />
            <node concept="2Ry0Ak" id="NvAZPok1$n" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.review.git.msd" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1$o" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1$p" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1$q" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1$r" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1$s" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1$t" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1$u" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1$v" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1$w" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1$x" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
        </node>
      </node>
      <node concept="1SiIV0" id="24ZpFMHUaBW" role="3bR37C">
        <node concept="3bR9La" id="24ZpFMHUaBX" role="1SiIV1">
          <property role="3bR36h" value="true" />
          <ref role="3bR37D" node="7SqVNqmbZUB" resolve="git4mps" />
        </node>
      </node>
      <node concept="3rtmxn" id="7Uvm6D4BW1I" role="3bR31x">
        <node concept="3LXTmp" id="7Uvm6D4BW1J" role="3rtmxm">
          <node concept="3qWCbU" id="7Uvm6D4BW1K" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="398BVA" id="7Uvm6D4BW1L" role="3LXTmr">
            <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
            <node concept="2Ry0Ak" id="7Uvm6D4BW1M" role="iGT6I">
              <property role="2Ry0Am" value="solutions" />
              <node concept="2Ry0Ak" id="7Uvm6D4BW1N" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review.git" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1E1JtD" id="NvAZPok1Na" role="3989C9">
      <property role="BnDLt" value="true" />
      <property role="TrG5h" value="com.workday.mps.review.lang" />
      <property role="3LESm3" value="374dabf8-c190-4644-a3e1-b17a25f2e467" />
      <property role="2GAjPV" value="false" />
      <node concept="398BVA" id="NvAZPok1Pm" role="3LF7KH">
        <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
        <node concept="2Ry0Ak" id="NvAZPok1Pn" role="iGT6I">
          <property role="2Ry0Am" value="languages" />
          <node concept="2Ry0Ak" id="NvAZPok1Po" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.review.lang" />
            <node concept="2Ry0Ak" id="NvAZPok1Rp" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.review.lang.mpl" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1SL" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1SM" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1SN" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1SO" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1SP" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1SQ" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIZ" resolve="MPS.Editor" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1SR" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1SS" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1ST" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1SU" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1SV" role="3bR37C">
        <node concept="3bR9La" id="NvAZPok1SW" role="1SiIV1">
          <property role="3bR36h" value="false" />
          <ref role="3bR37D" node="NvAZPok1o0" resolve="com.workday.mps.review" />
        </node>
      </node>
      <node concept="1SiIV0" id="NvAZPok1SX" role="3bR37C">
        <node concept="1Busua" id="NvAZPok1SY" role="1SiIV1">
          <ref role="1Busuk" to="ffeo:7Kfy9QB6KXW" resolve="jetbrains.mps.lang.core" />
        </node>
      </node>
      <node concept="3rtmxn" id="7Uvm6D4BW1B" role="3bR31x">
        <node concept="3LXTmp" id="7Uvm6D4BW1C" role="3rtmxm">
          <node concept="3qWCbU" id="7Uvm6D4BW1D" role="3LXTna">
            <property role="3qWCbO" value="icons/**, resources/**" />
          </node>
          <node concept="398BVA" id="7Uvm6D4BW1E" role="3LXTmr">
            <ref role="398BVh" node="24ZpFMHU9ep" resolve="project.home" />
            <node concept="2Ry0Ak" id="7Uvm6D4BW1F" role="iGT6I">
              <property role="2Ry0Am" value="languages" />
              <node concept="2Ry0Ak" id="7Uvm6D4BW1G" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review.lang" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="1l3spW" id="4GMBmWUHnV9">
    <property role="2DA0ip" value="../../dist" />
    <property role="TrG5h" value="IDEA_gitplugin_subs" />
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

