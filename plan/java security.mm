<map version="freeplane 1.7.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="java security" FOLDED="false" ID="ID_660232944" CREATED="1550098237729" MODIFIED="1550953824106" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="20" RULE="ON_BRANCH_CREATION"/>
<node TEXT="java 11" POSITION="right" ID="ID_1820615439" CREATED="1550098247341" MODIFIED="1550098250921">
<edge COLOR="#ff0000"/>
<node TEXT="location of default policies and security configs" ID="ID_900403649" CREATED="1550098258170" MODIFIED="1550098747298"/>
<node TEXT="limited vs. unlimited cryptography" ID="ID_930921963" CREATED="1550098751036" MODIFIED="1550098766113"/>
<node TEXT="crypto providers" ID="ID_332459314" CREATED="1551313508561" MODIFIED="1551313514385">
<node TEXT="https://docs.oracle.com/javase/7/docs/technotes/guides/security/SunProviders.html" ID="ID_55873732" CREATED="1551313515719" MODIFIED="1551313515719" LINK="https://docs.oracle.com/javase/7/docs/technotes/guides/security/SunProviders.html"/>
</node>
<node TEXT="enough on crypto as such so far" ID="ID_1049094376" CREATED="1550099585611" MODIFIED="1550099594858"/>
</node>
<node TEXT="running secure code" POSITION="right" ID="ID_1091766756" CREATED="1550100241432" MODIFIED="1550100774501">
<edge COLOR="#00ff00"/>
<node TEXT="add   -Djava.security.manager" ID="ID_1510986854" CREATED="1550102296473" MODIFIED="1550102505510">
<node TEXT="https://docs.oracle.com/javase/7/docs/technotes/guides/security/troubleshooting-security.html" ID="ID_396886654" CREATED="1551121059826" MODIFIED="1551121059826" LINK="https://docs.oracle.com/javase/7/docs/technotes/guides/security/troubleshooting-security.html"/>
</node>
<node TEXT="overriding default policy" ID="ID_2458051" CREATED="1550102532400" MODIFIED="1550102543962"/>
<node TEXT="default forbid all - pick allowed" ID="ID_1114406130" CREATED="1550102545455" MODIFIED="1550102594430"/>
<node TEXT="default allow all - pick forbidden" ID="ID_1564348398" CREATED="1550102563718" MODIFIED="1550102600979"/>
<node TEXT="doAsPrivileged" ID="ID_458080779" CREATED="1550172038463" MODIFIED="1550172046475">
<node TEXT="Subject" ID="ID_1061611218" CREATED="1550172326062" MODIFIED="1550172331771"/>
<node TEXT="Principal" ID="ID_548387425" CREATED="1550172332272" MODIFIED="1550172337819"/>
<node TEXT="Login" ID="ID_383361930" CREATED="1550172344349" MODIFIED="1550172348142"/>
</node>
</node>
<node TEXT="logging" POSITION="right" ID="ID_1595586334" CREATED="1551120481397" MODIFIED="1551120487006">
<edge COLOR="#007c00"/>
<node ID="ID_1751240400" CREATED="1551120830098" MODIFIED="1551120830098"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <pre http-equiv="content-type" content="text/html; charset=utf-8" style="font-family: Courier New, Monaco, Courier, monospace; color: rgb(68, 68, 68); font-size: 12px; font-style: normal; font-weight: 400; letter-spacing: normal; text-align: start; text-indent: 0px; text-transform: none; word-spacing: 0px">-Djava.security.debug=help</pre>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="simplified container" POSITION="right" ID="ID_1769551029" CREATED="1550172374183" MODIFIED="1550172380524">
<edge COLOR="#7c7c00"/>
<node TEXT="executing tasks found in jars" ID="ID_347723181" CREATED="1550172382432" MODIFIED="1550172390983"/>
<node TEXT="permissions statically granted" ID="ID_13260173" CREATED="1550172526406" MODIFIED="1550172527870">
<node TEXT="https://stackoverflow.com/questions/42720149/what-is-a-purpose-of-the-secureclassloader" ID="ID_669041620" CREATED="1550172606490" MODIFIED="1550172606490" LINK="https://stackoverflow.com/questions/42720149/what-is-a-purpose-of-the-secureclassloader"/>
</node>
<node TEXT="masking dangerous operations" ID="ID_945361306" CREATED="1550172395057" MODIFIED="1550172410645"/>
<node TEXT="-Djava.security.auth.login.config" ID="ID_86823438" CREATED="1550235886774" MODIFIED="1550235888816"/>
</node>
<node TEXT="identity manager" POSITION="right" ID="ID_1965821620" CREATED="1550198685217" MODIFIED="1550198697709">
<edge COLOR="#0000ff"/>
<node TEXT="docker run -e KEYCLOAK_USER=admin -e KEYCLOAK_PASSWORD=admin -p 8080:8080  jboss/keycloak" ID="ID_1680569229" CREATED="1550198698425" MODIFIED="1550198698425"/>
<node TEXT="apache syncope" ID="ID_760041213" CREATED="1550613936824" MODIFIED="1550613942318"/>
<node TEXT="https://evolveum.com/midpoint/" ID="ID_325237441" CREATED="1550614053620" MODIFIED="1550614053620" LINK="https://evolveum.com/midpoint/"/>
</node>
<node TEXT="alternative/additional security managers" POSITION="right" ID="ID_1286814896" CREATED="1551221938245" MODIFIED="1551221951470">
<edge COLOR="#7c007c"/>
<node TEXT="jsboss/wildfly" ID="ID_1223458764" CREATED="1551221956422" MODIFIED="1551221963981"/>
</node>
<node TEXT="using keycloack login modue" POSITION="right" ID="ID_464581766" CREATED="1550235491964" MODIFIED="1550235604151" HGAP_QUANTITY="15.499999955296518 pt" VSHIFT_QUANTITY="23.249999307096026 pt">
<edge COLOR="#00ff00"/>
</node>
<node TEXT="SecureClassLoader" POSITION="left" ID="ID_1384795580" CREATED="1550101406439" MODIFIED="1550171090066" HGAP_QUANTITY="12.500000044703482 pt" VSHIFT_QUANTITY="-14.999999552965178 pt">
<edge COLOR="#ff00ff"/>
</node>
<node TEXT="AccessController" POSITION="left" ID="ID_330932893" CREATED="1550103558992" MODIFIED="1550103561789">
<edge COLOR="#007c7c"/>
</node>
<node TEXT="http://www.securingjava.com" POSITION="left" ID="ID_452789986" CREATED="1550172728533" MODIFIED="1550172728538" LINK="http://www.securingjava.com">
<edge COLOR="#ff0000"/>
</node>
<node TEXT="apache fortress" POSITION="left" ID="ID_1019358576" CREATED="1550339619430" MODIFIED="1550339633941" LINK="https://directory.apache.org/fortress/">
<edge COLOR="#ff00ff"/>
</node>
<node TEXT="links" POSITION="left" ID="ID_1839861543" CREATED="1550953363573" MODIFIED="1551975950913" HGAP_QUANTITY="22.249999754130847 pt" VSHIFT_QUANTITY="79.49999763071544 pt">
<edge COLOR="#7c0000"/>
<node TEXT="https://blog.frankel.ch/jvm-security/2/" ID="ID_1891855162" CREATED="1550953384471" MODIFIED="1550953384471" LINK="https://blog.frankel.ch/jvm-security/2/"/>
<node TEXT="https://blog.frankel.ch/jvm-security/1/" ID="ID_8896570" CREATED="1550953416263" MODIFIED="1550953416263" LINK="https://blog.frankel.ch/jvm-security/1/"/>
<node TEXT="https://blog.frankel.ch/java-security-manager/" ID="ID_1994842628" CREATED="1550953428794" MODIFIED="1550953428794" LINK="https://blog.frankel.ch/java-security-manager/"/>
<node TEXT="https://blog.frankel.ch/jvm-security/3/" ID="ID_168755820" CREATED="1550953448813" MODIFIED="1550953448813" LINK="https://blog.frankel.ch/jvm-security/3/"/>
<node TEXT="https://docs.oracle.com/javase/tutorial/security/index.html" ID="ID_800393398" CREATED="1550703617145" MODIFIED="1550953821910" LINK="https://docs.oracle.com/javase/tutorial/security/index.html" HGAP_QUANTITY="52.99999883770946 pt" VSHIFT_QUANTITY="46.49999861419205 pt"/>
<node TEXT="accessController" ID="ID_1500282414" CREATED="1551975934720" MODIFIED="1551975950912" HGAP_QUANTITY="12.500000044703482 pt" VSHIFT_QUANTITY="32.99999901652339 pt">
<node TEXT="https://docs.oracle.com/javase/8/docs/technotes/guides/security/doprivileged.html" ID="ID_164992682" CREATED="1551975886331" MODIFIED="1551975886331" LINK="https://docs.oracle.com/javase/8/docs/technotes/guides/security/doprivileged.html"/>
<node TEXT="https://docs.oracle.com/javase/7/docs/technotes/guides/security/doprivileged.html" ID="ID_1158177386" CREATED="1551975897718" MODIFIED="1551975897718" LINK="https://docs.oracle.com/javase/7/docs/technotes/guides/security/doprivileged.html"/>
<node TEXT="https://stackoverflow.com/questions/2233761/when-should-accesscontroller-doprivileged-be-used" ID="ID_431894527" CREATED="1551975906290" MODIFIED="1551975906290" LINK="https://stackoverflow.com/questions/2233761/when-should-accesscontroller-doprivileged-be-used"/>
<node TEXT="https://www.programcreek.com/java-api-examples/?class=java.security.AccessController&amp;method=doPrivileged" ID="ID_1580176408" CREATED="1551975932825" MODIFIED="1551975932825" LINK="https://www.programcreek.com/java-api-examples/?class=java.security.AccessController&amp;method=doPrivileged"/>
<node TEXT="https://www.cs.mun.ca/java-api-1.5/guide/security/spec/security-specTOC.fm.html" ID="ID_570350648" CREATED="1551992558813" MODIFIED="1551992558813" LINK="https://www.cs.mun.ca/java-api-1.5/guide/security/spec/security-specTOC.fm.html"/>
<node TEXT="https://docs.oracle.com/en/java/javase/11/security/java-security-overview1.html" ID="ID_1240629485" CREATED="1551998120640" MODIFIED="1551998120640" LINK="https://docs.oracle.com/en/java/javase/11/security/java-security-overview1.html"/>
<node ID="ID_785147034" CREATED="1552865466406" MODIFIED="1552865466406" LINK="https://web.fhnw.ch/plattformen/as/vorlesungsunterlagen-1/copy_of_java-security/an-introductory-java-security-example"><richcontent TYPE="NODE">

<html>
  <head>
    
  </head>
  <body>
    <a http-equiv="content-type" content="text/html; charset=utf-8" href="https://web.fhnw.ch/plattformen/as/vorlesungsunterlagen-1/copy_of_java-security/an-introductory-java-security-example">https://web.fhnw.ch/plattformen/as/vorlesungsunterlagen-1/copy_of_java-security/an-introductory-java-security-example</a> 
  </body>
</html>

</richcontent>
</node>
</node>
</node>
</node>
</map>
