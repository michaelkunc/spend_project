get "/locations/:id" do
  @location = Location.find(params[:id])
  erb :location
end