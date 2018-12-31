# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'


# Your Code begins from this line onwards #


	def list 

		list_all = Task.all

		
		# puts 'No.      Description    Status '
		# puts "===      ===========    ======"
		puts format(" %-4s%-20s%-20s","No.","Description","Status ")
		puts format(" %-4s%-20s%-20s","===","===========","======")
		list_all.each do |x|
		puts format(" %-4s%-20s%-20s","#{x.priority}","#{x.task}","#{x.status}")
		puts
		priority_sort

	end

	end

	def  add (task)
		no = Task.all.count + 1
		puts no
		Task.create(priority: "#{no}", task: "#{task}")


	end

	def update (no, desc, stat)

		record = Task.find(no)
		record.task = desc
		record.status = stat
		record.save
		p record


		
		# puts "Task number #{no} is not found. Are you sure that this is the right task number?"

	end

	def priority_sort

			all_tasks = Task.all

			y = 1
			all_tasks.each do |x|
			
			x.priority = y
			x.save
			y += 1
		
		end

	end

	def remove(no)

		task = Task.find(no)
		task.delete

		p Task.all.count

		

		puts "Task number #{no} is not found. Are you sure that this is the right task number?"

	end

case ARGV[0]
	when "--list"
		list
	when "--remove"
		remove(ARGV[1])
	when "--add"
		add(ARGV[1])
	when "--update"
		update(ARGV[1],ARGV[2],ARGV[3])

		
end

# end


