class Tweet
  include Mongoid::Document
  field :body, type: String
  embedded_in :user
end
