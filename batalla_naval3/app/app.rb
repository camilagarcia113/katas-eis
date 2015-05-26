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

    post 'put_small_ship' do
      @small_ship_x = params[:small_ship_x]
      @small_ship_y = params[:small_ship_y]
      board = session[:board]
      begin
        board.put_small_ship(@small_ship_x.to_i, @small_ship_y.to_i)
        @inform_small_ship = 'Congrats!!'
      rescue Exception => e
        @inform_small_ship = e.message
      end
      render 'batalla/inicio'
    end

    post 'put_large_ship' do
      @large_ship_x = params[:large_ship_x]
      @large_ship_y = params[:large_ship_y]
      board = session[:board]
      begin
        board.put_large_ship(@large_ship_x.to_i, @large_ship_y.to_i)
        @inform_large_ship = 'Congrats!!'
      rescue Exception => e
        @inform_large_ship = e.message
      end
      render 'batalla/inicio'
    end

    post 'occupied_position' do
      @is_occupied_x = params[:is_occupied_x]
      @is_occupied_y = params[:is_occupied_y]
      board = session[:board]
      if board.is_occupied?(@is_occupied_x.to_i, @is_occupied_y.to_i)
        @inform_occupied = 'Occupied'
      else
        @inform_occupied = 'Free'
      end
      render 'batalla/inicio'
    end
  end
end
