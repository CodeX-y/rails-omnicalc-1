Rails.application.routes.draw do
  get("/", {:controller => "calc", :action => "home"})
  get("/square/new", {:controller => "calc", :action => "square"})
  get("/square_root/new", {:controller => "calc", :action => "square_rt"})
  get("/payment/new", {:controller => "calc", :action => "payment"})
  get("/random/new", {:controller => "calc", :action => "random"})

  get("/square/result", { :controller => "calcresults", :action => "square" })
  get("/square_root/result", { :controller => "calcresults", :action => "square_rt" })
  get("/payment/result", { :controller => "calcresults", :action => "payment" })
  get("/random/result", { :controller => "calcresults", :action => "random" })
end
