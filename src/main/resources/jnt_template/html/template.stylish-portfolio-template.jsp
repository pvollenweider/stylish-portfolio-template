<!DOCTYPE html>
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
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${fn:escapeXml(renderContext.mainResource.node.displayableName)}</title>

    <template:addResources type="css" resources="bootstrap.min.css"/>
    <template:addResources type="css" resources="all.min.css"/>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700,300italic,400italic,700italic"
          rel="stylesheet" type="text/css">
    <template:addResources type="css" resources="simple-line-icons/css/simple-line-icons.css"/>
    <template:addResources type="css" resources="stylish-portfolio.min.css"/>
    <template:addResources type="javascript" resources="jquery.min.js"/>
    <template:addResources type="javascript" resources="popper.min.js"/>
    <template:addResources type="javascript" resources="bootstrap.min.js"/>
    <template:addResources type="javascript" resources="jquery.easing.min.js"/>
    <template:addResources type="javascript" resources="stylish-portfolio.min.js" targetTag="body"/>

</head>

<body id="page-top">
<a class="menu-toggle rounded" href="#">
    <i class="fas fa-bars"></i>
</a>
<nav id="sidebar-wrapper">
    <ul class="sidebar-nav">
        <li class="sidebar-brand">
            <a class="js-scroll-trigger" href="#page-top">${renderContext.mainResource.node.displayableName}</a>
        </li>
        <c:set var="pageContentPath" value="${renderContext.mainResource.node.path}/pagecontent"/>
        <jcr:node var="pageContentNode" path="${pageContentPath}"/>
        <c:if test="${! empty pageContentNode}">
            <c:set var="mainSections" value="${jcr:getChildrenOfType(pageContentNode, 'spmix:menuLabel')}"/>
            <c:forEach items="${mainSections}" var="mainSection" varStatus="status">
                <li class="sidebar-nav-item">
                    <a class="js-scroll-trigger"
                       href="#${mainSection.name}">${mainSection.properties.menuLabel.string}</a>
                </li>
            </c:forEach>
        </c:if>
        <%--
        <li class="sidebar-nav-item">
            <a class="js-scroll-trigger" href="#page-top">Home</a>
        </li>
        <li class="sidebar-nav-item">
            <a class="js-scroll-trigger" href="#about">About</a>
        </li>
        <li class="sidebar-nav-item">
            <a class="js-scroll-trigger" href="#services">Services</a>
        </li>
        <li class="sidebar-nav-item">
            <a class="js-scroll-trigger" href="#portfolio">Portfolio</a>
        </li>
        <li class="sidebar-nav-item">
            <a class="js-scroll-trigger" href="#contact">Contact</a>
        </li>
        --%>
    </ul>
</nav>


<template:area path="pagecontent"/>
<footer class="footer text-center">
    <div class="container">
        <template:area path="social-links" areaAsSubNode="true" nodeTypes="spnt:socialLink" areaType="spnt:socialLinks" level="0" moduleType="absoluteArea"/>
        <p class="text-muted small mb-0">
            <template:area path="copyright" areaAsSubNode="true" nodeTypes="spnt:copyright" areaType="spnt:copyrightList" level="0" moduleType="absoluteArea" listLimit="1"/>
        </p>
    </div>
</footer>
<a class="scroll-to-top rounded js-scroll-trigger" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>
</body>
</html>
