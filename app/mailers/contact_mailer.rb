class ContactMailer < ApplicationMailer
	default from: 'donotreply@paradoxparkway.com'
	
	def visitor_email(visitor)
		@visitor = visitor
		mail(to: "steve@paradoxparkway.com", subject: "Saying Hello")
	end
end
