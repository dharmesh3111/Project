	
var childWin;
var appPath = "/";
var currentPopOut = "none";
var currentMenu = "none";
var HTMLStr
	
	//vars for current header and menu
	var activeHeader = null;
	var activeMenu = null;	
	
	//Sets the current header and menu
	function setMenu(menuHeaderID,menuID)
	{
		var top = 0;
		var left = 0;
		var currentEle;
		
		if(document.all)
		{
			if(activeHeader != null && activeMenu != null)
			{
				if(activeMenu.style.visibility != 'hidden')
				{
					menuHide();
					showSelect();
				}
			}
		
			//alert(menuID);
			//alert(menuHeaderID);
			activeHeader = eval("document.all('" + menuHeaderID + "');");
			activeMenu = eval("document.all('" + menuID + "');");
			menuChange(activeHeader);
			currentEle = activeHeader;
				
			//Find the top and left of header and its parent elements
			while(currentEle.tagName.toLowerCase() != 'body')
			{
				top += currentEle.offsetTop;
				left += currentEle.offsetLeft;
				currentEle = currentEle.offsetParent;
			}
			
			//Add the width of the header, and width of extra image.
			top += (activeHeader.offsetHeight);
						
			//alert(left);
			activeMenu.style.left = left;
			activeMenu.style.top = top;
			
			hideSelect();
			menuShow();
			
			event.cancelBubble = true;
		}
	}
	
	//Show the current menu
	function menuShow()
	{
		if(document.all)
		{
			//activeHeader.className = 'over';
			activeMenu.style.visibility = 'visible';
		}
	}
	
	//Hide the current menu
	function menuHide()
	{
		if(document.all)
		{
			//activeHeader.className = 'norm';
			activeMenu.style.visibility = 'hidden';
		}
	}
	
	//Hide the current menu and reset vars
	//if the moved to element is not contained
	//within the menu.
	function hideMenu()
	{
		if(document.all)
		{
			if(activeHeader != null && activeMenu != null)
			{
				//Check if the "moved to" element is not 
				//contained within activeMenu.
				if(!activeMenu.contains(event.toElement)) 
				{
					activeMenu.style.visibility = 'hidden';
					//activeHeader.className = 'norm';
					menuChange(activeHeader);
					//alert("error")
					activeHeader = null;
					activeMenu = null;
					showSelect();
				}
			}
		}
	}
	
	//show dropdown when menu is hidden
	function showSelect()
	{
		var obj;
		
		for(var i = 0; i < document.all.tags("select").length; i++)
		{
			obj = document.all.tags("select")[i];
			//alert(obj.id);
			if(!obj || !obj.offsetParent)
				continue;
			obj.style.visibility = 'visible';
		}
	}
	
	//hide dropdown so menu can cover it when menu is visible
	function hideSelect()
	{
		var obj;
		var currentEle;
		var top = 0;
		var left = 0;
		var menuHeight;
		var timeout;
		
		for(var i = 0; i < document.all.tags("select").length; i++)
		{
			obj = document.all.tags("select")[i];
			currentEle = obj;
		
			while(currentEle.tagName.toLowerCase() != 'body')
			{
				top += currentEle.offsetTop;
				left += currentEle.offsetLeft;
				currentEle = currentEle.offsetParent;
			}
			if(activeMenu != null)
			{
				menuHeight = (activeMenu.offsetTop + activeMenu.offsetHeight);
				
				if(top < menuHeight)
				{			
					if((left < (activeMenu.offsetLeft + activeMenu.offsetWidth)) && (left + obj.offsetWidth > activeMenu.offsetLeft)) 
						obj.style.visibility = 'hidden';
				}
			}
			top = 0;
			left = 0;
		}
	}
	
	//Hightlight the menu option
	function menuChange(srcEle)
	{				
		if(srcEle.className.toLowerCase() == 'menuregular')
		{
			srcEle.className = 'menuHighlight';
		}
		else
		{
			srcEle.className = 'menuRegular';
		}
	}


	function mOver(sender)
	{
		if (currentPopOut != "none")
		{
			document.all(currentPopOut).style.display = "none";
			currentPopOut = "none";
		}
		if (currentMenu != "none")
		{
			document.all(currentMenu).className="eSmainTax";
			currentMenu = "none";
		}		
		
		sender.className="eSmainTaxHover";
		var poperid = sender.id;
		currentMenu = poperid
		poperid = poperid.replace(/poper/, "popup")
		currentPopOut = poperid;
		document.all(poperid).style.display = "";
		window.event.cancelBubble = true;
	}
	
	function mPopupOver(sender)
	{
		window.event.cancelBubble = true;
	}


	function navOver()
	{
		event.srcElement.className = "eMenuOver";
	}

	function navOut()
	{
		event.srcElement.className = "eMenu";
	}
	
	
	function aOver()
	{
		event.srcElement.className = "eMenuItemLOver";
	}

	function aOut()
	{
		event.srcElement.className = "eMenuItemL";
	}
	
	function tOver()
	{
		event.srcElement.className = "eSsubTaxLastHover";
	}

	function tOut()
	{
		event.srcElement.className = "dlMenuTop";
	}
	function cOver()
	{
		event.srcElement.className = "eCatTaxHover";
	}

	function cOut()
	{
		event.srcElement.className = "eCatTax";
	}		
		
	function sOver()
	{
		event.srcElement.className = "eSsubTaxHover";
	}

	function sOut()
	{
		event.srcElement.className = "eSsubTax";
	}
		

	function sLastOver()
	{
		event.srcElement.className = "eSsubTaxLastHover";
	}

	function sLastOut()
	{
		event.srcElement.className = "eSsubTaxLast";
	}
	
	function jumpCMenu(mid)
	{
		window.top.location.href= appPath + "menu.aspx?mty=3&mid=" + mid;
	}		


	function jumpCPMenu(mid, cid)
	{
		window.top.location.href= appPath + "menu.aspx?mty=3&mid=" + mid + "&cid=" + cid;
	}		

	function jumpCBPMenu(mid, cid, bid)
	{
		window.top.location.href= appPath + "menu.aspx?mty=3&mid=" + mid + "&cid=" + cid+ "&bid=" + bid;
	}		


	function jumpMBCMenu(mid, bid, cid)
	{
		var url;
		if ((cid != 0) && (bid != 0))
			url = appPath + "SH/SH_prodNav.aspx?fcardid=0&bcardid=0&prodCat=1&mty=3&mid=" + mid + "&bid=" + bid + "&cid=" + cid;
		else
			url = appPath + "SH/SH_marketing_p.aspx?mty=1&mid=2010000&cid=0&bid=0";				

		window.top.location.href= url;
	}	
	
	
	function jumpMBCFB(mid, bid, cid, fcardid, bcardid)
	{
		var url;
		if ((cid != 0) && (bid != 0))
			url = appPath + "SH/SH_prodNav.aspx?prodCat=1&mty=3&mid=" + mid + "&bid=" + bid + "&cid=" + cid + "&fcardid=" + fcardid + "&bcardid=" + bcardid;
		else
			url = appPath + "SH/SH_marketing_p.aspx?mty=1&mid=2010000&cid=0&bid=0";				

		window.top.location.href= url;
	}	
	
	function jumpLMenu(mid)
	{
		window.top.location.href= appPath + "menu.aspx?mty=2&mid=" + mid;
	}		


	function jumpLShopping(mid)
	{
		window.top.location.href= appPath + "PR/pr_CategoryNav.aspx?mid=" + mid;
	}		


	function jumpLShopping2(mid, level)
	{
		var url;
		var helpWin;			

		if (level == 1)
		{
			url = appPath + "PR/PR_CategoryNav.aspx?mid=" + mid;
		}
		else if (level == 9)
		{
			if (mid == 2050700)
			{
				url = appPath + "PDFs/Forms/TarbellSignSpecification_032010.pdf";
				helpWin = window.open(url,'helpWin','scrollbars=yes,resizable=yes,screenX=0,screenY=0,width=450,height=600');       
			}			
			else if (mid == 2040500)
			{
				url = appPath + "PDFs/Forms/TarbellBusinessCardSpecification_032010.pdf";
				helpWin = window.open(url,'helpWin','scrollbars=yes,resizable=yes,screenX=0,screenY=0,width=450,height=600');       
			}					
		}
		else
		{
			if (mid == 2030100)
			{
				url = appPath + "SH/SH_ProdNav.aspx?prodCat=1&mty=3&mid=2030100&cid=0&bid=0&fcardid=0&bcardid=0";
			}
			else if (mid == 2030300)
			{
				url = appPath + "PR/PR_ProdStyleList.aspx?prodCat=2&mty=3&mid=2030300&cid=0&bid=0&fcardid=0&bcardid=0";
		
			}
			else if (mid == 2030400)
			{
				url = appPath + "PR/PR_ProdStyleList.aspx?prodCat=3&mty=3&mid=2030400&cid=0&bid=0&fcardid=0&bcardid=0";

			}	
/*					
			else if (mid == 2040200)
			{
				url = appPath + "PR/PR_offlineOrderform.aspx?mid=" + mid;
			
				url = appPath + "AF/bcard.aspx?wcatID=101&mid=2040100" 
			}			
*/		
			else if ((mid >= 2100100) && (mid <= 2100800))
			{
				url = appPath + "PR/PR_themeProds.aspx?mid=" + mid;
			
				/* url = appPath + "AF/bcard.aspx?wcatID=101&mid=2040100" */
			}						
			else
			{
				url = appPath + "PR/PR_prodList.aspx?mid=" + mid;
			}
		}
		if (level != 9)
		{
			window.top.location.href = url;
		}
	}		
	function jumpTMenu(mid)
	{
		var helpWin;
		if (mid == 9999994)
			helpWin = window.open('/help.aspx?id=1','helpWin','scrollbars=yes,resizable=yes,screenX=0,screenY=0,width=720,height=440');       
		else
			window.top.location.href= appPath + "menu.aspx?mty=1&mid=" + mid;
	}		


	function jumpPopupWin(url)
	{
		var helpWin;
			
		helpWin = window.open(url,'helpWin','scrollbars=yes,resizable=yes,screenX=0,screenY=0,width=400,height=400');       
	}		
	
	function jumpTabMenu(tabindex, tabid)
	{
		window.top.location.href= appPath + "menuTab.aspx?tabindex=" + tabindex + "&tabid=" + tabid;
	}	
	
	function jumpURL(url)
	{
		window.top.location.href= url;
	}
       
	function open_help()
	{
		var lookUpWin;		
		lookUpWin = window.open('/help.aspx','LookupWin','scrollbars=yes,resizable=yes,screenX=50,screenY=20,width=480,height=440');		
	}	
		
	function keyhandler() {
	if (event.keyCode == 13) 
		event.keyCode = 9;
	}	
	

