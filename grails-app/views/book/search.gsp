<!DOCTYPE html>
<html>
    <head>
        <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<asset:stylesheet src="main_theme.css"/>
		<asset:stylesheet src="bootstrap.css"/>
    </head>
    <body>
    	<body class="landing is-preload">
		<div id="page-wrapper">
			<header id="header" class="alt">
			

			</header>

			<!-- Banner -->
			<section id="banner">
				<h2>Books</h2>
				<p></p>
				<ul class="actions special">
					<li><a href="#" class="button primary">Sign Up</a></li>
					<li><a href="#" class="button">Learn More</a></li>
				</ul>
				</section>

			<!-- Main -->
				<section id="main" class="container">
                    <g:link controller="book">XXX</g:link>
					<section class="box special">
						<header class="major">
							<h2>Listado de libros
							</h2>
							<p></p>
							<div class="row">
                                    <div class="col-md-4"><span>Title</div>
                                    <div class="col-md-4">Author</div>
                                    <div class="col-md-4">Image</div>
                                    </div>
							 <g:each var="book" in="${books}">
                                    <div class="row">
                                    <div class="col-md-4">${book.title}</div>
                                    <div class="col-md-4">${book.authors[0]}</div>
                                    <div class="col-md-4"><img class="" src="${book.image}"></div>
                                    </div>
							 </g:each>
						</header>
						<span class="image featured"><img src="images/pic01.jpg" alt="" /></span>
					</section>
					</div>

				</section>
				<section>
					<g:form name="findBooks" url="[action:'findByAuthorOrBookName', controller:'book']">
						<input id="name" type="text" name="name"></input>
						<input id="author" type="text" name="author"></input>
						<button type="submit">Find</button>
					</g:form>
				</section>


			
		</div>
					<!-- Scripts -->
			<asset:javascript src="assets/js/jquery.min.js"/>
			<asset:javascript src="assets/js/jquery.dropotron.min.js"/>
			<asset:javascript src="assets/js/jquery.scrollex.min.js"/>
			<asset:javascript src="assets/js/browser.min.js"/>
			<asset:javascript src="assets/js/breakpoints.min.js"/>
			<asset:javascript src="assets/js/util.js"/>
			<asset:javascript src="assets/js/main.js"/>

    </body>
<html>