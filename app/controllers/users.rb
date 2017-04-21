class PoochPads < Sinatra::Base

  get '/users/new' do
    erb :'/users/new'
  end

  post '/users' do
    @user = User.new(email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
    if @user.save
      session[:user_id] = @user.id
      redirect to ('/')
    else
      flash.now[:errors] = @user.errors.full_messages
      erb :'users/new'
    end
  end

  get '/users/kennel' do
    erb :'/users/kennel'
  end

  get '/users/bookings' do
    erb :'/users/bookings'
  end



end
