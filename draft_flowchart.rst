				<title>Please give me a flowchart: a plea to computational scientists</title>
		<link>http://forthescience.org/blog/?p=1913</link>
		<pubDate>Wed, 30 Nov -0001 00:00:00 +0000</pubDate>
		<dc:creator><![CDATA[Stefano]]></dc:creator>
		<guid isPermaLink="false">http://forthescience.org/blog/?p=1913</guid>
		<description></description>
		<content:encoded><![CDATA[As a scientific programmer I am frequently given a methodology, either as prototype code or a scientific paper (sometimes both), and asked to code it production-ready. This process may seem trivial to those who devise the method and implement the prototype  (in some cases, I've been told so), but it is not. There are many things that must be taken care of, to go from the crude formulas and prototype code to a product we can sell to customers. A brief list includes:
<ul>
	<li> Design the code so that it's easier to extend, reuse, scale up and test</li>
	<li>Add tests so to spot bugs and platform-dependent issues</li>
	<li>Use proper naming, coding and design standards, generally obeying internally agreed practices</li>
	<li>Fight with the language quirks</li>
	<li>Fight with different platform and compiler/library quirks</li>
	<li>Work around license issues. If the library you used to make your prototype is GPL'd, I cannot use it for a commercial product, and I have either to reimplement it or find an alternative</li>
</ul>
This is, however, just one side of the story. Another side is to actually understand your algorithm, so that I can organize a proper software design. In the rigorous (and flawed) Waterfall methodology, the algorithm is normally specified in a document called "Specifications" which is written by domain expert (scientists in the case of scientific software), signed off by the development team, and a design is created out of a document that is written specifically to transfer knowledge from the scientist to the developer. There's a lot of ping-pong going on before signing off the specification in order to clarify the details that are not clear to the developers. I am not endorsing the Waterfall here, but I am clearly pointing out one important issue: making developers understand the algorithm, its crucial protagonists, their representation, and how the algorithm must behave when corner cases are encountered. I cannot code what I don't understand.

That said, in scientific environment normally the scientific paper is pointed out as the "specification" of the algorithm. Unfortunately, this is not always the case, for the following reasons:
<ul>
	<li>Each branch of science uses an implicit language, which is not explained in the paper, but it is assumed to be known by the reader. This is of course perfectly ok (otherwise every paper would have a complete course in the introduction), but most often this language or known technique boil down to a well defined algorithmic process which is trivial to implement.</li>
	<li>The development of the method from the mathematical point of view follows a different strategy when compared to the implementation for a computer system. That big math formula turns out to be the sum of three square matrices, but it may not be immediately clear, depending on your notation.</li>
	<li>Central entities from the mathematical point of view may not be represented at all in the software, because they are either approximated or worked around (because too expensive to store or compute, for example)</li>
	<li>The paper presents only a part of what it's actually done. There is a lot of information which is withheld from the paper but it can be found in the actual code. An example is this: I have a matrix which is computed as an extrapolation from</li>
	<li>The mathematical derivation is noise for me. To implement the method I need just the core result that I need to implement. Note that saying "take the last formula of the section" does not always solve the problem.</li>
</ul>
<h2>The plea</h2>
In my opinion, methodological papers should have a peer review criterion for acceptance: implementability. A method is implementable when it details all the inputs, all the outputs and all the entities taking part to the algorithm, in which form they are, and how the algorithm behaves, including corner cases (e.g. what to do in case of divergence). The method researchers are aware of the steps needed to implement their algorithm, as it's their core expertise, but it hardly helps transfer of knowledge from method researchers to scientific developers and designers. Unfortunately, I am also aware my plea will not be heard.]]></content:encoded>
		<excerpt:encoded><![CDATA[]]></excerpt:encoded>
		<wp:post_id>1913</wp:post_id>
		<wp:post_date>2012-04-26 19:56:01</wp:post_date>
		<wp:post_date_gmt>0000-00-00 00:00:00</wp:post_date_gmt>
		<wp:comment_status>open</wp:comment_status>
		<wp:ping_status>closed</wp:ping_status>
		<wp:post_name></wp:post_name>
		<wp:status>draft</wp:status>
		<wp:post_parent>0</wp:post_parent>
		<wp:menu_order>0</wp:menu_order>
		<wp:post_type>post</wp:post_type>
		<wp:post_password></wp:post_password>
		<wp:is_sticky>0</wp:is_sticky>
		<category domain="category" nicename="uncategorized"><![CDATA[Uncategorized]]></category>
		<wp:postmeta>
			<wp:meta_key>_edit_last</wp:meta_key>
			<wp:meta_value><![CDATA[2]]></wp:meta_value>
		</wp:postmeta>
	</item>

