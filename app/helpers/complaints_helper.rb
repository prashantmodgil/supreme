module ComplaintsHelper

  def product_brand
    a=Array.new
    Product.order(:name).each do |product|
      a << "#{product.name}-#{product.brand}"
    end
    return a
  end
  def date_view(date)
      return date.strftime("%d-%m-%Y")
  end
end
