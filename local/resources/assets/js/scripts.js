var plugins = {
    menuSideBar: $('.sidebar'),
    slider: $('#slider'),
};
$(document).ready(function () {
    function sidebar() {
        var trigger = $('#trigger,#close');
        trigger.on('click', function () {
            $(this).toggleClass('active');
            plugins.menuSideBar.toggleClass('closed');
            $('#blurrMe').toggleClass('blurred')
        })
        $('#wrap-container').on('click', function () {
            if ($('#blurrMe').hasClass('blurred')) {
                $('#blurrMe').toggleClass('blurred')
                plugins.menuSideBar.toggleClass('closed');
            }
        })
    }
    sidebar();
    function runSlider() {
        plugins.slider.nivoSlider({
            effect: 'fade',
            animSpeed: 500,
            pauseTime: 3000,
            pauseOnHover: true,
            controlNav: false,
        });
    }
    if (plugins.slider.length) {
        runSlider();
    }
});

$('.btn-close-callme').click(function () {
    $('#popup-callme').css('display', 'none')
})

$('.call-me-web').click(function () {
    if($('#popup-callme').css('display')=='none')
    {
        $('#popup-callme').css('display', 'block')
        // alert (123);
    }else{
        $('#popup-callme').css('display', 'none')
    }
})