Spree::HomeController.class_eval do


  def sale
    @products = Product.sales
  end

end