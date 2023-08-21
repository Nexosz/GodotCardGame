extends Node

var list_of_decks = {
	"shadi" : {
		"UR" : ["00317", "00415", "01121", "00320", "00117", "00430"],
		"SR" : ["00609", "00401", "00348", "00333", "00418", "00318", "00013", "00321", "00334", "00019", "00104", "00119"],
		"R"  : ["00400", "00414", "01122", "01199", "00335", "00325", "00153", "00319", "00337", "00322", "00345", "00009", "00011", "00091", "00480", "00466", "00336", "00338", "00469", "00417", "00007", "00247", "00249", "00250", "00252", "00209"],
		"C"  : ["00326", "00124", "00327", "00328", "00323", "00329", "00330", "00331", "00332", "00151", "00129", "00133", "00204"]
	},

	"yugi" : {
		"UR" : ["00423", "00168", "00424", "00425", "00233", "00426", "00427", "00238", "00236", "00431", "00171", "00079", "00239", "00429", "00430"],
		"SR" : ["00234", "00428", "00232", "00066", "00235", "00080", "00072", "00067", "00432", "00433", "00357", "00435", "00170", "00219", "00436", "00437", "00438", "00439", "00162", "00117"],
		"R"  : ["00013", "00153", "00083", "00441", "00442", "00443", "00434", "00444", "00445", "00446", "00447", "00448", "00449", "00450", "00451", "00452", "00453", "00454", "00455", "00169", "00167", "00456", "00457", "00458", "00459", "00460", "00461", "00462", "00457", "00458", "00237", "00231", "00463", "00464", "00471"],
		"C" :  ["0465", "0014", "0466", "0467", "0468", "0469", "0470", "0472", "0473", "0474", "0475", "0476", "0149", "0086", "0010", "0477", "0478", "0008", "0479", "0480", "0481", "0482", "0132", "0100", "0011", "0078", "0058", "0197", "0202", "0196", "0105"]
	},

	"grandpa" : {
		"UR" : ["00240", "00603", "00605", "00415", "00604", "00429", "00430"],
		"SR" : ["00066", "00609", "00072", "00067", "00608", "00606", "00471", "00567", "00515", "00117", "00118"],
		"R"  : ["00465", "00153", "00010", "00086", "00149", "00440", "00013", "00442", "00570", "00586", "00610", "00611", "00400", "00612", "00613", "00614", "00623", "00615", "00616", "00617", "00441", "00469", "00618", "00619", "00620", "00621", "00622", "00607", "0198", "0197", "0209"],
		"C"  : ["0623", "0624", "0625", "0143", "0626", "0595", "0123", "0134", "0125", "0129", "0131"]
	},

	"joey" : {
		"UR" : ["00074", "00071", "00238", "00159", "00627", "00629", "00630", "00636", "00643", "00632", "01099"],
		"SR" : ["00073", "00076", "00633", "00638", "00639", "00642", "00333", "00659", "00334", "00647", "00640", "00637", "00667", "00648", "00155", "00649", "00650"],
		"R"  : ["00658", "00651", "00652", "01118", "00006", "00409", "00653", "00340", "00077", "00339", "00654", "00376", "00078", "00655", "00656", "00015", "00126", "00641", "00075", "00476", "00477", "00660", "00661", "00662", "00663", "00664", "00665", "00666", "00668", "00525", "00526", "00202", "00110"],
		"C"  : ["0670", "0130", "0671", "0125", "0672", "0673", "0319", "0143", "0674", "0675", "0132", "0479", "0676", "0677", "0678", "0679"]
	},

	"tea" : {
		"UR" : ["00216", "00212", "00393", "01123", "00080", "01124", "00117", "00429"],
		"SR" : ["00231", "00471", "00055", "00090", "00220", "00211", "00213", "01126", "01127", "01128", "01130", "01131", "01132"],
		"R"  : ["01133", "00248", "00134", "01134", "00570", "01135", "01009", "00089", "00281", "01137", "00237", "01138", "01139", "01140", "00098", "00060", "00037", "00038", "00324", "00064", "01141", "00969", "00968", "01142", "01143", "00215", "00440", "00047", "01005", "00391", "00091", "01129", "00108", "00207", "00197", "00224"],
		"C"  : ["01144", "01145", "00465", "01146", "00599", "00275", "00153", "00254", "01147", "01148", "01149", "00129", "01150"]
	},

	"bakura" : {
		"UR" : ["01151", "00920", "00072", "01153", "01154", "00101", "00117", "00429"],
		"SR" : ["00353", "01155", "00161", "01156", "01157", "00334", "01158", "00515", "01159", "01152", "01124", "00497", "00119"],
		"R"  : ["00089", "01139", "00469", "01160", "01161", "01162", "01163", "01164", "01165", "01166", "01167", "00058", "00010", "01168", "00570", "00153", "00522", "00579", "00571", "00513", "00586", "00458", "01169", "00615", "01058", "00011", "00347", "00352", "00937", "00936", "01170", "01171", "00525", "00526", "00105", "00210"],
		"C"  : ["00248", "01150", "01172", "00417", "00441", "00254", "00330", "00669"]
	},

	"tristan" : {
		"UR" : ["00317", "00633", "00034", "01173", "01175", "00101", "00102", "00119", "01131"],
		"SR" : ["00160", "01177", "01178", "01174", "00511", "00952", "00825", "01179", "00333", "01180", "01181", "01182", "01183", "01185", "01176", "00103", "00104"],
		"R"  : ["01186", "01148", "01149", "01150", "00545", "01187", "00391", "01170", "00283", "00597", "01188", "01189", "01190", "01191", "01192", "01030", "00033", "01193", "00679", "00669", "01146", "01184", "00660", "01194", "01195", "00047", "00676", "00039", "00656", "00121", "00069", "00153", "01196", "00083", "01197", "01198", "00525", "00203"],
		"C"  : ["00583", "00338", "00129", "01144", "00330", "00323", "00094", "00124", "00673", "00275", "00602"]
	},

	"duke" : {
		"UR" : ["01200", "01201", "01202", "01203", "01204", "01205", "00102", "00826", "00429"],
		"SR" : ["01206", "00341", "00498", "01207", "01208", "00641", "00744", "00515", "01210", "00649", "00650", "01130", "01211"],
		"R"  : ["01212", "01213", "01209", "01214", "01215", "00132", "01216", "01217", "01218", "00031", "00482", "00069", "01219", "01220", "01221", "01222", "01223", "01066", "00679", "01224", "01225", "01226", "01227", "01228", "00203"],
		"C"  : ["01229", "01230", "01231", "01232", "01233", "01234"]
	},
	
	"weevil" : {
		"UR" : ["00183", "01247", "01248", "00399", "00178", "01249", "00101", "01124", "00118", "00117", "00429", "00120"],
		"SR" : ["00182", "00398", "01239", "01250", "01251", "00177", "00403", "01252", "00161", "00515", "00179", "01240", "00162", "01253", "00119"],
		"R"  : ["00094", "00093", "00097", "00095", "01254", "00096", "00181", "01255", "01256", "00338", "00397", "01257", "01258", "00795", "01259", "00286", "00469", "00096", "01260", "01261", "01262", "00402", "00053", "00143", "00619", "00621", "01263", "01264", "01265", "01266", "01267", "00175", "00176", "00201", "01091", "01097"],
		"C"  : ["00180", "00049", "00602", "00150", "00467", "00001", "01193"]
	},

	"rex" : {
		"UR" : ["00603", "00860", "00856", "00073", "00117", "00429"],
		"SR" : ["00383", "00861", "01268", "00857", "01269", "00381", "00418", "01270", "00854", "00876", "00859", "00155", "00162"],
		"R"  : ["00088", "00863", "00004", "01271", "00152", "00087", "00858", "00864", "00035", "01272", "00874", "00872", "01196", "00143", "00145", "00677", "00882", "01273", "00132", "00075", "00867", "00871", "00382", "00878", "00879", "00880", "00086", "00865", "00866", "00869", "00873", "00870", "00385", "00109", "00106", "00206", "01274", "01275"],
		"C"  : ["00026", "00031", "00153", "00004", "00139"]
	},

	"mai" : {
		"UR" : ["01276", "01277", "01278", "00393", "00117", "00429", "01125"],
		"SR" : ["01279", "01280", "01082", "00055", "01081", "01079", "01281", "01282", "01289", "00118", "01283"],
		"R"  : ["00570", "00060", "00593", "00090", "01074", "01284", "01285", "01286", "01287", "01288", "01290", "00475", "00064", "01076", "01077", "01078", "01291", "01292", "01147", "01293", "01294", "01295", "00661", "01142", "00091", "01296", "01297", "01298", "01299", "01300", "01301", "01302", "01303", "01304", "01305"],
		"C"  : ["01009", "00596", "00098", "01262", "00323", "00275", "00440", "00283", "01306", "00027", "00148", "01307", "01308"]
	},

	"mako" : {
		"UR" : ["01309", "00396", "00361", "01310", "01311", "01312", "00429", "00430"],
		"SR" : ["01241", "00408", "00634", "01313", "01314", "00395", "00360", "01315", "01316", "00635", "01242", "00101", "00119"],
		"R"  : ["00081", "00470", "00017", "00657", "00038", "01317", "01318", "01319", "01320", "01321", "00419", "00041", "01187", "01322", "01323", "01324", "00016", "01325", "01326", "00285", "01327", "01328", "01329", "00037", "00365", "01330", "01331", "01332", "01333", "01334", "01335", "01336", "01337", "01338", "01339", "01340", "01341", "00205", "00109"],
		"C"  : ["01342", "01343", "01344", "01345", "00024", "00025", "00039", "00082", "00420" ]
	},

	"espa" : {
		"UR" : ["00982", "00631", "01346", "00373", "01124", "00117", "00429"],
		"SR" : ["00633", "01347", "00659", "00160", "01348", "01349", "00515", "01351", "01350", "01283", "01274", "01275"],
		"R"  : ["01352", "00669", "01353", "00148", "00061", "01150", "00574", "01213", "01354", "00848", "00917", "00153", "01355", "00065", "00850", "00849", "01039", "01356", "00029", "00052", "00371", "00372", "00370", "01357", "01007", "00106", "00203", "00525"],
		"C"  : ["01212", "00151", "01358", "01359", "01193", "00254", "00474", "00048"]
	},

	"bonz" : {
		"UR" : ["01363", "00072", "00646", "01362", "00491", "01364", "00102", "00120", "00430", "00497"],
		"SR" : ["00353", "01155", "01057", "00154", "01365", "00334", "01366", "01367", "00934", "01185", "01360"],
		"R"  : ["00009", "01368", "00011", "00131", "00019", "00086", "01369", "00048", "01216", "01370", "00578", "01371", "01184", "00012", "01168", "01361", "01372", "00018", "01163", "01373", "01374", "00938", "01375", "01055", "01056", "01376", "01377", "00526", "00525", "00210", "00209"],
		"C"  : ["01378", "00328", "00129", "00330", "00020", "01379", "00008"]
	},
	
	"tenma" : {
		"UR" : ["01395", "01396", "01397", "01398", "01399", "00349", "01400", "01401", "01114", "01115", "01402", "01403", "01404", "01099", "01103", "00429", "00120"],
		"SR" : ["01043", "01405", "01406", "00642", "01407", "00492", "01408", "00320", "01044", "01130", "01085", "00119", "01105"],
		"R"  : ["01138", "01409", "01410", "01411", "01412", "01413", "01414", "01112", "00533", "00570", "01113", "00090", "00510", "01415", "00211", "00220", "00347", "01416", "00281", "00282", "00352", "00392", "00970", "00475", "00965", "00967", "01417", "00104", "01083"],
		"C"  : ["0250", "0251", "0247", "0248", "0253", "0254", "0260", "0261", "0267", "0268", "0274", "0275"]
	},

	"kaiba" : {
		"UR" : ["00242", "00489", "00483", "00493", "00486", "00241", "00243", "00504", "00485", "00484", "00190", "00487", "00488", "00491", "00429", "00497", "00120"],
		"SR" : ["00240", "00034", "00505", "00244", "00502", "00499", "00421", "00500", "00189", "00187", "00188", "00503", "00492", "00511", "00498", "00501", "00540", "00245", "00490", "00506", "00101", "00119", "00496"],
		"R"  : ["00069", "00070", "00068", "00513", "00509", "00090", "00510", "00494", "00495", "00477", "00547", "00516", "00033", "00520", "00539", "00522", "00523", "00524", "00529", "00530", "00507", "00405", "00531", "00354", "00532", "00184", "00185", "00186", "00533", "00534", "00536", "00537", "00418", "00321", "00521", "00538", "00525", "00526", "00527", "00210", "00198", "00199"],
		"C"  : ["00350", "00508", "00541", "00542", "00545", "00047", "00476", "00012", "00132", "00017", "00543", "00546", "00146", "00480", "00517", "00548"]
	},

	"pegasus" : {
		"UR" : ["00549", "00551", "00553", "00552", "00554", "00555", "00550", "00563", "00564", "00117", "00430", "00429"],
		"SR" : ["00566", "00587", "00559", "00560", "00562", "00565", "00561", "00567", "00556", "00558", "00557", "00101", "00582"],
		"R"  : ["00568", "00569", "00571", "00572", "00574", "00573", "00576", "00577", "00570", "00578", "00579", "00588", "00583", "00584", "00585", "00515", "00334", "00586", "00469", "00589", "00590", "00591", "00592", "00104", "00525", "00526"],
		"C"  : ["00594", "00595", "00596", "00597", "00598", "00599", "00600", "00601", "00096", "00522", "00508", "00602"]
	},
	
	"nitemare" : {
		"UR" : ["01040", "01051", "00242", "00489", "00423", "01363", "00486", "01309", "01117", "00236", "00243", "00553", "00552", "00554", "00555", "00550", "00563", "01124", "00429"],
		"SR" : ["01042", "00074", "00183", "00424", "00168", "00493", "00425", "00071", "01243", "00216", "00238",  "01399", "00190", "00239", "00431", "00627", "00491", "00650", "00649", "00117", "01105", "00120", "00430"],
		"R"  : ["00240", "00426", "00157", "01071", "01069", "01173", "00982", "01048", "00399", "00428", "00159", "01043", "00034", "00212", "00214", "00317", "00393", "00890", "01201", "01045", "01046", "01047", "00080", "00369", "01121", "00638", "00927", "01174","01270", "01157", "00556", "00647", "01125", "00102", "00104", "01274", "01275", "00119"],
		"C"  : ["01049", "00415", "00182", "00066", "00413", "00158", "00861", "01123", "00072", "00609", "01180", "00502", "00348", "00408", "00355", "00300", "00303", "00306", "00309", "00312", "00315", "01269", "00067", "01390", "01197", "01118"]
	},
	
	"crowler" : {
	"UR" : ["01010", "01011", "01012", "01013", "01015", "01014", "01018", "00890", "00826", "01099", "00117", "00429"],
	"SR" : ["01019", "01016", "01017", "01421", "01020", "00825", "00515", "01032", "00101", "00430", "00120"],
	"R" : ["01029", "01035", "01021", "01022", "01034", "01024", "01027", "01028", "01023", "01025", "01026", "01031", "01353", "01422", "01030", "00451", "00452", "00453", "00917", "00585", "01354", "01037", "01423", "00525", "00203"],
	"C" : ["01039", "00032", "00661", "01424", "00456", "00458", "01425", "01426", "01220", "00545", "01038", "01427", "01428"]
	},

	"chazz" : {
		"UR" : ["01429", "00195", "00194", "01430", "00190", "00166", "00921", "00165", "00919", "00920", "00922", "00926", "00117", "00430", "00429", "01125"],
		"SR" : ["00164", "00927", "00189", "00187", "00188", "00193", "01431", "00500", "00942", "00544", "00923", "00925", "00924", "01432", "01433", "00934", "00647", "01120", "00162", "00648", "00497"],
		"R" : ["00928", "00929", "00930", "00931", "00932", "00933", "00939", "00163", "00935", "00940", "00941", "00936", "00937", "01434", "01435", "01436", "00191", "00192", "00184", "00185", "00186", "00543", "00542", "00321", "00523", "00522", "01437", "01438", "01439", "01440", "01441", "00938", "00203", "00198", "01274", "01275"],
		"C" : ["00943", "00944", "00254", "00945", "00132", "00411", "00946", "00275", "00947", "00815", "00948", "01442", "01443", "01444", "01143", "01368", "01169"]
	},

	"blair" : {
		"UR" : ["00949", "00168", "00951", "00950", "00953", "00955", "00957", "01099", "01124", "00429", "01125"],
		"SR" : ["00212", "00954", "00956", "00055", "00952", "00456", "00162", "01083", "01108", "01130", "01132"],
		"R" : ["00958", "00959", "00960", "00961", "00962", "00963", "00964", "00965", "00966", "00967", "00237", "00661", "00167", "00968", "00475", "00969", "00970", "00971", "00972", "00973", "00974", "00975", "00211", "00213", "00440"],
		"C" : ["00457", "00250", "00251", "00247", "00248", "00253", "00254", "00260", "00261", "00267", "00268", "00274", "00275"]
	},

	"hassleberry" : {
		"UR" : ["00853", "00855", "00380", "00384", "00856", "00860", "00117", "00429"],
		"SR" : ["00383", "00379", "00861", "00857", "00858", "00854", "00859", "01445", "00162", "00155"],
		"R" : ["00862", "00863", "00382", "00864", "00865", "00866", "00867", "00868", "00004", "00381", "00869", "00087", "00088", "00870", "00871", "00872", "00873", "00874", "00385", "00875", "00876", "00877", "00152", "00052", "00106", "00206"],
		"C" : ["00878", "00879", "00880", "00881", "00882", "00086", "00109"]
	},

	"bastion" : {
		"UR" : ["01446", "00424", "01447", "01448", "00363", "01449", "01201", "01450", "00101", "01130", "00430", "00497", "00429"],	
		"SR" : ["01451", "01452", "01453", "01454", "00498", "01459", "00491", "01455", "01457", "01093", "00527", "00120", "00119"],
		"R" : ["00387", "00386", "00388", "01458", "01456", "01460", "01461", "00445", "00446", "00447", "01462", "01463", "01464", "00321", "01465", "00523", "00522", "01428", "01466", "01373", "01467", "01365", "01468", "01469", "01470", "01471"],
		"C" : ["00261", "00263", "00469", "00336", "01472", "00947", "01473", "00964", "00965", "00966", "00967", "01424"]
	},

	"syrus" : {
		"UR" : ["00816", "00817", "00818", "00819", "00821", "00824", "00373", "01474", "00429", "00430"],
		"SR" : ["01475", "00822", "00825", "01349", "00823", "00658", "00820", "00826", "00104", "01125", "00119"],
		"R" : ["00827", "00828", "00829", "00830", "00831", "00832", "00833", "00834", "00835", "00836", "00837", "00838", "00839", "00840", "00841", "00842", "00843", "00844", "00845", "00846", "00847", "00370", "00371", "00372"],
		"C" : ["00848", "00849", "00850", "00851", "00852", "00030", "00445", "00446", "00447", "00032", "01476", "01477"]
	},

	"alexis" : {
		"UR" : ["00978", "00981", "00976", "00977", "00984", "00979", "00980", "00982", "00991", "01124", "01099", "01125"],
		"SR" : ["00953", "00212", "00988", "00983", "00985", "00999", "01478", "01479", "00647", "00990", "01083", "00527", "01132"],
		"R" : ["00992", "00993", "00994", "00995", "00996", "00997", "00987", "00998", "01000", "01002", "01003", "01004", "01001", "00570", "00475", "00391", "00213", "00211", "00392", "01005", "00661", "01112", "00215", "00202", "00108"],
		"C" : ["01006", "01007", "01008", "01009", "00586", "00654", "00097", "01480", "01481"]
	},

	"jesse" : {
		"UR" : ["00777", "00775", "00776", "01482", "00778", "00779", "00780", "01483", "01130", "00117", "00429"],
		"SR" : ["00781", "00786", "00785", "00783", "00784", "00787", "00782", "01484", "01485", "01486", "00497"],
		"R" : ["00788", "00789", "00790", "00791", "00792", "00793", "00794", "00801", "00802", "00803", "00804", "00805", "00806", "00807", "00808", "00809", "00810", "00811", "00812", "00813", "00814", "00797", "00798", "00799", "00800", "00106"],
		"C" : ["00456", "00815", "00579", "00619", "00594", "00402", "00795", "00796", "01488"]
	},

	"zane" : {
		"UR" : ["00883", "00884", "00886", "01489", "00885", "00888", "00889", "00890", "00491", "00101", "00117", "00429"],
		"SR" : ["00823", "00896", "00379", "00892", "00825", "00894", "00895", "00515", "00891", "00887", "00826", "00497"],
		"R" : ["00900", "00899", "00901", "00902", "00903", "00904", "00905", "00837", "00898", "00915", "00897", "00912", "00913", "00893", "00908", "00909", "00910", "00911", "00906", "00907", "00876", "00525", "00203", "00527"],
		"C" : ["00914", "00916", "00848", "00851", "00852", "00614", "00838", "00917", "00918"]
	},

	"atticus" : {
		"UR" : ["00074", "00071", "00628", "01490", "01491", "01492", "00101", "00429", "00430"],
		"SR" : ["00989", "00645", "00073", "00643", "00646", "01493", "01269", "01494", "01495", "01083", "00667", "00119", "01125"],
		"R" : ["01496", "00663", "00664", "00665", "01497", "00666", "00547", "01416", "00941", "01498", "01499", "00535", "01500", "00534", "00509", "01501", "00524", "01502", "00523", "00614", "00075", "00321", "00541", "00198"],
		"C" : ["00132", "00350", "00548", "00417", "00016", "00043", "00624"]
	},

	"aster" : {
		"UR" : ["01503", "01504", "01505", "01506", "01507", "01508", "01509", "01510", "01511", "00117", "00695", "00429"],
		"SR" : ["01512", "01513", "01514", "01515", "01516", "01517", "01518", "01519", "00101", "00497", "00120"],
		"R" : ["01520", "01521", "01522", "01523", "01524", "01525", "01526", "01527", "01528", "01529", "01530", "01531", "01532", "01533", "01534", "01535", "01536", "01537", "01538", "01539", "01540", "01541", "01542", "01543", "01544", "00202"],
		"C" : ["01545", "01546", "01439", "01112", "01062", "01547", "00714", "00715", "00716", "00717", "00718", "01548"]
	},

	"jaden" : {
		"UR" : ["00681", "00682", "00683", "00684", "00685", "00686", "00687", "00688", "00689", "00690", "00691", "00693", "00694"],
		"SR" : ["00696", "00703", "00704", "00705", "00706", "00707", "00708", "00709", "00692", "00710", "00711", "00712", "00713", "00746", "00700", "00701", "00702", "00699", "00697", "00748", "00698", "00695", "00429"],
		"R" : ["00714", "00715", "00716", "00717", "00718", "00722", "00724", "00732", "00733", "00734", "00735", "00736", "00737", "00720", "00721", "00742", "00743", "00740", "00741", "00738", "00739", "00723", "00719", "00750", "00725", "00726", "00727", "00744", "00730", "00731", "00728", "00729", "00747", "00745", "00110", "00107", "00106", "00109", "00108"],
		"C" : ["00751", "00749", "00755", "00756", "00758", "00759", "00760", "00762", "00757", "00761", "00763", "00764", "00765"]
	},

	"nightshroud" : {
		"UR" : ["01040", "01010", "01041", "00776", "00884", "00817", "01446", "01429", "00195", "00855", "00853", "01503", "00380", "00384", "01549", "00166", "01013", "00689", "00976", "00978", "01550", "00991", "01124", "00429", "00430"],
		"SR" : ["01551", "00781", "00953", "00696", "01451", "01512", "01019", "01552", "01445", "00989", "00921", "00628", "00363", "01448", "01449", "00979", "00887", "01509", "01483", "01490", "01491", "01492", "00643", "01115", "01404", "00373", "00214", "00491", "00101", "00117", "00527"],
		"R" : ["00383", "00379", "00927", "00645", "00073", "00646", "01475", "01553", "01554", "01555", "01050", "01269", "01365", "00294", "00293", "01112", "01556", "00774", "00744", "00105", "00108", "00107", "00109", "00106", "00110"],
		"C" : ["00583", "00598", "01214", "01466", "00460", "00011", "00948", "01413", "00345", "00058"]
	},


}

