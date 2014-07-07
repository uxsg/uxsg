class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true, on: :create
  validates :password, length: { minimum: 8 }, if: "password.present?"

  rails_admin do
    list do
      configure :crypted_password do
        hide
      end
      configure :salt do
        hide
      end
    end

    edit do
      configure :crypted_password do
        hide
      end
      configure :salt do
        hide
      end
      field :email
      field :password
    end
  end
end
