<%--
  User: cesarreyes
  Date: 25/11/10
  Time: 21:06
--%>
<%--
  ~ Copyright 2006-2009 the original author or authors.
  ~
  ~ Licensed under the Apache License, Version 2.0 (the "License");
  ~ you may not use this file except in compliance with the License.
  ~ You may obtain a copy of the License at
  ~
  ~       http://www.apache.org/licenses/LICENSE-2.0
  ~
  ~ Unless required by applicable law or agreed to in writing, software
  ~ distributed under the License is distributed on an "AS IS" BASIS,
  ~ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  ~ See the License for the specific language governing permissions and
  ~ limitations under the License.
  --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <title>Usuario | Mercury</title>

  <style type="text/css">

  body {
    margin: 0;
    padding: 0;
    text-align: center;
    color: #444444;
    font-family: verdana, arial, helvetica, sans-serif;
    font-size: 76%;
    line-height: 1em;
  }

  div#page {
    margin: 0pt auto;
    padding: 0pt;
    text-align: center;
    width: 780px;
  }

  div {
    font-size: 1em;
  }

  div#header {
    height: 79px;
    margin: 0pt 0pt 2em;
    padding: 6px 0pt 2px 10px;
    text-align: left;
  }

  div#content {
    margin: 0pt auto 20px;
    padding: 0pt;
    position: relative;
    text-align: left;
    width: 701px;
  }

  div#footer {
    color: #444444;
    font-size: 0.9em;
    padding: 0pt 39px;
    text-align: left;
  }

  div#branding {
    float: left;
    margin: 0pt;
    padding: 10px 0pt 10px 30px;
    text-align: left;
    width: 50%;
  }

  div#main {
    margin: 0pt;
    text-align: center;
    width: 97% !important;
  }

  div#main {
    padding-left: 15px;
  }

  div#main {
    display: inline;
    float: left;
    width: 530px;
  }

  div#main h1 {
    margin-left: -330px;
  }

  h1 {
    color: #B4C24B;
    font-size: 2.2em;
    letter-spacing: -1px;
    line-height: 1.3em;
    margin: 0pt 0pt 0.5em;
    padding: 0pt;
  }

  h1, h2, h3, h4, h5, h6 {
    font-family: tahoma, arial, helvetica, sans-serif;
    font-weight: normal;
  }

  form {
    font-size: 0.9em;
  }

  div#main {
    text-align: center;
  }

  #loginForm fieldset {
    margin: 0pt auto;
    padding: 10px 30px;
    width: 300px;
  }

  li > fieldset, form > fieldset {
    border: 1px solid silver;
  }

  fieldset {
    color: #444444;
    margin: 0pt 0pt 5px;
    padding: 10px 10px 5px;
  }

  div#main p {
    margin-bottom: 0pt;
    margin-top: 10px;
    padding-bottom: 0pt;
  }

  p {
    font-size: 1em;
    line-height: 1.4em;
    margin: 0pt 0pt 1.5em;
    padding: 0pt;
  }

  a, a:link a:active {
    color: #1465B7;
    text-decoration: none;
  }

  div#footer div#divider {
    border-top: 1px solid #CCCCCC;
    margin: 0pt 0pt 4px;
  }

  div#footer .left {
    float: left;
  }

  div#footer .right {
    float: right;
  }

  div#footer div#divider div {
    border-top: 6px solid #EBF5FC;
    margin: 1px 0pt 0pt;
  }

  form ul {
    list-style-image: none;
    list-style-position: outside;
    list-style-type: none;
    padding: 0pt;
    position: relative;
    width: 100%;
  }

  div#main form ul li {
    list-style-type: none;
    margin-left: 0pt;
  }

  #loginForm li {
    padding: 0pt;
    text-align: left;
  }

  form[id] li {
    display: block;
  }

  form li {
    line-height: 2em;
    margin: 0pt;
    padding: 1px 1px 6px 5px;
  }

  form ul {
    list-style-image: none;
    list-style-position: outside;
    list-style-type: none;
  }

  label.desc {
    border: 0pt none;
    color: #444444;
    display: block;
    font-size: 1em;
    font-weight: bold;
    line-height: 1.3em;
    margin: 4px 0pt 3px;
  }

  .req {
    color: #FF9900;
    font-size: 1em !important;
    font-weight: bold;
  }

  form .medium {
    width: 170px;
  }

  input.text {
    padding: 2px;
    background: #FFFFFF repeat-x scroll center top;
    border-color: #7C7C7C rgb(195, 195, 195) rgb(221, 221, 221);
    border-style: solid;
    border-width: 1px;
    color: #333333;
    font-size: 1.2em;
  }

  form li.error {
    background-color: #FFDFDF;
    margin: 10px 0pt !important;
    border: 1px solid red;
    padding-left: 5px !important;
  }

  </style>
  <script type="text/javascript" src="${resource(dir: 'js', file: 'global.js')}"></script>
</head>
<body id="login">

<div id="page">
  <div id="header" class="clearfix">

    <div id="branding">
      <h1><a href="${ctx}">Mercury</a></h1>

      <p>Bug tracking, issue tracking and project management software.</p>
    </div>

  </div>

  <div id="content" class="clearfix">
    <div id="main">

      <h1>Cambie su contrase&ntilde;a</h1>

      <g:form action="resetPassword" name="loginForm">
        <g:hiddenField name="userId" value="${user.id}"/>
        <fieldset style="padding-bottom: 0">
          <ul>
            <g:if test="${flash.message}">
              <li class="error">No existe ningun usuario registrado con ese correo electronico.</li>
            </g:if>
            <li>
              <label for="password" class="required desc">
                Contrase&ntilde;a <span class="req">*</span>
              </label>
              <g:passwordField name="password"/>
            </li>
            <li>
              <label for="confirmPassword" class="required desc">
                Confirmar contrase&ntilde;a <span class="req">*</span>
              </label>
              <g:passwordField name="confirmPassword"/>
            </li>

            <li>
              <input type="submit" class="button" value="Enviar" tabindex="4"/>
            </li>
          </ul>
        </fieldset>
      </g:form>

    </div>

  </div>
  <div style="clear:both;"></div>
  <div id="footer" class="clearfix">

    <div id="divider">
      <div></div>
    </div>
    <span class="left">Version ${version}</span>
    <span class="right">
    &copy; <a href="http://nopalsoft.mx">Nopalsoft</a>
    </span>

  </div>

</div>
</body>
</html>