// Trims any leading and/or trailing spaces from the string argument.
function TrimStr(strValue) {
	// REMOVE leading spaces.
	while (true) {
		if (strValue.indexOf(" ") == 0) {								// a leading space has been found so...
			strValue = strValue.substring(1, strValue.length)			// slice it off.
		} else {														// the first character in the string is no longer a space so...
			break														// exit the loop.
		}
	}
	
	// REMOVE trailing spaces.
	if (strValue.length > 0) {	// the string is not null.
		while (true) {
			if (strValue.lastIndexOf(" ") == strValue.length - 1) {			// a trailing space has been found so...
				strValue = strValue.substring(0, strValue.length - 1)	// slice it off.
			} else {													// the last character in the string is no longer a space so...
				break													// exit the loop.
			}
		}
	}

	// ASSIGN return value
	return strValue;
}
	

function isEmail(string) { 
	if (!string) 
		return false; 
	var iChars = "*|,\"<:>[]{}`\';()&$#%"; 
	for (var i = 0; i < string.length; i++) { 
		if (iChars.indexOf(string.charAt(i)) != -1) 
			return false; };
		//if ((string.indexOf('@') > 0) && (string.indexOf('@') != string.length-1) && (string.indexOf('.') > 0) && (string.indexOf('.') != string.length-1))
		if ((string.indexOf('@') > 0) && (string.charAt(string.length-1) != '@') && (string.indexOf('.') > 0) && (string.charAt(string.length-1) != '.'))
			return true;			
		else		
			return false;
}		


HTMLStr =
	"<script language=javascript for=document event=onmouseover>" +
	"if (currentPopOut != 'none')" +
	"{" +
	"	document.all(currentPopOut).style.display = 'none';" +
	"	currentPopOut = 'none';" +
	"}" +
	"if (currentMenu != 'none')" +
	"{" +
	"	document.all(currentMenu).className='eSmainTax';" +
	"	currentMenu = 'none';" +
	"}" +
	"</script>"

document.write (HTMLStr)

