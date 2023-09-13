module ApplicationHelper
  def nav_item_class(item_name)
    controller_name == item_name ? 'bg-gray-900 text-white' : 'text-gray-300 hover:bg-gray-700 hover:text-white'
  end

  def current_page?(page_name)
    controller_name == page_name
  end
end
