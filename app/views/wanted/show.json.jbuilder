json.image_url rails_blob_url(@wanted.image) if @wanted.image.attachment

json.title @wanted.title
json.offer @wanted.initial_offer