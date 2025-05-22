<?xml version='1.0'?>
<HTML>
<head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
    <meta http-equiv="Expires" CONTENT="-1">
    <title>About</title>
    <link rel="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css"></link>
	<link rel="stylesheet" TYPE="text/css" href="../WmART/webMethods.css"></link>
	
    <SCRIPT SRC="/WmRoot/webMethods.js"></SCRIPT>
</head>


%invoke wm.art.admin:getAdapterTypeOnlineHelp%
%onerror%
%endinvoke%
<BODY onLoad="setNavigation( 'About.dsp', '%value encode(javascript) helpsys%', 'foo');">
    %invoke wm.art.admin:retrieveAdapterTypeData%
    %invoke wm.sap.Admin:about%
    <table width="100%">
    <tr>
       <td class="breadcrumb" colspan=5>Adapters &gt; %value displayName% &gt; About</td>
    </tr>
	</table>
	<table class="tableView" width="100%"> 
    <tr>
        <td class="heading" colspan=5>About %value displayName%</td>
    </tr>        
    
    <tr >
        <td class="subheading2" colspan=5>Copyright</td>
    </tr>
    <tr>
		<td class="evenrow" valign="top">
			<div style="background: url('/WmRoot/images/is_logo_stacked.png') no-repeat 0% 50%; height: 100px; width: 125px;">
			</div>
		</td>
		<td class="evenrowdata-l" colspan=3>
			<p>
				Super iPaaS Integration LLC, an IBM Company 2024.
			</p>
		</td>
	</tr>
    <tr>
    <script>writeTD('row');</script>
    Description</td>
    <script>writeTD('rowdata-l');swapRows();</script>          
    %value description%</td>
    </tr>
    <tr>
    <script>writeTD('row');</script>
    Adapter Version</td>
    <script>writeTD('rowdata-l');swapRows();</script>          
    %value adapterVersion%
    &nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>
    <tr>
    <script>writeTD('row');</script>Updates</td>
    <script>writeTD('rowdata-l');swapRows();</script>
    %ifvar installedUpdates%
       %loop installedUpdates%
          %value%<br>
       %endloop%
    %else%
       None
    %endif%
    </td>
    </tr>
    <tr>
    <script>writeTD('row');</script>
    JCA Spec Version</td>
    <script>writeTD('rowdata-l');swapRows();</script>          
    %value jcaSpecVersion%</td>
    </tr>
    <tr>
    <script>writeTD('row');</script>
    Vendor Name</td>
    <script>writeTD('rowdata-l');swapRows();</script>          
    %value vendorName%</td>
    </tr>
	    <!-- %scope systemAttributes% -->
	    <tr><td colspan="2" class="evenrow">&nbsp;</td></tr>
	    <tr>
	      <td class="oddrow">OS Version</td>
	      <td class="oddrowdata-l">%value osVersion%</td>
	    </tr>
	    <tr>
	      <td class="evenrow">Current User</td>
	      <td class="evenrowdata-l">%value currentUser%</td>
	    </tr>
	    <tr>
	      <td class="oddrow">Working Directory</td>
	      <td class="oddrowdata-l">%value workingDirectory%</td>
	    </tr>
	    <tr><td colspan="2" class="evenrow">&nbsp;</td></tr>
	    <tr>
	      <td class="oddrow">JCo Version</td>
	      <td class="oddrowdata-l">%value jcoVersion%</td>
	    </tr>
	    <tr>
	      <td class="evenrow">JCo Middleware</td>
	      <td class="evenrowdata-l">%value jcoMiddleware%</td>
	    </tr>
	    <tr>
	      <td class="oddrow">JCo Middleware Version</td>
	      <td class="oddrowdata-l">%value jcoMiddlewareVersion%</td>
	    </tr>
	    <tr>
	      <td class="evenrow">JCo Native Library Version</td>
	      <td class="evenrowdata-l">%value jcoNativeLayerVersion%</td>
	    </tr>
	    <tr>
	      <td class="oddrow">JCo Native Library Location</td>
	      <td class="oddrowdata-l">%value jcoNativeLayerPath%</td>
	    </tr>
	    <tr>
	      <td class="evenrow">IDoc Library Version</td>
	      <td class="evenrowdata-l">%value idocVersion%</td>
	    </tr>
	    <!-- %endscope% -->
    %endinvoke%
   </table>    
</body>
</HTML>
