<!DOCTYPE html>
<head>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
        crossorigin="anonymous">
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/azsearch.js@0.0.21/dist/AzSearch.css">
    <title>Azure Cognitive Search Demo App</title>
    <style>
        .searchResults__result h4 {
            margin-top: 0px;
            text-transform: uppercase;
        }

        .searchResults__result .resultDescription {
            margin: 0.5em 0 0 0;
        }
    </style>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid" style="background-color:deepskyblue">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#facetPanel" aria-expanded="false"
                        aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="row">
                        <div class="col-md-2 pagelabel" style="top:7px">
                            <img src="evolve.PNG" "/>
                        </div>
                        <div id="searchBox" class="col-mid-8 col-sm-8 col-xs-6"></div>
                        <div class="col-md-2 pagelabel" style="top:20px">QOIPR Catalog Search</div>
                        <div id="navbar" class="navbar-collapse collapse">
                        </div>
                    </div>
                </div>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div id="facetPanel" class="col-sm-3 col-md-3 sidebar collapse" style="background-color:white">
                    <div id="clearFilters"></div>
                    <ul class="nav nav-sidebar">
                        <div className="panel panel-primary behclick-panel">
                            
                            <li>
                                <div id="categoryFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ManufacturerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Ac_Adapter_InputFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Ac_Adapter_OutputFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_AudioFeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CameraFeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CameraFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CodecFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_CompliantStandardsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_FrameRateFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_GraphicsProcessorFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_ImageSensorTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_MaxMonitorsSupportedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_MemoryAllocationTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_MultiGPUConfigurationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_ResolutionFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_SoundFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VideoMemoryFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VideoResolutionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VideoSystemFeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="AudioVideo_VrReadyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_BatteryRunTimeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_CapacityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_InstalledQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_RunTimeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Battery_TechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_BluetoothClassFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_CompliantStandardsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_EthernetControllerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_NetworkInterfaceFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_RemoteManagementProtocolFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_WirelessControllerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Communications_WirelessFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ConnectionsExpansion_InterfacesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ConnectionsExpansion_MemoryCardReaderFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ConnectionsExpansion_SlotsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsTabletWithKeyboardFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsTabletFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsUnfoldedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsWeightDetailsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_DimensionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_ShippingDimensionsWeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="DimensionsWeight_WeightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_BezelTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ColourSupportFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ImageAspectRatioFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ImageBrightnessFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_KeyboardNameFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_LCD_BacklightTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_PixelDensity_PPIFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_PrivacyTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_ResolutionFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_TouchscreenFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_TypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_V_SyncRate_MaxResFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Display_WidescreenFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_HumidityRangeOperatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_MaxOperatingTemperatureFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_MinOperatingTemperatureFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_ShockTolerance_non_operatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_ShockTolerance_operatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_VibrationTolerance_NomOperatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalParameters_VibrationTolerance_operatingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalStandards_EnergyStarCertifiedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalStandards_EPEAT_CompliantFacet">
                                </div>
                            </li>
                            <li>
                                <div id="EnvironmentalStandards_TCO_CertifiedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_BundledWithFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_OperatingSystemFacet">
                                </div>
                            </li>
                            <li>
                                <div id="General_ProductTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_KeyboardBacklightFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_KeyboardLayoutFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_NumericKeypadFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Input_TypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ManufacturerWarranty_BundledServicesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ManufacturerWarranty_RegionalWarrantyExceptionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ManufacturerWarranty_ServiceSupportFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_EmptySlotsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_FormFactorFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_MaxRAMSupportedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_RAMFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_RatedSpeedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_SlotsQtyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_SpeedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Memory_TechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_CablesIncludedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_CaseMaterialFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ColourFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_CompliantStandardsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_DockableFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ImageColourDisclaimerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_IncludedAccessoriesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_IntegratedOptionsFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_LocalizationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_ManufacturerSellingProgramFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_PricingTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_RepairabilityIndexFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SARValueFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SecuritySlotTypeFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SecurityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_SurfaceFinishFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Miscellaneous_TheftIntrusionProtectionFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Navigation_ReceiverFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_64bitComputingFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_CacheFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_ChipsetFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_CPUFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_FeaturesFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_MaxTurboSpeedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_NumberOfCoresFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProcessorChipset_PlatformTechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Software_SoftwareIncludedFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Software_MainStorageFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_OpticalDriveFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_RAIDLevelFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_SecondaryStorageFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_SSDCacheFacet">
                                </div>
                            </li>
                            <li>
                                <div id="Storage_TotalCapacityFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_ControllerFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_GenerationFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_MaxTransferRateFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_ServiceProviderFacet">
                                </div>
                            </li>
                            <li>
                                <div id="WirelessBroadbandWWAN_TechnologyFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ProductLineFacet">
                                </div>
                            </li>
                            <li>
                                <div id="ModelFacet">
                                </div>
                            </li>
                        </div>
                    </ul>
                </div>
                <div class="col-sm-9 col-sm-offset-3 col-md-9 col-md-offset-3 results_section">
                    <div id="results" class="row placeholders">
                    </div>
                    <div id="pager" class="row">
                    </div>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JavaScript
            ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous"></script>
