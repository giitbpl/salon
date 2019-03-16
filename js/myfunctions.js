// JavaScript Document
function showNotification(msg,type="success",timeout=3000,page_reload=true)
{
	$.noty({
					text:msg,
					"layout":"top",
					"type":type,
					"timeout":timeout,
					onClose:function()
					{
						if(page_reload==true)
						{
						window.location.reload();
						}
					}
					
					});
}