module ComplaintsHelper

  def product_brand
    a=Array.new
    Product.order(:name).each do |product|
      a << "#{product.name}-#{product.brand}"
    end
    return a
  end


end
