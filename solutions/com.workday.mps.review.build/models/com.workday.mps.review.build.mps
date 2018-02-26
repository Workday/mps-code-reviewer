<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:60f8facb-4a7a-44c0-97ce-9973f6b5d56d(com.workday.mps.review.build)">
  <persistence version="9" />
  <languages>
    <use id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build" version="0" />
    <use id="0cf935df-4699-4e9c-a132-fa109541cba3" name="jetbrains.mps.build.mps" version="3" />
  </languages>
  <imports>
    <import index="ffeo" ref="r:874d959d-e3b4-4d04-b931-ca849af130dd(jetbrains.mps.ide.build)" />
    <import index="hh2c" ref="r:5c70a88b-9c77-4970-b930-a9ff601a03a0(jetbrains.mps.ide.idea.plugin.build)" />
  </imports>
  <registry>
    <language id="798100da-4f0a-421a-b991-71f8c50ce5d2" name="jetbrains.mps.build">
      <concept id="5481553824944787378" name="jetbrains.mps.build.structure.BuildSourceProjectRelativePath" flags="ng" index="55IIr" />
      <concept id="7321017245476976379" name="jetbrains.mps.build.structure.BuildRelativePath" flags="ng" index="iG8Mu">
        <child id="7321017245477039051" name="compositePart" index="iGT6I" />
      </concept>
      <concept id="2754769020641429190" name="jetbrains.mps.build.structure.BuildSource_JavaContentFolder" flags="ng" index="nFU4i">
        <property id="2754769020641429191" name="relativePath" index="nFU4j" />
        <property id="5248329904288265467" name="kind" index="3LZaj6" />
      </concept>
      <concept id="4993211115183325728" name="jetbrains.mps.build.structure.BuildProjectDependency" flags="ng" index="2sgV4H">
        <reference id="5617550519002745380" name="script" index="1l3spb" />
        <child id="4129895186893471026" name="artifacts" index="2JcizS" />
      </concept>
      <concept id="4993211115183250894" name="jetbrains.mps.build.structure.BuildSource_JavaDependencyLibrary" flags="ng" index="2sjeV3">
        <reference id="4993211115183250895" name="library" index="2sjeV2" />
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
      <concept id="2591537044435828004" name="jetbrains.mps.build.structure.BuildLayout_CompileOutputOf" flags="ng" index="Saw0i">
        <reference id="2591537044435828006" name="module" index="Saw0g" />
      </concept>
      <concept id="6647099934206700647" name="jetbrains.mps.build.structure.BuildJavaPlugin" flags="ng" index="10PD9b" />
      <concept id="7181125477683417252" name="jetbrains.mps.build.structure.BuildExternalLayoutDependency" flags="ng" index="13uUGR">
        <reference id="7181125477683417255" name="layout" index="13uUGO" />
        <child id="7181125477683417254" name="artifacts" index="13uUGP" />
      </concept>
      <concept id="7389400916848050074" name="jetbrains.mps.build.structure.BuildLayout_Jar" flags="ng" index="3981dx" />
      <concept id="7389400916848050071" name="jetbrains.mps.build.structure.BuildLayout_Zip" flags="ng" index="3981dG" />
      <concept id="7389400916848050060" name="jetbrains.mps.build.structure.BuildLayout_NamedContainer" flags="ng" index="3981dR">
        <child id="4380385936562148502" name="containerName" index="Nbhlr" />
      </concept>
      <concept id="7389400916848036984" name="jetbrains.mps.build.structure.BuildLayout_Folder" flags="ng" index="398223" />
      <concept id="7389400916848073810" name="jetbrains.mps.build.structure.BuildSource_JavaContentRoot" flags="ng" index="398b2D">
        <child id="2754769020641429197" name="folders" index="nFU4p" />
        <child id="7389400916848073811" name="basePath" index="398b2C" />
      </concept>
      <concept id="7389400916848073784" name="jetbrains.mps.build.structure.BuildSource_JavaModule" flags="ng" index="398b33">
        <child id="2754769020641646251" name="dependencies" index="nCB5Z" />
        <child id="7389400916848073826" name="sources" index="398b2p" />
      </concept>
      <concept id="7389400916848136194" name="jetbrains.mps.build.structure.BuildFolderMacro" flags="ng" index="398rNT">
        <child id="7389400916848144618" name="defaultPath" index="398pKh" />
      </concept>
      <concept id="7389400916848153117" name="jetbrains.mps.build.structure.BuildSourceMacroRelativePath" flags="ng" index="398BVA">
        <reference id="7389400916848153130" name="macro" index="398BVh" />
      </concept>
      <concept id="5617550519002745364" name="jetbrains.mps.build.structure.BuildLayout" flags="ng" index="1l3spV" />
      <concept id="5617550519002745363" name="jetbrains.mps.build.structure.BuildProject" flags="ng" index="1l3spW">
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
        <child id="1238980147629899306" name="pluginXml" index="I30fb" />
        <child id="2172791612906637490" name="description" index="3s6cr7" />
      </concept>
      <concept id="6592112598314498926" name="jetbrains.mps.build.mps.structure.BuildMpsLayout_Plugin" flags="ng" index="m$_wl">
        <reference id="6592112598314801433" name="plugin" index="m_rDy" />
      </concept>
      <concept id="6592112598314499036" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginModule" flags="ng" index="m$_yB">
        <reference id="6592112598314499037" name="target" index="m$_yA" />
      </concept>
      <concept id="6592112598314499027" name="jetbrains.mps.build.mps.structure.BuildMps_IdeaPluginDependency" flags="ng" index="m$_yC">
        <reference id="6592112598314499066" name="target" index="m$_y1" />
      </concept>
      <concept id="1500819558095907805" name="jetbrains.mps.build.mps.structure.BuildMps_Group" flags="ng" index="2G$12M">
        <child id="1500819558095907806" name="modules" index="2G$12L" />
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
      <concept id="4278635856200826393" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyJar" flags="ng" index="1BurEX">
        <child id="4278635856200826394" name="path" index="1BurEY" />
      </concept>
      <concept id="3189788309731840247" name="jetbrains.mps.build.mps.structure.BuildMps_Solution" flags="ng" index="1E1JtA" />
      <concept id="3189788309731928315" name="jetbrains.mps.build.mps.structure.BuildMps_ModuleDependencyOnJavaModule" flags="ng" index="1E1SXE">
        <reference id="3189788309731928317" name="module" index="1E1SXG" />
      </concept>
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
    <property role="TrG5h" value="mpsCodeReview" />
    <node concept="2_Ic$z" id="3c3vDUlvURm" role="3989C9">
      <property role="2_Ic$$" value="true" />
    </node>
    <node concept="398b33" id="3c3vDUlxefv" role="3989C9">
      <property role="TrG5h" value="git-util" />
      <node concept="2sjeV3" id="3c3vDUlyxGp" role="nCB5Z">
        <ref role="2sjeV2" to="ffeo:16Vg0jOcomR" resolve="idea-libraries" />
      </node>
      <node concept="398b2D" id="3c3vDUlyjHC" role="398b2p">
        <node concept="398BVA" id="3c3vDUlyjIl" role="398b2C">
          <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
          <node concept="2Ry0Ak" id="3c3vDUlyjIQ" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3c3vDUlyjIX" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.review.gitutil" />
            </node>
          </node>
        </node>
        <node concept="nFU4i" id="3c3vDUlyjJ4" role="nFU4p">
          <property role="3LZaj6" value="source" />
          <property role="nFU4j" value="source_gen" />
        </node>
      </node>
      <node concept="2sjeV3" id="3c3vDUlynQS" role="nCB5Z">
        <ref role="2sjeV2" to="ffeo:7TqXBxc99Im" resolve="idea-vcs" />
      </node>
    </node>
    <node concept="2sgV4H" id="4hhvq7oWSQZ" role="1l3spa">
      <ref role="1l3spb" to="ffeo:3IKDaVZmzS6" resolve="mps" />
      <node concept="398BVA" id="4hhvq7oWSR0" role="2JcizS">
        <ref role="398BVh" node="3c3vDUluOxG" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="4StEbUV1YYk" role="1l3spa">
      <ref role="1l3spb" to="hh2c:4tNwrSpaf04" resolve="mpsPlugin" />
      <node concept="398BVA" id="4StEbUV1YYB" role="2JcizS">
        <ref role="398BVh" node="3c3vDUluOxG" resolve="mps.home" />
      </node>
    </node>
    <node concept="13uUGR" id="145rAk1QE4b" role="1l3spa">
      <ref role="13uUGO" to="ffeo:6eCuTcwOnJO" resolve="IDEA" />
      <node concept="398BVA" id="145rAk1QE5M" role="13uUGP">
        <ref role="398BVh" node="3c3vDUluOxG" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3c3vDUlvUMY" role="1l3spa">
      <ref role="1l3spb" to="ffeo:1lMM4owFq4Y" resolve="mpsVcs" />
      <node concept="398BVA" id="3c3vDUlvUOe" role="2JcizS">
        <ref role="398BVh" node="3c3vDUluOxG" resolve="mps.home" />
      </node>
    </node>
    <node concept="2sgV4H" id="3c3vDUlwH8u" role="1l3spa">
      <ref role="1l3spb" to="hh2c:73fHb9hpukJ" resolve="mpsIdeaVcs" />
      <node concept="398BVA" id="3c3vDUlwH9n" role="2JcizS">
        <ref role="398BVh" node="3c3vDUluOxG" resolve="mps.home" />
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
    <node concept="398rNT" id="3c3vDUluOxG" role="1l3spd">
      <property role="TrG5h" value="mps.home" />
      <node concept="398BVA" id="3c3vDUluOye" role="398pKh">
        <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
        <node concept="2Ry0Ak" id="3c3vDUluOyy" role="iGT6I">
          <property role="2Ry0Am" value="artifacts" />
          <node concept="2Ry0Ak" id="3c3vDUluOz1" role="2Ry0An">
            <property role="2Ry0Am" value="MPS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="55IIr" id="3c3vDUluHHF" role="auvoZ" />
    <node concept="1l3spV" id="3c3vDUluHHG" role="1l3spN">
      <node concept="398223" id="4a_X1yzN0AC" role="39821P">
        <node concept="m$_wl" id="4a_X1yzN0BG" role="39821P">
          <ref role="m_rDy" node="7ZoWiKcez96" resolve="com.workday.mps.review" />
          <node concept="398223" id="4a_X1yzN0BH" role="39821P">
            <node concept="3981dx" id="4a_X1yzN0BI" role="39821P">
              <node concept="3_J27D" id="4a_X1yzN0BJ" role="Nbhlr">
                <node concept="3Mxwew" id="4a_X1yzN0BK" role="3MwsjC">
                  <property role="3MwjfP" value="git-util.jar" />
                </node>
              </node>
              <node concept="Saw0i" id="4a_X1yzN0BL" role="39821P">
                <ref role="Saw0g" node="3c3vDUlxefv" resolve="git-util" />
              </node>
            </node>
            <node concept="2HvfSZ" id="4a_X1yzN0BM" role="39821P">
              <node concept="398BVA" id="4a_X1yzN0BN" role="2HvfZ0">
                <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
                <node concept="2Ry0Ak" id="4a_X1yzN0BO" role="iGT6I">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="4a_X1yzN0BP" role="2Ry0An">
                    <property role="2Ry0Am" value="dependencies" />
                    <node concept="2Ry0Ak" id="4a_X1yzN0BQ" role="2Ry0An">
                      <property role="2Ry0Am" value="lib" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3_J27D" id="4a_X1yzN0BR" role="Nbhlr">
              <node concept="3Mxwew" id="4a_X1yzN0BS" role="3MwsjC">
                <property role="3MwjfP" value="lib" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3_J27D" id="4a_X1yzN0AE" role="Nbhlr">
          <node concept="3Mxwew" id="4a_X1yzN0BD" role="3MwsjC">
            <property role="3MwjfP" value="com.workday.yp.review" />
          </node>
        </node>
      </node>
      <node concept="3981dG" id="145rAk1QFxH" role="39821P">
        <node concept="3_J27D" id="145rAk1QFxI" role="Nbhlr">
          <node concept="3Mxwew" id="145rAk1QFxN" role="3MwsjC">
            <property role="3MwjfP" value="com.workday.yp.review.zip" />
          </node>
        </node>
        <node concept="m$_wl" id="145rAk1QFxP" role="39821P">
          <ref role="m_rDy" node="7ZoWiKcez96" resolve="com.workday.mps.review" />
          <node concept="398223" id="5gg_jpIHI0o" role="39821P">
            <node concept="3981dx" id="3c3vDUlyty$" role="39821P">
              <node concept="3_J27D" id="3c3vDUlytyA" role="Nbhlr">
                <node concept="3Mxwew" id="3c3vDUlytzj" role="3MwsjC">
                  <property role="3MwjfP" value="git-util.jar" />
                </node>
              </node>
              <node concept="Saw0i" id="3c3vDUlytzm" role="39821P">
                <ref role="Saw0g" node="3c3vDUlxefv" resolve="git-util" />
              </node>
            </node>
            <node concept="2HvfSZ" id="3c3vDUlvyB3" role="39821P">
              <node concept="398BVA" id="3c3vDUlvyCX" role="2HvfZ0">
                <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
                <node concept="2Ry0Ak" id="3c3vDUlvyEb" role="iGT6I">
                  <property role="2Ry0Am" value="solutions" />
                  <node concept="2Ry0Ak" id="3c3vDUlvyEi" role="2Ry0An">
                    <property role="2Ry0Am" value="dependencies" />
                    <node concept="2Ry0Ak" id="3c3vDUlvyEp" role="2Ry0An">
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
    </node>
    <node concept="10PD9b" id="3c3vDUluHHH" role="10PD9s" />
    <node concept="3b7kt6" id="3c3vDUluIVL" role="10PD9s" />
    <node concept="m$_wf" id="7ZoWiKcez96" role="3989C9">
      <property role="m$_wk" value="com.workday.mps.review" />
      <node concept="m$_yB" id="3c3vDUlv51d" role="m$_yh">
        <ref role="m$_yA" node="3c3vDUlv4Qz" resolve="dependencies" />
      </node>
      <node concept="398BVA" id="5gg_jpIHHYc" role="I30fb">
        <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
        <node concept="2Ry0Ak" id="5gg_jpIHHY$" role="iGT6I">
          <property role="2Ry0Am" value="solutions" />
          <node concept="2Ry0Ak" id="5gg_jpIHHYN" role="2Ry0An">
            <property role="2Ry0Am" value="com.workday.mps.review.ideaPlugin" />
            <node concept="2Ry0Ak" id="5gg_jpIHHZ1" role="2Ry0An">
              <property role="2Ry0Am" value="source_gen" />
              <node concept="2Ry0Ak" id="5gg_jpIHHZ8" role="2Ry0An">
                <property role="2Ry0Am" value="com" />
                <node concept="2Ry0Ak" id="5gg_jpIHHZf" role="2Ry0An">
                  <property role="2Ry0Am" value="workday" />
                  <node concept="2Ry0Ak" id="5gg_jpIHHZm" role="2Ry0An">
                    <property role="2Ry0Am" value="mps" />
                    <node concept="2Ry0Ak" id="5gg_jpIHHZt" role="2Ry0An">
                      <property role="2Ry0Am" value="review" />
                      <node concept="2Ry0Ak" id="5gg_jpIHHZ$" role="2Ry0An">
                        <property role="2Ry0Am" value="ideaPlugin" />
                        <node concept="2Ry0Ak" id="5gg_jpIHHZF" role="2Ry0An">
                          <property role="2Ry0Am" value="plugin.xml" />
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
      <node concept="m$_yB" id="3c3vDUluJhe" role="m$_yh">
        <ref role="m$_yA" node="3c3vDUluJf4" resolve="com.workday.mps.review.ideaPlugin" />
      </node>
      <node concept="3_J27D" id="7ZoWiKcez98" role="m$_yQ">
        <node concept="3Mxwew" id="7ZoWiKcez9x" role="3MwsjC">
          <property role="3MwjfP" value="com.workday.mps.review" />
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
          <property role="3MwjfP" value="A MPS code reviewing tool" />
        </node>
      </node>
      <node concept="2iUeEo" id="7ZoWiKcezcd" role="2iVFfd">
        <property role="2iUeEt" value="Workday" />
        <property role="2iUeEu" value="https://www.workday.com/" />
      </node>
      <node concept="m$_yB" id="3c3vDUlxZQ6" role="m$_yh">
        <ref role="m$_yA" node="3c3vDUlxVYv" resolve="com.workday.mps.review.gitutil" />
      </node>
      <node concept="m$_yB" id="3c3vDUlvEVs" role="m$_yh">
        <ref role="m$_yA" node="3c3vDUlvEDO" resolve="com.workday.mps.review" />
      </node>
      <node concept="m$_yB" id="3c3vDUlv4Mf" role="m$_yh">
        <ref role="m$_yA" node="3c3vDUluOuS" resolve="com.workday.mps.flux" />
      </node>
      <node concept="m$_yC" id="7ZoWiKceS$J" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:4k71ibbKLe8" resolve="jetbrains.mps.core" />
      </node>
      <node concept="m$_yC" id="3c3vDUlxVVQ" role="m$_yJ">
        <ref role="m$_y1" to="ffeo:RJsmGEieyQ" resolve="jetbrains.mps.vcs" />
      </node>
    </node>
    <node concept="2G$12M" id="3c3vDUluJe2" role="3989C9">
      <property role="TrG5h" value="MpsCodeReview" />
      <node concept="1E1JtA" id="3c3vDUlv4Qz" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="dependencies" />
        <property role="3LESm3" value="fb4f8661-54a7-4583-ba4f-fad87946ade2" />
        <property role="2GAjPV" value="false" />
        <node concept="398BVA" id="3c3vDUlv4S7" role="3LF7KH">
          <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
          <node concept="2Ry0Ak" id="3c3vDUlv4SQ" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3c3vDUlv4Tl" role="2Ry0An">
              <property role="2Ry0Am" value="dependencies" />
              <node concept="2Ry0Ak" id="3c3vDUlv4TO" role="2Ry0An">
                <property role="2Ry0Am" value="dependencies.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlv4U3" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlv4U4" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlv4Ua" role="3bR37C">
          <node concept="1BurEX" id="3c3vDUlv4Ub" role="1SiIV1">
            <node concept="398BVA" id="3c3vDUlv4U5" role="1BurEY">
              <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
              <node concept="2Ry0Ak" id="3c3vDUlv4U6" role="iGT6I">
                <property role="2Ry0Am" value="solutions" />
                <node concept="2Ry0Ak" id="3c3vDUlv4U7" role="2Ry0An">
                  <property role="2Ry0Am" value="dependencies" />
                  <node concept="2Ry0Ak" id="3c3vDUlv4U8" role="2Ry0An">
                    <property role="2Ry0Am" value="lib" />
                    <node concept="2Ry0Ak" id="3c3vDUlv4U9" role="2Ry0An">
                      <property role="2Ry0Am" value="gson.jar" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3c3vDUluJf4" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.workday.mps.review.ideaPlugin" />
        <property role="3LESm3" value="8d0bfb9c-a738-4387-aa22-05ebb965c1e1" />
        <property role="2GAjPV" value="false" />
        <node concept="398BVA" id="3c3vDUluJfa" role="3LF7KH">
          <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
          <node concept="2Ry0Ak" id="3c3vDUluJfi" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3c3vDUluJfp" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.review.ideaPlugin" />
              <node concept="2Ry0Ak" id="3c3vDUluJfw" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review.ideaPlugin.msd" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3c3vDUlvEDO" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.workday.mps.review" />
        <property role="3LESm3" value="301737e2-0a75-4665-a1a3-af0218114a24" />
        <property role="2GAjPV" value="false" />
        <node concept="1E1SXE" id="3c3vDUlybF6" role="3bR37C">
          <ref role="1E1SXG" node="3c3vDUlxefv" resolve="git-util" />
        </node>
        <node concept="398BVA" id="3c3vDUlvEG7" role="3LF7KH">
          <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
          <node concept="2Ry0Ak" id="3c3vDUlvEIj" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3c3vDUlvEJs" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.review" />
              <node concept="2Ry0Ak" id="3c3vDUlvEK_" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review.msd" />
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
        <node concept="1SiIV0" id="3c3vDUlvEOl" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlvEOm" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="3c3vDUlv4Qz" resolve="dependencies" />
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlvEOn" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlvEOo" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" to="ffeo:39HJr_hyEzS" resolve="jetbrains.mps.ide.vcs.platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlvEOr" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlvEOs" role="1SiIV1">
            <property role="3bR36h" value="true" />
            <ref role="3bR37D" node="3c3vDUluOuS" resolve="com.workday.mps.flux" />
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlxW3U" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlxW3V" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" node="3c3vDUlxVYv" resolve="com.workday.mps.review.gitutil" />
          </node>
        </node>
        <node concept="1SiIV0" id="7w0OqmgkLP1" role="3bR37C">
          <node concept="3bR9La" id="7w0OqmgkLRt" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbJb" resolve="MPS.Platform" />
          </node>
        </node>
        <node concept="1SiIV0" id="7w0OqmgkLQl" role="3bR37C">
          <node concept="3bR9La" id="7w0OqmgkLR1" role="1SiIV1">
            <ref role="3bR37D" to="ffeo:1TaHNgiIbIQ" resolve="MPS.Core" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3c3vDUluOuS" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.workday.mps.flux" />
        <property role="3LESm3" value="39100436-4455-4b98-b3a6-4512d25abac4" />
        <property role="2GAjPV" value="false" />
        <node concept="398BVA" id="3c3vDUluOvs" role="3LF7KH">
          <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
          <node concept="2Ry0Ak" id="3c3vDUluOvG" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3c3vDUluOvR" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.flux" />
              <node concept="2Ry0Ak" id="3c3vDUluOw6" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.flux.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUluO_u" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUluO_v" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:mXGwHwhVPj" resolve="JDK" />
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlviU0" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlviU1" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:1ia2VB5guYy" resolve="MPS.IDEA" />
          </node>
        </node>
      </node>
      <node concept="1E1JtA" id="3c3vDUlxVYv" role="2G$12L">
        <property role="BnDLt" value="true" />
        <property role="TrG5h" value="com.workday.mps.review.gitutil" />
        <property role="3LESm3" value="600c3dba-1113-447c-b62e-b7676673fded" />
        <property role="2GAjPV" value="false" />
        <node concept="1E1SXE" id="3c3vDUlyrVr" role="3bR37C">
          <ref role="1E1SXG" node="3c3vDUlxefv" resolve="git-util" />
        </node>
        <node concept="398BVA" id="3c3vDUlxW0U" role="3LF7KH">
          <ref role="398BVh" node="3c3vDUluIXm" resolve="project.home" />
          <node concept="2Ry0Ak" id="3c3vDUlxW1G" role="iGT6I">
            <property role="2Ry0Am" value="solutions" />
            <node concept="2Ry0Ak" id="3c3vDUlxW2t" role="2Ry0An">
              <property role="2Ry0Am" value="com.workday.mps.review.gitutil" />
              <node concept="2Ry0Ak" id="3c3vDUlxW2T" role="2Ry0An">
                <property role="2Ry0Am" value="com.workday.mps.review.gitutil.msd" />
              </node>
            </node>
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlxW3h" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlxW3i" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:44LXwdzyvTi" resolve="Annotations" />
          </node>
        </node>
        <node concept="1SiIV0" id="3c3vDUlxW3j" role="3bR37C">
          <node concept="3bR9La" id="3c3vDUlxW3k" role="1SiIV1">
            <property role="3bR36h" value="false" />
            <ref role="3bR37D" to="ffeo:39HJr_hyEzS" resolve="jetbrains.mps.ide.vcs.platform" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

