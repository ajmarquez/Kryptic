require 'sinatra'
require 'sinatra/activerecord'
require './environments'
require './main/kryptic'


class Knotes < ActiveRecord::Base
end
