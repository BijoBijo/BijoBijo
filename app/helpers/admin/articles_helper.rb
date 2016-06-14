module Admin::ArticlesHelper
  def convert_to_markdown(text)
    options = {
      filter_html: true,
      hard_wrap: true
    }
    renderer = Redcarpet::Render::HTML.new(options)
    markdown = Redcarpet::Markdown.new(renderer)
    markdown.render(text).html_safe
  end
end
