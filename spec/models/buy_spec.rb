require 'rails_helper'

RSpec.describe Buy, type: :model do
  describe '#pay' do
    it "購入者のIDがない場合は登録できないこと" do
      user = create(:user)
      buy = build(:buy, user_id: nil)
      buy.valid?
      expect(buy.errors[:user_id]).to include()
    end
    it "購入者のIDがあれば登録できること" do
      user = create(:user)
      buy = build(:buy, user_id: user.id)
      buy.valid?
      expect(buy).to be_valid
    end
  end
  
end

# describe User do
#   describe '#create' do
#     it "nicknameがない場合は登録できないこと" do
#      user = create(:user)
#      buy = build(:buy, user_id: user.id)
#      buy.valid?
#      expect(user.errors[:nickname]).to include("can't be blank")
#     end
#     it "emailがない場合は登録できないこと" do
#       user = build(:user, email: nil)
#       user.valid?
#       expect(user.errors[:email]).to include("can't be blank")
#     end
#     it "パスワードがない場合は登録できないこと" do
#       user = build(:user, password: nil)
#       user.valid?
#       expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
#     end
#     it " パスワードが7文字未満であれば登録できないこと" do
#       user = build(:user, password: "ninini")
#       user.valid?
#       expect(user.errors[:password]).to include("is too short (minimum is 7 characters)")
#     end
#     it " パスワードが7文字以上であれば登録できること" do
#       user = build(:user, password: "ninini7")
#       user.valid?
#       expect(user).to be_valid
#     end
#     it " 重複したemailが存在する場合は登録できないこと " do
#       user = create(:user)
#       another_user = build(:user, email: user.email)
#       another_user.valid?
#       expect(another_user.errors[:email]).to include("has already been taken")
#     end
#   end
# end
