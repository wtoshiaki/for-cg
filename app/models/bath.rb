class Bath < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '清拭' },
    { id: 2, name: 'シャワー浴' },
    { id: 3, name: '湯船' },
    { id: 4, name: '✕' }
  ]
  
  include ActiveHash::Associations
  has_many :conditions
end