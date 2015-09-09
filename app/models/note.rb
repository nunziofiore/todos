class Note < ActiveRecord::Base

  def complete
    self.status = "completed"
    self.save!
  end

  def Note.list
    Note.where(status: "open").all.each do |note|
      puts "#{note.id} [#{note.status.upcase}]- #{note.content} "
    end
  end

  def Note.list_all
    Note.all.each do |note|
      puts "#{note.id} [#{note.status.upcase}]- #{note.content} "
    end
  end


  def Note.add(content)
    Note.create!(content: content)
  end

  def Note.add_with_date(content,due_date)
    Note.create!(content: content, due_date: due_date)
  end

end
