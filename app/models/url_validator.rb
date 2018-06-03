class UrlValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /(https?:\/\/).+\.[a-z]{2,}/i || value.blank?
      record.errors[attribute] << (options[:message] || "is not an acceptable url type")
    end
  end
end
