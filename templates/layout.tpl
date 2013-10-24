<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>{{title or 'HILT Institute'}}</title>
<style type="text/css">
@import url(/static/css/main.css);
%for stylesheet in addstyles:
@import url(/static/css/{{stylesheet}}.css);
%end
</style>
%if scripts:
%include templates/scripts.tpl scripts=scripts
%end
</head>

<body>
<header>
<img src="/static/images/logo.png" alt="HILT Institute">
<h2>Arlington Career Center</h2>
<h1>HILT Institute</h1>
<h3>Celebrating Cultures, Languages &amp; Dreams</h3>
<nav>
<a href='/'>Home</a>
<a href='/about'>About Us</a>
<a href='/schedule'>Schedule</a>
<a href='/staff'>Staff</a>
<a href='/students'>Students</a>
<a href='/academics'>Academics</a>
<a href='/cte'>CTE</a>
<a href='/activities'>Activities</a>
<a href='/calendar'>Calendar</a>
<a href='/contact'>Contact</a>
<a href='/grammer'>Grammer Test</a>
</nav>
</header>

<section>
  %include
</section>

<footer>
<a href="http://validator.w3.org/check/referer">
<strong> HTML </strong> Valid! </a>
<a href="http://jigsaw.w3.org/css-validator/check/referer?profile=css3">
<strong> CSS </strong> Valid! </a>
</footer>

</body>
</html>
