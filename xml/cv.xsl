<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"><xsl:template match="/">
<xsl:comment>

	
	October 2006,

	Built by Arkasha (Christian FERRARIO) chris_ferrario@hotmail.com

	This file represents the page setup of a CV. It is called by an .xml file.
	It works just like a CSS file but dynamically calls the data from the XML

	Using a JavaScript script for collapsible tables called CollapsibleRows.js
	if this ressource is not found delete line :
	<script language="JavaScript" src="CollapsibleRows.js"></script>
	The result won't be quite as pretty, but it will work.

	Feel free to modify it all

</xsl:comment>
<div class="cv">
  

<table class="address">
  <tr>
    <td>
      <b>
      <xsl:value-of select="page/address/name"></xsl:value-of>,</b><br/>
      <xsl:value-of select="page/address/street"></xsl:value-of>,<br/>
      <xsl:value-of select="page/address/city"></xsl:value-of>,
      <xsl:value-of select="page/address/zip"></xsl:value-of>,<br/>
      <xsl:value-of select="page/address/country"></xsl:value-of>,<br/>
       <a>
        <xsl:attribute name="href">
          mailto:<xsl:value-of select="page/address/email" />
        </xsl:attribute>
        <xsl:value-of select="page/address/email"></xsl:value-of>
      </a>
    </td>
  </tr>	
</table>
<br/>
  
<table class="objective" >
  <tr>
    <td class="title">
      <xsl:value-of select="page/cv/objective/text"></xsl:value-of> :<br></br>
    </td>
  </tr>
  <tr>
    <td>
      <xsl:value-of select="page/cv/objective/obj"></xsl:value-of>
    </td>
  </tr>	
</table>
<br/>
  
<table class="strenghts" width="100%">
    <tr>
      <td class="title">
        <xsl:value-of select="page/cv/strength/text"></xsl:value-of> :<br></br>
      </td>
    </tr>
    <tr>
      <td>
        <xsl:value-of select="page/cv/strength/obj"></xsl:value-of>
      </td>
    </tr>
  </table>
<br/>
  
<div class="title">
    <xsl:value-of select="page/cv/proexperience/text"/> :
</div>
<table id="jobs" class="collapsible" width="100%" border="0">
  <xsl:for-each select="page/cv/proexperience/job">
    <tr>
      <td width="200px" align="left">
        <xsl:value-of select="time"></xsl:value-of>
      </td>
      <td align="left" class="title">
        <xsl:value-of select="position"></xsl:value-of>
      </td>
      <td align="right">
        <xsl:value-of select="location"></xsl:value-of>
      </td>
    </tr>
    <tr>
      <td colspan="3">
        <xsl:choose>
          <xsl:when test="link">
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="link" />
              </xsl:attribute>
              <xsl:attribute name="target">new</xsl:attribute>
              <xsl:value-of select="company"></xsl:value-of>
            </a>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="company"></xsl:value-of>
          </xsl:otherwise>
        </xsl:choose>
        <ul>
          <xsl:for-each select="note">
            <li>
              <xsl:value-of select="text"></xsl:value-of>
            </li>
          </xsl:for-each>
        </ul>
      </td>
    </tr>
  </xsl:for-each>
</table>
<br/>

<div class="title">
  <xsl:value-of select="page/cv/internships/text"/>
</div>
<table id="internship" class="collapsible" width="100%" border="0">
 	<xsl:for-each select="page/cv/internships/internship">
 	<tr>
 		<td width="200px" align="left" class="title"><a>
			<xsl:attribute name="href"><xsl:value-of select="link" /></xsl:attribute>
			<xsl:attribute name="target">_self</xsl:attribute>
		<xsl:value-of select="name"></xsl:value-of></a></td>
		<td align="left"><xsl:value-of select="time"></xsl:value-of></td>
		<td align="right"><i><xsl:value-of select="sem"></xsl:value-of></i></td>	 	
	</tr>
 	<tr>
 		<td colspan="3">
			<b> <xsl:value-of select="role"></xsl:value-of></b><br></br>
			<i> <xsl:value-of select="team"></xsl:value-of></i><br></br>
			<xsl:value-of select="condensed"></xsl:value-of><br></br>
			<i> <xsl:value-of select="skills"></xsl:value-of></i><br></br>
 		</td>
 	</tr>
 	</xsl:for-each>
</table>
<br/>

<div class="title">
  <xsl:value-of select="page/cv/school-project/text"/>
