{% extends '../layout.swig' %}

{% block content %}

	<p>
	    <h1>{{article.title}}</h1>
      <hr>
	    <div>{{article.content}}</div>

	</p>

	<p><a href="/articles">回到列表</a></p>

  <h3>發起人</h3>
    <img class="gravatar" src="http://www.gravatar.com/avatar/{{ article.author.gravatarHash }}?s=70" />

    {{ article.author.name }}

  <h3>參加者</h3>
  <ul>
  {% for member in article.members %}
    <li>
      <img src="http://www.gravatar.com/avatar/{{ member.gravatarHash }}?s=50" />
      <a href="/users/{{ member.id }}">{{ member.name }}</a>
    </li>
  {% endfor %}
  </ul>

  <a class="btn btn-primary" href="/articles/{{article.id}}/join">
    立刻參加
  </a>
  <a class="btn btn-default" href="/articles/{{article.id}}/unjoin">
    取消參加
  </a>
{#

	<h3>Comments</h3>
	<ul>
	{% for comment in article.Comments %}
		<li>
		{{ comment.id }}
		{{ comment.title }}
		{{ comment.content }}
		{{ comment.authorId }}
		</li>
	{% endfor %}
	</ul>

	<h3>New Comment</h3>
	<form class="form-horizontal" action="/articles/{{article.id}}/comment" method="POST">
        <fieldset>
          <div class="form-group">
            <label for="title" class="col-lg-2 control-label">Title:</label>
            <div class="col-lg-10">
              <input type="text" class="form-control" id="title" name="title">
            </div>
          </div>

          <div class="form-group">
            <label for="content" class="col-lg-2 control-label">內文:</label>
            <div class="col-lg-10">
                <textarea class="form-control" name="content" id="content" class="myEditor" cols="30" rows="10"></textarea>
            </div>
          </div>

          <div class="form-group">
            <div class="col-lg-10 col-lg-offset-2">
              <button class="btn btn-default">Cancel</button>
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </div>
        </fieldset>
        </form>
#}

{% endblock %}

