module ApplicationHelper
  def htmlize(content)
    GitHub::Markup.render_s(GitHub::Markups::MARKUP_MARKDOWN, content)
  end

  def flash_messages
    render 'layouts/flash_messages', flash: flash
  end
end
