# README
​
## Product Model
|Column|Type|options|
|:----:|:--:|:-----:|
|id|integer|
|name|string|null: false|
|info|text|null: false|
|category|integer|null: false, default: 0|
|brand|string|
|status|integer|null: false, default: 0|
|delivery burden|integer|null: false, default: 0|
|prefecture|integer|null: false, default: 0|
|days|integer|null: false, default: 0|
|value|integer|null: false|
|fee|integer|null: false|
|return|integer|null: false|
|user_id|references|foreign_key: true|
|exhibit_id|references|
|draft_id|references|
|negotiate_id|references|
​
### Assosiation 
- has_many :photos
- has_many :likes
- belongs_to :user
​
## Photo Model
|Column|Type|options|
|:----:|:--:|:-----:|
|photo|string|null: false|
|product_id|references|foreign_key: true|
​
### Assosiation 
- belongs_to :product
​
## Exhibit Model
|Column|Type|options|
|:----:|:--:|:-----:|

​
### Assosiation 
- has_one :product
- belongs_to :user
- accepts_nested_attributes_for :product
​
## Draft Model
|Column|Type|options|
|:----:|:--:|:-----:|
​
### Assosiation 
- has_one :product
- belongs_to :user
- accepts_nested_attributes_for :product

## Negotiate Model
|Column|Type|options|
|:----:|:--:|:-----:|
​
### Assosiation 
- has_one :product
- belongs_to :user
- accepts_nested_attributes_for :product
​
## Sold Model
|Column|Type|options|
|:----:|:--:|:-----:|

### Assosiation 
- has_one :product
- belongs_to :user
- accepts_nested_attributes_for :product
