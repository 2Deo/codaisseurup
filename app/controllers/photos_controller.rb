class PhotosController < ApplicationController
  def destroy
    photo = Photo.find(param: [id])
    @event = photo.event
    if @event.user.id == current_user.id
      photo.destroy

      redirect_to edit_event_path(@event), notice: "Photo removed"
    else
      redirect_to @event, notice "Cannot delete photo"
    end
  end
end