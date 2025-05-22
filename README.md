# WmSAP
webMethods Adapter for SAP allows you to extend your SAP business processes and 
integrate non-SAP products using open and non-proprietary technology. Adapter 
for SAP enables both asynchronous and bi-directional, real-time communication 
to and from the SAP system. You can:

- 	Execute the SAP platform-agnostic Business Application Programming 
    Interface (BAPI) methods. BAPIs are stable, clearly specified, and 
	well-documented interfaces to SAP solutions, providing standardized access 
	to SAP solutions at a semantic level. 
	You can effortlessly generate XML-based services that executes the BAPI, 
	which can be invoked by internal applications within an organization as well 
	as external business partners over the internet. 
	BAPI interfaces provide unified access to the application-level functionality, 
	independent of the whether processing is synchronous or asynchronous. In the
	case of asynchronous processing, the BAPI interface can transparently use 
	Application Link Enabling(ALE) services inside the SAP system for client 
	integration of business processes.

- 	Execute SAP Remote Function Calls (RFCs) from Adapter for SAP. You can 
    access all SAP functionality available via RFC from Adapter for 
	SAP. External applications can communicate with the SAP system without
	understanding SAP datatypes, ABAP structures, or the RFC protocol.

-	Send Intermediate Documents (IDocs) to the Adapter for SAP. You can send IDocs
    to the Adapter for SAP for further synchronous processing or publish them to 
	subscribers asynchronously.

-	Invoke services from SAP systems. This allows the SAP users to access 
    information available via Adapter for SAP. Adapter for SAP enables 
	integration between trading partners, thereby extending the reach of SAP 
	infrastructure to customers, partners, and suppliers.

-	Route SAP business documents based on criteria you specify. Adapter for SAP 
    provides rich routing capabilities for BAPIs, RFCs, and IDocs. Various 
	transport types are available out-of-the-box such as routing of a 
	business document to another SAP system or to a remote URL in an XML format.

Adapter for SAP allows increasing customer loyalty and efficiency across 
the supply chain by integrating business infrastructure with partners. 
Typical deployment scenarios include:
- 	Real-time integration between supplier inventories and your SAP system
- 	Real-time integration between product, price, and availability information 
    from any number of suppliers and your purchasing application
- 	Real-time integration between fulfillment and order tracking applications 
    and your shippers' internal systems
	
Functional Highlights 
- 	Synchronous and asynchronous communication with SAP systems through RFC, 
    tRFC, qRFC, and bgRFC
- 	Bi-directional and multithreaded communication to and from SAP systems
-	Load balancing of incoming SAP documents
- 	Support of publishing to the local webMethods Integration Server, Broker, JMS 
    for asynchronous adapter notifications
- 	Support for "publish and wait" and "direct service invocation" execution modes 
    for synchronous adapter notifications
- 	Higher level services to process SAP IDocs and BAPIs
- 	Easy XML and Internet enabling of existing SAP releases
- 	Support of BizTalk XML envelopes for BAPI and RFC calls
- 	Support of unified error handling of BAPIs and RFCs on XML level.
