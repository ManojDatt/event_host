class YouTubeVideo < ApplicationRecord



YT_LINK_FORMAT = /(youtu\.be\/|youtube\.com\/(watch\?(.*&)?v=|(embed|v)\/))([^\?&"'>]+)/
 validates :link, presence: true, format: YT_LINK_FORMAT 
 scope :recent_videos , ->{YouTubeVideo.where(created_at: 7.days.ago..Time.now)}
before_create :uid_exract
def uid_exract
 	uid = link.match(YT_LINK_FORMAT)
  self.uid = uid[5] if uid && uid[5]
  if self.uid.to_s.length != 11
    self.errors.add(:link, 'is invalid.')
    false
  elsif YouTubeVideo.where(uid: self.uid).any?
    self.errors.add(:link, 'is not unique.')
    false
  else
    get_additional_info
  end
 end 


def get_additional_info
	
end

end
