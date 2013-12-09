Spree::LineItem.class_eval do
  # pattern grabbed from: http://stackoverflow.com/questions/4470108/

  # the idea here is compatibility with spree_volume_prices
  # trying to create a 'calculation stack' wherein the best valid price is
  # chosen for the product. This is mainly for compatibility with spree_volume_pricing

  old_copy_price = instance_method(:copy_price)
  define_method(:copy_price) do
    
    old_copy_price.bind(self).call
    
    if variant
      if self.variant.is_on_sale?
        sale_price = self.variant.sale_price

        if self.price.present? && sale_price <= self.price
          return self.price = sale_price
        elsif self.price.nil? && sale_price <= self.variant.price
          return self.price = sale_price
        end
      end

      if self.price.nil?
        self.price = self.variant.price
      end
    end
  end
end
