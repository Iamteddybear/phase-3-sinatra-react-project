require_relative "./config/environment"

# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins 'http://localhost:3000' # Update this with the actual origin of your React frontend
    resource '*', headers: :any, methods: [:get,:put, :post, :patch, :delete, :options]
  end
end

# Parse JSON from the request body into the params hash
use Rack::JSONBodyParser

# Our application
run ApplicationController
