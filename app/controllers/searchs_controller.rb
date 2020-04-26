class SearchsController < ApplicationController
  # before_action user_admin, only: [:edit]
  def index
    #検索結果を表示する
   if params[:search]
    @places = Place.where("name LIKE ?",'%' + params[:search]+'%' )
    name_ids = Area.where("name = ?", params[:name]) .pluck(:id)
    @area_searched = Area.where("area_id IN (?) ", name_ids)
  else
    #検索されなかった場合、一覧表示する
    @places = Place.all
  end
  end

 def show
#詳細表示
@place = Place.find (params[:id])
# コメント機能
@comment = Comment.new
@comments = @place.comments
#評価平均
 @chill = @comments.average(:chill)
 @costper = @comments.average(:costper)
 @beautiful = @comments.average(:beautiful)

 end
  def edit
  end
#new~create　：投稿機能
  def new
     @place = Place.new
  end
  def create
     @place = Place.new(newplace_params)
     if @place.save
     redirect_to action: "index"
     else
     redirect_to action: "new"
     end
  end

  private
  def place_params
  params.require(:place).permit(:name)
  end
  def newplace_params
  params.require(:place).permit(:name,:area_id,:genre_id,:overview,:access,:holiday,:tel,:price,:image)
  end
end
