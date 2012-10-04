( function( $ ) {
        $(document).ready(function() {
            // automatically hide flash messages
            setTimeout( function() {
                $( 'p.message_red, p.message_green, p.message_blue, p.message_yellow' ).fadeOut( 3000 );
            }, 15000 );
        });
})( jQuery )
