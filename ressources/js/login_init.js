// Preload Images
img1 = new Image(16, 16);  
img1.src="images/spinner.gif";

img2 = new Image(220, 19);  
img2.src="images/ajax-loader.gif";

// When DOM is ready
$(document).ready(function(){
	// When the form is submitted
	$("#login-modal form").submit(function(){  
		// Hide 'Submit' Button
		$('#submit').hide();

		// Show Gif Spinning Rotator
		$('#ajax_loading').show();

		// 'this' refers to the current submitted form  
		var str = $(this).serialize();  

		// -- Start AJAX Call --

		$.ajax({  
			type: "POST",
			url: getLoginUrl(),  // Send the login info to this page
			data: str,  
			success: function(result){  
		 
				// Show 'Submit' Button
				$('#submit').show();

				// Hide Gif Spinning Rotator
				$('#ajax_loading').hide(); 
                                console.log(result);
                                var data_array = $.parseJSON(result);
                                console.log(data_array['reponse']);
				if(data_array['reponse'] === 'OK') // LOGIN OK?
				{  
					var login_response = '<div id="logged_in">' +
						 '<div style="width: 350px; float: left; margin-left: 70px;">' + 
						 '<div style="width: 40px; float: left;">' +
						 '<img style="margin: 10px 0px 10px 0px;" align="absmiddle" src="images/ajax-loader.gif">' +
						 '</div>' +
						 '<div style="margin: 10px 0px 0px 10px; float: right; width: 300px;">'+ 
						 "You are successfully logged in! <br /> Please wait while you're redirected...</div></div>";  

					//$('a.modalCloseImg').hide();  

					//$('#simplemodal-container').css("width","500px");
					//$('#simplemodal-container').css("height","120px");
					 
					$(this).html(login_response); // Refers to 'status'

					// After 3 seconds redirect the 
					setTimeout('go_to_private_page()', 3000); 
				}  
				else // ERROR?
				{  
					var login_response = result;
					//$('#login_response').html(login_response);
                                        $('#login_response').html('');
                                        alert('echec');
				}  
		   
			}  
	   
	    });  // -- End AJAX Call --

		return false;

	}); // end submit event
	

});

function go_to_private_page()
{
	window.location = './'; 
}