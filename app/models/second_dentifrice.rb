class SecondDentifrice < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '⭕' },
    { id: 2, name: '✕' }
  ]
  
  include ActiveHash::Associations
  has_many :conditions
end