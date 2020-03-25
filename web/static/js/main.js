function toggleReadBtn(t) {
    if (t.innerHTML == "Read More"){

        t.innerHTML = "Read Less";
    } 
    else {
        t.innerHTML = "Read More";
    }
}

function toggleThemeBtn(t) {
    if (t.innerHTML == "See More"){

        t.innerHTML = "See Less";
    } 
    else {
        t.innerHTML = "See More";
    }
}

$(document).ready(function() {
    $('.featured-image').magnificPopup({
		type: 'image',
        tLoading: 'Loading image',
        closeOnContentClick: true,
        mainClass: 'mfp-img-mobile mfp-with-zoom',
		image: {
			tError: '<a href="%url%">The image could not be loaded.</a>',
        },
        zoom: {
            enabled: true,
            easing: 'ease-in-out',
            duration: 200
        },
	});


	$('.popup-gallery').magnificPopup({
		delegate: 'a',
		type: 'image',
		tLoading: 'Loading image #%curr%...',
        mainClass: 'mfp-img-mobile',
		gallery: {
			enabled: true,
			navigateByImgClick: true,
			preload: [0,1] // Will preload 0 - before current, and 1 after the current image
		},
		image: {
			tError: '<a href="%url%">The image #%curr%</a> could not be loaded.',
        },
        
	});
});