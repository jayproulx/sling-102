<%@page session="false" %>

<%@page import="org.apache.sling.api.resource.ValueMap" %>

<%@taglib prefix="sling" uri="http://sling.apache.org/taglibs/sling/1.0" %>

<sling:defineObjects/>

<%
    final ValueMap attributes = resource.getValueMap();
    final String title = (String)attributes.get("jcr:title");
%>

<html>
  <head>
    <title>A JSP Example</title>
  </head>
  <body>
    <h1><%= title %></h1>

    jsp-example.jsp

    <sling:include path="<%= resource.getPath() %>" replaceSelectors="links" />
  </body>
</html>