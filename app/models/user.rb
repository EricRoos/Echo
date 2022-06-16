# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable, :trackable

  has_many :echoes

  def email_required?
    false
  end

  def will_save_change_to_email?
    false
  end

  def email_changed?
    false
  end
end
