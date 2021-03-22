class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title == nil
            record.errors[:title] << "Needs a title jackass"
        else
            unless record.title.include?("Won't Believe") || record.title.include?("Secret") || record.title.include?("Top") || record.title.include?("Guess")
                record.errors[:title] << "Make it more clickbaity!!!"
            end
        end
    end
end