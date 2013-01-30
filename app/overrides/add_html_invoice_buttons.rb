Deface::Override.new(:virtual_path => "spree/orders/show",
                     :name => "add_html_invoice_buttons_user",
                     :insert_bottom => "#order_summary legend[1]",
                     :partial => "spree/invoice/print_link")

#Deface::Override.new(:virtual_path => "spree/admin/orders/show",
#                     :name => "print_buttons",
#                     :insert_bottom => "[data-hook='admin_order_show_buttons'], #admin_order_show_buttons[data-hook]",
#                     :partial => "spree/admin/orders/html_buttons",
#                     :disabled => false)
# Spree 1.3
Deface::Override.new(:virtual_path => "spree/admin/orders/show",
                     :name => "print_buttons",
                     :insert_after => "code[erb-silent]:contains('content_for :page_actions do')",
                     :partial => "spree/admin/orders/html_buttons",
                     :disabled => false)
