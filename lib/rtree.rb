require "rtree/version"

class Dir 
  def Dir.tree(dir = ".",options={:level=>nil},nesting=0,output='') 
    options[:level]||=nil
	options[:show_hidden]=false if options[:show_hidden].nil?
    Dir.foreach(dir) do |entry| 
      next if ['.','..'].include?(entry)
      next if entry =~ /^\./ && !options[:show_hidden]
      line = "|   " * nesting + "|-- #{entry}" 
      full_path="#{dir}#{File::SEPARATOR}#{entry}"
      line << " -> #{File.realpath(full_path)}" if File.symlink?(full_path)
      puts line
      output<<line<<"\n"
      if File.directory?(full_path) && !File.symlink?(full_path)
        tree(full_path, options,nesting+1) if options[:level].nil? || (nesting+1)<options[:level]
      end 
    end 
    output
  end 
end
