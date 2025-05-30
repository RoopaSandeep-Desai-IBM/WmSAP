<html>
  %invoke wm.art.admin:retrieveAdapterTypeData%
  <head>
    <title>SAP - Lookup</title>
    <meta http-equiv="Pragma" content="no-cache"></meta>
    <meta http-equiv="Expires" content="-1"></meta>
    <link rel="stylesheet" type="text/css" href="../WmRoot/webMethods.css"></link>
    <link rel="stylesheet" type="text/css" href="../WmART/webMethods.css"></link>
	
    <script type="text/javascript" src="/WmRoot/webMethods.js"></script>
	<script type="text/javascript" src="/WmART/csrfGuard.js"></script>
  </head>
  <body onLoad="setNavigation('/WmSAP/lookup.dsp', '/WmSAP/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm?context=Help&topic=IS_LP_RFCLIST', 'foo');">
    %invoke wm.sap.Rfc:searchFunctions%
    <table width="100%">
      <tr>
	<td class="breadcrumb" colspan="2">Adapters &gt; IBM webMethods Adapter for SAP &gt; Lookup
	  &gt; RFC Search Results</td>
      </tr>
      <tr>
	<td colspan="2">
	  <ul>
	    <li><a id="return_to_lookup" href="lookup.dsp?adapterTypeName=WmSAP&amp;systemId=%value -urlencode systemId%&amp;functionPattern=%value -urlencode functionPattern%&amp;groupPattern=%value -urlencode groupPattern%">Return to Lookup</a>
		<script>updateURL("return_to_lookup", "Return to Lookup");</script>
		</li>
	  </ul>
	</td>
      </tr>
      <tr>
	<td class="padding">&nbsp;</td>
	<td>
	  <table class="tableView">
	    <thead>
	      <tr>
		<td class="heading" colspan="3">RFC Search Results</td>
	      </tr>
	      <tr>
		<td class="oddcol">Function Name</td>
		<td class="oddcol">Group Name</td>
		<td class="oddcol">Description</td>
	      </tr>
	    </thead>
	    <tbody id="tbodyNode">
	      <!-- %loop functions% -->
	      <tr>
		<td class="evenrowdata-l">
		  <a id="%value $rfcname%" href="lookupRFC.dsp?$rfcname=%value -urlencode $rfcname%&amp;systemId=%value -urlencode /systemId%">%value $rfcname%</a>
		  <script>updateURL("%value $rfcname%", "%value $rfcname%");</script>
		</td>
		<td class="evenrowdata-l">%value groupName%</td>
		<td class="evenrowdata-l">%value description%</td>
	      </tr>
	      <!-- %endloop% -->
	    </tbody>
	  </table>
	  <script>swapColor('tbodyNode', false);</script>
	</td>
      </tr>
    </table>
    %onerror% %include error.html%
    %endinvoke%
  </body>
</html>