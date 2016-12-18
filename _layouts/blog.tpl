<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>{{ site.blog.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
{% include head.tpl %}
<link href="http://{{ site.blog.host }}/blog/feed.xml" rel="alternate" title="{{ site.blog.name }}" type="application/atom+xml" />
<link rel="stylesheet" type="text/css" href="/assets/css/blog.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/code/sunburst.css" />
{% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}
</head>

<body class="{% if page.pageClass %}{{ page.pageClass }}{% else %}{{ layout.pageClass }}{% endif %}">

<div class="main">
	{{ content }}

	<footer>
		<p>&copy; Since 2012 <a href="http://weixin.qq.com/r/Ojrfx1vEuQbGrR_k928o">穿军装的石子</a></p>
	</footer>
</div>

<aside>
	<h2><a href="/"><i class="fa fa-home"></i></a> / <a href="/blog/">{{ site.blog.name }}</a><a href="/blog/feed.xml" class="feed-link" title="Subscribe"><i class="fa fa-rss-square"></i></a></h2>
	<nav class="block">
		<ul>
		{% for category in site.blog.categories %}<li class="{{ category.name }}"><a href="/blog/category/{{ category.name }}/">{{ category.title }}</a></li>
		{% endfor %}
		<li class="discovery"><a href="/discovery/">发现</a></li>
		</ul>
	</nav>
	
	<form action="/search/" class="block block-search">
		<h3>搜索</h3>
		<p><input type="search" name="q" placeholder="输入关键词按回车搜索" /></p>
	</form>
	
	<div class="block block-about">
		<h3>关于我</h3>
		<figure>
			{% if site.meta.author.gravatar %}<img src="{{ site.meta.gravatar}}{{ site.meta.author.gravatar }}?s=48" />{% endif %}
			<figcaption><strong>{{ site.meta.author.name }}</strong></figcaption>
		</figure>
		<p>微信公众号：穿军装的石子</p>
		<p>铁道兵是铺在铁路上的石子，承载着钢轨和列车，承载着国家的希望。</p>
	</div>
	
	<div class="block block-license">
		<h3>版权申明</h3>
		<p>本网站所刊载的所有内容，包括但不限于文字、照片、影像、插图、图表、视频等素材，均受《中华人民共和国著作权法》、《中华人民共和国著作权法实施细则》及国际著作权公约的保护。著作权登记【鲁作登字-2014-A-005026】</p>
	</div>
	
	<div class="block block-thank">
		<h3>Powered by</h3>
		<p>
			<a href="http://disqus.com/" target="_blank" title="云评论服务">Disqus</a>,
			<a href="http://elfjs.com/" target="_blank">elf+js</a>,
			<a href="https://github.com/" target="_blank">GitHub</a>,
			<a href="http://www.google.com/cse/" target="_blank" title="自定义站内搜索">Google Custom Search</a>,
			<a href="http://en.gravatar.com/" target="_blank" title="统一头像标识服务">Gravatar</a>,
			<a href="http://softwaremaniacs.org/soft/highlight/en/">HighlightJS</a>,
			<a href="https://github.com/mojombo/jekyll" target="_blank">jekyll</a>,
			<a href="https://github.com/mytharcher/SimpleGray" target="_blank">SimpleGray</a>
		</p>
	</div>
</aside>

<script type="text/javascript" src="http://elfjs.qiniudn.com/code/elf-0.5.0.min.js"></script>
<script src="http://yandex.st/highlightjs/7.3/highlight.min.js"></script>
<script src="/assets/js/site.js"></script>
{% for script in page.scripts %}<script src="{{ script }}"></script>
{% endfor %}
<script>
site.URL_GOOGLE_API = '{{site.meta.gapi}}';
site.URL_DISCUS_COMMENT = '{{ site.meta.author.disqus }}' ? 'http://{{ site.meta.author.disqus }}.{{ site.meta.disqus }}' : '';

site.VAR_SITE_NAME = '{{ site.name }}';
site.VAR_GOOGLE_CUSTOM_SEARCH_ID = '{{ site.meta.author.gcse }}';
site.TPL_SEARCH_TITLE = '#{0} / 搜索：#{1}';
</script>
{% include baidu-stats.tpl %}

</body>
</html>
