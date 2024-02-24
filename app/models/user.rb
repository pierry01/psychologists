# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable,
         :rememberable, :validatable, :trackable, :lockable

  enum kind_of: { pacient: 0, psychologist: 1, admin: 2 }
end
