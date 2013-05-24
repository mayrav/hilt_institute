<h1>{{full_name}}</h1>
<h2>{{position}}</h2>
<p id="description">
<img src="/static/images/people/{{name}}.jpg" alt="{{full_name}}">
{{description}}
</p>
%rebase templates/layout.tpl title=get('full_name'), addstyles=['person'], scripts=None
