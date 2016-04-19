require 'sinatra'
require 'sinatra/activerecord'
require './environments'



class KrypticApp < Sinatra::Application

end

class Knotes < ActiveRecord::Base
end


get '/domains/:id' do
  puts  "Hello there"
  @name = params[:id]
  #first condition
  @existence = Knotes.where(domain: :id).exists?(conditions = :none)
  puts "here is #{@knotes}"

  if @existence == true then
    @knotes = Knotes.find(params(:id))
    @khash = @knotes.khash
    @kcontent = @knotes.kcontent
  else
    @khash = ""
    @kcontent = ""
  end

  erb :"domains/index"
end


helpers do
  include Rack::Utils
  alias_method :h, :escape_html
end
