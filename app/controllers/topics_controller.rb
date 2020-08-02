class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_user.topics.new(topic_params)
    
    if @topic.save
      redirect_to topics_path, sucess: "投稿に成功"
      
    else 
      flash.now[:danger] = "投稿に失敗"
      render :new
    end
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  private
  def topic_params
    params.require(:topic).permit(:image, :description)
  end
end
