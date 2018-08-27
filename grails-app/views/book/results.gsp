<!DOCTYPE html>
<html>
    <head>
        <g:set var="entityName" value="${message(code: 'book.label', default: 'Book')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<asset:stylesheet src="main_theme.css"/>
		<asset:stylesheet src="application.css"/>
		<asset:stylesheet src="bootstrap.css"/>
    </head>
    <body>
    	<body class="landing is-preload">
		<div id="page-wrapper">
			<header id="header" class="alt">
			

			</header>

			<!-- Banner -->
			<section id="banner">
				<h2>Find Books</h2>
				<p></p>
				<ul class="actions special">
					<li><g:link controller="book" class="button primary" action="index">Book List</g:link></li>
					
				</ul>
				</section>
			<!-- Main -->
				<section id="main" class="main-finder" class="container">
					            <section>
					<g:form name="findBooks" url="[action:'findByAuthorOrBookName', controller:'book']">
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<span class="name-label-span">Book Name: </span>
					
							<input id="name" type="text" name="name"></input>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 col-md-offset-4">
							<span class="author-label-span">Author Name: </span>
							<input id="author" type="text" name="author"></input>
						</div>
					</div>
					<div class="row">
						<div class="col-md-5 col-md-offset-4">
						<button type="submit" class="button primary">Find</button>
						</div>
					</div>
					</div>
					</g:form>
				</section>
				<g:if test="${books.size() > 0}">
					<section class="box special">
						<header class="major">
							<h2>Book List
							</h2>
							<p></p>
							<div class="row title">
                                    <div class="col-md-4 "><span class="header-title">Title</span></div>
                                    <div class="col-md-4"><span class="header-title">Author</span></div>
                                    <div class="col-md-4"><span class="header-title">Image</span></div>
                                    </div>
							 <g:each var="book" in="${books}">
                                    <div class="row list-book-item">
                                    <div class="col-md-4 list-column">${book.title}</div>
                                    <div class="col-md-4 list-column">${book.authors[0]}</div>
                                    <div class="col-md-4 "><img class="" src="${book.image}"></div>
                                    </div>
							 </g:each>
						</header>
						<span class="image featured"><img src="images/pic01.jpg" alt="" /></span>
					</section>
				</g:if>
					</div>

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