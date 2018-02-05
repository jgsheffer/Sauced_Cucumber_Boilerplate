require_relative "./common_page_object.rb"

class SearchResultsPage < CommonPageObject

	def send_message()
		@browser.button(:id, "submit")
	end

	def email_error()
		@browser.div(:text, "Please Enter Valid Email address")
	end
end