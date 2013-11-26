# -*- encoding : utf-8 -*-
module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = t :app_name
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def markdown(text)
    options = [:hard_wrap, :filter_html, :autolink, :no_intraemphasis, :fenced_code, :gh_blockcode]
    Redcarpet.new(text, *options).to_html.html_safe
  end
end
