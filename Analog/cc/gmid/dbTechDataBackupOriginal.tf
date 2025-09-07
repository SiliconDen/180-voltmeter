;-------------------------------------------------
; Thu Sep  4 16:51:29 2025
; Custom Compiler Version: W-2024.09-SP1-2 
; Library Name: gmid 
; Export Condition: Local 
;-------------------------------------------------
controls(
;techArray(
;techArray( techReferenceNames )
;--------------------------------------
;) ;techArray

;techParams(
;( parameter           value )
;( ----------             ----- )
;) ;techParams

;techPermissions(
;( class                (read-only users)  (read & write users) )
;( ----------          -----------------     --------------------   )
;) ;techPermissions

viewTypeUnits(
;( viewType                userUnit        DBUPerUU )
;( --------                     --------           -- --------   )
  ( maskLayout		 micron 	1000	)
  ( schematic		 inch 	160	)
  ( schematicSymbol	 inch 	160	)
  ( netlist		 inch 	160	)
) ;viewTypeUnits

  mfgGridResolution(
    ( 0.005 )
  ) ;mfgGridResolution

;colors(
;( colorName  colorName ...... colorName )
;) ;colors

;leMPPControls (
; leMPPDefinition ( name           objList               spacings          masterIndex        [(exposedParameters)]) 
; ( -----             -------                ---------            ------------           ---------------------) 
; leMPPMasterPath (
;		name
;		layer   purpose
;		width   pathStyle  conn   chop
;		[exposedParameters]
;		----------------------- )
; leMPPEnclosedPath (
;		name
;		layer   purpose
;		enclosure   pathStyle  conn   chop
;		[exposedParameters]
;		[-eolEnclosure <integer | float>]
;		[-beginOffset float]
;		[-endOffset float]
;		----------------------- )
; leMPPOffsetPath (
;		name
;		layer   purpose
;		width   offset  pathStyle  conn   chop
;		[exposedParameters]
;		[-beginOffset float]
;		[-endOffset float]
;		----------------------- )
; leMPPEnclosedShape (
;		name
;		layer   purpose
;		enclosure  conn
;		[exposedParameters]
;		----------------------- )
; leMPPSubRect(
;		name
;		layer   purpose
;		width  height  conn   chop  enclosure  endOfLine   spacing   spacingType  numRows
;		[exposedParameters]
;		[-offset float]
;		[-beginOffset float]
;		[-endOffset float]
;		----------------------- )
;) ;leMPPControls

;vdrc(
;( vdrcParamName vdrcParamValue )
;( ------------- -------------- )
;) ;vdrc

) ;controls

