# == Schema Information
#
# Table name: subscriptors
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SubscriptorTest < ActiveSupport::TestCase
 test "Subscriptor should have a name" do
    @subscriptor = Subscriptor.new
    assert_not @subscriptor.save
 end

 test 'capitalize_name should return a subscriptor with name capitalize' do
    @subscriptor = Subscriptor.new(name: 'pedro')
    @subscriptor.capitalize_name
    assert_equal("Pedro", @subscriptor.name)
 end
end
