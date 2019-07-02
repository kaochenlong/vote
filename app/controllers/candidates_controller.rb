class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def show
   @candidate = Candidate.find_by(id: params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = Candidate.new(candidate_params)

    if @candidate.save
      flash[:notice] = "Candidate created!"
      redirect_to '/candidates'
    else
      render :new
    end
  end

  private
  def candidate_params
    params.require(:candidate).permit(:name, :party, :age, :politics)
  end
end
