class HomeController < ApplicationController
  def top
    @homes = Home.all
  end

  def import
    Home.import(params[:file])
    p "==============="
      b = ["1","2","3"]
      a = "#{Home.import(params[:file])}"
      p a
      p b
    p "==============="
    redirect_to "/", notice: "商品を追加しました。"
  end

  

end
