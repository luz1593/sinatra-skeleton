
# Homepage (Root path)

get '/' do
  erb :index
end

get '/sayhi' do
    erb :sayhi
end

post '/contact' do
  name = params[:name]
  email = params[:email]
  subject = params[:subject]
  message = params[:message]

  
  message = Message.new(name: name, 
                    email: email, 
                    subject: subject,
                    message: message)

  if message.save
    redirect "/"
  else
    erb :contact
  end
end 


get '/school' do
  erb :school
end


get '/experience' do
  erb :experience
end

get '/travel' do
  erb :travel
end

get '/skills' do
  erb :skills
end


