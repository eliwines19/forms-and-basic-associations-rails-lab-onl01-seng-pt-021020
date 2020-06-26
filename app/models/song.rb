class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end

  def artist_name
    self.artist ? self.artist_name : nil
  end


  def notes=(notes)
    notes.each do |content|
      notes = Note.create(content: content)
      self.notes << note
    end
  end
end
