
Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => "review_management",
                     :insert_bottom => "[data-hook='admin-tabs']",
                     :partial => "admin/reviews"
                    )

Deface::Override.new(:virtual_path => "admin/configurations/index",
                     :name => "review_settings",
                     :insert_bottom => "[data-hook='admin-tabs']",
                     :partial => "admin/reviews"
                    )
