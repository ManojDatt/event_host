class AddAvatarableToImages < ActiveRecord::Migration[5.0]
  def change
    add_reference :images, :avatarable, polymorphic: true
  end
end
