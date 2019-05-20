module SixSaferpay
  class Address

    attr_accessor(:first_name,
                  :last_name,
                  :date_of_birth,
                  :company,
                  :gender,
                  :legal_form,
                  :street,
                  :street_2,
                  :zip,
                  :city,
                  :country_subdevision_code,
                  :country_code,
                  :phone,
                  :email,
                 )


    def initialize(first_name: nil,
                  last_name: nil,
                  date_of_birth: nil,
                  company: nil,
                  gender: nil,
                  legal_form: nil,
                  street: nil,
                  street_2: nil,
                  zip: nil,
                  city: nil,
                  country_subdevision_code: nil,
                  country_code: nil,
                  phone: nil,
                  email: nil
                 )
      @first_name = first_name
      @last_name = last_name
      @date_of_birth = date_of_birth
      @company = company
      @gender = gender
      @legal_form = legal_form
      @street = street
      @street_2 = street_2
      @zip = zip
      @city = city
      @country_subdevision_code = country_subdevision_code
      @country_code = country_code
      @phone = phone
      @email = email
    end

    def to_hash
      hash = Hash.new
      hash.merge!(first_name: @first_name) if @first_name
      hash.merge!(last_name: @last_name) if @last_name
      hash.merge!(date_of_birth: @date_of_birth) if @date_of_birth
      hash.merge!(company: @company) if @company
      hash.merge!(gender: @gender) if @gender
      hash.merge!(legal_form: @legal_form) if @legal_form
      hash.merge!(street: @street) if @street
      hash.merge!(street_2: @street_2) if @street_2
      hash.merge!(zip: @zip) if @zip
      hash.merge!(city: @city) if @city
      hash.merge!(country_subdevision_code: @country_subdevision_code) if @country_subdevision_code
      hash.merge!(country_code: @country_code) if @country_code
      hash.merge!(phone: @phone) if @phone
      hash.merge!(email: @email) if @email
      hash
    end
    alias_method :to_h, :to_hash

  end
end
