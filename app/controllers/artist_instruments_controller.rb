class ArtistInstrumentsController

  # before_action :set_ai, only: [:edit, :update]

  def index
  end

  def show
  end

  def new
    @artist_instrument = ArtistInstrument.new
  end

  def create
    @artist_instrument = ArtistInstrument.create(ai_params)
    redirect_to artist_instruments_path(@artist_instrument)
  end

  def update
  end

  def edit
  end

  private

  def set_ai
    @artist_instrument = ArtistInstrument.find(params[:id])
  end

  def ai_params
    params.require(:artist_instrument).permit(:artist_id, :instrument_id)
  end

end
