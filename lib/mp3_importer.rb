class MP3Importer
    attr_accessor :song, :path, :artist

    def initialize(path)
    @path = path
    end

    def files
        @files ||= Dir.glob("#{@path}/*").collect do |file| 
           file.gsub(@path + "/", "") 
        end
    
    end

    def import
        files.each do |file|
             Song.new_by_filename(file)
        end
    end



end