<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Creative - Bootstrap Admin Template</title>
        <!-- CSS -->  
        {foreach from=$liste_css item=css}
             <link href="{$ROOT}ressources/css/{$css}" rel="stylesheet" />
        {/foreach}
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
        <!--[if lt IE 9]>
          <script src="js/html5shiv.js"></script>
          <script src="js/respond.min.js"></script>
          <script src="js/lte-ie7.js"></script>
        <![endif]-->
    </head>

    <body>
        <!-- container section start -->
       <section id="container" class="">
            {include file="./nav_bar.tpl"}
            <!--sidebar start-->
            {include file="./sidebar.tpl"}
            
            
            
<!--main content start-->
<section id="main-content">
    <section class="wrapper">            
        <!--overview start-->
        {include file="./breadcrumb.tpl"}
 