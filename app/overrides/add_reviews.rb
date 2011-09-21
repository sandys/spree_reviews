#from spree-promo https://github.com/BDQ/spree/blob/f59173be746076b91318444fb20d956f46cab389/promo/lib/spree_promo_hooks.rb

Deface::Override.new(:virtual_path => "products/show",
                     :name => "review_product_properties",
                     :insert_after => "[data-hook='product_properties'], #product_properties[data-hook]",
                     :partial => "shared/reviews",
                     :disabled => false)

