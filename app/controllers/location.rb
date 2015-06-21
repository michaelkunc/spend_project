get "/locations/new" do
  erb :new_location, layout: false
end

get "/edit" do
  @locations = Location.all
  erb :edit_locations
end

get "/location/:id/edit" do

end


post "/locations" do
  @new_location = Location.create(name: params[:name], city: params[:city])
  if @new_location.save
    redirect "/"
  else
    @errors = "please add a valid location and valid city"
    erb :new_location
  end
end


get "/locations/:id" do
  @location = Location.find(params[:id])
  @loc_suppliers = @location
  erb :location, layout: false
end