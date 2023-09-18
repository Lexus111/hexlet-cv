class UpdateStateToResume < ActiveRecord::Migration[7.0]
  def change
    resume = Resume.find_by(id: 3067)

    return unless resume

    resume.mark_as_failed!
  end
end