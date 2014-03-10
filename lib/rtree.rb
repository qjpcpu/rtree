require "rtree/version"

class Dir 
  def Dir.tree(dir = ".",options={:level=>nil},nesting=0) 
    options[:level]||=nil
	options[:show_hidden]=false if options[:show_hidden].nil?
    Dir.foreach(dir) do |entry| 
      next if ['.','..'].include?(entry)
	  next if entry =~ /^\./ && !options[:show_hidden]
      puts "|   " * nesting + "|-- #{entry}" 
      if File.stat(d = "#{dir}#{File::SEPARATOR}#{entry}").directory? 
        tree(d, options,nesting+1) if options[:level].nil? || (nesting+1)<options[:level]
      end 
    end 
  end 
end
