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

get('/parcels/:id') do
  @parcel = parcel.find(params[:id].to_i())
  erb(:parcel)
end

get('/parcels/:id/edit') do 
  @parcel = Parcel.find(params[:id].to_i())
  erb(:edit_parcel)
end

patch('/parcels/:id') do
  @parcel = Parcel.find(params[:id].to_i())
  @parcel.update(params[:length])
  @parcel.update(params[:width])
  @parcel.update(params[:height])
  @parcels = Parcel.all
  erb(:parcels)
end