layerDefinitions(
;techPurposes(
;( purposeName  purposeNum   abbreviation   [-comment "string"]) 
;(   -----------        ----------        ----------     ----------     )
;) ;techPurposes

;techLayers(
;( layerName  layerNum   abbreviation  [-comment "string"])
;(   ---------      --------      ------------  --------------)
;) ;techLayers

 techLayerPurposePriorities(
;(  layerName   purposeName  )
;(   ---------        ------------     )
( background       drawing          )
( grid             drawing          )
( grid             drawing1         )
( grid             object           )
( annotate         drawing          )
( annotate         drawing1         )
( annotate         drawing2         )
( annotate         drawing3         )
( annotate         drawing4         )
( annotate         drawing5         )
( annotate         drawing6         )
( annotate         drawing7         )
( annotate         drawing8         )
( annotate         drawing9         )
( instance         drawing          )
( instance         label            )
( prBoundary       drawing          )
( prBoundary       boundary         )
( prBoundary       label            )
( align            drawing          )
( hardFence        drawing          )
( softFence        drawing          )
( text             drawing          )
( text             drawing1         )
( text             drawing2         )
( border           drawing          )
( border           boundary         )
( border           steiner          )
( device           drawing          )
( device           label            )
( device           drawing1         )
( device           drawing2         )
( device           annotate         )
( wire             drawing          )
( wire             label            )
( wire             flight           )
( pin              label            )
( pin              drawing          )
( pin              annotate         )
( axis             drawing          )
( edgeLayer        drawing          )
( edgeLayer        pin              )
( snap             drawing          )
( snap             boundary         )
( stretch          drawing          )
( y0               drawing          )
( y1               drawing          )
( y2               drawing          )
( y3               drawing          )
( y4               drawing          )
( y5               drawing          )
( y6               drawing          )
( y7               drawing          )
( y8               drawing          )
( y9               drawing          )
( y0               flight           )
( y1               flight           )
( y2               flight           )
( y3               flight           )
( y4               flight           )
( y5               flight           )
( y6               flight           )
( y7               flight           )
( y8               flight           )
( y9               flight           )
( hilite           drawing          )
( hilite           drawing1         )
( hilite           drawing2         )
( hilite           drawing3         )
( hilite           drawing4         )
( hilite           drawing5         )
( hilite           drawing6         )
( hilite           drawing7         )
( hilite           drawing8         )
( hilite           drawing9         )
( select           drawing          )
( drive            drawing          )
( hiz              drawing          )
( resist           drawing          )
( spike            drawing          )
( supply           drawing          )
( unknown          drawing          )
( unset            drawing          )
( designFlow       drawing          )
( designFlow       drawing1         )
( designFlow       drawing2         )
( designFlow       drawing3         )
( designFlow       drawing4         )
( designFlow       drawing5         )
( designFlow       drawing6         )
( designFlow       drawing7         )
( designFlow       drawing8         )
( designFlow       drawing9         )
( changedLayer     tool0            )
( changedLayer     tool1            )
( snpsDGBackground drawing          )
( snpsDGDiffusion  drawing          )
( snpsDGDummy      drawing          )
( snpsDGDummy1     drawing          )
( snpsDGDev0       drawing          )
( snpsDGDev1       drawing          )
( snpsDGDev2       drawing          )
( snpsDGDev3       drawing          )
( snpsDGDev4       drawing          )
( snpsDGDev5       drawing          )
( snpsDGDev6       drawing          )
( snpsDGDev7       drawing          )
( snpsDGDev8       drawing          )
( snpsDGDev9       drawing          )
( snpsDGVtUL       drawing          )
( snpsDGVtLow      drawing          )
( snpsDGVtStd      drawing          )
( snpsDGVtHigh     drawing          )
( snpsDGText       drawing          )
( snpsDGPmos       drawing          )
( snpsDGNmos       drawing          )
( snpsDGMarker     drawing          )
( marker           warning          )
( marker           error            )
( marker           annotate         )
( marker           info             )
( marker           ackWarn          )
( marker           soError          )
( marker           soCritical       )
( marker           critical         )
( marker           fatal            )
( Row              drawing          )
( Row              label            )
( Row              boundary         )
( Group            drawing          )
( Group            label            )
( Group            boundary         )
( Cannotoccupy     drawing          )
( Cannotoccupy     boundary         )
( Canplace         drawing          )
( Unrouted         drawing          )
( Unrouted         drawing1         )
( Unrouted         drawing2         )
( Unrouted         drawing3         )
( Unrouted         drawing4         )
( Unrouted         drawing5         )
( Unrouted         drawing6         )
( Unrouted         drawing7         )
( Unrouted         drawing8         )
( Unrouted         drawing9         )
( Unrouted         track            )
( PinBorder        substrate        )
( PinBorder        blockage         )
( PinBorder        control          )
( PinBorder        softBdry         )
( PinBorder        warning          )
( PinBorder        tool             )
( PinBorder        label            )
( PinBorder        flight           )
( PinBorder        annotate         )
( PinBorder        boundary         )
( PinBorder        pin              )
( PinBorder        drawing          )
( PinBorder        net              )
( PinBorder        cell             )
( border           track            )
( snpsTrunk        drawing          )
( snpsTrunk        drawing1         )
( snpsTrunk        drawing2         )
( snpsTrunk        drawing3         )
( snpsTrunk        drawing4         )
( snpsTrunk        drawing5         )
( snpsTrunk        drawing6         )
( snpsTrunk        drawing7         )
( snpsTrunk        drawing8         )
( snpsTrunk        drawing9         )
( snpsTapoff       drawing          )
( snpsTapoff       drawing1         )
( snpsTapoff       drawing2         )
( snpsTapoff       drawing3         )
( snpsTapoff       drawing4         )
( snpsTapoff       drawing5         )
( snpsTapoff       drawing6         )
( snpsTapoff       drawing7         )
( snpsTapoff       drawing8         )
( snpsTapoff       drawing9         )
) ;techLayerPurposePriorities

techDisplays(
;(lLayerName purposeName  packet  vis sel   con2ChgLy   drgEnbl  valid  [visibleOnly  [static]])
;(   ---------        -------           ------   --- ---    ------------     -------    -----  -- --)
( background       drawing          background      	t nil t nil nil  )
( grid             drawing          grid            	t nil t nil nil  )
( grid             drawing1         grid1           	t nil t nil nil  )
( grid             object           FinGrid         	t t nil nil nil  )
( annotate         drawing          annotate        	t t t t nil  )
( annotate         drawing1         annotate1       	t t t t nil  )
( annotate         drawing2         annotate2       	t t t t nil  )
( annotate         drawing3         annotate3       	t t t t nil  )
( annotate         drawing4         annotate4       	t t t t nil  )
( annotate         drawing5         annotate5       	t t t t nil  )
( annotate         drawing6         annotate6       	t t t t nil  )
( annotate         drawing7         annotate7       	t t t t nil  )
( annotate         drawing8         annotate8       	t t t t nil  )
( annotate         drawing9         annotate9       	nil t t t nil  )
( instance         drawing          instance        	t t t t nil  )
( instance         label            instanceLbl     	t t t t nil  )
( prBoundary       drawing          prBoundary      	t t t t nil  )
( prBoundary       boundary         prBoundaryBnd   	t t t t nil  )
( prBoundary       label            prBoundaryLbl   	t t t t nil  )
( align            drawing          align           	t t t t nil  )
( hardFence        drawing          hardFence       	t t t t nil  )
( softFence        drawing          softFence       	t t t t nil  )
( text             drawing          text            	t t t t t  )
( text             drawing1         text1           	t t t t nil  )
( text             drawing2         text2           	t t t t nil  )
( border           drawing          border          	t t t t nil  )
( border           boundary         area            	t nil t t nil  )
( border           steiner          steiner         	t t t t nil  )
( device           drawing          device          	t t t t nil  )
( device           label            deviceLbl       	t t t t nil  )
( device           drawing1         device1         	t t t t nil  )
( device           drawing2         device2         	t t t t nil  )
( device           annotate         deviceAnt       	t t t t nil  )
( wire             drawing          wire            	t t t t nil  )
( wire             label            wireLbl         	t t t t nil  )
( wire             flight           wireFlt         	t t t t nil  )
( pin              label            pinLbl          	t t t t nil  )
( pin              drawing          pin             	t t t t nil  )
( pin              annotate         pinAnt          	t t t t nil  )
( axis             drawing          axis            	t nil t t nil  )
( edgeLayer        drawing          edgeLayer       	t t t t nil  )
( edgeLayer        pin              edgeLayerPin    	t t t t nil  )
( snap             drawing          snap            	t t t t nil  )
( snap             boundary         snap            	t nil t t nil  )
( stretch          drawing          stretch         	t t t t nil  )
( y0               drawing          y0              	t t t t nil  )
( y1               drawing          y1              	t t t t nil  )
( y2               drawing          y2              	t t t t nil  )
( y3               drawing          y3              	t t t t nil  )
( y4               drawing          y4              	t t t t nil  )
( y5               drawing          y5              	t t t t nil  )
( y6               drawing          y6              	t t t t nil  )
( y7               drawing          y7              	t t t t nil  )
( y8               drawing          y8              	t t t t nil  )
( y9               drawing          y9              	t t t t nil  )
( y0               flight           y0Flt           	t t t t nil  )
( y1               flight           y1Flt           	t t t t nil  )
( y2               flight           y2Flt           	t t t t nil  )
( y3               flight           y3Flt           	t t t t nil  )
( y4               flight           y4Flt           	t t t t nil  )
( y5               flight           y5Flt           	t t t t nil  )
( y6               flight           y6Flt           	t t t t nil  )
( y7               flight           y7Flt           	t t t t nil  )
( y8               flight           y8Flt           	t t t t nil  )
( y9               flight           y9Flt           	t t t t nil  )
( hilite           drawing          hilite          	t t t t nil  )
( hilite           drawing1         hilite1         	t t t t nil  )
( hilite           drawing2         hilite2         	t t t t nil  )
( hilite           drawing3         hilite3         	t t t t nil  )
( hilite           drawing4         hilite4         	t t t t nil  )
( hilite           drawing5         hilite5         	t t t t nil  )
( hilite           drawing6         hilite6         	t t t t nil  )
( hilite           drawing7         hilite7         	t t t t nil  )
( hilite           drawing8         hilite8         	t t t t nil  )
( hilite           drawing9         hilite9         	t t t t nil  )
( select           drawing          select          	t t t t nil  )
( drive            drawing          drive           	t t t t nil  )
( hiz              drawing          hiz             	t t t t nil  )
( resist           drawing          resist          	t t t t nil  )
( spike            drawing          spike           	t t t t nil  )
( supply           drawing          supply          	t t t t nil  )
( unknown          drawing          unknown         	t t t t nil  )
( unset            drawing          unset           	t t t t nil  )
( designFlow       drawing          designFlow      	t t t nil nil  )
( designFlow       drawing1         designFlow1     	t t t nil nil  )
( designFlow       drawing2         designFlow2     	t t t nil nil  )
( designFlow       drawing3         designFlow3     	t t t nil nil  )
( designFlow       drawing4         designFlow4     	t t t nil nil  )
( designFlow       drawing5         designFlow5     	t t t nil nil  )
( designFlow       drawing6         designFlow6     	t t t nil nil  )
( designFlow       drawing7         designFlow7     	t t t nil nil  )
( designFlow       drawing8         designFlow8     	t t t nil nil  )
( designFlow       drawing9         designFlow9     	t t t nil nil  )
( changedLayer     tool0            changedLayerTl0 	nil nil t nil nil  )
( changedLayer     tool1            changedLayerTl1 	nil nil t nil nil  )
( snpsDGBackground drawing          solidLightGray  	t t t t t  )
( snpsDGDiffusion  drawing          diffusion       	t t t t t  )
( snpsDGDummy      drawing          solidDummy      	t t t t t  )
( snpsDGDummy1     drawing          solidDummy1     	t t t t t  )
( snpsDGDev0       drawing          xRed            	t t t t t  )
( snpsDGDev1       drawing          solidBlue       	t t t t t  )
( snpsDGDev2       drawing          solidCyan       	t t t t t  )
( snpsDGDev3       drawing          xBrown          	t t t t t  )
( snpsDGDev4       drawing          solidGreen      	t t t t t  )
( snpsDGDev5       drawing          solidLightBlue  	t t t t t  )
( snpsDGDev6       drawing          xOrange         	t t t t t  )
( snpsDGDev7       drawing          solidPurple     	t t t t t  )
( snpsDGDev8       drawing          solidGold       	t t t t t  )
( snpsDGDev9       drawing          solidDarkGray   	t t t t t  )
( snpsDGVtUL       drawing          solidYellow     	t t t t t  )
( snpsDGVtLow      drawing          solidOrange     	t t t t t  )
( snpsDGVtStd      drawing          solidRed        	t t t t t  )
( snpsDGVtHigh     drawing          solidBrown      	t t t t t  )
( snpsDGText       drawing          solidGold       	t t t t t  )
( snpsDGPmos       drawing          lxPtype         	t t t t t  )
( snpsDGNmos       drawing          lxNtype         	t t t t t  )
( snpsDGMarker     drawing          markerYellow    	t t t t t  )
( marker           warning          markerWarn      	t t t t nil  )
( marker           error            markerErr       	t t t t nil  )
( marker           annotate         markerAno       	t t t t nil  )
( marker           info             markerInf       	t t t t nil  )
( marker           ackWarn          markerAck       	t t t t nil  )
( marker           soError          markerSer       	t t t t nil  )
( marker           soCritical       markerScr       	t t t t nil  )
( marker           critical         markerCrt       	t t t t nil  )
( marker           fatal            markerFat       	t t t t nil  )
( Row              drawing          Row             	t t t t nil  )
( Row              label            RowLbl          	t nil t t nil  )
( Row              boundary         RowBnd          	t t t t nil  )
( Group            drawing          Group           	t t t t nil  )
( Group            label            GroupLbl        	t nil t t nil  )
( Group            boundary         GroupBnd        	t nil t t nil  )
( Cannotoccupy     drawing          Cannotoccupy    	t t t t nil  )
( Cannotoccupy     boundary         CannotoccupyBnd 	t t t t nil  )
( Canplace         drawing          Canplace        	t t t t nil  )
( Unrouted         drawing          Unrouted        	t t t t nil  )
( Unrouted         drawing1         Unrouted1       	t t t t nil  )
( Unrouted         drawing2         Unrouted2       	t t t t nil  )
( Unrouted         drawing3         Unrouted3       	t t t t nil  )
( Unrouted         drawing4         Unrouted4       	t t t t nil  )
( Unrouted         drawing5         Unrouted5       	t t t t nil  )
( Unrouted         drawing6         Unrouted6       	t t t t nil  )
( Unrouted         drawing7         Unrouted7       	t t t t nil  )
( Unrouted         drawing8         Unrouted8       	t t t t nil  )
( Unrouted         drawing9         Unrouted9       	t t t t nil  )
( Unrouted         track            UnroutedTrk     	t t t t nil  )
( PinBorder        substrate        PinBorder_substrate	t t nil nil t  )
( PinBorder        blockage         PinBorder_blockage	t t nil nil nil  )
( PinBorder        control          PinBorder_control	t t nil nil nil  )
( PinBorder        softBdry         PinBorder_softBdry	t t nil nil t  )
( PinBorder        warning          PinBorder_warning	t t nil nil t  )
( PinBorder        tool             PinBorder_tool  	t nil nil nil nil  )
( PinBorder        label            PinBorder_label 	t t nil nil nil  )
( PinBorder        flight           PinBorder_flight	t t nil nil nil  )
( PinBorder        annotate         routeGuide_annotate	t t nil nil nil  )
( PinBorder        boundary         PinBorder_boundary	t t nil nil t  )
( PinBorder        pin              PinBorder_pin   	t t nil nil nil  )
( PinBorder        drawing          PinBorder_drawing	t nil nil nil nil  )
( PinBorder        net              PinBorder_net   	t t nil nil t  )
( PinBorder        cell             CoreBdry_cell   	t t nil nil t  )
( border           track            track           	t t t t nil  )
( snpsTrunk        drawing          routeTrunk      	t t nil nil nil  )
( snpsTrunk        drawing1         routeTrunk1     	t t nil nil nil  )
( snpsTrunk        drawing2         routeTrunk2     	t t nil nil nil  )
( snpsTrunk        drawing3         routeTrunk3     	t t nil nil nil  )
( snpsTrunk        drawing4         routeTrunk4     	t t nil nil nil  )
( snpsTrunk        drawing5         routeTrunk5     	t t nil nil nil  )
( snpsTrunk        drawing6         routeTrunk6     	t t nil nil nil  )
( snpsTrunk        drawing7         routeTrunk7     	t t nil nil nil  )
( snpsTrunk        drawing8         routeTrunk8     	t t nil nil nil  )
( snpsTrunk        drawing9         routeTrunk9     	t t nil nil nil  )
( snpsTapoff       drawing          routeTapoff     	t t nil nil nil  )
( snpsTapoff       drawing1         routeTapoff1    	t t nil nil nil  )
( snpsTapoff       drawing2         routeTapoff2    	t t nil nil nil  )
( snpsTapoff       drawing3         routeTapoff3    	t t nil nil nil  )
( snpsTapoff       drawing4         routeTapoff4    	t t nil nil nil  )
( snpsTapoff       drawing5         routeTapoff5    	t t nil nil nil  )
( snpsTapoff       drawing6         routeTapoff6    	t t nil nil nil  )
( snpsTapoff       drawing7         routeTapoff7    	t t nil nil nil  )
( snpsTapoff       drawing8         routeTapoff8    	t t nil nil nil  )
( snpsTapoff       drawing9         routeTapoff9    	t t nil nil nil  )
) ;techDisplays

;techLayerProperties(
;( propName     layer1/lpp1  [layer2/lpp2]      propValue )
;( --------            ------           ----------            ---------   )
;) ;techLayerProperties

;techDerivedLayers(
;( derivedLayerName    layerNum   (operator layer1 [layer2] [params])  ) 
;(   -------------------       ---------     --------    ----     ------      -------     ) 
;) ;techDerivedLayers

) ;layerDefinitions

