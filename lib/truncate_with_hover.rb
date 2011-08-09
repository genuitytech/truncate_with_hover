require "truncate_with_hover/version"

module TruncateWithHover
  include ActionView::Helpers::TagHelper

  def truncate_with_hover(text, options = {})
    return if text.blank?

    options.reverse_merge!(:length => 25)

    if text.length > options[:length]
      content_tag :span, truncate(text, options), :title => text
    else
      text
    end
  end
end

ActionView::Helpers::TextHelper.send :include, TruncateWithHover
