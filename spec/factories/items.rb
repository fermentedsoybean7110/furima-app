FactoryBot.define do

  factory :item do
    name            {"妖怪ウォッチ"}
    info            {"ゲーム"}
    status          {"clean"}
    switch          {"draft"}
    value           {500}
    sold            {"sale"}
    buy_id          {0}
    after(:build) do |item|
      item.images << build(:image)
      item.shipment = build(:shipment)
    end
  end
end