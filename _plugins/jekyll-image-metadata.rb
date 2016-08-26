require "jekyll"
require 'dimensions'

module Jekyll
  class ImageMetadataTag < Liquid::Tag

    def initialize(tag_name, image, tokens)
      super
      @image = image
      @dimension = tag_name == "image_width" ? 0 : 1
    end

    def render(context)
      image = Liquid::Variable.new(@image).render(context)
      site = context.registers[:site]
      path = File.join(site.source, image)
      result = Dimensions.dimensions(path)[@dimension]
      "#{result}"
    end
  end
end

Liquid::Template.register_tag('image_width', Jekyll::ImageMetadataTag)
Liquid::Template.register_tag('image_height', Jekyll::ImageMetadataTag)
