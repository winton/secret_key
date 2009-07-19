require 'digest/sha1'

class SecretKey
  
  attr_reader :key
  
  def initialize(base_dir)
    tmp = "#{base_dir}/tmp"
    tmp = File.expand_path(tmp)
    FileUtils.mkdir_p(tmp)
    @path = "#{tmp}/secret_key"
  end

  def read
    if @key
      @key
    elsif exists?
      @key = File.read(@path).strip
    else
      write
    end
  end
  
  def write
    File.open(@path, 'w') do |f|
      @key = RUBY_PLATFORM + rand(10000000000000).to_s
      @key = Digest::SHA1.hexdigest(@key)
      f.write(@key)
    end
    @key
  end
  
  private
  
  def exists?
    File.exists?(@path)
  end
end