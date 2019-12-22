module ApplicationHelper
  def title(*title_items)
    unless title_items.empty?
      content_for :title do
        (title_items << "CC Balance Tracker").join(" - ")
      end
    end
  end
end
