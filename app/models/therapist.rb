class Therapist < User
	has_many :plans, dependent: :destroy
end