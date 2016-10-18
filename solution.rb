require 'sinatra'

get '/' do
  erb :index
end

get '/response' do
  msg = params[:message]
  if msg
    if msg == msg.upcase
      @resp = "Ahhh si, manzanas!"
      erb :response
    else
      @resp = "Habla más duro mijito"
      erb :response
    end
  end
end
