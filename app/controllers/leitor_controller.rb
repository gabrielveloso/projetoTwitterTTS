class LeitorController < ApplicationController		
	
	def ultima()	
	last_id1 = 1 

	#timeline1 = Twitter.home_timeline( :count => 1 )	 
	timeline1 = Twitter.user_timeline("jctransito", :count => 1 )

	   unless timeline1.empty?
	     last_id1 = timeline1[0].id
	 
	     timeline1.reverse.each do|st|
	       return "#{st.user.name} said #{st.text}"
	     end
	    end		  
	end
	
	def todasMsg()	
	@msgs = []
	last_id1 = 1 
	timeline1 = Twitter.user_timeline("jctransito", :count => 10 )	 
	   unless timeline1.empty?
	     last_id1 = timeline1[0].id
	 
	     timeline1.reverse.each do|st|
	       @msgs << "#{st.user.name} said #{st.text}"
	     end
	    end	
		return @msgs	  
	end

	def index
	    @acesso = self.ultima()
	end 

	def lerTodas
	 @msgs = self.todasMsg()
	end

end
