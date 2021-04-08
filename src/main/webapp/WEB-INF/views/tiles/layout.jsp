<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>title</title>
<tiles:insertAttribute name="css" />
<tiles:insertAttribute name="script" />
</head>
<body>
    
    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="left" />
   
   
       
    <tiles:insertAttribute name="body" />
     <tiles:insertAttribute name="right" />
       
    
</body>
</html>