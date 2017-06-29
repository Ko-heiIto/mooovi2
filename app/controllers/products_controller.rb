class ProductsController < RankingController

  before_action :authenticate_user!, only: :search

  def index
    @products = Product.order('id ASC').limit(20)
  end

  def show
    # productsテーブルから該当するidの作品情報を取得し@productの変数へ代入する処理を書いて下さい# 問題3ではこのコードは消して新しくコードを書いてください
    @product = Product.find(params[:id])
  end

  def search
    @products = Product.where('title LIKE(?)', "%#{params[:keyword]}%").limit(20)
  end

  def create
    
  end
end