class Api::V1::SortInfosController < ApplicationController
  def index
    sortinfos = SortInfo.all
    render json: sortinfos.as_json(only: [:id, :name, :sort, :sort2])
  end

  def show
    sortinfo = SortInfo.find(params[:id])
    render json: sortinfo.as_json(only: [:id, :name, :kana, :sort, :sort2, :detail, :url])
  end

  # 検索
  def search
    data = {}
    if params[:keyword].present?
      data[:sortinfos] = SortInfo.search(params[:keyword])
      render json: data
    else
      render json:{ message: '検索キーワードがありません'}
    end
  end  
end
