# Ruby code to extract file size of each podcast episode.
# File size and length are required info for itunes podcasts.
# Supply these info to RSS feed.
# From: https://blog.lime.link/how-to-self-host-your-podcast/

module Jekyll
  class FileSizeBlock < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      "#{File.size super}"
    end
  end
end

Liquid::Template.register_tag('filesize', Jekyll::FileSizeBlock)
