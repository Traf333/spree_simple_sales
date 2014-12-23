Spree::Product.class_eval do


  scope :sales, -> { joins(:variants_including_master).where('spree_variants.sale_price is not null').uniq }

  delegate_belongs_to :master, :sale_price, :orig_price_in
end