# encoding = utf-8
module ActiveAdmin::ViewHelpers::MarkdownHelper
  def markdown_description(f)
    f.inputs(t 'attributes.description') do
      hint = raw("#{link_to 'Формат','http://hghltd.yandex.net/yandbtm?text=markdown%20шпаргалка&url=http%3A%2F%2Fdikiy.com%2Ffiles%2Fmarkdown.pdf&noconv=1&fmode=inject&mime=pdf&l10n=ru&sign=c0109c27d4ddb55ae430d209b8a77b2c&keyno=0'}")
      f.input :description, :hint => hint
    end
  end
end