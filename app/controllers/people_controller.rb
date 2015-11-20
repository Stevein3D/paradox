class PeopleController < ApplicationController
  def index
   	@people = Person.all.order('full_name')
      if params[:search]
    	@people = Person.search(params[:search], params[:page])
  	  else
    	@people = Person.paginate(page: params[:page], :per_page => 15)
  	end
  end 

  def show
    @person = Person.find(params[:id])
  end

  def edit
    @person = Person.find(params[:id])
  end

  def destroy
    Person.find(params[:id]).destroy
    flash[:success] = "Person deleted"
    redirect_to people_url
  end

  def import
  	Person.import(params[:file])
  	redirect_to people_url, notice: "People File Imported."
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
        flash[:success] = "Entry updated!"
      redirect_to @person
    else
      render 'edit'
    end
  end
 
  private
    def person_params
      params.require(:person).permit(:full_name, :first_name, :middle_name, :last_name, :birth_date, :birth_day, :birth_month, 
                                        :birth_year, :death_date, :death_day, :death_month, :death_year, :primary_skill, :biography)
    end
end