;layerRules(
;functions(
;( layer     function     [maskNumber   [numberOfColorMasks [defaultColor]]]  [-fullColor <bool>  [-recognitionPurposes (purposeName ...)]] [-PGRecognition (PGLayerName PGPurposeName)])
;( -----     --------      ---------     --------------      -----------       ---------            -----------)
;) ;functions

;mfgResolutions(
;( layer         mfgResolution )
;( -----           -------------    )
;) ;mfgResolutions

;viaLayers(
;) ;viaLayers

;routingDirections(
;( layer         direction  )
;( -----          --------    )
;) ;routingDirections

;currentDensities(
;( currentDensityName      layerName      value ) 
;( ---------------------          ---------         ----- ) 
;) ;currentDensities

;cutClasses(
;( layerName 
;  ( className [-numCuts numCuts] [-minWidth] [-minLength] (width length) [-comment ["rule_id"] "string"] )
;) 
;) ;cutClasses

;trackDefs(
;grids(
;  (gridName layerName -pitch <float> [-width <float>]
;  [-color <string>][-active <bool>][-visible <bool>]
;  [-pointsLow (<float>…)][-pointsHigh (<float>…)][-pairs ((<float> <float>)…)][-direction horizontal|vertical])
;);grids
;gridGroups(
;  (gridGroupName (gridName ...))
;);gridGroups
;tracks(
;  (trackName -type <default | reserved | nonReserved> -offset <float> [-width <float>] [-color <string>]
;  [-sigType <all | power | ground | clock | signal | tieoff | tieHi | tieLo | analog | scan | reset>] [-visible <bool>] [-active <bool>]
;  [-gridOffsetLow <float>] [-gridOffsetHigh <float>] [-gridPointsLow (<float>...)] [-gridPointsHigh (<float>...)][-hidden true|false])
;);tracks

;groups(
;  (name layer (trackName ...) -direction <horizontal | vertical> -pitch (<float> <float>)
;  [-allowCrossBoundary <bool>][-renderPurpose <purposeName>][-LEGShapeSnapPurposes (<purpose_list>)][-hidden true|false])
;);groups

;regions(
;  (name (groupName ...) 
;  [-flip (<bool> <bool>)|-flipGroups (groupName...) [-flipGroupsFirst (groupName...)] [-groupFlipTarget tile | region]] 
;  [-minCount (<int> <int>)] [-maxCount (<int> <int>)] [-autoCreateGlobalRegion <bool>] [-foundryConstraintGroups (groupName...)]  
;  [-snapGrid (<float> <float>)] [-snapOffset (<float> <float>)] 
;  [-defaultTracksVisible default | false | true] [-defaultTracksActive default | false | true] 
;  [-groupEnclosure (<float> <float>)] [-enclosedGroups (groupName...)] 
;  [-flipTilesX <bool> [-flipTilesXFirst <bool>]] [-flipTilesY <bool> [-flipTilesYFirst <bool>]][-gridGroups ((groupName... (gridName|gridGroupName|exclusiveGridSet))...)][-tileOffset (<float> <float>)][-gridGroupsExclusive (groupName...)] )
;);regions

;boundaryTrackData(
; (name -width <float> -space <float> -type <default | reserved | nonReserved> [-color <string>])
;);boundaryTrackData

;boundaryTracks(
; (name layer (boundaryTrackDataName...) -direction <horizontal | vertical>)
;);boundaryTracks

;boundaryTrackRegions(
; (name (boundaryTrackName...) -boundaryLPP (<string> <string>) -minEnclosure (<float> <float>)
;  [-tileWidth <float>] [-tileHeight <float>] [-minNumTiles (<int> <int>)])
;);boundaryTrackRegions

;) ;trackDefs

;trackPatternDefs(
;  trackPatternDef(name layer|(layer purpose) type spacingDirection trackPitch [width [(numTracks blockPitch) [offset [visible [active [autoGenerateTrack [color]]]]]]])
;) ;trackPatternDefs

;colorClasses(
;( layer [derived] 
;  ( color  colorLayer | (colorLayer colorPurpose ) )
;) 
;) ;colorClasses

;wideAlignments(
;( width pitch [distance [global]] [-groups <array> [-groupShapes ( grpLayer | (grpLayer grpPurpose) (spacing height) ... )]]
;  [-endShapes ( endLayer | (endLayer endPurpose) endExtension | (bottom-extension top-extension) )]
;  [-stepY step] [-validSteps (stepPattern)]
;  [-colorDisplayPattern (colorPattern)] [-validFinSnapBottomPattern ( SnapPattern )] [-validBoundarySnapBottomPattern ( SnapPattern )]
;  wideTrackLayer | (wideTrackLayer wideTrackPurpose ) 
;  ( boundaryLayer | (boundaryLayer bounaryPurpose )  extension|(extension upperExtension) minNumTrack )
;  ( deviceLayer | (deviceLayer devicePurpose )  extension minNumTrack ) [-comment ["rule_id"] "description"]) 
;) ;wideAlignments

;pinTextLayers(
;( (shape lpp) (text lpp) (pin lpp))
;) ;pinTextLayers

;voltageTextLayers(
;( (object LPP) (minVoltage LPP) (maxVoltage LPP) )
;) ;voltageTextLayers

;techLayerAlias(
;( (source lpp) (alias lpp) )
;) ;techLayerAlias

;) ;layerRules

