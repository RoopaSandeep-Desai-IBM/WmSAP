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
    <!-- %invoke wm.sap.Bapi:getObjectDefinition% -->
    <!-- %ifvar errorMessage% -->
    <meta http-equiv="refresh" content="5;url=lookupBOAll.dsp?systemId=%value -urlencode /systemId%"></meta>
  </head>
  <body>
    <table width="100%">
      <tr>
	<td class="breadcrumb" colspan="2">Adapters &gt; IBM webMethods Adapter for SAP &gt; Lookup
	  &gt; Business Object
	  &gt; Error
	</td>
      </tr>
      <tr>
	<td colspan="2">
	  <ul>
	    <li><a id="return_to_lookup1" href="lookup.dsp">Return to Lookup</a>
		<script>updateURL("return_to_lookup1", "Return to Lookup");</script>
		</li>
	  </ul>
	</td>
      </tr>
      <tr>
	<td class="padding">&nbsp;</td>
	<td>
	  <table width="80%" class="tableView">
	    <tr>
	      <td class="subHeading">%value errorMessage%</td>
	    </tr>
	    <tr>
	      <td class="oddrowdata-l">
		Business Object %value /objectName% not found. Check <a id="object_list" href="lookupBOAll.dsp?systemId=%value -urlencode /systemId%">object list to select another business object</a>
		<script>updateURL("object_list", "object list to select another business object");</script>
	      </td>
	    </tr>
	  </table>
	</td>
      </tr>
    </table>
  </body>
  <!-- %else% -->
  </head>
  <body onLoad="setNavigation('/WmSAP/lookup.dsp', '/WmSAP/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm?context=Help&topic=IS_LP_BO', 'foo');">
    <table width="100%">
      <tr>
	<td class="breadcrumb" colspan="2">Adapters &gt; IBM webMethods Adapter for SAP &gt; Lookup
	  &gt; Business Object
	</td>
      </tr>
      <tr>
	<td colspan="2">
	  <ul>
	    <li><a id="return_to_lookup2" href="lookup.dsp?adapterTypeName=WmSAP&amp;systemId=%value -urlencode systemId%&amp;objectName=%value -urlencode objectName%">Return to Lookup</a>
		<script>updateURL("return_to_lookup2", "Return to Lookup");</script>
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
		<td class="heading" colspan="2">Business Object %value objectName%</td>
	      </tr>
	    </thead>
	    <!-- %ifvar parentObjectName% -->
	    <tbody>
	      <tr>
		<td class="subHeading">Supertype</td>
		<td class="oddrowdata-l">
		  <a id="supertype_%value parentObjectName%" href="lookupBO.dsp?systemId=%value -urlencode systemId%&amp;internalName=%value parentInternalName -urlencode%">%value parentObjectName%</a>
		  <script>updateURL("supertype_%value parentObjectName%", "%value parentObjectName%");</script>
		</td>
	      </tr>
	    </tbody>
	    <!-- %endif% -->
	    <!-- %ifvar childObjects% -->
	    <tbody>
	      <tr>
		<td class="subHeading" colspan="2">Subtypes</td>
	      </tr>
	    </tbody>
	    <tbody id="tbodyNode">
	      <!-- %loop childObjects% -->
	      <tr>
		<td class="oddrowdata-l">
		  <a id="subtype_%value objectName%" href="lookupBO.dsp?systemId=%value -urlencode ../systemId%&amp;internalName=%value -urlencode internalName%">%value objectName%</a>
		  <script>updateURL("subtype_%value objectName%", "%value objectName%");</script>
		</td>
		<td class="oddrowdata-l">%value internalName%</td>
	      </tr>
	      <!-- %endloop% -->
	    </tbody>
	    <!-- %endif% -->
	    <!-- %ifvar keyfieldNames% -->
	    <tbody>
	      <tr>
		<td class="subHeading" colspan="2">Key fields</td>
	      </tr>
	    </tbody>
	    <tbody id="tbodyNode">
	      <!-- %loop keyfieldNames% -->
	      <tr>
		<td class="oddrowdata-l" colspan="2">
		  <a id="key_fields_%value%" href="lookupBOKeyfield.dsp?systemId=%value -urlencode systemId%&amp;defObjectTypeName=%value -urlencode internalName%&amp;keyfieldName=%value -urlencode%">%value%</a>
		  <script>updateURL("key_fields_%value%", "%value%");</script>
		</td>
	      </tr>
	      <!-- %endloop% -->
	    </tbody>
	    <!-- %endif% -->
	    <!-- %ifvar bapiNames% -->
	    <tbody>
	      <tr>
		<td class="subHeading" colspan="2">BAPIs</td>
	      </tr>
	    </tbody>
	    <tbody id="tbodyNode">
	      <!-- %loop bapiNames% -->
	      <tr>  
		<td class="oddrowdata-l" colspan="2">
		  <a id="bapi_%value%" href="lookupBOBapi.dsp?systemId=%value -urlencode systemId%&amp;defObjectTypeName=%value -urlencode internalName%&amp;defObjectName=%value -urlencode objectName%&amp;bapiName=%value -urlencode%">%value%</a>
		  <script>updateURL("bapi_%value%", "%value%");</script>
		</td>
	      </tr>
	      <!-- %endloop% -->
	    </tbody>
	    <!-- %endif% -->
	    <!-- %ifvar eventNames% -->
	    <tbody>
	      <tr>
		<td class="subHeading" colspan="2">Events</td>
	      </tr>
	    </tbody>
	    <tbody id="tbodyNode">
	      <!-- %loop eventNames% -->
	      <tr>
		<td class="oddrowdata-l" colspan="2">
		  <a id="event_%value%" href="lookupBOEvent.dsp?systemId=%value -urlencode systemId%&amp;defObjectTypeName=%value -urlencode internalName%&amp;defObjectName=%value -urlencode objectName%&amp;eventName=%value -urlencode%">%value%</a>
		  <script>updateURL("event_%value%", "%value%");</script>
		</td>
	      </tr>
	      <!-- %endloop% -->
	    </tbody>
	    <!-- %endif% -->
	  </table>
	  <script>swapColor('tbodyNode', false);</script>
	</td>
      </tr>
    </table>
  </body>
  <!-- %endif% -->
  <!-- %endinvoke% -->
</html>