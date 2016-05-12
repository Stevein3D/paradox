class ContactMailer < ApplicationMailer
	default from: 'donotreply@paradoxparkway.com'
	
	def visitor_email(visitor)
		@visitor = visitor
		mail(to: "stevein3d@gmail.com", subject: "Saying Hello")
	end
end
