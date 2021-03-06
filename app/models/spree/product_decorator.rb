Spree::Product.class_eval do
  delegate_belongs_to :master, :sale_price
  attr_accessible :sale_price

  def is_on_sale?
    self.variants_including_master.inject(false) { |f, v| f || v.is_on_sale? }
  end
end
