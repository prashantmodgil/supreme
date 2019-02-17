module ComplaintsHelper

  def product_brand
    a=Array.new
    Product.all.each do |product|
      a << "#{product.name}-#{product.brand}"
    end
    return a
  end


end
