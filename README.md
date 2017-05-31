# chisel planning:

# try to recreate video example 

#markdown input file :
<!-- # My Life in Desserts

## Chapter 1: The Beginning

"You just *have* to try the cheesecake," he said. "Ever since it appeared in
**Food & Wine** this place has been packed every night."
Using a markdown parser, we could convert that example markdown document into the following chunk of HTML: -->

#HTML output:

<!-- "<h1>My Life in Desserts</h1>

<h2>Chapter 1: The Beginning</h2>

<p>"You just <em>have</em> to try the cheesecake," he said. "Ever since it appeared in <strong>Food & Wine</strong> this place has been packed every night."</p> -->
"


# compare to other parser (Redcarpet):
renderer = Redcarpet::Render::HTML.new
=> #<Redcarpet::Render::HTML:0x007fe7720a9540 @options={}>

engine = Redcarpet::Markdown.new(renderer)
=> #<Redcarpet::Markdown:0x007fe7718c0bd0 @renderer=#<Redcarpet::Render::HTML:0x007fe7720a9540 @options={}>>

markdown_source = "# My Life in Desserts\n\n## Chapter 1: The Beginning\n\n\"You just *have* to try the cheesecake,\" he said. \"Ever since it appe
ared in **Food & Wine** this place has been packed every night.\""
=> "# My Life in Desserts\n" +
"\n" +
"## Chapter 1: The Beginning\n" +
"\n" +
"\"You just *have* to try the cheesecake,\" he said. \"Ever since it appeared in **Food & Wine** this place has been packed every night.\""

engine.render(markdown_source)
=> "<h1>My Life in Desserts</h1>\n" +
"\n" +
"<h2>Chapter 1: The Beginning</h2>\n" +
"\n" +
"<p>&quot;You just <em>have</em> to try the cheesecake,&quot; he said. &quot;Ever since it appeared in <strong>Food &amp; Wine</strong> this place has been packed
 every night.&quot;</p>\n"
