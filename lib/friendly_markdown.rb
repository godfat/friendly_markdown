
require 'kramdown'
require 'sanitize'

module FriendlyMarkdown
  module_function
  def compile input, mconfig: markdown_config, sconfig: sanitize_config
    sanitize(markdown(autolink(input.strip), mconfig), sconfig)
  end

  def autolink text
    text.gsub(%r{\<?\bhttps?://\S+[\b/]?}) do |m|
      if m =~ /\A<.+>\z$/
        s = m[1..-2]
        %Q{&lt;<a href="#{s}">#{s}</a>&gt;}
      else
        %Q{<a href="#{m}">#{m}</a>}
      end
    end
  end

  def markdown md, config=markdown_config
    Kramdown::Document.new(md, config).to_html
  end

  def sanitize html, config=sanitize_config
    Sanitize.fragment(html, config)
  end

  def markdown_config
    {:input => 'GFM', :hard_wrap => true}
  end

  def sanitize_config
    Sanitize::Config::RELAXED
  end
end
