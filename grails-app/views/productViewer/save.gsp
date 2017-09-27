<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
    <meta name="layout" content="main"/>
    <title>Render Domain</title>
</head>
<body>
Bar Code: <g:fieldValue bean="${productViewer}" field="barCode"/><br/>
Description: <g:fieldValue bean="${productViewer}" field="description"/><br/>
Low Price: <g:fieldValue bean="${productViewer}" field="lowPrice"/><br/>
High Price: <g:fieldValue bean="${productViewer}" field="highPrice"/><br/>
Avg Price: <g:fieldValue bean="${productViewer}" field="averagePrice"/><br/>
Ideal Price: <g:fieldValue bean="${productViewer}" field="idealPrice"/><br/>
</body>
</html>
