class Node < ActiveRecord::Base
  belongs_to :parent, class_name: "Node", foreign_key: "parent_id"
  has_many :children, class_name: "Node", foreign_key: "parent_id"
  has_many :locations, through: :location_nodes
  has_many :location_nodes, dependent: :destroy

  after_create :add_order

  def add_order
    if order.nil? && parent.present?
      self.order = parent.children.length
      self.save
    end
  end
end
