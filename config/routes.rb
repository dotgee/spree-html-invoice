Spree::Core::Engine.routes.append do
  namespace :admin do
    match 'invoice/:id(/:template)' => 'invoice#lasku'
  end

  match 'invoice/:id(/:template)' => 'invoice#print', :as => :print_order
end
