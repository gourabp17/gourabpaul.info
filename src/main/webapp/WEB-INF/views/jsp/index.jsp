<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
    <title>GOURAB PAUL-PROFILE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    
    <meta name="Description" CONTENT="GOURAB PAUL's online profile. Directly download the resume or forward it as mail">
    <meta name="keywords" content="online cv,online profile, online resume, resume, cv, gourab paul, gourab's profile, software developer, web developer, curriculum vitae, online curriculum vitae, software engineer, it professional">

    <link href="resources/core/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="resources/core/css/stylecontent.css" rel="stylesheet" type="text/css"/>
    <link href="resources/core/css/general.css" rel="stylesheet" type="text/css"/>
    <link href="resources/core/css/profile.css" rel="stylesheet" type="text/css"/>
    <link href="resources/core/css/experience.css" rel="stylesheet" type="text/css"/>
    <link href="resources/core/css/abilities.css" rel="stylesheet" type="text/css"/>
    <link href="resources/core/css/contact.css" rel="stylesheet" type="text/css"/>
    <link rel="icon" href="resources/core/images/faviconp.ico" type="image/icon">

</head>
<body>
    <div id="topimage"/></div>
<ul id="topnavbar" class="container">
    <li  onClick="window.location.href = '#myprofile';">
        <a>PROFILE</a> </li>
    <li  onClick="window.location.href = '#experience';">
        <a>EXPERIENCE</a> </li>
    <li  onClick="window.location.href = '#abilities';"> 
        <a>ABILITIES</a> </li>
    <li  onClick="window.location.href = '#contact';"> 
        <a>CONTACT</a> </li>
</ul>


<div id='myprofile'>
    <%@include file="profile.jsp" %>

</div>
<div id='experience'>
    <%@include file="experience.jsp" %>
</div>
<div id='abilities'>
    <%@include file="abilities.jsp" %>
</div>
<div id='contact'>
    <%@include file="contactme.jsp" %>
</div>


<div class="row " id="mynavbar">

    <div class="sidebar-nav">
        <div class="navbar navbar-default" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>
            <div class="navbar-collapse collapse sidebar-navbar-collapse">
                <ul class="nav navbar-nav">
                    <li  onClick="window.location.href = '#myprofile';">
                        <a class="myprofile">PROFILE</a> </li>
                    <li  onClick="window.location.href = '#experience';">
                        <a class="experience">EXPERIENCE</a> </li>
                    <li  onClick="window.location.href = '#abilities';"> 
                        <a class="abilities">ABILITIES</a> </li>
                    <li  onClick="window.location.href = '#contact';"> 
                        <a class="contact">CONTACT</a> </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>


</div>
<div class="bar">
    <div class="bounce"  onClick="window.location.href = '#myprofile';">

        <span class="glyphicon glyphicon-forward" aria-hidden="true"></span>
    </div></div>
</body>
<script src="resources/core/js/jquery.js" type="text/javascript"></script>
<script src="resources/core/js/general.js" type="text/javascript"></script>
<script src="resources/core/js/bootstrap.min.js" type="text/javascript"></script>