# == Schema Information
#
# Table name: hearings
#
#  id       :integer          not null, primary key
#  quote_id :integer          not null
#  user_id  :integer          not null
#

class Hearing < ActiveRecord::Base

end
