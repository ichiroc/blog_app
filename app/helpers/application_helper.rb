module ApplicationHelper
  def htmlize(content)
    renderer = HTML.new
    markdown = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true)
    markdown.render(content) if content.present?
  end

  def flash_messages
    render 'layouts/flash_messages', flash: flash
  end
end
