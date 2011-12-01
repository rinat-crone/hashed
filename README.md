# Hashed

Provides `hashed` method to ActiveRecord objects set that return hash where keys is value of some field in dataset (def. "id").

```ruby
gem "hashed"
```

Then run `bundle install` and simple use it!

```ruby
Categories.active.hashed             # equal to Categories.active.hashed(:id)
Categories.active.hashed(:create_at)
```
