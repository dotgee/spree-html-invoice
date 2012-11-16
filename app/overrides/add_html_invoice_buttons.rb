Deface::Override.new(:virtual_path => "spree/orders/show",
                     :name => "add_html_invoice_buttons_user",
                     :insert_bottom => "#order_summary legend[1]",
                     :partial => "spree/invoice/print_link")

Deface::Override.new(:virtual_path => "spree/admin/shared/_order_tabs",
                     :name => "add_html_invoice_buttons",
                     :insert_after => ".sidebar",
                     :partial => "spree/admin/orders/html_buttons",
                     :disabled => false)
