( function( $ ) {
        $( document).ready( function() {
            // automatically hide flash messages
            setTimeout( function() {
                $( 'p.message_red, p.message_green, p.message_blue, p.message_yellow' ).fadeOut( 3000 );
            }, 15000 );

            var surveyInputs = $( '#new_survey select[id$="_rating"]' );
            var commentContainers = surveyInputs.closest( '.element-wrapper' ).next( '.element-wrapper' );

            // generate error labels in javascript until a ruby solution can be found
            commentContainers.find( 'label' ).after( '<div class="error">Please offer your feedback so that we might serve you better in the future.</div>' );

            surveyInputs.change( function() {
                // iterate over our rating inputs; if at least one is unsatisfactory display additional feedback requests
                var requestFeedback = false;

                surveyInputs.each( function() {
                    var value = $( this ).val();

                    if( value && ( value <= 9 ) ) {
                        requestFeedback = true;

                        return false;
                    }
                });

                if( requestFeedback ) {
                    commentContainers.addClass( 'need-feedback' );
                } else {
                    commentContainers.removeClass( 'need-feedback' );
                }
            });
        });
})( jQuery )
