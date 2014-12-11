Spree::Core::Engine.add_routes do
  namespace :admin do
    get "barcode/print_variants_barcodes/:id", to: "barcode#print_variants_barcodes"
    get "barcode/print/:id", to: "barcode#print"

    get "pos/new", to: "pos#new", as: :new_pos_order
    get "pos/show/:number" , to: "pos#show", as: :pos_show_order
    post "pos/clean/:number" , to: "pos#clean_order", as: :pos_clean_order
    get "pos/find/:number" , to: "pos#find"
    get "pos/add/:number/:item" , to: "pos#add"
    get "pos/remove/:number/:item" , to: "pos#remove"
    post "pos/associate_user/:number" , to: "pos#associate_user"
    post "pos/update_payment/:number" , to: "pos#update_payment"
    post "pos/update_line_item_quantity/:number" , to: "pos#update_line_item_quantity"
    post "pos/apply_discount/:number" , to: "pos#apply_discount" 
    post "pos/update_stock_location/:number" , to: "pos#update_stock_location"

    get "pos/index", to: "pos#index"
    get "pos", to: "pos#index", as: :pos
  end
end
