/**
 * @package     Joomla.Administrator
 * @subpackage  Templates.isis
 * @copyright   Copyright (C) 2005 - 2015 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 * @since       3.0
 */

 if (typeof jQuery === 'undefined') {
    throw new Error('SCF\'s JavaScript requires jQuery')
 }

 +function ($) {
    'use strict';
    var version = $.fn.jquery.split(' ')[0].split('.')
    if ((version[0] < 2 && version[1] < 9) || (version[0] == 1 && version[1] == 9 && version[2] < 1) || (version[0] > 2)) {
      throw new Error('XCF\'s JavaScript requires jQuery version 1.9.1 or higher, but lower than version 3')
    }
 }(jQuery);


 +(function( $, scope ) {
 	"use strict";

 	var XCF = scope.XCF = {

 		/**
 		 * Basic setup
 		 *
 		 * @return  void
 		 */
 		initialize: function()
 		{
 		  console.log('XCF');
    },

    /*
    * loadContextCategory
    */
    changeGroupCategory: function(type)
    {
      var ajaxUrl = 'index.php?option=com_xcf&task=category.getList&format=json';

      $.ajax({
            url: ajaxUrl,
            data: { type: type }
      }).done(function( msg ) {
          var responce = $.parseJSON(msg);
          $('#jform_category').html(responce.data);
          $('#jform_category').chosen('destroy').chosen();
          // console.log();
      });

    }
  };
  $(function() {

  		//XCF
      $('#jform_type').on('change', function(e) {
        var type = $(this);
        XCF.changeGroupCategory(type.val());
      });

	});

}( jQuery, window ));
