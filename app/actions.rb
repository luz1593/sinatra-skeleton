
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


get '/ubc' do
  erb :ubc
end

get '/nus' do
  erb :nus
end

get '/others' do
  erb :others
end

get '/vfw' do
  erb :vfw
end

get '/artstarts' do
  erb :artstarts
end

get '/purpledirt' do
  erb :purpledirt
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

get '/work' do
  erb :work 
end