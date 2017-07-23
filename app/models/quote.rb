# == Schema Information
#
# Table name: quotes
#
#  id         :integer          not null, primary key
#  text       :string           not null
#  said_by    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quote < ActiveRecord::Base

  belongs_to(
    :speaker,
    class_name: "User",
    foreign_key: :said_by,
    inverse_of: :quotes
  )

  has_many :hearings

end
