				<title>The amazing backstabbing of probability (and math in general)</title>
		<link>http://forthescience.org/blog/?p=758</link>
		<pubDate>Fri, 11 Feb 2011 00:35:54 +0000</pubDate>
		<dc:creator><![CDATA[Stefano]]></dc:creator>
		<guid isPermaLink="false">http://forthescience.org/blog/?p=758</guid>
		<description></description>
		<content:encoded><![CDATA[I just read <a href="http://sciencenews.org/view/generic/id/60598/title/When_intuition_and_math_probably_look_wrong">a very interesting post</a> with title "When intuition and Math probably look wrong", about this interesting problem
<p style="padding-left: 30px;"><em>Someone has two children, and you know that at least one of them is a boy. What is the probability that the other child is also a boy?</em></p>
and its slightly more tricky new version (with the difference highlighted in bold)
<p style="padding-left: 30px;"><em>Someone has two children, and you know that at least one of them is a boy <strong>born on Tuesday</strong>. What is the probability that the other child is also a boy?</em></p>
It is highly probable (no pun) that anyone asked with these questions will say fifty percent, and probably wonder about the Tuesday thing as useless. If you dig in a bit more, you will realize the answer is wrong, and even when faced with the mathematics, you still can't see why it's wrong. I had trouble myself, and I am writing this post to better understand and admire its mathematical beauty, so logic and at the same time so baffling. To wrap our heads around it, let's go back to basic, and move step by step from here. I will touch other interesting facts of probability and statistics in the meantime, to raise a warning: probability and statistics are treacherous land. Be careful, be very careful.
<h2>Basic probability rules</h2>
Suppose to flip a fair coin. What's the probability to get a tail? If we reject false conditions such as the coin landing on its side, or falling into a manhole, this probability is one over two possible outcomes, that means 50 %. The probability to obtain the other result, head, is the remaining 50 %, so that all possible outcomes must add to 100 %. Similarly, if you have a fair 6-faced die, the probability to obtain a 3 is 1/6 = one sixth = 16.67 %. The same probability is associated to a 2, or a 1, or a 4, 5 or 6.

If you throw two coins, or one coin after another (which is the same thing), <strong>each throw</strong> has 50 % chance of landing a tail, and 50 % of landing a head. However, the combined result of the first coin and the second coin equally divides the allowed combinations: Head-Head, Tail-Head, Head-Tail, Tail-Tail. So we have four possibilities, and each of them has 1 out of 4 chance, that is, 25 %.

If you throw four coins, you can obtain 16 combinations. Among them you have HHHH, HTHT, or HTTT. Each of these combinations is one combination out of a set of 16, and the probability of each one is 1 in 16 = 6.25%. There's nothing special about the combination HHHH that the HTTT does not possess, in terms of probability. Both are equally probable, except that the first one tickles more our brain. Suppose we obtain the HHHH sequence and throw the coin another time. The probability of landing a Head in this new throw is again 50 %. Each throw has no memory of previous events, and every throw is not affected by other throws. This is a first fallacy many people fall for, in particular in games such as Lotto. No matter how long and uninterrupted is a sequence of Head a coin just produced, the probability of the coin to produce another Head at the next throw is still 50 %. What we fall for is the probability of one coin throw versus the probability of producing a streak of 5 Heads in a row (which is relatively improbable = 3.125 %). If we had to place a bet on the coin producing Head, this bet is on the new, single throw, not on the sequence of five throws, all being Head. Moreover, if the coin happens to land Tail, the new sequence HHHHT has exactly the same probability to occur in 5 throws as the sequence HHHHH: 3.125%

<strong>To conclude, one important point in understanding a probability answer is to clearly define the question first, that is, what is the event we want the probability of</strong>. This may contain hidden pitfalls and produce huge misunderstanding. It's a treacherous terrain that makes victims among experts, let alone the layperson.

Simple probability is relatively clear and intuitive with small numbers. Big numbers may give some surprise. For example, the chance of winning at Superenalotto (guess 6 numbers extracted out of 90) is <a href="http://en.wikipedia.org/wiki/SuperEnalotto">one in 622 millions</a>, a probability so low that it appears to be impossible that someone can win. It is more or less the same probability to get 29 consecutive Tails from a coin. Nevertheless, someone wins. How is it possible? The reason is that many people play the game, and many sequences are played by each person, bringing the total number of sequences played for an extraction to a very high number. If, before an extraction occurs, all the different 622 million possible sequences are played, one must win. We see therefore another important point: <strong>apparently very improbable events can happen, provided that a large number of attempts is made, each attempt made on one of the different possible outcomes</strong>.

However, this is different from playing the same set of numbers for 622 millions extractions. One would think, by analogy, that you will win at least once. This is not the case. Let's think in simpler terms, and call back our 6-sided die. To compare it with Superenalotto, we have a one in six chance of winning. Our "play sequence" is a single number, and the extraction is a throw of the die. If six people play, each one betting on a different number, one person is bound to win at the next extraction.

What if instead you play a maximum of six times, the first time betting on number 1, the second time on number 2 and so on. What is the probability that you win ? Is it guaranteed as in the previous case or not ?

Not at all. One mistake line of reasoning would be "well, the first time I have one in six to win, and the second time I have again one in six, and so on, so in the end, the total probability of winning is six out of six, which is certain", but this is wrong. It is wrong because, roughly said, they are different probability contexts (different throws, with different bets). Again, the error arises from the wrong understanding of the initial statement of the problem.

To crack the problem, it is useful to follow the usual procedure: enumerate all possible combinations, take out the winning ones out of the bulk, and count them. Let's start with the easy one: only one throw, instead of six. We do one throw, and if a one comes out, we win, else we lose. We already know the probability of this to happen: it's 1 in 6: 16.67 %. If the die produces 2, 3, 4, 5 or 6, we lose, with a probability of 5 in 6, 83.3%.

Now, we throw a maximum of two times, the first time we bet on 1, and the second time on 2. What are the possible results that the die could return ? This is easy verified: two throws give 36 possible combinations : (1,1), (1,2), (1,3) ... (2,1), (2,2), ... (6,5), (6,6). Of these, we win with those having a 1 in first position, which are six: (1,1), (1,2), (1,3), (1,4), (1,5), (1,6), or a two in third position, which are (1,2), (2,2), (3,2), (4,2), (5,2), (6,2). Please note that (1,2) counts only as one, because it is already winning at the first extraction. The grand total of combinations that win are therefore 11 out of 36 : 30.45 % and those who lose are 25 out of 36: 69.55 %

Next stop: we throw three times. Again, it's a matter of enumerating the possibilities and doing the proper count, but it rapidly becomes boring. We may also realize that counting the times we lose it's actually much easier. In the example before, the losing combinations were all those NOT containing a 1 in the first position and all those NOT containing a 2 in second position, meaning that it's the set of all possible combinations of these two sets (2,3,4,5,6) in first position and (1,3,4,5,6) in second position. These are easy to count: 5x5 = 25, and therefore we can know the combinations that win by subtracting from the total: 36-25 = 11. If we move to the three throws case, the non-winning combinations are those who don't have 1 in first, those who don't have 2 in second and those who don't have 3 in third: all possible combinations of the sets (2,3,4,5,6), (1,3,4,5,6) and (1,2,4,5,6): a grand total of 5x5x5 = 125 cases out of 6x6x6 = 216 cases. The chance of winning is therefore 91 out of 216 = 42.13 %, and those of losing 57.87%.

We finally devised a simple rule to evaluate the six throws case without counting. The  losing combinations are 5 x 5 x 5 x 5 x 5 = 5^6 = 15625. The grand total is 6^6 = 46656 and the chance of winning is therefore (46656 - 15625) / 46656 = 66.51 %, which is close to 2 out of 3, but not the certainty as we may have postulated incorrectly at the beginning. To generalize if we are throwing a dice with n faces, and we are performing k games, the chance to win is (n^k - (n-1)^k) / n^k. Example 20-sided die, 5 throws: (20^5 - 19^5) / 20^5 = 22.62 %

We can now use this freshly acquired knowledge to estimate the chance of winning Superenalotto by playing all the 622 millions combinations, one after another at each new extraction, for 622 millions extractions. This is going to be very nasty, considering the giant numbers we are going to handle, but we can get an idea. The first thing we observe is that subtracting one from 622 millions (as in n-1 term) is not going to make a huge difference. This produces basically, in first approximation, a zero regardless of the times we play (k), which makes sense. Our chance of winning won't change a lot if we play one time or 10 times. However, we are playing a lot of times: 622 millions, which may render this difference appreciable. How do we evaluate it ?

We cannot ask a computer to evaluate 622 millions to the power of 622 millions, so we assume we play the dice game with an increasing number of faces, and with a number of attempts always equal to the number of faces : f(x) = (x^x - (x-1)^x) / x^x. We look at the trend and we try to get a rule to extrapolate to 622 millions.

f(10) =  0.6513
f(20) = 0.6415
f(50) = 0.6358
f(100) = 0.6339

It turns out that for x going to a very high number, the value of f(x), which is the chance of winning, goes to a stable number : 1 - e^(-1) = 0.6321, or 63.21 %. This is the probability of winning by playing 622 millions times the Superenalotto, which is a little less than 2 out of 3. As you see, it's not guaranteed.
<h2>Bayesian strangeness. More tricks for the mind.</h2>
You constantly hear it in the news. The anchorman: "A sport champion has been found positive to a test for doping. The test has a reliability of 90%, so it's basically certain that he will be disqualified for the next games." Most people would now say that the probability that our sport champion took doping is 90 %. Which is most likely wrong. Why ?

The phrase above is mostly fallacious. The reasons are two:
<ol>
	<li>It does not define what is meant with "reliability of the test", i.e. what that 90% means.</li>
	<li>It makes a bridge between two partially, not totally, related evaluations: the "reliability of the test" and the "chance that the sport player is guilty of doping".</li>
</ol>
To explain the point, I will again work on actual numbers and count, to prove you why our sport champion is in hot water, but there's far from overwhelming evidence that he is actually guilty.

First, let's define "reliability of the test". For this example, we define it like this: it is the number of times a test is correct. If a test is 90% reliable,  it means that 90 times out of 100, he actually gives the correct answer: if champion took doping, the test will return positive. If champions did not take doping, it will return negative. The remaining 10 % is when the test is wrong: it will return negative for a doped champion (a false negative), and positive for a non-doped one (a false positive). This is also called <strong>accuracy</strong> of the test, and the test itself is a classification problem that puts people from a test set in two bins, or classes: doped, or not doped. When you have a classification method, it's important to know its <strong>confusion matrix</strong>:
<table border="0">
<tbody>
<tr>
<td></td>
<td>Predicted doped (D)</td>
<td>Predicted non-doped (N)</td>
</tr>
<tr>
<td>Actually doped (D)</td>
<td>f(DD)</td>
<td>f(DN)</td>
</tr>
<tr>
<td>Actually non-doped (N)</td>
<td>f(ND)</td>
<td>f(NN)</td>
</tr>
</tbody>
</table>
Given a large number of people taking the test, a perfect method would report zero for misclassifications f(ND) and f(DN). No test is perfect, not only because there may be errors in the procedure, but also because the decision if someone is doped or not may rely on some value which, for some people, may be naturally high, or due to an illness, or due to some food or medicine. This is just a made up example, but the point is that these entries will never be zero for large amount of people. The accuracy of the method is estimated by calculating
<p style="text-align: center;">Accuracy = (f(NN)+f(DD)) / (f(NN) + f(DD) + f(DN) + f(ND))</p>
<p style="text-align: left;">that is, how many correct evaluation we get out of the total, given a large set of test cases. A perfect test with f(ND) = f(DN) = 0 would have accuracy = 1, or in percent 100 %. Similarly, we can define the error as how many wrong ones we get out of the bunch</p>
<p style="text-align: center;">Error = (f(ND)+f(DN)) / (f(NN) + f(DD) + f(DN) + f(ND))</p>
Now, suppose we have 10.000 athletes, and we perform a doping test on all of them. Some of them will turn out positive, but unfortunately we don't know how many of these positive are real positive and how many are false positive. Same for negatives. We don't know how many negatives are real negatives and how many are false negatives.

In order to find a solution, we need to know a "base statistics" of how many athletes actually do use doping. Let's say this amount is 1 %. In our set of 10.000 athletes, there are 100 who are doped, and 9900 who are not. Suppose we now run our doping test. The result will be the following:
<ul>
	<li>9900 non-doped do the test
<ul>
	<li>90 % (8910) of them are reported negative</li>
	<li>10% (990) are falsely reported positive</li>
</ul>
</li>
	<li>100 doped do the test
<ul>
	<li>90 % (90) of them are reported positive</li>
	<li>10 % (10) of them are falsely reported negative</li>
</ul>
</li>
</ul>
If you now do the math, you will realize that we have a total of
<ul>
	<li>8910 + 10 = 8920 who result negative</li>
	<li>990 + 90 = 1080 who result positive</li>
</ul>
meaning that, if you turn out to be positive, the probability that you are actually taking doping is 90/1080 = 8.33%, <strong>not</strong> 90 %. This is important: having additional information does not, under any circumstance, says anything about your probability, unless you have a starting probability which is skewed (either toward higher or lower values) by additional evidence.
<h2>Conclusions</h2>
http://www.sciencenews.org/view/feature/id/57091/title/Odds_Are,_Its_Wrong

http://www.scientificamerican.com/blog/post.cfm?id=are-babies-dying-in-the-pacific-nor-2011-06-21]]></content:encoded>
		<excerpt:encoded><![CDATA[]]></excerpt:encoded>
		<wp:post_id>758</wp:post_id>
		<wp:post_date>2011-02-11 01:35:54</wp:post_date>
		<wp:post_date_gmt>2011-02-11 00:35:54</wp:post_date_gmt>
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
		<wp:postmeta>
			<wp:meta_key>_oembed_f49651a67be0ce42de319c77780182a1</wp:meta_key>
			<wp:meta_value><![CDATA[{{unknown}}]]></wp:meta_value>
		</wp:postmeta>
		<wp:postmeta>
			<wp:meta_key>_oembed_aeb3057dc57c9024df90d717c219761b</wp:meta_key>
			<wp:meta_value><![CDATA[{{unknown}}]]></wp:meta_value>
		</wp:postmeta>
	</item>

