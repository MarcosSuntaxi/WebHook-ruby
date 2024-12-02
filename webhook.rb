require 'sinatra'
require 'json'

# Ruta para el Webhook
post '/webhook' do
  request.body.rewind
  payload = JSON.parse(request.body.read)

  # Procesar el evento recibido
  if payload["event"] == "user_created"
    puts "New user created: #{payload["data"]["name"]}"
  elsif payload["event"] == "order_placed"
    puts "Order placed: #{payload["data"]["order_id"]}"
  else
    puts "Unknown event: #{payload["event"]}"
  end

  # Responder al servidor que envió el Webhook
  status 200
  { message: "Webhook received successfully" }.to_json
end

# Ruta de prueba para comprobar si el servidor está funcionando
get '/' do
  "Webhook server is running!"
end
