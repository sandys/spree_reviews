
Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "review_management",
#                     :insert_bottom => "[data-hook='admin-tabs']",
                     :insert_bottom => "div#admin-menu ul",
                     :partial => "admin/hooks/reviews_tab",
                     :disabled => false)

Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "review_settings",
                     :insert_bottom => "[data-hook='admin_configurations_menu']",
                     :partial => "admin/hooks/reviews_settings",
                     :disabled => false)
