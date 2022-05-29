class Api::V1::SortInfosController < ApplicationController
  def index
    sortinfos = SortInfo.all
    render json: sortinfos.as_json(only: [:id, :name, :kana, :sort])
  end
end
