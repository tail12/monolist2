class ItemsController < ApplicationController
  before_action :logged_in_user , except: [:show]
  before_action :set_item, only: [:show]

  def new
    if params[:q]
      response = RakutenWebService::Ichiba::Item.search(
        keyword: params[:q],
        imageFlag: 1,
      )
      @items = response.first(20)
    end

  end

  def show
    @haved_user = @item.have_users
    @wanted_user = @item.want_users
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end
