class ItemsController < ApplicationController

  require 'payjp'

  def index
  end

  def new
  end

  def show
  end

  def purchase
    Payjp.api_key = "sk_test_5b7e13cb76bbe5226e8504b2"
    Payjp::Charge.create(
      amount: 809, # 決済する値段
      card: params['payjp-token'], # フォームを送信すると作成・送信されてくるトークン
      currency: 'jpy'
    )
  end
end
