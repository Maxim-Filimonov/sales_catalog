module ApplicationHelper
  def markdown(text)
    rendered = Redcarpet::Render::HTML.new(filter_html: true, hard_wrap: true)
    markdown = Redcarpet::Markdown.new(rendered)
    markdown.render(text).html_safe
  end
end
