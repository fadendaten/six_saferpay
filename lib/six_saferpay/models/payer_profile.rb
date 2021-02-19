module SixSaferpay
  class PayerProfile

    attr_accessor(
      :has_account,
      :has_password,
      :password_forgotten,
      :first_name,
      :last_name,
      :company,
      :date_of_birth,
      :last_login_date,
      :gender,
      :creation_date,
      :password_last_change_date,
      :email,
      :secondary_email,
      :phone,
    )

    def initialize(
      has_account: nil,
      has_password: nil,
      password_forgotten: nil,
      first_name: nil,
      last_name: nil,
      company: nil,
      date_of_birth: nil,
      last_login_date: nil,
      gender: nil,
      creation_date: nil,
      password_last_change_date: nil,
      email: nil,
      secondary_email: nil,
      phone: nil
      )
      @has_account = has_account
      @has_password = has_password
      @password_forgotten = password_forgotten
      @first_name = first_name
      @last_name = last_name
      @company = company
      @date_of_birth = date_of_birth
      @last_login_date = last_login_date
      @gender = gender
      @creation_date = creation_date
      @password_last_change_date = password_last_change_date
      @email = email
      @secondary_email = secondary_email

      if phone
        @phone = SixSaferpay::Phone.new(phone.to_h)
      end
    end

    def to_hash
      hash = Hash.new
      if !@has_account.nil?
        hash.merge!(has_account: @has_account)
      end
      if !@has_password.nil?
        hash.merge!(has_password: @has_password)
      end
      if !@password_forgotten.nil?
        hash.merge!(password_forgotten: @password_forgotten)
      end
      if @first_name
        hash.merge!(first_name: @first_name)
      end
      if @last_name
        hash.merge!(last_name: @last_name)
      end
      if @company
        hash.merge!(company: @company)
      end
      if @date_of_birth
        hash.merge!(date_of_birth: @date_of_birth)
      end
      if @last_login_date
        hash.merge!(last_login_date: @last_login_date)
      end
      if @gender
        hash.merge!(gender: @gender)
      end
      if @creation_date
        hash.merge!(creation_date: @creation_date)
      end
      if @password_last_change_date
        hash.merge!(password_last_change_date: @password_last_change_date)
      end
      if @email
        hash.merge!(email: @email)
      end
      if @secondary_email
        hash.merge!(secondary_email: @secondary_email)
      end
      if @phone
        hash.merge!(phone: @phone.to_h)
      end
      hash
    end
    alias_method :to_h, :to_hash

  end
end
