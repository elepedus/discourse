module Jobs

  class AsyncJob < Jobs::Scheduled
    async true

    def execute(args)
      puts "#{Thread.current}: I am starting AsyncJob"
      1.upto(10).each do
        puts "#{Thread.current}: Still going..."
        sleep 2
      end
      puts "#{Thread.current}: I am done"
    end

  end

end
