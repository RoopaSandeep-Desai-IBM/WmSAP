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
  <body onLoad="setNavigation('/WmSAP/lookup.dsp', '/WmSAP/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm?context=Help&topic=IS_LP_BOLIST', 'foo');">
    %invoke wm.sap.Bapi:listObjects%
    <table width="100%">
      <tr>
	<td class="breadcrumb" colspan="2">Adapters &gt; IBM webMethods Adapter for SAP &gt; Lookup
	  &gt; Business Objects
	</td>
      </tr>
      <tr>
	<td colspan="2">
	  <ul>
	    <li><a id="return_to_lookup" href="lookup.dsp?adapterTypeName=WmSAP&amp;systemId=%value -urlencode systemId%&amp;objectName=%value -urlencode objectName%">Return to Lookup</a>
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
		<td class="heading" colspan="2">Business Objects for SAP Server %value systemId%</td>
	      </tr>
	      <tr>
		<td class="oddcol">Business Object</td>
		<td class="oddcol">Internal Name</td>
	      </tr>
	    </thead>
	    <tbody id="tbodyNode">
	      <!-- %loop values% -->
	      <tr>
		<td class="evenrowdata-l">
		  <a id="business_name_%value objectName%" href="lookupBO.dsp?systemId=%value -urlencode ../systemId%&amp;internalName=%value -urlencode internalName%">%value objectName%</a>
		  <script>updateURL("business_name_%value objectName%", "%value objectName%");</script>
		</td>
		<td class="evenrowdata-l">%value internalName%</td>
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