</body>
<!-- Dependencies -->
<script src="https://cdn.jsdelivr.net/react/15.5.0/react.min.js"></script>
<script src="https://cdn.jsdelivr.net/react/15.5.0/react-dom.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/redux/3.6.0/redux.min.js"></script>
<!-- Main -->
<script src="https://cdn.jsdelivr.net/npm/azsearch.js@0.0.21/dist/AzSearch.bundle.js"></script>
<script>
    // WARNING
    // For demonstration purposes only, do not use in a production environment. For simplicity, this is a single HTML page that has the query key to the search service.
    // CORS (*) must be enabled in the index before using the demo app.

    // Initialize and connect to your search service
    var automagic = new AzSearch.Automagic({ index: "especbeta-index", queryKey: "A0ADF9E8DC41E77F3F037DC56081069D", service: "azureqdcsearch" });

    const resultTemplate = `<div class="col-xs-12 col-sm-3 col-md-3 result_img" >
            <img class="img-responsive result_img" src={{ImageURL}} alt="image not found" />
        </div><div class="col-xs-12 col-sm-9 col-md-9"><h4>{{Description_Std.Origin_Standardized_Description}}</h4><div class="resultDescription">{{{MFPN}}}</div></div>`;

    // add a results view using the template defined above
    automagic.addResults("results", { count: true, top: 300, searchMode: "all" }, resultTemplate);

    // Adds a pager control << 1 2 3 ... >>
    automagic.addPager("pager");

    // Set some processors to format results for display
    var suggestionsProcessor = function (results) {
        return results.map(function (result) {
            result.searchText = result["@search.text"];
            return result;
        });
    };

    automagic.store.setSuggestionsProcessor(suggestionsProcessor);

    var suggestionsTemplate = `
            <p> {{suggest}}  </p> {{{searchText}}}`;

    // Add a search box that uses suggester "especbeta-suggest", grabbing some additional fields to display during suggestions. Use the template defined above
    automagic.addSearchBox("searchBox",
        {
            highlightPreTag: "<b>",
            highlightPostTag: "</b>",
            suggesterName: "especbeta-suggest",
            select: "suggest"
        },
        "",
        suggestionsTemplate);

    automagic.addCheckboxFacet("categoryFacet", "category", "string");
    automagic.addCheckboxFacet("ManufacturerFacet", "Manufacturer", "string");
    automagic.addCheckboxFacet("Ac_Adapter_InputFacet", "Ac_Adapter_Input", "string");
    automagic.addCheckboxFacet("Ac_Adapter_OutputFacet", "Ac_Adapter_Output", "string");
    automagic.addCheckboxFacet("AudioVideo_AudioFeaturesFacet", "AudioVideo_AudioFeatures", "string");
    automagic.addCheckboxFacet("AudioVideo_CameraFeaturesFacet", "AudioVideo_CameraFeatures", "string");
    automagic.addCheckboxFacet("AudioVideo_CameraFacet", "AudioVideo_Camera", "string");
    automagic.addCheckboxFacet("AudioVideo_CodecFacet", "AudioVideo_Codec", "string");
    automagic.addCheckboxFacet("AudioVideo_CompliantStandardsFacet", "AudioVideo_CompliantStandards", "string");
    automagic.addCheckboxFacet("AudioVideo_FrameRateFacet", "AudioVideo_FrameRate", "string");
    automagic.addCheckboxFacet("AudioVideo_GraphicsProcessorFacet", "AudioVideo_GraphicsProcessor", "string");
    automagic.addCheckboxFacet("AudioVideo_ImageSensorTypeFacet", "AudioVideo_ImageSensorType", "string");
    automagic.addCheckboxFacet("AudioVideo_MaxMonitorsSupportedFacet", "AudioVideo_MaxMonitorsSupported", "string");
    automagic.addCheckboxFacet("AudioVideo_MemoryAllocationTechnologyFacet", "AudioVideo_MemoryAllocationTechnology", "string");
    automagic.addCheckboxFacet("AudioVideo_MultiGPUConfigurationFacet", "AudioVideo_MultiGPUConfiguration", "string");
    automagic.addCheckboxFacet("AudioVideo_ResolutionFacet", "AudioVideo_Resolution", "string");
    automagic.addCheckboxFacet("AudioVideo_SoundFacet", "AudioVideo_Sound", "string");
    automagic.addCheckboxFacet("AudioVideo_VideoMemoryFacet", "AudioVideo_VideoMemory", "string");
    automagic.addCheckboxFacet("AudioVideo_VideoResolutionsFacet", "AudioVideo_VideoResolutions", "string");
    automagic.addCheckboxFacet("AudioVideo_VideoSystemFeaturesFacet", "AudioVideo_VideoSystemFeatures", "string");
    automagic.addCheckboxFacet("AudioVideo_VrReadyFacet", "AudioVideo_VrReady", "string");
    automagic.addCheckboxFacet("Battery_BatteryRunTimeFacet", "Battery_BatteryRunTime", "string");
    automagic.addCheckboxFacet("Battery_CapacityFacet", "Battery_Capacity", "string");
    automagic.addCheckboxFacet("Battery_InstalledQtyFacet", "Battery_InstalledQty", "string");
    automagic.addCheckboxFacet("Battery_RunTimeFacet", "Battery_RunTime", "string");
    automagic.addCheckboxFacet("Battery_TechnologyFacet", "Battery_Technology", "string");
    automagic.addCheckboxFacet("Communications_BluetoothClassFacet", "Communications_BluetoothClass", "string");
    automagic.addCheckboxFacet("Communications_CompliantStandardsFacet", "Communications_CompliantStandards", "string");
    automagic.addCheckboxFacet("Communications_EthernetControllerFacet", "Communications_EthernetController", "string");
    automagic.addCheckboxFacet("Communications_FeaturesFacet", "Communications_Features", "string");
    automagic.addCheckboxFacet("Communications_NetworkInterfaceFacet", "Communications_NetworkInterface", "string");
    automagic.addCheckboxFacet("Communications_RemoteManagementProtocolFacet", "Communications_RemoteManagementProtocol", "string");
    automagic.addCheckboxFacet("Communications_WirelessControllerFacet", "Communications_WirelessController", "string");
    automagic.addCheckboxFacet("Communications_WirelessFacet", "Communications_Wireless", "string");
    automagic.addCheckboxFacet("ConnectionsExpansion_InterfacesFacet", "ConnectionsExpansion_Interfaces", "string");
    automagic.addCheckboxFacet("ConnectionsExpansion_MemoryCardReaderFacet", "ConnectionsExpansion_MemoryCardReader", "string");
    automagic.addCheckboxFacet("ConnectionsExpansion_SlotsFacet", "ConnectionsExpansion_Slots", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsTabletWithKeyboardFacet", "DimensionsWeight_DimensionsTabletWithKeyboard", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsTabletFacet", "DimensionsWeight_DimensionsTablet", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsUnfoldedFacet", "DimensionsWeight_DimensionsUnfolded", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsWeightDetailsFacet", "DimensionsWeight_DimensionsWeightDetails", "string");
    automagic.addCheckboxFacet("DimensionsWeight_DimensionsFacet", "DimensionsWeight_Dimensions", "string");
    automagic.addCheckboxFacet("DimensionsWeight_ShippingDimensionsWeightFacet", "DimensionsWeight_ShippingDimensionsWeight", "string");
    automagic.addCheckboxFacet("DimensionsWeight_WeightFacet", "DimensionsWeight_Weight", "string");
    automagic.addCheckboxFacet("Display_BezelTypeFacet", "Display_BezelType", "string");
    automagic.addCheckboxFacet("Display_ColourSupportFacet", "Display_ColourSupport", "string");
    automagic.addCheckboxFacet("Display_FeaturesFacet", "Display_Features", "string");
    var startDate = new Date();
    startDate.setFullYear(1975);
    var endDate = new Date();
    automagic.addRangeFacet("Display_ImageAspectRatioFacet", "Display_ImageAspectRatio", "date", startDate, endDate);
    automagic.addCheckboxFacet("Display_ImageBrightnessFacet", "Display_ImageBrightness", "string");
    automagic.addCheckboxFacet("Display_KeyboardNameFacet", "Display_KeyboardName", "string");
    automagic.addCheckboxFacet("Display_LCD_BacklightTechnologyFacet", "Display_LCD_BacklightTechnology", "string");
    automagic.addCheckboxFacet("Display_PixelDensity_PPIFacet", "Display_PixelDensity_PPI", "string");
    automagic.addCheckboxFacet("Display_PrivacyTechnologyFacet", "Display_PrivacyTechnology", "string");
    automagic.addCheckboxFacet("Display_ResolutionFacet", "Display_Resolution", "string");
    automagic.addCheckboxFacet("Display_TouchscreenFacet", "Display_Touchscreen", "string");
    automagic.addCheckboxFacet("Display_TypeFacet", "Display_Type", "string");
    automagic.addCheckboxFacet("Display_V_SyncRate_MaxResFacet", "Display_V_SyncRate_MaxRes", "string");
    automagic.addCheckboxFacet("Display_WidescreenFacet", "Display_Widescreen", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_HumidityRangeOperatingFacet", "EnvironmentalParameters_HumidityRangeOperating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_MaxOperatingTemperatureFacet", "EnvironmentalParameters_MaxOperatingTemperature", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_MinOperatingTemperatureFacet", "EnvironmentalParameters_MinOperatingTemperature", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_ShockTolerance_non_operatingFacet", "EnvironmentalParameters_ShockTolerance_non_operating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_ShockTolerance_operatingFacet", "EnvironmentalParameters_ShockTolerance_operating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_VibrationTolerance_NomOperatingFacet", "EnvironmentalParameters_VibrationTolerance_NomOperating", "string");
    automagic.addCheckboxFacet("EnvironmentalParameters_VibrationTolerance_operatingFacet", "EnvironmentalParameters_VibrationTolerance_operating", "string");
    automagic.addCheckboxFacet("EnvironmentalStandards_EnergyStarCertifiedFacet", "EnvironmentalStandards_EnergyStarCertified", "string");
    automagic.addCheckboxFacet("EnvironmentalStandards_EPEAT_CompliantFacet", "EnvironmentalStandards_EPEAT_Compliant", "string");
    automagic.addCheckboxFacet("EnvironmentalStandards_TCO_CertifiedFacet", "EnvironmentalStandards_TCO_Certified", "string");
    automagic.addCheckboxFacet("General_BundledWithFacet", "General_BundledWith", "string");
    automagic.addCheckboxFacet("General_OperatingSystemFacet", "General_OperatingSystem", "string");
    automagic.addCheckboxFacet("General_ProductTypeFacet", "General_ProductType", "string");
    automagic.addCheckboxFacet("Input_FeaturesFacet", "Input_Features", "string");
    automagic.addCheckboxFacet("Input_KeyboardBacklightFacet", "Input_KeyboardBacklight", "string");
    automagic.addCheckboxFacet("Input_KeyboardLayoutFacet", "Input_KeyboardLayout", "string");
    automagic.addCheckboxFacet("Input_NumericKeypadFacet", "Input_NumericKeypad", "string");
    automagic.addCheckboxFacet("Input_TypeFacet", "Input_Type", "string");
    automagic.addCheckboxFacet("ManufacturerWarranty_BundledServicesFacet", "ManufacturerWarranty_BundledServices", "string");
    automagic.addCheckboxFacet("ManufacturerWarranty_RegionalWarrantyExceptionsFacet", "ManufacturerWarranty_RegionalWarrantyExceptions", "string");
    automagic.addCheckboxFacet("ManufacturerWarranty_ServiceSupportFacet", "ManufacturerWarranty_ServiceSupport", "string");
    automagic.addCheckboxFacet("Memory_EmptySlotsFacet", "Memory_EmptySlots", "string");
    automagic.addCheckboxFacet("Memory_FormFactorFacet", "Memory_FormFactor", "string");
    automagic.addCheckboxFacet("Memory_MaxRAMSupportedFacet", "Memory_MaxRAMSupported", "string");
    automagic.addCheckboxFacet("Memory_RAMFacet", "Memory_RAM", "string");
    automagic.addCheckboxFacet("Memory_RatedSpeedFacet", "Memory_RatedSpeed", "string");
    automagic.addCheckboxFacet("Memory_SlotsQtyFacet", "Memory_SlotsQty", "string");
    automagic.addCheckboxFacet("Memory_SpeedFacet", "Memory_Speed", "string");
    automagic.addCheckboxFacet("Memory_TechnologyFacet", "Memory_Technology", "string");
    automagic.addCheckboxFacet("Miscellaneous_CablesIncludedFacet", "Miscellaneous_CablesIncluded", "string");
    automagic.addCheckboxFacet("Miscellaneous_CaseMaterialFacet", "Miscellaneous_CaseMaterial", "string");
    automagic.addCheckboxFacet("Miscellaneous_ColourFacet", "Miscellaneous_Colour", "string");
    automagic.addCheckboxFacet("Miscellaneous_CompliantStandardsFacet", "Miscellaneous_CompliantStandards", "string");
    automagic.addCheckboxFacet("Miscellaneous_DockableFacet", "Miscellaneous_Dockable", "string");
    automagic.addCheckboxFacet("Miscellaneous_FeaturesFacet", "Miscellaneous_Features", "string");
    automagic.addCheckboxFacet("Miscellaneous_ImageColourDisclaimerFacet", "Miscellaneous_ImageColourDisclaimer", "string");
    automagic.addCheckboxFacet("Miscellaneous_IncludedAccessoriesFacet", "Miscellaneous_IncludedAccessories", "string");
    automagic.addCheckboxFacet("Miscellaneous_IntegratedOptionsFacet", "Miscellaneous_IntegratedOptions", "string");
    automagic.addCheckboxFacet("Miscellaneous_LocalizationFacet", "Miscellaneous_Localization", "string");
    automagic.addCheckboxFacet("Miscellaneous_ManufacturerSellingProgramFacet", "Miscellaneous_ManufacturerSellingProgram", "string");
    automagic.addCheckboxFacet("Miscellaneous_PricingTypeFacet", "Miscellaneous_PricingType", "string");
    automagic.addCheckboxFacet("Miscellaneous_RepairabilityIndexFacet", "Miscellaneous_RepairabilityIndex", "string");
    automagic.addCheckboxFacet("Miscellaneous_SARValueFacet", "Miscellaneous_SARValue", "string");
    automagic.addCheckboxFacet("Miscellaneous_SecuritySlotTypeFacet", "Miscellaneous_SecuritySlotType", "string");
    automagic.addCheckboxFacet("Miscellaneous_SecurityFacet", "Miscellaneous_Security", "string");
    automagic.addCheckboxFacet("Miscellaneous_SurfaceFinishFacet", "Miscellaneous_SurfaceFinish", "string");
    automagic.addCheckboxFacet("Miscellaneous_TheftIntrusionProtectionFacet", "Miscellaneous_TheftIntrusionProtection", "string");
    automagic.addCheckboxFacet("Navigation_ReceiverFacet", "Navigation_Receiver", "string");
    automagic.addCheckboxFacet("ProcessorChipset_64bitComputingFacet", "ProcessorChipset_64bitComputing", "string");
    automagic.addCheckboxFacet("ProcessorChipset_CacheFacet", "ProcessorChipset_Cache", "string");
    automagic.addCheckboxFacet("ProcessorChipset_ChipsetFacet", "ProcessorChipset_Chipset", "string");
    automagic.addCheckboxFacet("ProcessorChipset_CPUFacet", "ProcessorChipset_CPU", "string");
    automagic.addCheckboxFacet("ProcessorChipset_FeaturesFacet", "ProcessorChipset_Features", "string");
    automagic.addCheckboxFacet("ProcessorChipset_MaxTurboSpeedFacet", "ProcessorChipset_MaxTurboSpeed", "string");
    automagic.addCheckboxFacet("ProcessorChipset_NumberOfCoresFacet", "ProcessorChipset_NumberOfCores", "string");
    automagic.addCheckboxFacet("ProcessorChipset_PlatformTechnologyFacet", "ProcessorChipset_PlatformTechnology", "string");
    automagic.addCheckboxFacet("Software_SoftwareIncludedFacet", "Software_SoftwareIncluded", "string");
    automagic.addCheckboxFacet("Software_MainStorageFacet", "Software_MainStorage", "string");
    automagic.addCheckboxFacet("Storage_OpticalDriveFacet", "Storage_OpticalDrive", "string");
    automagic.addCheckboxFacet("Storage_RAIDLevelFacet", "Storage_RAIDLevel", "string");
    automagic.addCheckboxFacet("Storage_SecondaryStorageFacet", "Storage_SecondaryStorage", "string");
    automagic.addCheckboxFacet("Storage_SSDCacheFacet", "Storage_SSDCache", "string");
    automagic.addCheckboxFacet("Storage_TotalCapacityFacet", "Storage_TotalCapacity", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_ControllerFacet", "WirelessBroadbandWWAN_Controller", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_GenerationFacet", "WirelessBroadbandWWAN_Generation", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_MaxTransferRateFacet", "WirelessBroadbandWWAN_MaxTransferRate", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_ServiceProviderFacet", "WirelessBroadbandWWAN_ServiceProvider", "string");
    automagic.addCheckboxFacet("WirelessBroadbandWWAN_TechnologyFacet", "WirelessBroadbandWWAN_Technology", "string");
    automagic.addCheckboxFacet("ProductLineFacet", "ProductLine", "string");
    automagic.addCheckboxFacet("ModelFacet", "Model", "string");


    // Adds a button to clear any applied filters
    automagic.addClearFiltersButton("clearFilters");

    $(function () {
        $("#searchbox1").autocomplete({
            source: "/home/suggest?highlights=false&fuzzy=false&",
            minLength: 3,
            position: {
                my: "left top",
                at: "left-23 bottom+10"
            }
        });
    });
</script>
<script>
    function suggestkeyprocess() {
        alert('test');
    }
</script>
<style>
</style>
</html>azsearchjsApp.html