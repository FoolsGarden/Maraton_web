
get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/' do

end

get '/new_user' do

  erb :sign_in

end

post '/new_user' do

  @user = User.new(name: params[:fullname], email: params[:email], password: params[:pas] )

  if @user.save
    session[:id] = @user.id
    erb :profile
  else
    "ERROR"
    erb :sign_in 
  end


end


name ||= "MAU"
name = name || "MAU"