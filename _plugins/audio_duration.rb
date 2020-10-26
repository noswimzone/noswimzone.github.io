# Ruby code to calculate podcast episode length.
# Need ep length and filesize for itunes podcast reqs.
# Supply these info to RSS feed for each item.
# From: https://blog.lime.link/how-to-self-host-your-podcast/

module Jekyll
  class AudioDurationBlock < Liquid::Block

    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      AudioInfo.open(super) do |info|
        secs = info.length
        "%d:%02d" % [secs / 60, secs % 60]
      end
    end
  end
end

Liquid::Template.register_tag('audioduration', Jekyll::AudioDurationBlock)
