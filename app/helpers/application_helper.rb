module ApplicationHelper
  def inside_layout(layout)
    view_flow.set :layout, capture { yield }
    self.output_buffer << render(template: "layouts/#{layout}")
  end

  def page_title
    title = []

    title << content_for(:title) if content_for?(:title)

    title << if content_for?(:title_postfix)
               content_for(:title_postfix)
             else
               "Joy Epil"
             end

    title.join(" – ")
  end
end
