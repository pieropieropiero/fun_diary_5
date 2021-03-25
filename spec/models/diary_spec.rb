require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '投稿機能' do
    context '投稿機能ができるとき' do
      it "全ての情報が存在すれば投稿できる" do
        expect(@diary).to be_valid
      end
    end

    context '投稿ができないとき' do
      it "text本文が空では投稿できない" do
        @diary.text = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Text can't be blank")
      end
      it "category_idが空では投稿できない" do
        @diary.category_id = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Category is not a number")
      end
      it "category_idが1では投稿できない" do
        @diary.category_id = 1
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Category must be other than 1")
      end
      it "scoreが空では投稿できない" do
        @diary.score = ""
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Score is not a number")
      end
      it "scoreが0以下では投稿できない" do
        @diary.score = 0
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Score is not included in the list")
      end
      it "scoreが101以上では投稿できない" do
        @diary.score = 101
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Score is not included in the list")
      end
      it "scoreが全角文字では投稿できない" do
        @diary.score = '１００'
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Score is not included in the list")
      end
      it "scoreが半角英数混合では投稿できない" do
        @diary.score = '58ut7'
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Score is not a number")
      end
      it "scoreが半角英語だけでは投稿できない" do
        @diary.score = "yuldkf"
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Score is not a number")
      end
      it "imageが空では投稿できない" do
        @diary.image = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Image can't be blank")
      end
    end
  end
end
