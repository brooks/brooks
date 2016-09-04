class TweetsController < ApplicationController

  before_filter :authorize_slack

  def index
    @tweets = $twitter.user_timeline
  end

  def create
    $twitter.update(params[:text][6..-1])
  end

  def authorize_slack
    redirect_to root_path unless params[:token] == ENV['SLACK_TOKEN']
  end

end
