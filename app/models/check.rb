class Genre < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '○' },
    { id: 2, name: '✕' }
  ]
  end