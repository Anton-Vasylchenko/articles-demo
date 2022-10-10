module ApplicationHelper
    def add_image(item)
        url = item.image_data.nil? ? 'user-default.jpg' : item.image_url
        # url = 'user-default.jpg'
        image_tag((url), class: "rounded mx-auto d-block shadow")
    end
end