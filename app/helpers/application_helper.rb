module ApplicationHelper
  def htmlize(content)
    GitHub::Markup.render_s(GitHub::Markups::MARKUP_MARKDOWN, content)
  end
end
