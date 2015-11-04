
require 'pork/auto'
require 'friendly_markdown'

describe FriendlyMarkdown do
  would 'compile' do
    html = FriendlyMarkdown.compile <<-MARKDOWN
I can use regular html <b>strong</b>.
With regular line break.
And autolink: https://github.com/godfat/friendly_markdown
It just works.

And code block without html:

``` xml
<b>this is xml</b>
```

# And quote stuffs as usual:

> This is just a simple quote

Cheers! autolink: https://github.com/godfat/friendly_markdown
    MARKDOWN

    expect(html).eq <<-HTML
<p>I can use regular html <b>strong</b>.<br>
With regular line break.<br>
And autolink: <a href="https://github.com/godfat/friendly_markdown">https://github.com/godfat/friendly_markdown</a><br>
It just works.</p>

<p>And code block without html:</p>

<pre><code class="language-xml">&lt;b&gt;this is xml&lt;/b&gt;
</code></pre>

<h1 id="and-quote-stuffs-as-usual">And quote stuffs as usual:</h1>

<blockquote>
  <p>This is just a simple quote</p>
</blockquote>

<p>Cheers! autolink: <a href="https://github.com/godfat/friendly_markdown">https://github.com/godfat/friendly_markdown</a></p>
    HTML
  end

  would 'remove script' do
    html = FriendlyMarkdown.compile('remove me <script>')
    expect(html).eq "<p>remove me </p>\n"
  end

  would 'remove unknown tags' do
    html = FriendlyMarkdown.compile('remove me <bad>')
    expect(html).eq "<p>remove me </p>\n"
  end

  would 'allow markdown links' do
    html = FriendlyMarkdown.compile <<-MARKDOWN
This is autolink: https://github.com/godfat/friendly_markdown
This is markdown link: <https://github.com/godfat/friendly_markdown>
    MARKDOWN

    expect(html).eq <<-HTML
<p>This is autolink: <a href="https://github.com/godfat/friendly_markdown">https://github.com/godfat/friendly_markdown</a><br>
This is markdown link: &lt;<a href="https://github.com/godfat/friendly_markdown">https://github.com/godfat/friendly_markdown</a>&gt;</p>
    HTML
  end
end
