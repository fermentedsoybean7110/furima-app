require 'rails_helper'
describe BuysController do
  let(:user) { create(:user) }
  let(:category) { create(:category) }
  let(:item) { create(:item, category_id: category.id, user_id: user.id) }


  describe '#index' do

    context 'ログインしている場合' do
      before do
        login user
      end
      it 'buys/index.html.haml に遷移すること' do
        allow(Payjp::Customer).to receive(:create).and_return(PayjpMock.prepare_customer_information)
        allow(Payjp::Customer).to receive(:retrieve).and_return(PayjpMock.prepare_customer_information)
        allow(Payjp::Customer).to receive(:cards).and_return(PayjpMock.prepare_customer_information)
        card = create(:credit, user_id: user.id, customer_id: "id", card_id: "default_card")
        get :index, params: { item_id: item.id }
        expect(response).to render_template :index
      end
    end
  end
end

# describe CardsController do
#   let(:card) { create(:card) }
#   let(:user) { create(:user) }

#   describe '#edit' do

#     context 'ログインしている場合' do
#       before do
#         login user
#       end

#       it 'cards/edit.html.haml に遷移すること' do
#         get :edit, params: { user_id: user.id, id: card.id  }
#         expect(response).to render_template :edit
#       end

#     end
#   end
# end

# let(:shipment) { create(:shipment, item_id: item.id) }