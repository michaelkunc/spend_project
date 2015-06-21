get "/" do
  @locations = Location.all
  erb :index
end

post "/sessions" do
  if User.authenticate(params[:username], params[:password])
    current_user = User.find_by(username: params[:username])
    session[:user_id] = current_user.id
    redirect "/"
  else
    redirect "/"
  end

end

get "/sessions/logout" do
  session[:user_id] = nil
  redirect "/"
end