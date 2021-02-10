class Greeter
  def initialize(kernelclass = Kernel)
    @kernelclass = kernelclass
  end

  def greet
    puts 'What is your name?'
    name = @kernelclass.gets.chomp
    puts "Hello, #{name}"
  end
end
