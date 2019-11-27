<%@ page language="java" contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%--@elvariable id="currentNode" type="org.jahia.services.content.JCRNodeWrapper"--%>
<%--@elvariable id="out" type="java.io.PrintWriter"--%>
<%--@elvariable id="script" type="org.jahia.services.render.scripting.Script"--%>
<%--@elvariable id="scriptInfo" type="java.lang.String"--%>
<%--@elvariable id="workspace" type="java.lang.String"--%>
<%--@elvariable id="renderContext" type="org.jahia.services.render.RenderContext"--%>
<%--@elvariable id="currentResource" type="org.jahia.services.render.Resource"--%>
<%--@elvariable id="url" type="org.jahia.services.render.URLGenerator"--%>
<div class="row">
    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
        <template:area path="${currentNode.name}-1" areaAsSubNode="true" nodeTypes="spnt:iconBox"
                       areaType="spnt:iconBoxList"/>
    </div>
    <div class="col-lg-3 col-md-6 mb-5 mb-lg-0">
        <template:area path="${currentNode.name}-2" areaAsSubNode="true" nodeTypes="spnt:iconBox"
                       areaType="spnt:iconBoxList"/>
    </div>
    <div class="col-lg-3 col-md-6 mb-5 mb-md-0">
        <template:area path="${currentNode.name}-3" areaAsSubNode="true" nodeTypes="spnt:iconBox"
                       areaType="spnt:iconBoxList"/>
    </div>
    <div class="col-lg-3 col-md-6">
        <template:area path="${currentNode.name}-4" areaAsSubNode="true" nodeTypes="spnt:iconBox"
                       areaType="spnt:iconBoxList"/>
    </div>
</div>