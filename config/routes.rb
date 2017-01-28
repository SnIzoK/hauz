Rails.application.routes.draw do
  root to: "pages#index"
  controller "pages" do
    get "about"
  end
end
