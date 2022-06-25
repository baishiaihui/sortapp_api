class Api::V1::SortInfosController < ApplicationController
  #全件取得
  # def index
  #   sortinfos = SortInfo.all
  #   render json: sortinfos.as_json(only: [:id, :name, :sort, :sort2])
  # end

  # 詳細表示
  def show
    sortinfo = SortInfo.find(params[:id])
    render json: sortinfo.as_json
  end

  # 新規登録
  def create
    @sortinfo = SortInfo.new(sortinfo_params)
    if @sortinfo.save
      render json: { status: 'SUCCESS'}
    else
      render json: { status: 'ERROR'}
    end
  end

  #更新
  def update
    @sortinfo = SortInfo.find(params[:id])
    if @sortinfo.update(sortinfo_params)
      render json: { status: 'SUCCESS'}
    else
      render json: { status: 'ERROR'}
    end
  end

  #削除
  def destroy
    @sortinfo = SortInfo.find(params[:id])
    @sortinfo.destroy
    render json: {data: @sortinfo}
  end  

  # キーワード検索
  def search
    data = {}
    if params[:keyword].present?
      data[:sortinfos] = SortInfo.search(params[:keyword],params[:syno_chk])
      render json: data
    else
      render json:{ message: '検索キーワードがありません'}
    end
  end

  private
    def sortinfo_params
      params.require(:sort_info).permit(:name, :kana, :syno, :sort, :sort2, :detail, :url)
    end

end
