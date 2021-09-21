class ThirdToilet < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '多量' },
    { id: 2, name: '中量' }
    { id: 3, name: '少量' }
    { id: 4, name: '廃なし' }
    { id: 5, name: '✕' }
  ]
  
  include ActiveHash::Associations
  has_many :conditions
end