</div>
<table id="school" class="collapsible" width="100%" border="0">
  <xsl:for-each select="page/cv/school-project/project">
    <tr>
      <td width="200px" align="left" class="title">

        <a>
          <xsl:choose>
            <xsl:when test="link">
              <xsl:attribute name="href">
                <xsl:value-of select="link" />
              </xsl:attribute>
            </xsl:when>
          </xsl:choose>
          <xsl:attribute name="target">new</xsl:attribute>
          <xsl:value-of select="name"></xsl:value-of>
          </a>
      </td>
      <td align="left">
        <xsl:value-of select="time"></xsl:value-of>
      </td>
      <td align="right">
        <i>
          <xsl:value-of select="sem"></xsl:value-of>
        </i>
      </td>
    </tr>
    <tr>
      <td colspan="3">
        <b>
          <xsl:value-of select="role"></xsl:value-of>
        </b>
        <br></br>
        <i>
          <xsl:value-of select="team"></xsl:value-of>
        </i>
        <br></br>
        <xsl:value-of select="condensed"></xsl:value-of>
        <br></br>
        <i>
          <xsl:value-of select="skills"></xsl:value-of>
        </i>
        <br></br>
      </td>
    </tr>
  </xsl:for-each>
</table>
<br/>
	
<div class="title">
  <xsl:value-of select="page/cv/experience/text"/> :
</div>
<table id="jobs" class="collapsible" width="100%" border="0">
  <xsl:for-each select="page/cv/experience/job">
    <tr>
      <td width="200px" align="left">
        <xsl:value-of select="time"></xsl:value-of>
      </td>
      <td align="left" class="title">
        <xsl:value-of select="position"></xsl:value-of>
      </td>
      <td align="right">
        <xsl:value-of select="location"></xsl:value-of>
      </td>
    </tr>
    <tr>
      <td colspan="3">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="link" />
          </xsl:attribute>
          <xsl:attribute name="target">new</xsl:attribute>
          <xsl:value-of select="company"></xsl:value-of>
        </a> :
        <ul>
          <xsl:for-each select="note">
            <li>
              <xsl:value-of select="text"></xsl:value-of>
            </li>
          </xsl:for-each>
        </ul>
      </td>
    </tr>
  </xsl:for-each>
</table>
<br/>

<div class="title">
  <xsl:value-of select="page/cv/education/text"/> :
</div>
<table class="collapsible" width="100%" border="0" id="education">
  <xsl:for-each select="page/cv/education/school">
    <tr>
      <td>
        <b>
          <a>
            <xsl:attribute name="href">
              <xsl:value-of select="link" />
            </xsl:attribute>
            <xsl:attribute name="target">new</xsl:attribute>
            <xsl:value-of select="name"/>
          </a>
        </b>,
        <xsl:value-of select="type"></xsl:value-of>,
        <xsl:value-of select="location"></xsl:value-of>
      </td>
    </tr>
    <tr>
      <td>
        <xsl:if test="desc">
          <xsl:value-of select="desc"></xsl:value-of>
          <br></br>
          <br></br>
        </xsl:if>
        <xsl:for-each select="diploma">
          <b>
            <xsl:value-of select="name"></xsl:value-of>,
          </b>
          <xsl:value-of select="year"></xsl:value-of>,
          <i>
            <xsl:value-of select="desc"></xsl:value-of>
          </i><br></br>
        </xsl:for-each>
      </td>
    </tr>
  </xsl:for-each>
</table>
<br/>
  
  	 <div class="title" colspan ="3">
       <xsl:value-of select="page/cv/skills/text"/> :
	</div>
 	<table class="collapsible" width="100%" border="0" id="skills">
 		<tr>
 			<td class="title"><xsl:value-of select="page/cv/skills/technical/text"></xsl:value-of>
 			</td>
 		</tr>
 		<tr>
 			<td>
 				<ul><xsl:for-each select="page/cv/skills/technical/skill">
					<li>
					<b><xsl:value-of select="name"></xsl:value-of> : </b>
					<i><xsl:value-of select="desc"></xsl:value-of></i><br></br>
					</li>
				</xsl:for-each></ul>
 			</td>
 		</tr>
 		<tr>
 			<td class="title"><xsl:value-of select="page/cv/skills/non-technical/text"></xsl:value-of>
 			</td>
 		</tr>
 		<tr>
 			<td>
 				<ul><xsl:for-each select="page/cv/skills/non-technical/skill">
					<li>
					<b><xsl:value-of select="name"></xsl:value-of> : </b>
					<i><xsl:value-of select="desc"></xsl:value-of></i><br></br>
					</li>
				</xsl:for-each></ul>
 			</td>
 		</tr>
 	</table>
   <br/>
   
  	 <div class="title" colspan ="3">
       <xsl:value-of select="page/cv/books/text"/> :
	</div>
 	<table class="collapsible" width="100%" border="0" id="skills">
    <xsl:for-each select="page/cv/books/category">
 		<tr>
 			<td class="title"><xsl:value-of select="name"></xsl:value-of>
 			</td>
 		</tr>
 		<tr>
 			<td>
 				<ul><xsl:for-each select="book">
					<li>
					<b><xsl:value-of select="title"></xsl:value-of> : </b>
					<i><xsl:value-of select="author"></xsl:value-of></i>  - 
					<xsl:value-of select="editor"></xsl:value-of><br></br>
					</li>
				</xsl:for-each></ul>
 			</td>
 		</tr>
    </xsl:for-each>
 	</table>


</div>
	
</xsl:template></xsl:stylesheet>