#Function to generate a deck using the lists above
func get_a_deck(npc_name):
	var final_built_deck = [] 
	var player_card_count = PlayerData.player_trunk.keys().size() 
	
	#Responsive difficulty of the game
	var rarity_counter : Dictionary
	
	if player_card_count < 40: #Super Easy Mode, valid for at most the first 2 duels the player has
		rarity_counter = {"UR":0, "SR":1, "R":12, "C":27}
	if player_card_count >= 40:
		rarity_counter = {"UR":0, "SR":2, "R":20, "C":18}
	if player_card_count >= 55:
		rarity_counter = {"UR":0, "SR":3, "R":32, "C":5}
	if player_card_count >= 80:
		rarity_counter = {"UR":1, "SR":6, "R":30, "C":3}
	if player_card_count >= 150:
		rarity_counter = {"UR":5, "SR":10, "R":25, "C":0}
	if player_card_count >= 200:
		rarity_counter = {"UR":10, "SR":15, "R":15, "C":0}
	if player_card_count >= 300:
		rarity_counter = {"UR":15, "SR":15, "R":10, "C":0}
	if player_card_count >= 450:
		rarity_counter = {"UR":30, "SR":10, "R":0, "C":0}
	
	#Some fixed NPCs will have a 'lowest difficulty' higher than normal, unless player general difficulty is already bigger than that
	if rarity_counter.UR < 1 and npc_name in ["kaiba", "pegasus", "crowler"]:
		rarity_counter = {"UR":1, "SR":6, "R":30, "C":3}
		
	if rarity_counter.UR < 5 and npc_name in ["atticus", "zane", "aster", "jesse", "jaden", "nightshroud"]:
		rarity_counter = {"UR":5, "SR":10, "R":25, "C":0}
		
	if npc_name in ["nitemare", "tenma"]:
		rarity_counter = {"UR":30, "SR":10, "R":0, "C":0}
	
	#print(rarity_counter)
	
	#Generate the actual deck
	randomize()
	for rarity in rarity_counter.keys():
		for _i in range(rarity_counter[rarity]):
			var random_index = randi() %list_of_decks[npc_name][rarity].size()
			final_built_deck.append(list_of_decks[npc_name][rarity][random_index].pad_zeros(5))
	
	return final_built_deck.duplicate(true)