;viaDefs(
;standardViaDefs(
;(viaDefName  layer1  layer2  (cutLayer cutWidth cutHeight [resistancePerCut])
;(cutRows   cutCol  (cutSpacing))
;(layer1Enc) (layer2Enc) (layer1Offset)  (layer2Offset)  (origOffset)
;[implant1   (implant1Enc)  [implant2  (implant2Enc) [wellsublayer]]])
;( -------------------------------------------------------------------------- )
;) ;standardViaDefs

;standardViaVariants(
;(viaVariantName  standardViadefName [-cutLayer <string>] [-cutWidth <float>] [-cutHeight <float>]
;[-cutRows <int>] [-cutColumns <int>] [-cutSpacing (<float> <float>)]
;[-layer1Enc (<float> <float>)] [-layer2Enc (<float> <float>)] 
;[-layer1Offset (<float> <float>)] [-layer2Offset (<float> <float>)] [-originOffset (<float> <float>)]
;[-implant1Enc (<float> <float>)] [-implant2Enc (<float> <float>)] ) 
;( -------------------------------------------------------------------------- )
;) ;standardViaVariants 

;customViaDefs(
;( viaDefName libName cellName viewName layer1 layer2 resistancePerCut)
;(    ----------    -------     --------     -------       ------ ------     ---------------- )
;) ;customViaDefs

;customViaVariants(
;( viaVariantName customViaDefName ( (param value)...) )
;) ;customViaVariants

;bridgeVias(
;( viaDefName|viaVariantName -legWidth <float> -legPitch <float> -legDirection <vertical|horizontal> 
; -bridgeWidth <float|rangeValue> [-bridgeWidthParamName <string>] [-secondLegWidth <float>] 
; [-bridgePitch <float>] [-bridgePitchParamName <string>] [-cutSpacing (<float> < float>)] 
; [-cutRowsParamName <string>] [-cutColumnsParamName <string>] [-comment ["rule_id"] "string"] )
;) ;bridgeVias

;) ;viaDefs

;siteDefs(
;scalarSiteDefs(
;( siteDefName    siteDefType    width     height    symInX    symInY    symInR90 )
;(   -----------         ---------          ----        -----       ------        -----          --------- )
;) ;scalarSiteDefs

;arraySiteDefs(
;( siteDefName    siteDefType   ( ( siteRefName  dx   dy    orientation ) ... )   [symInX]   [symInY]  [symInR90] )
;(   -----------        -----------          -------------     --    --      ----------              -------        --------      ----------   )
;) ;arraySiteDefs

;) ;siteDefs

;constraintGroups (
;( groupName       [-operator op][-lppSpec (lp [-involvedObjects any|all][-pointTouchAsInteract true|false])][-alternate true|false][-override true|false] //default operator value is precedence, default override value is false;
;( constraintName [layers/lpps]   contraintValue [params] [-isHard true|false] [-comment] )
;( constraintGroup referenceGroupName);
;-------------------------------------------------------- )
;) ;constraintGroups

