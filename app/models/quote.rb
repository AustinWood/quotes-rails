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

end
