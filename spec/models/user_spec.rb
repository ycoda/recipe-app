require 'spec_helper'

describe User do
  #. 例外を投げてくれば正解。属性のハッシュをnewに渡せてるか。
  before do
    @user = User.new(name: "Example User",
     email: "user@example.com",
     password: "foobar",
     password_confirmation: "foobar")
  end
# 下記を宣言することでshouldで使えるようになる
  subject { @user }
    # 属性が返答するかのテスト
    it { should respond_to(:name) }
    it { should respond_to(:email) }
    it { should respond_to(:password_digest) }
    it { should respond_to(:password) }
    it { should respond_to(:password_confirmation) }
# shouldは"expect(@user).to"の省略版
    it { should be_valid }

  describe "text_fieldのバリデーション" do
    describe "when name is not present" do
      before { @user.name = " " }
      it { should_not be_valid }
    end

    describe "when email is not present" do
      before { @user.email = " " }
      it { should_not be_valid }
    end
# nameが30文字以内であることのテスト
    describe "when name is too long" do
      before { @user.name = "a" * 31 }
      it { should_not be_valid }
    end
  end

  describe "emailのファオーマットの正しさのテスト" do
    describe "invalid編 email入力時のフォーマットの正しさのテスト" do
      it "should be invalid" do
# "%w" は配列の意味。perlと同じ
        addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
        addresses.each do | invalid_address |
          @user.email = invalid_address
          expect(@user).not_to be_valid
        end
      end
    end

    describe "valid編 emailのファオーマットの正しさのテスト" do
      it "should be valid" do
        addresses = %w[user@foo.COM A_US-ER@f.b.org first.lst@foo.com a+b@a.com]
        addresses.each do | valid_address |
          @user.email = valid_address
          expect(@user).to be_valid
        end
      end
    end
  end

  # describe "password関係のテスト" do
  #   describe "passwordの長さ検証" do
  #     before { @user.password = @user.password_confirmation = "a" * 5 }
  #     it { should be_valid }
  #   end
  #   # describe "authenticateメソッド検証" do
  #   #   before { @user.save }
  #   #   let(:found_user)
  #   # end
  # end
end
