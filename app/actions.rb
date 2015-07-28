require "pry"
# Homepage (Root path)



get '/' do
  erb :index
end

get '/contact' do
    erb :contact
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

get '/profile' do
  erb :profile
end

get '/education' do
  erb :education
end

get '/experience' do
  erb :experience
end

get '/projects' do
  erb :projects
end