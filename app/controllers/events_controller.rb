class EventsController < ApplicationController
  expose(:event, attributes: :event_params)
  expose(:events)

  def create
    if event.save
      redirect_to event, notice: t('events.create.success')
    else
      render action: 'new'
    end
  end

  def update
    if event.save
      redirect_to event, notice: t('events.update.success')
    else
      render action: 'edit'
    end
  end

  def destroy
    event.destroy
    redirect_to events_url, notice: t('events.destroy.success')
  end

  private

  def event_params
    params.require(:event).permit(:name, :description, :start_at, :end_at)
  end
end