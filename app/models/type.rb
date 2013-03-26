class Type < ActiveRecord::Base
	has_ancestry
       attr_accessible :name,  :parent_id
       belongs_to :parent,
       	:class_name => 'Type',
       	:foreign_key => 'id'
       has_many :children,
       	:foreign_key => 'parent_id',
       	:dependent => :destroy
end
