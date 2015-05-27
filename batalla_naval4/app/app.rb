require_relative '../app/models/board'

module Battleship
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get '/' do
      render 'batalla/inicio'
    end

    post 'new_board' do
      @x = params[:x]
      @y = params[:y]
      @board = Board.new @x.to_i, @y.to_i
      session[:board] = @board
      render 'batalla/inicio'
    end
  end
end
