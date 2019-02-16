module ApplicationHelper
  def search_controller_url controller
    case controller
    when "complaints"
      complaints_path
    when "brands"
      brands_path
    when "dealers"
      dealers_path
    when "employees"
      employees_path
    when "mechenics"
      mechenics_path
    when "products"
      products_path
    end
  end
end
