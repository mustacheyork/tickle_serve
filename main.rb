require 'sinatra'
require 'sinatra/reloader' if development?
 
require 'erb'
require 'rinda/tuplespace'
require "sinatra/json"
require 'active_record'
require './models/comments.rb'

ActiveRecord::Base.establish_connection(
    adapter: "sqlite3",
    database: "./db/development.db"
)

# 静的コンテンツ参照のためのパス設定
set :public, File.dirname(__FILE__) + '/public'

# JSONを返す
get '/' do
  data = {
    responseData: {
      results: [
          "title": "Hollow Swift:)",
          "message": "入力して送信してね！"
      ]
      }
  }
  json data
end

# データ作成
post '/new' do
  Comment.create({body: params['comment']})
end
