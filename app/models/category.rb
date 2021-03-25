class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '健康・運動' },
    { id: 3, name: '勉強・教養' },
    { id: 4, name: '心・精神' },
    { id: 5, name: '仕事・社会' },
    { id: 6, name: 'プライベート・家庭' },
    { id: 7, name: 'お金・経済' },
    { id: 8, name: '恋愛' },
    { id: 9, name: '特別・その他' }
  ]

  include ActiveHash::Associations
  has_many :diaries

  end