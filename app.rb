require('sinatra')
require('sinatra/reloader')
require('./lib/parcels')
require('pry')
also_reload('lib/**/*.rb')

get('/') do
  @parcels = Parcel.all 
  erb(:parcels)
end

get ('/parcels') do
  @parcels = Parcel.all 
  erb(:parcels)
end

get('/parcels/new') do
  erb(:new_parcel)
end

post('/parcels') do
  length = params[:parcel_length]
  width = params[:parcel_width]
  height = params[:parcel_height]
  parcel = Parcel.new(length, width, height, nil)
  parcel.save()
  @parcels = Parcel.all()
  erb(:parcels)
end