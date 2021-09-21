class Dinner < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '全量' },
    { id: 2, name: '半分' },
    { id: 3, name: '少量' },
    { id: 4, name: '✕' }
  ]
  
  include ActiveHash::Associations
  has_many :conditions
end