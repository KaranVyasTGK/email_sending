class EmailsController < ApplicationController
  before_action :set_email, only: %i[ show ]

  # GET /emails or /emails.json
  def index
    @q = current_user.emails.ransack(params[:q])
    @emails = @q.result
    puts "=========#{@emails.count}========"
  end

  # GET /emails/1 or /emails/1.json
  def show
  end

  # GET /emails/new
  def new
    @email = Email.new
  end

  # POST /emails or /emails.json
  def create
    @email = Email.new(email_params)

    respond_to do |format|
      if @email.save
        ApplicationMailer.send_email(@email).deliver_now
        format.html { redirect_to email_url(@email), notice: "Email was successfully created." }
        format.json { render :show, status: :created, location: @email }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @email.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email
      @email = Email.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def email_params
      params.require(:email).permit(:to, :title, :body, :is_star, :user_id)
    end
end
