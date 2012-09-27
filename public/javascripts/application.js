( function( $ ) {
        $(document).ready(function() {
            // automatically hide flash messages
            setTimeout( function() {
                $( 'p.message_red' ).fadeOut( 3000 );
            }, 15000 );

            $( 'input.toggleComment' )
                .closest( '.element-wrapper' )
                .next( '.element-wrapper' )
                .hide();
   
            $( 'input.toggleComment' ).change( function() {
                var elem = $( this );
                var parent = elem.closest( '.element-wrapper' );

                var nextContainer = parent.next( '.element-wrapper' );

                var value = elem.val();

                if( ( ! value ) || ( value > 9 ) ) {
                    nextContainer.show();
                } else {
                    nextContainer.hide();
                }
            });
        });
})( jQuery )
