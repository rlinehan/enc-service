require 'sinatra'
require 'json'

cls = {}

before do
  content_type :json
end

get '/:node/classification' do
  node = params[:node]
  cls[node].to_json
end

put '/:node/classification' do
  node = params[:node]
  classes = []
  cls[node] = classes
end

delete '/:node/classification' do
  node = params[:node]
  cls.delete(node)
end

patch '/:node/classification' do
  node = params[:node]
  new_class = []
  cls[node] = cls[node].push(new_class)
end
