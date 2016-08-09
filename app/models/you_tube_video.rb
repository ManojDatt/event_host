class YouTubeVideo < ApplicationRecord



#YT_LINK_FORMAT = /^.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
# validates :link, presence: true, format: YT_LINK_FORMAT ,:multiline => true



# before_create -> do
#   uid = link.match(YT_LINK_FORMAT)
#   self.uid = uid[2] if uid && uid[2]

#   if self.uid.to_s.length != 11
#     self.errors.add(:link, 'is invalid.')
#     false
#   elsif Video.where(uid: self.uid).any?
#     self.errors.add(:link, 'is not unique.')
#     false
#   else
#     get_additional_info
#   end
# end
end
