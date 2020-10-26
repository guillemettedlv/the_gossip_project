class JoinTableGossipTag < ActiveRecord::Migration[5.2]
  def change
    create_join_table :gossips, :tags do |t|
      t.belongs_to :gossip, index: true
      t.belongs_to :tag, index: true
    end
  end
end
