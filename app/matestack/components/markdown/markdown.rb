class Components::Markdown::Markdown < Matestack::Ui::Component

  requires :path
  optional :lang

  def response
    div class: "markdown-content", attributes: { "v-pre": true } do
      plain parsed_markdown.html_safe
    end
  end

  def parsed_markdown
    @md = File.read("#{::Rails.root}/app/#{path}.md")

    begin
      if options[:lang].present?
        @md.prepend("```#{options[:lang]} \n")
        @md.concat("\n ```")
      end
    rescue => e
      raise e
    end

    renderer = RougeRender.new(with_toc_data: true)
    parser = Redcarpet::Markdown.new(renderer, fenced_code_blocks: true)

    parser.render(@md)
  end

end
