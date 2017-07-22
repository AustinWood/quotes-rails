# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  phone_number    :integer          not null
#  name            :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base

end
