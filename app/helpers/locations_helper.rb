module LocationsHelper

		def slick_slider_image(asset)
		link_to(image_tag(asset.avatar.url(:home) , size:'165x165'))
	end
end
