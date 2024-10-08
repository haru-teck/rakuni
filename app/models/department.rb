class Department < ActiveHash::Base
  self.data = [
    { id: 1, name: '介護' },
    { id: 2, name: '看護' },
    { id: 3, name: '事務' },
    { id: 4, name: '管理者' }
  ]
end