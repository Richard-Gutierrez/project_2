class Payment < ActiveRecord::Base
    belongs_to :sender, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
    has_one :card, through: :sender
end
