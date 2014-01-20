require 'sinatra'
require 'sinatra/reloader'
require 'typhoeus'
require 'json'
require 'pry'

 get '/' do

   erb :index
 
 end

 post '/result' do
   search_str = params[:movie]
 # This contacts omdbapi and requests the search results which returns an array of hashes
   response = Typhoeus.get("www.omdbapi.com", :params => {:s => search_str })
   @result = JSON.parse(response.body)#["Search"]

   erb :result

 end  

 get '/poster/:imdb' do |imdb_id|
 # This contacts omdbapi again and requests the imdbID for the selected movie  
   response = Typhoeus.get("www.omdbapi.com", :params => {:i => imdb_id})
   @result = JSON.parse(response.body)

 erb :show
 
 end