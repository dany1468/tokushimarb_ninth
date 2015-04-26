class Tweet
  include Mongoid::Document
  field :body, type: String

  belongs_to :user
  # embeds_many との対応は以下
  # embedded_in :user
end
