class DiariesController < ApplicationController
 
  before_action :move_to_index, except: [:index, :show, :about, :report]
  
  def index
    if user_signed_in?
    
    @nickname = current_user.nickname
    @diaries = current_user.diaries.order("created_at DESC")
    else
      flash[:alert] = "ログインしてください"
    end
  end

  def about
  end

  def report  #%現在作成中です%>
   @report = Diary.pluck(:created_at, :score)
  end

  def new
    @diary = Diary.new
  end

  def create
     @diary =  Diary.new(diary_params)
     if @diary.save
      
    else
      render :new
    end
  end

  def destroy
    diary = Diary.find(params[:id])
    diary.destroy
  end

  def edit
    @diary = Diary.find(params[:id])
  end

  def update
    @diary = Diary.find(params[:id])
     if  @diary.update(diary_params)
    else
      render :edit
    end
  end

  def show
    @diary = Diary.find(params[:id])
  end

  private
  def diary_params
    params.require(:diary).permit(:image, :category_id, :text, :score).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end

end

