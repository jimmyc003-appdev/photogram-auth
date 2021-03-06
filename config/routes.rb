Rails.application.routes.draw do

  #homepage
  root "photos#index"


  # Routes for the Comment resource:
  # CREATE
  get("/comments/new", {:controller => "comments", :action => "new_form"})
  post("/create_comment", {:controller => "comments", :action => "create_row"})

  # READ
  get("/comments", {:controller => "comments", :action => "index"})
  get("/comments/:id_to_display", {:controller => "comments", :action => "show"})

  # UPDATE
  get("/comments/:prefill_with_id/edit", {:controller => "comments", :action => "edit_form"})
  post("/update_comment/:id_to_modify", {:controller => "comments", :action => "update_row"})

  # DELETE
  get("/delete_comment/:id_to_remove", {:controller => "comments", :action => "destroy_row"})

  #------------------------------

  # Routes for the Like resource:

  # CREATE
  get("/likes/new", {:controller => "likes", :action => "new_form"})
  post("/create_like", {:controller => "likes", :action => "create_row"})

  # READ
  get("/likes", {:controller => "likes", :action => "index"})
  get("/likes/:id_to_display", {:controller => "likes", :action => "show"})

  # UPDATE
  get("/likes/:prefill_with_id/edit", {:controller => "likes", :action => "edit_form"})
  post("/update_like/:id_to_modify", {:controller => "likes", :action => "update_row"})

  # DELETE
  get("/delete_like/:id_to_remove", {:controller => "likes", :action => "destroy_row"})

  #------------------------------

  # Routes for the Photo resource:

  # CREATE
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  post("/create_photo", {:controller => "photos", :action => "create_row"})

  # READ
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:id_to_display", {:controller => "photos", :action => "show"})

  # UPDATE
  get("/photos/:prefill_with_id/edit", {:controller => "photos", :action => "edit_form"})
  post("/update_photo/:id_to_modify", {:controller => "photos", :action => "update_row"})

  # DELETE
  get("/delete_photo/:id_to_remove", {:controller => "photos", :action => "destroy_row"})

  #------------------------------

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # Routes for the User resource:
  # READ
  get("/users", {:controller => "users", :action => "index"})
  get("/users/:id_to_display", { :controller => "users", :action => "show" })
  
  # Routes for the My likes resource:
  # READ
  get("/my_likes", {:controller => "mylikes", :action => "index"})

end
