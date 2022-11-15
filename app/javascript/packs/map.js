function initMap() {
	const map = new google.maps.Map(document.getElementById('map'), {
		zoom: 15,
		center: new google.maps.LatLng(13.86717, 100.69186)
	})

	const shops = document.querySelectorAll('li.shop-item')
	let infowindow = new google.maps.InfoWindow({ content: '' })

	shops.forEach(shop => {
		// Create marker
		const marker = new google.maps.Marker({
			position: new google.maps.LatLng(
				parseFloat(shop.getAttribute('data-latitude')),
				parseFloat(shop.getAttribute('data-longitude'))
			),
			icon: `https://maps.google.com/mapfiles/ms/icons/${shop.getAttribute('data-color')}-dot.png`,
			name: shop.getAttribute('data-name'),
			map: map
		})

		//Set marker info on click
		marker.addListener('click', function () {
			infowindow.setContent('<div><strong>' + marker.name + '</strong></div>')
			infowindow.open(map, marker)
		})
	})
}

window.initMap = initMap
