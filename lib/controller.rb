require 'gossip'

class ApplicationController < Sinatra::Base

  get '/' do
  erb :index, locals: {gossips: Gossip.all}
end

  get '/gossips/new' do
  erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(#params["gossip_author"], #params["gossip_content"]).save
    redirect '/'
    end

  get '/gossips/:number' do
  erb :show, locals: {gossips_specific: Gossip, number: params['number']}
  end

  get '/gossips/:number/edit' do
  erb :show, locals: {gossips_specific: Gossip, number: params['number']}
  end
  end
end
