namespace :deploy do
  before :starting, :butts do
    return unless [:production, :prod].include? fetch(:stage)
    run_locally do
      info 'Hold on to your butts...'
      begin
        `afplay #{File.expand_path('../../butts.mp3', __FILE__)}`
      rescue
        # welp
      end
      exit
    end
  end
end
