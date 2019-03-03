module VCR
  module Helper
    def Helper.cassette_exists?(identifier)
      base = VCR.configuration.cassette_library_dir
      file_name = identifier + '.yml'
      path = base + '/' + file_name
      File.exists?(path)
    end
  end
end

