get "/locations/:id" do
  @location = Location.find(params[:id])
  @loc_suppliers = @location
  erb :location, layout: false
end