get "/locations/new" do
  erb :new_location
end

post "/locations" do
  @new_location = Location.create(name: params[:name], city: params[:city])
  if @new_location.save
    redirect "/"
  else

  end
end



get "/locations/:id" do
  @location = Location.find(params[:id])
  @loc_suppliers = @location
  erb :location, layout: false
end