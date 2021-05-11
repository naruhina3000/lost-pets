class Pet < ApplicationRecord
    SPECIES = ["Dog", "Cat", "Mouse", "Bird", "Fish"]

    validates :name, presence: true
    validates :date, presence: true
    validates :species, inclusion: {in: SPECIES}
    validate :validate_date

    def validate_date
        return unless date
        if (Date.today - date).to_i < 0
        errors.add(:date, "The date can not be in the future")
        end
    end

    def found_days_ago
        (Date.today - date).to_i
    end
end
