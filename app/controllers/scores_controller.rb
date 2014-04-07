class ScoresController < ApplicationController
  before_filter :set_headers
  protect_from_forgery :except => :create

  def create
    @score = Score.new(params[:score])
    p "blahblah"
    if @score.save
      render :json => @score, :status => 201
    else
      render :json => { :errors => @score.errors.full_messages }, :status => 422
    end
  end

  respond_to :html, :xml, :json, :js
  def show
    @scores = Score.where("game_id = :game_id", {game_id: params[:id]})
      .order(value: :desc, created_at: :asc)
      .limit(20)

    respond_with(@scores) do |format|
      format.js  { render :json => @scores, :callback => params[:callback] }
    end
  end

  def set_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Expose-Headers'] = 'ETag'
    headers['Access-Control-Allow-Methods'] = 'GET, POST'
    headers['Access-Control-Allow-Headers'] = '*,x-requested-with,Content-Type,If-Modified-Since,If-None-Match'
    headers['Access-Control-Max-Age'] = '86400'
  end
end
