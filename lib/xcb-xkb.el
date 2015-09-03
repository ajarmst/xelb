;;; -*- lexical-binding: t -*-
;; This file was generated from `xkb.xml' by `el_client.el'.

(require 'xcb-types)

(defconst xcb:xkb:-extension-xname "XKEYBOARD")
(defconst xcb:xkb:-extension-name "xkb")
(defconst xcb:xkb:-major-version 1)
(defconst xcb:xkb:-minor-version 0)

(require 'xcb-xproto)

(defconst xcb:xkb:Const:MaxLegalKeyCode 255)
(defconst xcb:xkb:Const:PerKeyBitArraySize 32)
(defconst xcb:xkb:Const:KeyNameLength 4)

(defconst xcb:xkb:EventType:NewKeyboardNotify 1)
(defconst xcb:xkb:EventType:MapNotify 2)
(defconst xcb:xkb:EventType:StateNotify 4)
(defconst xcb:xkb:EventType:ControlsNotify 8)
(defconst xcb:xkb:EventType:IndicatorStateNotify 16)
(defconst xcb:xkb:EventType:IndicatorMapNotify 32)
(defconst xcb:xkb:EventType:NamesNotify 64)
(defconst xcb:xkb:EventType:CompatMapNotify 128)
(defconst xcb:xkb:EventType:BellNotify 256)
(defconst xcb:xkb:EventType:ActionMessage 512)
(defconst xcb:xkb:EventType:AccessXNotify 1024)
(defconst xcb:xkb:EventType:ExtensionDeviceNotify 2048)

(defconst xcb:xkb:NKNDetail:Keycodes 1)
(defconst xcb:xkb:NKNDetail:Geometry 2)
(defconst xcb:xkb:NKNDetail:DeviceID 4)

(defconst xcb:xkb:AXNDetail:SKPress 1)
(defconst xcb:xkb:AXNDetail:SKAccept 2)
(defconst xcb:xkb:AXNDetail:SKReject 4)
(defconst xcb:xkb:AXNDetail:SKRelease 8)
(defconst xcb:xkb:AXNDetail:BKAccept 16)
(defconst xcb:xkb:AXNDetail:BKReject 32)
(defconst xcb:xkb:AXNDetail:AXKWarning 64)

(defconst xcb:xkb:MapPart:KeyTypes 1)
(defconst xcb:xkb:MapPart:KeySyms 2)
(defconst xcb:xkb:MapPart:ModifierMap 4)
(defconst xcb:xkb:MapPart:ExplicitComponents 8)
(defconst xcb:xkb:MapPart:KeyActions 16)
(defconst xcb:xkb:MapPart:KeyBehaviors 32)
(defconst xcb:xkb:MapPart:VirtualMods 64)
(defconst xcb:xkb:MapPart:VirtualModMap 128)

(defconst xcb:xkb:SetMapFlags:ResizeTypes 1)
(defconst xcb:xkb:SetMapFlags:RecomputeActions 2)

(defconst xcb:xkb:StatePart:ModifierState 1)
(defconst xcb:xkb:StatePart:ModifierBase 2)
(defconst xcb:xkb:StatePart:ModifierLatch 4)
(defconst xcb:xkb:StatePart:ModifierLock 8)
(defconst xcb:xkb:StatePart:GroupState 16)
(defconst xcb:xkb:StatePart:GroupBase 32)
(defconst xcb:xkb:StatePart:GroupLatch 64)
(defconst xcb:xkb:StatePart:GroupLock 128)
(defconst xcb:xkb:StatePart:CompatState 256)
(defconst xcb:xkb:StatePart:GrabMods 512)
(defconst xcb:xkb:StatePart:CompatGrabMods 1024)
(defconst xcb:xkb:StatePart:LookupMods 2048)
(defconst xcb:xkb:StatePart:CompatLookupMods 4096)
(defconst xcb:xkb:StatePart:PointerButtons 8192)

(defconst xcb:xkb:BoolCtrl:RepeatKeys 1)
(defconst xcb:xkb:BoolCtrl:SlowKeys 2)
(defconst xcb:xkb:BoolCtrl:BounceKeys 4)
(defconst xcb:xkb:BoolCtrl:StickyKeys 8)
(defconst xcb:xkb:BoolCtrl:MouseKeys 16)
(defconst xcb:xkb:BoolCtrl:MouseKeysAccel 32)
(defconst xcb:xkb:BoolCtrl:AccessXKeys 64)
(defconst xcb:xkb:BoolCtrl:AccessXTimeoutMask 128)
(defconst xcb:xkb:BoolCtrl:AccessXFeedbackMask 256)
(defconst xcb:xkb:BoolCtrl:AudibleBellMask 512)
(defconst xcb:xkb:BoolCtrl:Overlay1Mask 1024)
(defconst xcb:xkb:BoolCtrl:Overlay2Mask 2048)
(defconst xcb:xkb:BoolCtrl:IgnoreGroupLockMask 4096)

(defconst xcb:xkb:Control:GroupsWrap 134217728)
(defconst xcb:xkb:Control:InternalMods 268435456)
(defconst xcb:xkb:Control:IgnoreLockMods 536870912)
(defconst xcb:xkb:Control:PerKeyRepeat 1073741824)
(defconst xcb:xkb:Control:ControlsEnabled 2147483648)

(defconst xcb:xkb:AXOption:SKPressFB 1)
(defconst xcb:xkb:AXOption:SKAcceptFB 2)
(defconst xcb:xkb:AXOption:FeatureFB 4)
(defconst xcb:xkb:AXOption:SlowWarnFB 8)
(defconst xcb:xkb:AXOption:IndicatorFB 16)
(defconst xcb:xkb:AXOption:StickyKeysFB 32)
(defconst xcb:xkb:AXOption:TwoKeys 64)
(defconst xcb:xkb:AXOption:LatchToLock 128)
(defconst xcb:xkb:AXOption:SKReleaseFB 256)
(defconst xcb:xkb:AXOption:SKRejectFB 512)
(defconst xcb:xkb:AXOption:BKRejectFB 1024)
(defconst xcb:xkb:AXOption:DumbBell 2048)

(xcb:deftypealias 'xcb:xkb:DeviceSpec 'xcb:CARD16)

(defconst xcb:xkb:LedClassResult:KbdFeedbackClass 0)
(defconst xcb:xkb:LedClassResult:LedFeedbackClass 4)

(defconst xcb:xkb:LedClass:KbdFeedbackClass 0)
(defconst xcb:xkb:LedClass:LedFeedbackClass 4)
(defconst xcb:xkb:LedClass:DfltXIClass 768)
(defconst xcb:xkb:LedClass:AllXIClasses 1280)

(xcb:deftypealias 'xcb:xkb:LedClassSpec 'xcb:CARD16)

(defconst xcb:xkb:BellClassResult:KbdFeedbackClass 0)
(defconst xcb:xkb:BellClassResult:BellFeedbackClass 5)

(defconst xcb:xkb:BellClass:KbdFeedbackClass 0)
(defconst xcb:xkb:BellClass:BellFeedbackClass 5)
(defconst xcb:xkb:BellClass:DfltXIClass 768)

(xcb:deftypealias 'xcb:xkb:BellClassSpec 'xcb:CARD16)

(defconst xcb:xkb:ID:UseCoreKbd 256)
(defconst xcb:xkb:ID:UseCorePtr 512)
(defconst xcb:xkb:ID:DfltXIClass 768)
(defconst xcb:xkb:ID:DfltXIId 1024)
(defconst xcb:xkb:ID:AllXIClass 1280)
(defconst xcb:xkb:ID:AllXIId 1536)
(defconst xcb:xkb:ID:XINone 65280)

(xcb:deftypealias 'xcb:xkb:IDSpec 'xcb:CARD16)

(defconst xcb:xkb:Group:1 0)
(defconst xcb:xkb:Group:2 1)
(defconst xcb:xkb:Group:3 2)
(defconst xcb:xkb:Group:4 3)

(defconst xcb:xkb:Groups:Any 254)
(defconst xcb:xkb:Groups:All 255)

(defconst xcb:xkb:SetOfGroup:Group1 1)
(defconst xcb:xkb:SetOfGroup:Group2 2)
(defconst xcb:xkb:SetOfGroup:Group3 4)
(defconst xcb:xkb:SetOfGroup:Group4 8)

(defconst xcb:xkb:SetOfGroups:Any 128)

(defconst xcb:xkb:GroupsWrap:WrapIntoRange 0)
(defconst xcb:xkb:GroupsWrap:ClampIntoRange 64)
(defconst xcb:xkb:GroupsWrap:RedirectIntoRange 128)

(defconst xcb:xkb:VModsHigh:15 128)
(defconst xcb:xkb:VModsHigh:14 64)
(defconst xcb:xkb:VModsHigh:13 32)
(defconst xcb:xkb:VModsHigh:12 16)
(defconst xcb:xkb:VModsHigh:11 8)
(defconst xcb:xkb:VModsHigh:10 4)
(defconst xcb:xkb:VModsHigh:9 2)
(defconst xcb:xkb:VModsHigh:8 1)

(defconst xcb:xkb:VModsLow:7 128)
(defconst xcb:xkb:VModsLow:6 64)
(defconst xcb:xkb:VModsLow:5 32)
(defconst xcb:xkb:VModsLow:4 16)
(defconst xcb:xkb:VModsLow:3 8)
(defconst xcb:xkb:VModsLow:2 4)
(defconst xcb:xkb:VModsLow:1 2)
(defconst xcb:xkb:VModsLow:0 1)

(defconst xcb:xkb:VMod:15 32768)
(defconst xcb:xkb:VMod:14 16384)
(defconst xcb:xkb:VMod:13 8192)
(defconst xcb:xkb:VMod:12 4096)
(defconst xcb:xkb:VMod:11 2048)
(defconst xcb:xkb:VMod:10 1024)
(defconst xcb:xkb:VMod:9 512)
(defconst xcb:xkb:VMod:8 256)
(defconst xcb:xkb:VMod:7 128)
(defconst xcb:xkb:VMod:6 64)
(defconst xcb:xkb:VMod:5 32)
(defconst xcb:xkb:VMod:4 16)
(defconst xcb:xkb:VMod:3 8)
(defconst xcb:xkb:VMod:2 4)
(defconst xcb:xkb:VMod:1 2)
(defconst xcb:xkb:VMod:0 1)

(defconst xcb:xkb:Explicit:VModMap 128)
(defconst xcb:xkb:Explicit:Behavior 64)
(defconst xcb:xkb:Explicit:AutoRepeat 32)
(defconst xcb:xkb:Explicit:Interpret 16)
(defconst xcb:xkb:Explicit:KeyType4 8)
(defconst xcb:xkb:Explicit:KeyType3 4)
(defconst xcb:xkb:Explicit:KeyType2 2)
(defconst xcb:xkb:Explicit:KeyType1 1)

(defconst xcb:xkb:SymInterpretMatch:NoneOf 0)
(defconst xcb:xkb:SymInterpretMatch:AnyOfOrNone 1)
(defconst xcb:xkb:SymInterpretMatch:AnyOf 2)
(defconst xcb:xkb:SymInterpretMatch:AllOf 3)
(defconst xcb:xkb:SymInterpretMatch:Exactly 4)

(defconst xcb:xkb:SymInterpMatch:LevelOneOnly 128)
(defconst xcb:xkb:SymInterpMatch:OpMask 127)

(defconst xcb:xkb:IMFlag:NoExplicit 128)
(defconst xcb:xkb:IMFlag:NoAutomatic 64)
(defconst xcb:xkb:IMFlag:LEDDrivesKB 32)

(defconst xcb:xkb:IMModsWhich:UseCompat 16)
(defconst xcb:xkb:IMModsWhich:UseEffective 8)
(defconst xcb:xkb:IMModsWhich:UseLocked 4)
(defconst xcb:xkb:IMModsWhich:UseLatched 2)
(defconst xcb:xkb:IMModsWhich:UseBase 1)

(defconst xcb:xkb:IMGroupsWhich:UseCompat 16)
(defconst xcb:xkb:IMGroupsWhich:UseEffective 8)
(defconst xcb:xkb:IMGroupsWhich:UseLocked 4)
(defconst xcb:xkb:IMGroupsWhich:UseLatched 2)
(defconst xcb:xkb:IMGroupsWhich:UseBase 1)

(defclass xcb:xkb:IndicatorMap
  (xcb:-struct)
  ((flags :initarg :flags :type xcb:CARD8)
   (whichGroups :initarg :whichGroups :type xcb:CARD8)
   (groups :initarg :groups :type xcb:CARD8)
   (whichMods :initarg :whichMods :type xcb:CARD8)
   (mods :initarg :mods :type xcb:CARD8)
   (realMods :initarg :realMods :type xcb:CARD8)
   (vmods :initarg :vmods :type xcb:CARD16)
   (ctrls :initarg :ctrls :type xcb:CARD32)))

(defconst xcb:xkb:CMDetail:SymInterp 1)
(defconst xcb:xkb:CMDetail:GroupCompat 2)

(defconst xcb:xkb:NameDetail:Keycodes 1)
(defconst xcb:xkb:NameDetail:Geometry 2)
(defconst xcb:xkb:NameDetail:Symbols 4)
(defconst xcb:xkb:NameDetail:PhysSymbols 8)
(defconst xcb:xkb:NameDetail:Types 16)
(defconst xcb:xkb:NameDetail:Compat 32)
(defconst xcb:xkb:NameDetail:KeyTypeNames 64)
(defconst xcb:xkb:NameDetail:KTLevelNames 128)
(defconst xcb:xkb:NameDetail:IndicatorNames 256)
(defconst xcb:xkb:NameDetail:KeyNames 512)
(defconst xcb:xkb:NameDetail:KeyAliases 1024)
(defconst xcb:xkb:NameDetail:VirtualModNames 2048)
(defconst xcb:xkb:NameDetail:GroupNames 4096)
(defconst xcb:xkb:NameDetail:RGNames 8192)

(defconst xcb:xkb:GBNDetail:Types 1)
(defconst xcb:xkb:GBNDetail:CompatMap 2)
(defconst xcb:xkb:GBNDetail:ClientSymbols 4)
(defconst xcb:xkb:GBNDetail:ServerSymbols 8)
(defconst xcb:xkb:GBNDetail:IndicatorMaps 16)
(defconst xcb:xkb:GBNDetail:KeyNames 32)
(defconst xcb:xkb:GBNDetail:Geometry 64)
(defconst xcb:xkb:GBNDetail:OtherNames 128)

(defconst xcb:xkb:XIFeature:Keyboards 1)
(defconst xcb:xkb:XIFeature:ButtonActions 2)
(defconst xcb:xkb:XIFeature:IndicatorNames 4)
(defconst xcb:xkb:XIFeature:IndicatorMaps 8)
(defconst xcb:xkb:XIFeature:IndicatorState 16)

(defconst xcb:xkb:PerClientFlag:DetectableAutoRepeat 1)
(defconst xcb:xkb:PerClientFlag:GrabsUseXKBState 2)
(defconst xcb:xkb:PerClientFlag:AutoResetControls 4)
(defconst xcb:xkb:PerClientFlag:LookupStateWhenGrabbed 8)
(defconst xcb:xkb:PerClientFlag:SendEventUsesXKBState 16)

(defclass xcb:xkb:ModDef
  (xcb:-struct)
  ((mask :initarg :mask :type xcb:CARD8)
   (realMods :initarg :realMods :type xcb:CARD8)
   (vmods :initarg :vmods :type xcb:CARD16)))

(defclass xcb:xkb:KeyName
  (xcb:-struct)
  ((name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:char size 4)
	  :type xcb:-list)))

(defclass xcb:xkb:KeyAlias
  (xcb:-struct)
  ((real :initarg :real :type xcb:-ignore)
   (real~ :initform
	  '(name real type xcb:char size 4)
	  :type xcb:-list)
   (alias :initarg :alias :type xcb:-ignore)
   (alias~ :initform
	   '(name alias type xcb:char size 4)
	   :type xcb:-list)))

(defclass xcb:xkb:CountedString16
  (xcb:-struct)
  ((length :initarg :length :type xcb:CARD16)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:char size
		   (xcb:-fieldref 'length))
	    :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (alignment-pad :initarg :alignment-pad :type xcb:-ignore)
   (alignment-pad~ :initform
		   '(name alignment-pad type xcb:void size
			  (-
			   (logand
			    (+
			     (xcb:-fieldref 'length)
			     5)
			    (lognot
			     (parse-expression
			      (node-subnode node))))
			   (+
			    (xcb:-fieldref 'length)
			    2)))
		   :type xcb:-list)))

(defclass xcb:xkb:KTMapEntry
  (xcb:-struct)
  ((active :initarg :active :type xcb:BOOL)
   (mods-mask :initarg :mods-mask :type xcb:CARD8)
   (level :initarg :level :type xcb:CARD8)
   (mods-mods :initarg :mods-mods :type xcb:CARD8)
   (mods-vmods :initarg :mods-vmods :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xkb:KeyType
  (xcb:-struct)
  ((mods-mask :initarg :mods-mask :type xcb:CARD8)
   (mods-mods :initarg :mods-mods :type xcb:CARD8)
   (mods-vmods :initarg :mods-vmods :type xcb:CARD16)
   (numLevels :initarg :numLevels :type xcb:CARD8)
   (nMapEntries :initarg :nMapEntries :type xcb:CARD8)
   (hasPreserve :initarg :hasPreserve :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)
   (map :initarg :map :type xcb:-ignore)
   (map~ :initform
	 '(name map type xcb:xkb:KTMapEntry size
		(xcb:-fieldref 'nMapEntries))
	 :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (preserve :initarg :preserve :type xcb:-ignore)
   (preserve~ :initform
	      '(name preserve type xcb:xkb:ModDef size
		     (*
		      (xcb:-fieldref 'hasPreserve)
		      (xcb:-fieldref 'nMapEntries)))
	      :type xcb:-list)))

(defclass xcb:xkb:KeySymMap
  (xcb:-struct)
  ((kt-index :initarg :kt-index :type xcb:-ignore)
   (kt-index~ :initform
	      '(name kt-index type xcb:CARD8 size 4)
	      :type xcb:-list)
   (groupInfo :initarg :groupInfo :type xcb:CARD8)
   (width :initarg :width :type xcb:CARD8)
   (nSyms :initarg :nSyms :type xcb:CARD16)
   (syms :initarg :syms :type xcb:-ignore)
   (syms~ :initform
	  '(name syms type xcb:KEYSYM size
		 (xcb:-fieldref 'nSyms))
	  :type xcb:-list)))

(defclass xcb:xkb:CommonBehavior
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (data :initarg :data :type xcb:CARD8)))

(defclass xcb:xkb:DefaultBehavior
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)))

(xcb:deftypealias 'xcb:xkb:LockBehavior 'xcb:xkb:DefaultBehavior)

(defclass xcb:xkb:RadioGroupBehavior
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (group :initarg :group :type xcb:CARD8)))

(defclass xcb:xkb:OverlayBehavior
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (key :initarg :key :type xcb:KEYCODE)))

(xcb:deftypealias 'xcb:xkb:PermamentLockBehavior 'xcb:xkb:LockBehavior)

(xcb:deftypealias 'xcb:xkb:PermamentRadioGroupBehavior 'xcb:xkb:RadioGroupBehavior)

(xcb:deftypealias 'xcb:xkb:PermamentOverlayBehavior 'xcb:xkb:OverlayBehavior)

(defclass xcb:xkb:Behavior
  (xcb:-union)
  ((common :initarg :common :type xcb:xkb:CommonBehavior)
   (default :initarg :default :type xcb:xkb:DefaultBehavior)
   (lock :initarg :lock :type xcb:xkb:LockBehavior)
   (radioGroup :initarg :radioGroup :type xcb:xkb:RadioGroupBehavior)
   (overlay1 :initarg :overlay1 :type xcb:xkb:OverlayBehavior)
   (overlay2 :initarg :overlay2 :type xcb:xkb:OverlayBehavior)
   (permamentLock :initarg :permamentLock :type xcb:xkb:PermamentLockBehavior)
   (permamentRadioGroup :initarg :permamentRadioGroup :type xcb:xkb:PermamentRadioGroupBehavior)
   (permamentOverlay1 :initarg :permamentOverlay1 :type xcb:xkb:PermamentOverlayBehavior)
   (permamentOverlay2 :initarg :permamentOverlay2 :type xcb:xkb:PermamentOverlayBehavior)
   (type :initarg :type :type xcb:CARD8)))

(defconst xcb:xkb:BehaviorType:Default 0)
(defconst xcb:xkb:BehaviorType:Lock 1)
(defconst xcb:xkb:BehaviorType:RadioGroup 2)
(defconst xcb:xkb:BehaviorType:Overlay1 3)
(defconst xcb:xkb:BehaviorType:Overlay2 4)
(defconst xcb:xkb:BehaviorType:PermamentLock 129)
(defconst xcb:xkb:BehaviorType:PermamentRadioGroup 130)
(defconst xcb:xkb:BehaviorType:PermamentOverlay1 131)
(defconst xcb:xkb:BehaviorType:PermamentOverlay2 132)

(defclass xcb:xkb:SetBehavior
  (xcb:-struct)
  ((keycode :initarg :keycode :type xcb:KEYCODE)
   (behavior :initarg :behavior :type xcb:xkb:Behavior)
   (pad~0 :initform 1 :type xcb:-pad)))

(defclass xcb:xkb:SetExplicit
  (xcb:-struct)
  ((keycode :initarg :keycode :type xcb:KEYCODE)
   (explicit :initarg :explicit :type xcb:CARD8)))

(defclass xcb:xkb:KeyModMap
  (xcb:-struct)
  ((keycode :initarg :keycode :type xcb:KEYCODE)
   (mods :initarg :mods :type xcb:CARD8)))

(defclass xcb:xkb:KeyVModMap
  (xcb:-struct)
  ((keycode :initarg :keycode :type xcb:KEYCODE)
   (pad~0 :initform 1 :type xcb:-pad)
   (vmods :initarg :vmods :type xcb:CARD16)))

(defclass xcb:xkb:KTSetMapEntry
  (xcb:-struct)
  ((level :initarg :level :type xcb:CARD8)
   (realMods :initarg :realMods :type xcb:CARD8)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)))

(defclass xcb:xkb:SetKeyType
  (xcb:-struct)
  ((mask :initarg :mask :type xcb:CARD8)
   (realMods :initarg :realMods :type xcb:CARD8)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (numLevels :initarg :numLevels :type xcb:CARD8)
   (nMapEntries :initarg :nMapEntries :type xcb:CARD8)
   (preserve :initarg :preserve :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)
   (entries :initarg :entries :type xcb:-ignore)
   (entries~ :initform
	     '(name entries type xcb:xkb:KTSetMapEntry size
		    (xcb:-fieldref 'nMapEntries))
	     :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (preserve-entries :initarg :preserve-entries :type xcb:-ignore)
   (preserve-entries~ :initform
		      '(name preserve-entries type xcb:xkb:KTSetMapEntry size
			     (*
			      (xcb:-fieldref 'preserve)
			      (xcb:-fieldref 'nMapEntries)))
		      :type xcb:-list)))

(xcb:deftypealias 'xcb:xkb:STRING8 'xcb:char)

(defclass xcb:xkb:Outline
  (xcb:-struct)
  ((nPoints :initarg :nPoints :type xcb:CARD8)
   (cornerRadius :initarg :cornerRadius :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (points :initarg :points :type xcb:-ignore)
   (points~ :initform
	    '(name points type xcb:POINT size
		   (xcb:-fieldref 'nPoints))
	    :type xcb:-list)))

(defclass xcb:xkb:Shape
  (xcb:-struct)
  ((name :initarg :name :type xcb:ATOM)
   (nOutlines :initarg :nOutlines :type xcb:CARD8)
   (primaryNdx :initarg :primaryNdx :type xcb:CARD8)
   (approxNdx :initarg :approxNdx :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (outlines :initarg :outlines :type xcb:-ignore)
   (outlines~ :initform
	      '(name outlines type xcb:xkb:Outline size
		     (xcb:-fieldref 'nOutlines))
	      :type xcb:-list)))

(defclass xcb:xkb:Key
  (xcb:-struct)
  ((name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:xkb:STRING8 size 4)
	  :type xcb:-list)
   (gap :initarg :gap :type xcb:INT16)
   (shapeNdx :initarg :shapeNdx :type xcb:CARD8)
   (colorNdx :initarg :colorNdx :type xcb:CARD8)))

(defclass xcb:xkb:OverlayKey
  (xcb:-struct)
  ((over :initarg :over :type xcb:-ignore)
   (over~ :initform
	  '(name over type xcb:xkb:STRING8 size 4)
	  :type xcb:-list)
   (under :initarg :under :type xcb:-ignore)
   (under~ :initform
	   '(name under type xcb:xkb:STRING8 size 4)
	   :type xcb:-list)))

(defclass xcb:xkb:OverlayRow
  (xcb:-struct)
  ((rowUnder :initarg :rowUnder :type xcb:CARD8)
   (nKeys :initarg :nKeys :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:xkb:OverlayKey size
		 (xcb:-fieldref 'nKeys))
	  :type xcb:-list)))

(defclass xcb:xkb:Overlay
  (xcb:-struct)
  ((name :initarg :name :type xcb:ATOM)
   (nRows :initarg :nRows :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (rows :initarg :rows :type xcb:-ignore)
   (rows~ :initform
	  '(name rows type xcb:xkb:OverlayRow size
		 (xcb:-fieldref 'nRows))
	  :type xcb:-list)))

(defclass xcb:xkb:Row
  (xcb:-struct)
  ((top :initarg :top :type xcb:INT16)
   (left :initarg :left :type xcb:INT16)
   (nKeys :initarg :nKeys :type xcb:CARD8)
   (vertical :initarg :vertical :type xcb:BOOL)
   (pad~0 :initform 2 :type xcb:-pad)
   (keys :initarg :keys :type xcb:-ignore)
   (keys~ :initform
	  '(name keys type xcb:xkb:Key size
		 (xcb:-fieldref 'nKeys))
	  :type xcb:-list)))

(defconst xcb:xkb:DoodadType:Outline 1)
(defconst xcb:xkb:DoodadType:Solid 2)
(defconst xcb:xkb:DoodadType:Text 3)
(defconst xcb:xkb:DoodadType:Indicator 4)
(defconst xcb:xkb:DoodadType:Logo 5)

(defclass xcb:xkb:Listing
  (xcb:-struct)
  ((flags :initarg :flags :type xcb:CARD16)
   (length :initarg :length :type xcb:CARD16)
   (string :initarg :string :type xcb:-ignore)
   (string~ :initform
	    '(name string type xcb:xkb:STRING8 size
		   (xcb:-fieldref 'length))
	    :type xcb:-list)))

(defclass xcb:xkb:DeviceLedInfo
  (xcb:-struct)
  ((ledClass :initarg :ledClass :type xcb:xkb:LedClassSpec)
   (ledID :initarg :ledID :type xcb:xkb:IDSpec)
   (namesPresent :initarg :namesPresent :type xcb:CARD32)
   (mapsPresent :initarg :mapsPresent :type xcb:CARD32)
   (physIndicators :initarg :physIndicators :type xcb:CARD32)
   (state :initarg :state :type xcb:CARD32)
   (names :initarg :names :type xcb:-ignore)
   (names~ :initform
	   '(name names type xcb:ATOM size
		  (xcb:-popcount
		   (xcb:-fieldref 'namesPresent)))
	   :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (maps :initarg :maps :type xcb:-ignore)
   (maps~ :initform
	  '(name maps type xcb:xkb:IndicatorMap size
		 (xcb:-popcount
		  (xcb:-fieldref 'mapsPresent)))
	  :type xcb:-list)))

(defconst xcb:xkb:Error:BadDevice 255)
(defconst xcb:xkb:Error:BadClass 254)
(defconst xcb:xkb:Error:BadId 253)

(defclass xcb:xkb:Keyboard
  (xcb:-error)
  ((value :initarg :value :type xcb:CARD32)
   (minorOpcode :initarg :minorOpcode :type xcb:CARD16)
   (majorOpcode :initarg :majorOpcode :type xcb:CARD8)
   (pad~0 :initform 21 :type xcb:-pad)))

(defconst xcb:xkb:SA:ClearLocks 1)
(defconst xcb:xkb:SA:LatchToLock 2)
(defconst xcb:xkb:SA:UseModMapMods 4)
(defconst xcb:xkb:SA:GroupAbsolute 4)

(defconst xcb:xkb:SAType:NoAction 0)
(defconst xcb:xkb:SAType:SetMods 1)
(defconst xcb:xkb:SAType:LatchMods 2)
(defconst xcb:xkb:SAType:LockMods 3)
(defconst xcb:xkb:SAType:SetGroup 4)
(defconst xcb:xkb:SAType:LatchGroup 5)
(defconst xcb:xkb:SAType:LockGroup 6)
(defconst xcb:xkb:SAType:MovePtr 7)
(defconst xcb:xkb:SAType:PtrBtn 8)
(defconst xcb:xkb:SAType:LockPtrBtn 9)
(defconst xcb:xkb:SAType:SetPtrDflt 10)
(defconst xcb:xkb:SAType:ISOLock 11)
(defconst xcb:xkb:SAType:Terminate 12)
(defconst xcb:xkb:SAType:SwitchScreen 13)
(defconst xcb:xkb:SAType:SetControls 14)
(defconst xcb:xkb:SAType:LockControls 15)
(defconst xcb:xkb:SAType:ActionMessage 16)
(defconst xcb:xkb:SAType:RedirectKey 17)
(defconst xcb:xkb:SAType:DeviceBtn 18)
(defconst xcb:xkb:SAType:LockDeviceBtn 19)
(defconst xcb:xkb:SAType:DeviceValuator 20)

(defclass xcb:xkb:SANoAction
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (pad~0 :initform 7 :type xcb:-pad)))

(defclass xcb:xkb:SASetMods
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (mask :initarg :mask :type xcb:CARD8)
   (realMods :initarg :realMods :type xcb:CARD8)
   (vmodsHigh :initarg :vmodsHigh :type xcb:CARD8)
   (vmodsLow :initarg :vmodsLow :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))

(xcb:deftypealias 'xcb:xkb:SALatchMods 'xcb:xkb:SASetMods)

(xcb:deftypealias 'xcb:xkb:SALockMods 'xcb:xkb:SASetMods)

(defclass xcb:xkb:SASetGroup
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (group :initarg :group :type xcb:INT8)
   (pad~0 :initform 5 :type xcb:-pad)))

(xcb:deftypealias 'xcb:xkb:SALatchGroup 'xcb:xkb:SASetGroup)

(xcb:deftypealias 'xcb:xkb:SALockGroup 'xcb:xkb:SASetGroup)

(defconst xcb:xkb:SAMovePtrFlag:NoAcceleration 1)
(defconst xcb:xkb:SAMovePtrFlag:MoveAbsoluteX 2)
(defconst xcb:xkb:SAMovePtrFlag:MoveAbsoluteY 4)

(defclass xcb:xkb:SAMovePtr
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (xHigh :initarg :xHigh :type xcb:INT8)
   (xLow :initarg :xLow :type xcb:CARD8)
   (yHigh :initarg :yHigh :type xcb:INT8)
   (yLow :initarg :yLow :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xkb:SAPtrBtn
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (count :initarg :count :type xcb:CARD8)
   (button :initarg :button :type xcb:CARD8)
   (pad~0 :initform 4 :type xcb:-pad)))

(defclass xcb:xkb:SALockPtrBtn
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (button :initarg :button :type xcb:CARD8)
   (pad~1 :initform 4 :type xcb:-pad)))

(defconst xcb:xkb:SASetPtrDfltFlag:DfltBtnAbsolute 4)
(defconst xcb:xkb:SASetPtrDfltFlag:AffectDfltButton 1)

(defclass xcb:xkb:SASetPtrDflt
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (affect :initarg :affect :type xcb:CARD8)
   (value :initarg :value :type xcb:INT8)
   (pad~0 :initform 4 :type xcb:-pad)))

(defconst xcb:xkb:SAIsoLockFlag:NoLock 1)
(defconst xcb:xkb:SAIsoLockFlag:NoUnlock 2)
(defconst xcb:xkb:SAIsoLockFlag:UseModMapMods 4)
(defconst xcb:xkb:SAIsoLockFlag:GroupAbsolute 4)
(defconst xcb:xkb:SAIsoLockFlag:ISODfltIsGroup 8)

(defconst xcb:xkb:SAIsoLockNoAffect:Ctrls 8)
(defconst xcb:xkb:SAIsoLockNoAffect:Ptr 16)
(defconst xcb:xkb:SAIsoLockNoAffect:Group 32)
(defconst xcb:xkb:SAIsoLockNoAffect:Mods 64)

(defclass xcb:xkb:SAIsoLock
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (mask :initarg :mask :type xcb:CARD8)
   (realMods :initarg :realMods :type xcb:CARD8)
   (group :initarg :group :type xcb:INT8)
   (affect :initarg :affect :type xcb:CARD8)
   (vmodsHigh :initarg :vmodsHigh :type xcb:CARD8)
   (vmodsLow :initarg :vmodsLow :type xcb:CARD8)))

(defclass xcb:xkb:SATerminate
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (pad~0 :initform 7 :type xcb:-pad)))

(defconst xcb:xkb:SwitchScreenFlag:Application 1)
(defconst xcb:xkb:SwitchScreenFlag:Absolute 4)

(defclass xcb:xkb:SASwitchScreen
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (newScreen :initarg :newScreen :type xcb:INT8)
   (pad~0 :initform 5 :type xcb:-pad)))

(defconst xcb:xkb:BoolCtrlsHigh:AccessXFeedback 1)
(defconst xcb:xkb:BoolCtrlsHigh:AudibleBell 2)
(defconst xcb:xkb:BoolCtrlsHigh:Overlay1 4)
(defconst xcb:xkb:BoolCtrlsHigh:Overlay2 8)
(defconst xcb:xkb:BoolCtrlsHigh:IgnoreGroupLock 16)

(defconst xcb:xkb:BoolCtrlsLow:RepeatKeys 1)
(defconst xcb:xkb:BoolCtrlsLow:SlowKeys 2)
(defconst xcb:xkb:BoolCtrlsLow:BounceKeys 4)
(defconst xcb:xkb:BoolCtrlsLow:StickyKeys 8)
(defconst xcb:xkb:BoolCtrlsLow:MouseKeys 16)
(defconst xcb:xkb:BoolCtrlsLow:MouseKeysAccel 32)
(defconst xcb:xkb:BoolCtrlsLow:AccessXKeys 64)
(defconst xcb:xkb:BoolCtrlsLow:AccessXTimeout 128)

(defclass xcb:xkb:SASetControls
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (boolCtrlsHigh :initarg :boolCtrlsHigh :type xcb:CARD8)
   (boolCtrlsLow :initarg :boolCtrlsLow :type xcb:CARD8)
   (pad~1 :initform 2 :type xcb:-pad)))

(xcb:deftypealias 'xcb:xkb:SALockControls 'xcb:xkb:SASetControls)

(defconst xcb:xkb:ActionMessageFlag:OnPress 1)
(defconst xcb:xkb:ActionMessageFlag:OnRelease 2)
(defconst xcb:xkb:ActionMessageFlag:GenKeyEvent 4)

(defclass xcb:xkb:SAActionMessage
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (message :initarg :message :type xcb:-ignore)
   (message~ :initform
	     '(name message type xcb:CARD8 size 6)
	     :type xcb:-list)))

(defclass xcb:xkb:SARedirectKey
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (newkey :initarg :newkey :type xcb:KEYCODE)
   (mask :initarg :mask :type xcb:CARD8)
   (realModifiers :initarg :realModifiers :type xcb:CARD8)
   (vmodsMaskHigh :initarg :vmodsMaskHigh :type xcb:CARD8)
   (vmodsMaskLow :initarg :vmodsMaskLow :type xcb:CARD8)
   (vmodsHigh :initarg :vmodsHigh :type xcb:CARD8)
   (vmodsLow :initarg :vmodsLow :type xcb:CARD8)))

(defclass xcb:xkb:SADeviceBtn
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (count :initarg :count :type xcb:CARD8)
   (button :initarg :button :type xcb:CARD8)
   (device :initarg :device :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)))

(defconst xcb:xkb:LockDeviceFlags:NoLock 1)
(defconst xcb:xkb:LockDeviceFlags:NoUnlock 2)

(defclass xcb:xkb:SALockDeviceBtn
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (button :initarg :button :type xcb:CARD8)
   (device :initarg :device :type xcb:CARD8)
   (pad~1 :initform 3 :type xcb:-pad)))

(defconst xcb:xkb:SAValWhat:IgnoreVal 0)
(defconst xcb:xkb:SAValWhat:SetValMin 1)
(defconst xcb:xkb:SAValWhat:SetValCenter 2)
(defconst xcb:xkb:SAValWhat:SetValMax 3)
(defconst xcb:xkb:SAValWhat:SetValRelative 4)
(defconst xcb:xkb:SAValWhat:SetValAbsolute 5)

(defclass xcb:xkb:SADeviceValuator
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (device :initarg :device :type xcb:CARD8)
   (val1what :initarg :val1what :type xcb:CARD8)
   (val1index :initarg :val1index :type xcb:CARD8)
   (val1value :initarg :val1value :type xcb:CARD8)
   (val2what :initarg :val2what :type xcb:CARD8)
   (val2index :initarg :val2index :type xcb:CARD8)
   (val2value :initarg :val2value :type xcb:CARD8)))

(defclass xcb:xkb:SIAction
  (xcb:-struct)
  ((type :initarg :type :type xcb:CARD8)
   (data :initarg :data :type xcb:-ignore)
   (data~ :initform
	  '(name data type xcb:CARD8 size 7)
	  :type xcb:-list)))

(defclass xcb:xkb:SymInterpret
  (xcb:-struct)
  ((sym :initarg :sym :type xcb:KEYSYM)
   (mods :initarg :mods :type xcb:CARD8)
   (match :initarg :match :type xcb:CARD8)
   (virtualMod :initarg :virtualMod :type xcb:CARD8)
   (flags :initarg :flags :type xcb:CARD8)
   (action :initarg :action :type xcb:xkb:SIAction)))

(defclass xcb:xkb:Action
  (xcb:-union)
  ((noaction :initarg :noaction :type xcb:xkb:SANoAction)
   (setmods :initarg :setmods :type xcb:xkb:SASetMods)
   (latchmods :initarg :latchmods :type xcb:xkb:SALatchMods)
   (lockmods :initarg :lockmods :type xcb:xkb:SALockMods)
   (setgroup :initarg :setgroup :type xcb:xkb:SASetGroup)
   (latchgroup :initarg :latchgroup :type xcb:xkb:SALatchGroup)
   (lockgroup :initarg :lockgroup :type xcb:xkb:SALockGroup)
   (moveptr :initarg :moveptr :type xcb:xkb:SAMovePtr)
   (ptrbtn :initarg :ptrbtn :type xcb:xkb:SAPtrBtn)
   (lockptrbtn :initarg :lockptrbtn :type xcb:xkb:SALockPtrBtn)
   (setptrdflt :initarg :setptrdflt :type xcb:xkb:SASetPtrDflt)
   (isolock :initarg :isolock :type xcb:xkb:SAIsoLock)
   (terminate :initarg :terminate :type xcb:xkb:SATerminate)
   (switchscreen :initarg :switchscreen :type xcb:xkb:SASwitchScreen)
   (setcontrols :initarg :setcontrols :type xcb:xkb:SASetControls)
   (lockcontrols :initarg :lockcontrols :type xcb:xkb:SALockControls)
   (message :initarg :message :type xcb:xkb:SAActionMessage)
   (redirect :initarg :redirect :type xcb:xkb:SARedirectKey)
   (devbtn :initarg :devbtn :type xcb:xkb:SADeviceBtn)
   (lockdevbtn :initarg :lockdevbtn :type xcb:xkb:SALockDeviceBtn)
   (devval :initarg :devval :type xcb:xkb:SADeviceValuator)
   (type :initarg :type :type xcb:CARD8)))

(defclass xcb:xkb:UseExtension
  (xcb:-request)
  ((~opcode :initform 0 :type xcb:-u1)
   (wantedMajor :initarg :wantedMajor :type xcb:CARD16)
   (wantedMinor :initarg :wantedMinor :type xcb:CARD16)))
(defclass xcb:xkb:UseExtension~reply
  (xcb:-reply)
  ((supported :initarg :supported :type xcb:BOOL)
   (serverMajor :initarg :serverMajor :type xcb:CARD16)
   (serverMinor :initarg :serverMinor :type xcb:CARD16)
   (pad~0 :initform 20 :type xcb:-pad)))

(defclass xcb:xkb:SelectEvents
  (xcb:-request)
  ((~opcode :initform 1 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (affectWhich :initarg :affectWhich :type xcb:CARD16)
   (clear :initarg :clear :type xcb:CARD16)
   (selectAll :initarg :selectAll :type xcb:CARD16)
   (affectMap :initarg :affectMap :type xcb:CARD16)
   (map :initarg :map :type xcb:CARD16)
   (details :initform
	    '(expression
	      (logand
	       (xcb:-fieldref 'affectWhich)
	       (logand
		(lognot
		 (parse-expression
		  (node-subnode node)))
		(lognot
		 (parse-expression
		  (node-subnode node)))))
	      cases
	      ((xcb:xkb:EventType:NewKeyboardNotify affectNewKeyboard newKeyboardDetails)
	       (xcb:xkb:EventType:StateNotify affectState stateDetails)
	       (xcb:xkb:EventType:ControlsNotify affectCtrls ctrlDetails)
	       (xcb:xkb:EventType:IndicatorStateNotify affectIndicatorState indicatorStateDetails)
	       (xcb:xkb:EventType:IndicatorMapNotify affectIndicatorMap indicatorMapDetails)
	       (xcb:xkb:EventType:NamesNotify affectNames namesDetails)
	       (xcb:xkb:EventType:CompatMapNotify affectCompat compatDetails)
	       (xcb:xkb:EventType:BellNotify affectBell bellDetails)
	       (xcb:xkb:EventType:ActionMessage affectMsgDetails msgDetails)
	       (xcb:xkb:EventType:AccessXNotify affectAccessX accessXDetails)
	       (xcb:xkb:EventType:ExtensionDeviceNotify affectExtDev extdevDetails)))
	    :type xcb:-switch)
   (affectNewKeyboard :initarg :affectNewKeyboard :type xcb:CARD16)
   (newKeyboardDetails :initarg :newKeyboardDetails :type xcb:CARD16)
   (affectState :initarg :affectState :type xcb:CARD16)
   (stateDetails :initarg :stateDetails :type xcb:CARD16)
   (affectCtrls :initarg :affectCtrls :type xcb:CARD32)
   (ctrlDetails :initarg :ctrlDetails :type xcb:CARD32)
   (affectIndicatorState :initarg :affectIndicatorState :type xcb:CARD32)
   (indicatorStateDetails :initarg :indicatorStateDetails :type xcb:CARD32)
   (affectIndicatorMap :initarg :affectIndicatorMap :type xcb:CARD32)
   (indicatorMapDetails :initarg :indicatorMapDetails :type xcb:CARD32)
   (affectNames :initarg :affectNames :type xcb:CARD16)
   (namesDetails :initarg :namesDetails :type xcb:CARD16)
   (affectCompat :initarg :affectCompat :type xcb:CARD8)
   (compatDetails :initarg :compatDetails :type xcb:CARD8)
   (affectBell :initarg :affectBell :type xcb:CARD8)
   (bellDetails :initarg :bellDetails :type xcb:CARD8)
   (affectMsgDetails :initarg :affectMsgDetails :type xcb:CARD8)
   (msgDetails :initarg :msgDetails :type xcb:CARD8)
   (affectAccessX :initarg :affectAccessX :type xcb:CARD16)
   (accessXDetails :initarg :accessXDetails :type xcb:CARD16)
   (affectExtDev :initarg :affectExtDev :type xcb:CARD16)
   (extdevDetails :initarg :extdevDetails :type xcb:CARD16)))

(defclass xcb:xkb:Bell
  (xcb:-request)
  ((~opcode :initform 3 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (bellClass :initarg :bellClass :type xcb:xkb:BellClassSpec)
   (bellID :initarg :bellID :type xcb:xkb:IDSpec)
   (percent :initarg :percent :type xcb:INT8)
   (forceSound :initarg :forceSound :type xcb:BOOL)
   (eventOnly :initarg :eventOnly :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)
   (pitch :initarg :pitch :type xcb:INT16)
   (duration :initarg :duration :type xcb:INT16)
   (pad~1 :initform 2 :type xcb:-pad)
   (name :initarg :name :type xcb:ATOM)
   (window :initarg :window :type xcb:WINDOW)))

(defclass xcb:xkb:GetState
  (xcb:-request)
  ((~opcode :initform 4 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xkb:GetState~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (mods :initarg :mods :type xcb:CARD8)
   (baseMods :initarg :baseMods :type xcb:CARD8)
   (latchedMods :initarg :latchedMods :type xcb:CARD8)
   (lockedMods :initarg :lockedMods :type xcb:CARD8)
   (group :initarg :group :type xcb:CARD8)
   (lockedGroup :initarg :lockedGroup :type xcb:CARD8)
   (baseGroup :initarg :baseGroup :type xcb:INT16)
   (latchedGroup :initarg :latchedGroup :type xcb:INT16)
   (compatState :initarg :compatState :type xcb:CARD8)
   (grabMods :initarg :grabMods :type xcb:CARD8)
   (compatGrabMods :initarg :compatGrabMods :type xcb:CARD8)
   (lookupMods :initarg :lookupMods :type xcb:CARD8)
   (compatLookupMods :initarg :compatLookupMods :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (ptrBtnState :initarg :ptrBtnState :type xcb:CARD16)
   (pad~1 :initform 6 :type xcb:-pad)))

(defclass xcb:xkb:LatchLockState
  (xcb:-request)
  ((~opcode :initform 5 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (affectModLocks :initarg :affectModLocks :type xcb:CARD8)
   (modLocks :initarg :modLocks :type xcb:CARD8)
   (lockGroup :initarg :lockGroup :type xcb:BOOL)
   (groupLock :initarg :groupLock :type xcb:CARD8)
   (affectModLatches :initarg :affectModLatches :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (pad~1 :initform 1 :type xcb:-pad)
   (latchGroup :initarg :latchGroup :type xcb:BOOL)
   (groupLatch :initarg :groupLatch :type xcb:CARD16)))

(defclass xcb:xkb:GetControls
  (xcb:-request)
  ((~opcode :initform 6 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xkb:GetControls~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (mouseKeysDfltBtn :initarg :mouseKeysDfltBtn :type xcb:CARD8)
   (numGroups :initarg :numGroups :type xcb:CARD8)
   (groupsWrap :initarg :groupsWrap :type xcb:CARD8)
   (internalModsMask :initarg :internalModsMask :type xcb:CARD8)
   (ignoreLockModsMask :initarg :ignoreLockModsMask :type xcb:CARD8)
   (internalModsRealMods :initarg :internalModsRealMods :type xcb:CARD8)
   (ignoreLockModsRealMods :initarg :ignoreLockModsRealMods :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (internalModsVmods :initarg :internalModsVmods :type xcb:CARD16)
   (ignoreLockModsVmods :initarg :ignoreLockModsVmods :type xcb:CARD16)
   (repeatDelay :initarg :repeatDelay :type xcb:CARD16)
   (repeatInterval :initarg :repeatInterval :type xcb:CARD16)
   (slowKeysDelay :initarg :slowKeysDelay :type xcb:CARD16)
   (debounceDelay :initarg :debounceDelay :type xcb:CARD16)
   (mouseKeysDelay :initarg :mouseKeysDelay :type xcb:CARD16)
   (mouseKeysInterval :initarg :mouseKeysInterval :type xcb:CARD16)
   (mouseKeysTimeToMax :initarg :mouseKeysTimeToMax :type xcb:CARD16)
   (mouseKeysMaxSpeed :initarg :mouseKeysMaxSpeed :type xcb:CARD16)
   (mouseKeysCurve :initarg :mouseKeysCurve :type xcb:INT16)
   (accessXOption :initarg :accessXOption :type xcb:CARD16)
   (accessXTimeout :initarg :accessXTimeout :type xcb:CARD16)
   (accessXTimeoutOptionsMask :initarg :accessXTimeoutOptionsMask :type xcb:CARD16)
   (accessXTimeoutOptionsValues :initarg :accessXTimeoutOptionsValues :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (accessXTimeoutMask :initarg :accessXTimeoutMask :type xcb:CARD32)
   (accessXTimeoutValues :initarg :accessXTimeoutValues :type xcb:CARD32)
   (enabledControls :initarg :enabledControls :type xcb:CARD32)
   (perKeyRepeat :initarg :perKeyRepeat :type xcb:-ignore)
   (perKeyRepeat~ :initform
		  '(name perKeyRepeat type xcb:CARD8 size 32)
		  :type xcb:-list)))

(defclass xcb:xkb:SetControls
  (xcb:-request)
  ((~opcode :initform 7 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (affectInternalRealMods :initarg :affectInternalRealMods :type xcb:CARD8)
   (internalRealMods :initarg :internalRealMods :type xcb:CARD8)
   (affectIgnoreLockRealMods :initarg :affectIgnoreLockRealMods :type xcb:CARD8)
   (ignoreLockRealMods :initarg :ignoreLockRealMods :type xcb:CARD8)
   (affectInternalVirtualMods :initarg :affectInternalVirtualMods :type xcb:CARD16)
   (internalVirtualMods :initarg :internalVirtualMods :type xcb:CARD16)
   (affectIgnoreLockVirtualMods :initarg :affectIgnoreLockVirtualMods :type xcb:CARD16)
   (ignoreLockVirtualMods :initarg :ignoreLockVirtualMods :type xcb:CARD16)
   (mouseKeysDfltBtn :initarg :mouseKeysDfltBtn :type xcb:CARD8)
   (groupsWrap :initarg :groupsWrap :type xcb:CARD8)
   (accessXOptions :initarg :accessXOptions :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (affectEnabledControls :initarg :affectEnabledControls :type xcb:CARD32)
   (enabledControls :initarg :enabledControls :type xcb:CARD32)
   (changeControls :initarg :changeControls :type xcb:CARD32)
   (repeatDelay :initarg :repeatDelay :type xcb:CARD16)
   (repeatInterval :initarg :repeatInterval :type xcb:CARD16)
   (slowKeysDelay :initarg :slowKeysDelay :type xcb:CARD16)
   (debounceDelay :initarg :debounceDelay :type xcb:CARD16)
   (mouseKeysDelay :initarg :mouseKeysDelay :type xcb:CARD16)
   (mouseKeysInterval :initarg :mouseKeysInterval :type xcb:CARD16)
   (mouseKeysTimeToMax :initarg :mouseKeysTimeToMax :type xcb:CARD16)
   (mouseKeysMaxSpeed :initarg :mouseKeysMaxSpeed :type xcb:CARD16)
   (mouseKeysCurve :initarg :mouseKeysCurve :type xcb:INT16)
   (accessXTimeout :initarg :accessXTimeout :type xcb:CARD16)
   (accessXTimeoutMask :initarg :accessXTimeoutMask :type xcb:CARD32)
   (accessXTimeoutValues :initarg :accessXTimeoutValues :type xcb:CARD32)
   (accessXTimeoutOptionsMask :initarg :accessXTimeoutOptionsMask :type xcb:CARD16)
   (accessXTimeoutOptionsValues :initarg :accessXTimeoutOptionsValues :type xcb:CARD16)
   (perKeyRepeat :initarg :perKeyRepeat :type xcb:-ignore)
   (perKeyRepeat~ :initform
		  '(name perKeyRepeat type xcb:CARD8 size 32)
		  :type xcb:-list)))

(defclass xcb:xkb:GetMap
  (xcb:-request)
  ((~opcode :initform 8 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (full :initarg :full :type xcb:CARD16)
   (partial :initarg :partial :type xcb:CARD16)
   (firstType :initarg :firstType :type xcb:CARD8)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (firstKeySym :initarg :firstKeySym :type xcb:KEYCODE)
   (nKeySyms :initarg :nKeySyms :type xcb:CARD8)
   (firstKeyAction :initarg :firstKeyAction :type xcb:KEYCODE)
   (nKeyActions :initarg :nKeyActions :type xcb:CARD8)
   (firstKeyBehavior :initarg :firstKeyBehavior :type xcb:KEYCODE)
   (nKeyBehaviors :initarg :nKeyBehaviors :type xcb:CARD8)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (firstKeyExplicit :initarg :firstKeyExplicit :type xcb:KEYCODE)
   (nKeyExplicit :initarg :nKeyExplicit :type xcb:CARD8)
   (firstModMapKey :initarg :firstModMapKey :type xcb:KEYCODE)
   (nModMapKeys :initarg :nModMapKeys :type xcb:CARD8)
   (firstVModMapKey :initarg :firstVModMapKey :type xcb:KEYCODE)
   (nVModMapKeys :initarg :nVModMapKeys :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xkb:GetMap~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (minKeyCode :initarg :minKeyCode :type xcb:KEYCODE)
   (maxKeyCode :initarg :maxKeyCode :type xcb:KEYCODE)
   (present :initarg :present :type xcb:CARD16)
   (firstType :initarg :firstType :type xcb:CARD8)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (totalTypes :initarg :totalTypes :type xcb:CARD8)
   (firstKeySym :initarg :firstKeySym :type xcb:KEYCODE)
   (totalSyms :initarg :totalSyms :type xcb:CARD16)
   (nKeySyms :initarg :nKeySyms :type xcb:CARD8)
   (firstKeyAction :initarg :firstKeyAction :type xcb:KEYCODE)
   (totalActions :initarg :totalActions :type xcb:CARD16)
   (nKeyActions :initarg :nKeyActions :type xcb:CARD8)
   (firstKeyBehavior :initarg :firstKeyBehavior :type xcb:KEYCODE)
   (nKeyBehaviors :initarg :nKeyBehaviors :type xcb:CARD8)
   (totalKeyBehaviors :initarg :totalKeyBehaviors :type xcb:CARD8)
   (firstKeyExplicit :initarg :firstKeyExplicit :type xcb:KEYCODE)
   (nKeyExplicit :initarg :nKeyExplicit :type xcb:CARD8)
   (totalKeyExplicit :initarg :totalKeyExplicit :type xcb:CARD8)
   (firstModMapKey :initarg :firstModMapKey :type xcb:KEYCODE)
   (nModMapKeys :initarg :nModMapKeys :type xcb:CARD8)
   (totalModMapKeys :initarg :totalModMapKeys :type xcb:CARD8)
   (firstVModMapKey :initarg :firstVModMapKey :type xcb:KEYCODE)
   (nVModMapKeys :initarg :nVModMapKeys :type xcb:CARD8)
   (totalVModMapKeys :initarg :totalVModMapKeys :type xcb:CARD8)
   (pad~1 :initform 1 :type xcb:-pad)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (map :initform
	'(expression
	  (xcb:-fieldref 'present)
	  cases
	  ((xcb:xkb:MapPart:KeyTypes types-rtrn)
	   (xcb:xkb:MapPart:KeySyms syms-rtrn)
	   (xcb:xkb:MapPart:KeyActions acts-rtrn-count pad~2 acts-rtrn-acts)
	   (xcb:xkb:MapPart:KeyBehaviors behaviors-rtrn)
	   (xcb:xkb:MapPart:VirtualMods vmods-rtrn pad~3)
	   (xcb:xkb:MapPart:ExplicitComponents explicit-rtrn pad~4)
	   (xcb:xkb:MapPart:ModifierMap modmap-rtrn pad~5)
	   (xcb:xkb:MapPart:VirtualModMap vmodmap-rtrn)))
	:type xcb:-switch)
   (types-rtrn :initarg :types-rtrn :type xcb:-ignore)
   (types-rtrn~ :initform
		'(name types-rtrn type xcb:xkb:KeyType size
		       (xcb:-fieldref 'nTypes))
		:type xcb:-list)
   (syms-rtrn :initarg :syms-rtrn :type xcb:-ignore)
   (syms-rtrn~ :initform
	       '(name syms-rtrn type xcb:xkb:KeySymMap size
		      (xcb:-fieldref 'nKeySyms))
	       :type xcb:-list)
   (acts-rtrn-count :initarg :acts-rtrn-count :type xcb:-ignore)
   (acts-rtrn-count~ :initform
		     '(name acts-rtrn-count type xcb:CARD8 size
			    (xcb:-fieldref 'nKeyActions))
		     :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (acts-rtrn-acts :initarg :acts-rtrn-acts :type xcb:-ignore)
   (acts-rtrn-acts~ :initform
		    '(name acts-rtrn-acts type xcb:xkb:Action size
			   (xcb:-fieldref 'totalActions))
		    :type xcb:-list)
   (behaviors-rtrn :initarg :behaviors-rtrn :type xcb:-ignore)
   (behaviors-rtrn~ :initform
		    '(name behaviors-rtrn type xcb:xkb:SetBehavior size
			   (xcb:-fieldref 'totalKeyBehaviors))
		    :type xcb:-list)
   (vmods-rtrn :initarg :vmods-rtrn :type xcb:-ignore)
   (vmods-rtrn~ :initform
		'(name vmods-rtrn type xcb:CARD8 size
		       (xcb:-popcount
			(xcb:-fieldref 'virtualMods)))
		:type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (explicit-rtrn :initarg :explicit-rtrn :type xcb:-ignore)
   (explicit-rtrn~ :initform
		   '(name explicit-rtrn type xcb:xkb:SetExplicit size
			  (xcb:-fieldref 'totalKeyExplicit))
		   :type xcb:-list)
   (pad~4 :initform 4 :type xcb:-pad-align)
   (modmap-rtrn :initarg :modmap-rtrn :type xcb:-ignore)
   (modmap-rtrn~ :initform
		 '(name modmap-rtrn type xcb:xkb:KeyModMap size
			(xcb:-fieldref 'totalModMapKeys))
		 :type xcb:-list)
   (pad~5 :initform 4 :type xcb:-pad-align)
   (vmodmap-rtrn :initarg :vmodmap-rtrn :type xcb:-ignore)
   (vmodmap-rtrn~ :initform
		  '(name vmodmap-rtrn type xcb:xkb:KeyVModMap size
			 (xcb:-fieldref 'totalVModMapKeys))
		  :type xcb:-list)))

(defclass xcb:xkb:SetMap
  (xcb:-request)
  ((~opcode :initform 9 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (present :initarg :present :type xcb:CARD16)
   (flags :initarg :flags :type xcb:CARD16)
   (minKeyCode :initarg :minKeyCode :type xcb:KEYCODE)
   (maxKeyCode :initarg :maxKeyCode :type xcb:KEYCODE)
   (firstType :initarg :firstType :type xcb:CARD8)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (firstKeySym :initarg :firstKeySym :type xcb:KEYCODE)
   (nKeySyms :initarg :nKeySyms :type xcb:CARD8)
   (totalSyms :initarg :totalSyms :type xcb:CARD16)
   (firstKeyAction :initarg :firstKeyAction :type xcb:KEYCODE)
   (nKeyActions :initarg :nKeyActions :type xcb:CARD8)
   (totalActions :initarg :totalActions :type xcb:CARD16)
   (firstKeyBehavior :initarg :firstKeyBehavior :type xcb:KEYCODE)
   (nKeyBehaviors :initarg :nKeyBehaviors :type xcb:CARD8)
   (totalKeyBehaviors :initarg :totalKeyBehaviors :type xcb:CARD8)
   (firstKeyExplicit :initarg :firstKeyExplicit :type xcb:KEYCODE)
   (nKeyExplicit :initarg :nKeyExplicit :type xcb:CARD8)
   (totalKeyExplicit :initarg :totalKeyExplicit :type xcb:CARD8)
   (firstModMapKey :initarg :firstModMapKey :type xcb:KEYCODE)
   (nModMapKeys :initarg :nModMapKeys :type xcb:CARD8)
   (totalModMapKeys :initarg :totalModMapKeys :type xcb:CARD8)
   (firstVModMapKey :initarg :firstVModMapKey :type xcb:KEYCODE)
   (nVModMapKeys :initarg :nVModMapKeys :type xcb:CARD8)
   (totalVModMapKeys :initarg :totalVModMapKeys :type xcb:CARD8)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (values :initform
	   '(expression
	     (xcb:-fieldref 'present)
	     cases
	     ((xcb:xkb:MapPart:KeyTypes types)
	      (xcb:xkb:MapPart:KeySyms syms)
	      (xcb:xkb:MapPart:KeyActions actionsCount actions)
	      (xcb:xkb:MapPart:KeyBehaviors behaviors)
	      (xcb:xkb:MapPart:VirtualMods vmods)
	      (xcb:xkb:MapPart:ExplicitComponents explicit)
	      (xcb:xkb:MapPart:ModifierMap modmap)
	      (xcb:xkb:MapPart:VirtualModMap vmodmap)))
	   :type xcb:-switch)
   (types :initarg :types :type xcb:-ignore)
   (types~ :initform
	   '(name types type xcb:xkb:SetKeyType size
		  (xcb:-fieldref 'nTypes))
	   :type xcb:-list)
   (syms :initarg :syms :type xcb:-ignore)
   (syms~ :initform
	  '(name syms type xcb:xkb:KeySymMap size
		 (xcb:-fieldref 'nKeySyms))
	  :type xcb:-list)
   (actionsCount :initarg :actionsCount :type xcb:-ignore)
   (actionsCount~ :initform
		  '(name actionsCount type xcb:CARD8 size
			 (xcb:-fieldref 'nKeyActions))
		  :type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (actions :initarg :actions :type xcb:-ignore)
   (actions~ :initform
	     '(name actions type xcb:xkb:Action size
		    (xcb:-fieldref 'totalActions))
	     :type xcb:-list)
   (behaviors :initarg :behaviors :type xcb:-ignore)
   (behaviors~ :initform
	       '(name behaviors type xcb:xkb:SetBehavior size
		      (xcb:-fieldref 'totalKeyBehaviors))
	       :type xcb:-list)
   (vmods :initarg :vmods :type xcb:-ignore)
   (vmods~ :initform
	   '(name vmods type xcb:CARD8 size
		  (xcb:-popcount
		   (xcb:-fieldref 'virtualMods)))
	   :type xcb:-list)
   (explicit :initarg :explicit :type xcb:-ignore)
   (explicit~ :initform
	      '(name explicit type xcb:xkb:SetExplicit size
		     (xcb:-fieldref 'totalKeyExplicit))
	      :type xcb:-list)
   (modmap :initarg :modmap :type xcb:-ignore)
   (modmap~ :initform
	    '(name modmap type xcb:xkb:KeyModMap size
		   (xcb:-fieldref 'totalModMapKeys))
	    :type xcb:-list)
   (vmodmap :initarg :vmodmap :type xcb:-ignore)
   (vmodmap~ :initform
	     '(name vmodmap type xcb:xkb:KeyVModMap size
		    (xcb:-fieldref 'totalVModMapKeys))
	     :type xcb:-list)))

(defclass xcb:xkb:GetCompatMap
  (xcb:-request)
  ((~opcode :initform 10 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (groups :initarg :groups :type xcb:CARD8)
   (getAllSI :initarg :getAllSI :type xcb:BOOL)
   (firstSI :initarg :firstSI :type xcb:CARD16)
   (nSI :initarg :nSI :type xcb:CARD16)))
(defclass xcb:xkb:GetCompatMap~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (groupsRtrn :initarg :groupsRtrn :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (firstSIRtrn :initarg :firstSIRtrn :type xcb:CARD16)
   (nSIRtrn :initarg :nSIRtrn :type xcb:CARD16)
   (nTotalSI :initarg :nTotalSI :type xcb:CARD16)
   (pad~1 :initform 16 :type xcb:-pad)
   (si-rtrn :initarg :si-rtrn :type xcb:-ignore)
   (si-rtrn~ :initform
	     '(name si-rtrn type xcb:xkb:SymInterpret size
		    (xcb:-fieldref 'nSIRtrn))
	     :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (group-rtrn :initarg :group-rtrn :type xcb:-ignore)
   (group-rtrn~ :initform
		'(name group-rtrn type xcb:xkb:ModDef size
		       (xcb:-popcount
			(xcb:-fieldref 'groupsRtrn)))
		:type xcb:-list)))

(defclass xcb:xkb:SetCompatMap
  (xcb:-request)
  ((~opcode :initform 11 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 1 :type xcb:-pad)
   (recomputeActions :initarg :recomputeActions :type xcb:BOOL)
   (truncateSI :initarg :truncateSI :type xcb:BOOL)
   (groups :initarg :groups :type xcb:CARD8)
   (firstSI :initarg :firstSI :type xcb:CARD16)
   (nSI :initarg :nSI :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)
   (si :initarg :si :type xcb:-ignore)
   (si~ :initform
	'(name si type xcb:xkb:SymInterpret size
	       (xcb:-fieldref 'nSI))
	:type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (groupMaps :initarg :groupMaps :type xcb:-ignore)
   (groupMaps~ :initform
	       '(name groupMaps type xcb:xkb:ModDef size
		      (xcb:-popcount
		       (xcb:-fieldref 'groups)))
	       :type xcb:-list)))

(defclass xcb:xkb:GetIndicatorState
  (xcb:-request)
  ((~opcode :initform 12 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 2 :type xcb:-pad)))
(defclass xcb:xkb:GetIndicatorState~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (state :initarg :state :type xcb:CARD32)
   (pad~0 :initform 20 :type xcb:-pad)))

(defclass xcb:xkb:GetIndicatorMap
  (xcb:-request)
  ((~opcode :initform 13 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 2 :type xcb:-pad)
   (which :initarg :which :type xcb:CARD32)))
(defclass xcb:xkb:GetIndicatorMap~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (which :initarg :which :type xcb:CARD32)
   (realIndicators :initarg :realIndicators :type xcb:CARD32)
   (nIndicators :initarg :nIndicators :type xcb:CARD8)
   (pad~0 :initform 15 :type xcb:-pad)
   (maps :initarg :maps :type xcb:-ignore)
   (maps~ :initform
	  '(name maps type xcb:xkb:IndicatorMap size
		 (xcb:-popcount
		  (xcb:-fieldref 'which)))
	  :type xcb:-list)))

(defclass xcb:xkb:SetIndicatorMap
  (xcb:-request)
  ((~opcode :initform 14 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 2 :type xcb:-pad)
   (which :initarg :which :type xcb:CARD32)
   (maps :initarg :maps :type xcb:-ignore)
   (maps~ :initform
	  '(name maps type xcb:xkb:IndicatorMap size
		 (xcb:-popcount
		  (xcb:-fieldref 'which)))
	  :type xcb:-list)))

(defclass xcb:xkb:GetNamedIndicator
  (xcb:-request)
  ((~opcode :initform 15 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (ledClass :initarg :ledClass :type xcb:xkb:LedClassSpec)
   (ledID :initarg :ledID :type xcb:xkb:IDSpec)
   (pad~0 :initform 2 :type xcb:-pad)
   (indicator :initarg :indicator :type xcb:ATOM)))
(defclass xcb:xkb:GetNamedIndicator~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (indicator :initarg :indicator :type xcb:ATOM)
   (found :initarg :found :type xcb:BOOL)
   (on :initarg :on :type xcb:BOOL)
   (realIndicator :initarg :realIndicator :type xcb:BOOL)
   (ndx :initarg :ndx :type xcb:CARD8)
   (map-flags :initarg :map-flags :type xcb:CARD8)
   (map-whichGroups :initarg :map-whichGroups :type xcb:CARD8)
   (map-groups :initarg :map-groups :type xcb:CARD8)
   (map-whichMods :initarg :map-whichMods :type xcb:CARD8)
   (map-mods :initarg :map-mods :type xcb:CARD8)
   (map-realMods :initarg :map-realMods :type xcb:CARD8)
   (map-vmod :initarg :map-vmod :type xcb:CARD16)
   (map-ctrls :initarg :map-ctrls :type xcb:CARD32)
   (supported :initarg :supported :type xcb:BOOL)
   (pad~0 :initform 3 :type xcb:-pad)))

(defclass xcb:xkb:SetNamedIndicator
  (xcb:-request)
  ((~opcode :initform 16 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (ledClass :initarg :ledClass :type xcb:xkb:LedClassSpec)
   (ledID :initarg :ledID :type xcb:xkb:IDSpec)
   (pad~0 :initform 2 :type xcb:-pad)
   (indicator :initarg :indicator :type xcb:ATOM)
   (setState :initarg :setState :type xcb:BOOL)
   (on :initarg :on :type xcb:BOOL)
   (setMap :initarg :setMap :type xcb:BOOL)
   (createMap :initarg :createMap :type xcb:BOOL)
   (pad~1 :initform 1 :type xcb:-pad)
   (map-flags :initarg :map-flags :type xcb:CARD8)
   (map-whichGroups :initarg :map-whichGroups :type xcb:CARD8)
   (map-groups :initarg :map-groups :type xcb:CARD8)
   (map-whichMods :initarg :map-whichMods :type xcb:CARD8)
   (map-realMods :initarg :map-realMods :type xcb:CARD8)
   (map-vmods :initarg :map-vmods :type xcb:CARD16)
   (map-ctrls :initarg :map-ctrls :type xcb:CARD32)))

(defclass xcb:xkb:GetNames
  (xcb:-request)
  ((~opcode :initform 17 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 2 :type xcb:-pad)
   (which :initarg :which :type xcb:CARD32)))
(defclass xcb:xkb:GetNames~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (which :initarg :which :type xcb:CARD32)
   (minKeyCode :initarg :minKeyCode :type xcb:KEYCODE)
   (maxKeyCode :initarg :maxKeyCode :type xcb:KEYCODE)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (groupNames :initarg :groupNames :type xcb:CARD8)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (firstKey :initarg :firstKey :type xcb:KEYCODE)
   (nKeys :initarg :nKeys :type xcb:CARD8)
   (indicators :initarg :indicators :type xcb:CARD32)
   (nRadioGroups :initarg :nRadioGroups :type xcb:CARD8)
   (nKeyAliases :initarg :nKeyAliases :type xcb:CARD8)
   (nKTLevels :initarg :nKTLevels :type xcb:CARD16)
   (pad~0 :initform 4 :type xcb:-pad)
   (valueList :initform
	      '(expression
		(xcb:-fieldref 'which)
		cases
		((xcb:xkb:NameDetail:Keycodes keycodesName)
		 (xcb:xkb:NameDetail:Geometry geometryName)
		 (xcb:xkb:NameDetail:Symbols symbolsName)
		 (xcb:xkb:NameDetail:PhysSymbols physSymbolsName)
		 (xcb:xkb:NameDetail:Types typesName)
		 (xcb:xkb:NameDetail:Compat compatName)
		 (xcb:xkb:NameDetail:KeyTypeNames typeNames)
		 (xcb:xkb:NameDetail:KTLevelNames nLevelsPerType alignment-pad ktLevelNames)
		 (xcb:xkb:NameDetail:IndicatorNames indicatorNames)
		 (xcb:xkb:NameDetail:VirtualModNames virtualModNames)
		 (xcb:xkb:NameDetail:GroupNames groups)
		 (xcb:xkb:NameDetail:KeyNames keyNames)
		 (xcb:xkb:NameDetail:KeyAliases keyAliases)
		 (xcb:xkb:NameDetail:RGNames radioGroupNames)))
	      :type xcb:-switch)
   (keycodesName :initarg :keycodesName :type xcb:ATOM)
   (geometryName :initarg :geometryName :type xcb:ATOM)
   (symbolsName :initarg :symbolsName :type xcb:ATOM)
   (physSymbolsName :initarg :physSymbolsName :type xcb:ATOM)
   (typesName :initarg :typesName :type xcb:ATOM)
   (compatName :initarg :compatName :type xcb:ATOM)
   (typeNames :initarg :typeNames :type xcb:-ignore)
   (typeNames~ :initform
	       '(name typeNames type xcb:ATOM size
		      (xcb:-fieldref 'nTypes))
	       :type xcb:-list)
   (nLevelsPerType :initarg :nLevelsPerType :type xcb:-ignore)
   (nLevelsPerType~ :initform
		    '(name nLevelsPerType type xcb:CARD8 size
			   (xcb:-fieldref 'nTypes))
		    :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (alignment-pad :initarg :alignment-pad :type xcb:-ignore)
   (alignment-pad~ :initform
		   '(name alignment-pad type xcb:CARD8 size
			  (-
			   (logand
			    (+
			     (xcb:-fieldref 'nTypes)
			     3)
			    (lognot
			     (parse-expression
			      (node-subnode node))))
			   (xcb:-fieldref 'nTypes)))
		   :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (ktLevelNames :initarg :ktLevelNames :type xcb:-ignore)
   (ktLevelNames~ :initform
		  '(name ktLevelNames type xcb:ATOM size
			 (apply #'+
				(slot-value obj 'nLevelsPerType)))
		  :type xcb:-list)
   (indicatorNames :initarg :indicatorNames :type xcb:-ignore)
   (indicatorNames~ :initform
		    '(name indicatorNames type xcb:ATOM size
			   (xcb:-popcount
			    (xcb:-fieldref 'indicators)))
		    :type xcb:-list)
   (virtualModNames :initarg :virtualModNames :type xcb:-ignore)
   (virtualModNames~ :initform
		     '(name virtualModNames type xcb:ATOM size
			    (xcb:-popcount
			     (xcb:-fieldref 'virtualMods)))
		     :type xcb:-list)
   (groups :initarg :groups :type xcb:-ignore)
   (groups~ :initform
	    '(name groups type xcb:ATOM size
		   (xcb:-popcount
		    (xcb:-fieldref 'groupNames)))
	    :type xcb:-list)
   (keyNames :initarg :keyNames :type xcb:-ignore)
   (keyNames~ :initform
	      '(name keyNames type xcb:xkb:KeyName size
		     (xcb:-fieldref 'nKeys))
	      :type xcb:-list)
   (keyAliases :initarg :keyAliases :type xcb:-ignore)
   (keyAliases~ :initform
		'(name keyAliases type xcb:xkb:KeyAlias size
		       (xcb:-fieldref 'nKeyAliases))
		:type xcb:-list)
   (radioGroupNames :initarg :radioGroupNames :type xcb:-ignore)
   (radioGroupNames~ :initform
		     '(name radioGroupNames type xcb:ATOM size
			    (xcb:-fieldref 'nRadioGroups))
		     :type xcb:-list)))

(defclass xcb:xkb:SetNames
  (xcb:-request)
  ((~opcode :initform 18 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (which :initarg :which :type xcb:CARD32)
   (firstType :initarg :firstType :type xcb:CARD8)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (firstKTLevelt :initarg :firstKTLevelt :type xcb:CARD8)
   (nKTLevels :initarg :nKTLevels :type xcb:CARD8)
   (indicators :initarg :indicators :type xcb:CARD32)
   (groupNames :initarg :groupNames :type xcb:CARD8)
   (nRadioGroups :initarg :nRadioGroups :type xcb:CARD8)
   (firstKey :initarg :firstKey :type xcb:KEYCODE)
   (nKeys :initarg :nKeys :type xcb:CARD8)
   (nKeyAliases :initarg :nKeyAliases :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (totalKTLevelNames :initarg :totalKTLevelNames :type xcb:CARD16)
   (values :initform
	   '(expression
	     (xcb:-fieldref 'which)
	     cases
	     ((xcb:xkb:NameDetail:Keycodes keycodesName)
	      (xcb:xkb:NameDetail:Geometry geometryName)
	      (xcb:xkb:NameDetail:Symbols symbolsName)
	      (xcb:xkb:NameDetail:PhysSymbols physSymbolsName)
	      (xcb:xkb:NameDetail:Types typesName)
	      (xcb:xkb:NameDetail:Compat compatName)
	      (xcb:xkb:NameDetail:KeyTypeNames typeNames)
	      (xcb:xkb:NameDetail:KTLevelNames nLevelsPerType ktLevelNames)
	      (xcb:xkb:NameDetail:IndicatorNames indicatorNames)
	      (xcb:xkb:NameDetail:VirtualModNames virtualModNames)
	      (xcb:xkb:NameDetail:GroupNames groups)
	      (xcb:xkb:NameDetail:KeyNames keyNames)
	      (xcb:xkb:NameDetail:KeyAliases keyAliases)
	      (xcb:xkb:NameDetail:RGNames radioGroupNames)))
	   :type xcb:-switch)
   (keycodesName :initarg :keycodesName :type xcb:ATOM)
   (geometryName :initarg :geometryName :type xcb:ATOM)
   (symbolsName :initarg :symbolsName :type xcb:ATOM)
   (physSymbolsName :initarg :physSymbolsName :type xcb:ATOM)
   (typesName :initarg :typesName :type xcb:ATOM)
   (compatName :initarg :compatName :type xcb:ATOM)
   (typeNames :initarg :typeNames :type xcb:-ignore)
   (typeNames~ :initform
	       '(name typeNames type xcb:ATOM size
		      (xcb:-fieldref 'nTypes))
	       :type xcb:-list)
   (nLevelsPerType :initarg :nLevelsPerType :type xcb:-ignore)
   (nLevelsPerType~ :initform
		    '(name nLevelsPerType type xcb:CARD8 size
			   (xcb:-fieldref 'nTypes))
		    :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (ktLevelNames :initarg :ktLevelNames :type xcb:-ignore)
   (ktLevelNames~ :initform
		  '(name ktLevelNames type xcb:ATOM size
			 (apply #'+
				(slot-value obj 'nLevelsPerType)))
		  :type xcb:-list)
   (indicatorNames :initarg :indicatorNames :type xcb:-ignore)
   (indicatorNames~ :initform
		    '(name indicatorNames type xcb:ATOM size
			   (xcb:-popcount
			    (xcb:-fieldref 'indicators)))
		    :type xcb:-list)
   (virtualModNames :initarg :virtualModNames :type xcb:-ignore)
   (virtualModNames~ :initform
		     '(name virtualModNames type xcb:ATOM size
			    (xcb:-popcount
			     (xcb:-fieldref 'virtualMods)))
		     :type xcb:-list)
   (groups :initarg :groups :type xcb:-ignore)
   (groups~ :initform
	    '(name groups type xcb:ATOM size
		   (xcb:-popcount
		    (xcb:-fieldref 'groupNames)))
	    :type xcb:-list)
   (keyNames :initarg :keyNames :type xcb:-ignore)
   (keyNames~ :initform
	      '(name keyNames type xcb:xkb:KeyName size
		     (xcb:-fieldref 'nKeys))
	      :type xcb:-list)
   (keyAliases :initarg :keyAliases :type xcb:-ignore)
   (keyAliases~ :initform
		'(name keyAliases type xcb:xkb:KeyAlias size
		       (xcb:-fieldref 'nKeyAliases))
		:type xcb:-list)
   (radioGroupNames :initarg :radioGroupNames :type xcb:-ignore)
   (radioGroupNames~ :initform
		     '(name radioGroupNames type xcb:ATOM size
			    (xcb:-fieldref 'nRadioGroups))
		     :type xcb:-list)))

(defclass xcb:xkb:PerClientFlags
  (xcb:-request)
  ((~opcode :initform 21 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (pad~0 :initform 2 :type xcb:-pad)
   (change :initarg :change :type xcb:CARD32)
   (value :initarg :value :type xcb:CARD32)
   (ctrlsToChange :initarg :ctrlsToChange :type xcb:CARD32)
   (autoCtrls :initarg :autoCtrls :type xcb:CARD32)
   (autoCtrlsValues :initarg :autoCtrlsValues :type xcb:CARD32)))
(defclass xcb:xkb:PerClientFlags~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (supported :initarg :supported :type xcb:CARD32)
   (value :initarg :value :type xcb:CARD32)
   (autoCtrls :initarg :autoCtrls :type xcb:CARD32)
   (autoCtrlsValues :initarg :autoCtrlsValues :type xcb:CARD32)
   (pad~0 :initform 8 :type xcb:-pad)))

(defclass xcb:xkb:ListComponents
  (xcb:-request)
  ((~opcode :initform 22 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (maxNames :initarg :maxNames :type xcb:CARD16)))
(defclass xcb:xkb:ListComponents~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (nKeymaps :initarg :nKeymaps :type xcb:CARD16)
   (nKeycodes :initarg :nKeycodes :type xcb:CARD16)
   (nTypes :initarg :nTypes :type xcb:CARD16)
   (nCompatMaps :initarg :nCompatMaps :type xcb:CARD16)
   (nSymbols :initarg :nSymbols :type xcb:CARD16)
   (nGeometries :initarg :nGeometries :type xcb:CARD16)
   (extra :initarg :extra :type xcb:CARD16)
   (pad~0 :initform 10 :type xcb:-pad)
   (keymaps :initarg :keymaps :type xcb:-ignore)
   (keymaps~ :initform
	     '(name keymaps type xcb:xkb:Listing size
		    (xcb:-fieldref 'nKeymaps))
	     :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (keycodes :initarg :keycodes :type xcb:-ignore)
   (keycodes~ :initform
	      '(name keycodes type xcb:xkb:Listing size
		     (xcb:-fieldref 'nKeycodes))
	      :type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (types :initarg :types :type xcb:-ignore)
   (types~ :initform
	   '(name types type xcb:xkb:Listing size
		  (xcb:-fieldref 'nTypes))
	   :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (compatMaps :initarg :compatMaps :type xcb:-ignore)
   (compatMaps~ :initform
		'(name compatMaps type xcb:xkb:Listing size
		       (xcb:-fieldref 'nCompatMaps))
		:type xcb:-list)
   (pad~4 :initform 4 :type xcb:-pad-align)
   (symbols :initarg :symbols :type xcb:-ignore)
   (symbols~ :initform
	     '(name symbols type xcb:xkb:Listing size
		    (xcb:-fieldref 'nSymbols))
	     :type xcb:-list)
   (pad~5 :initform 4 :type xcb:-pad-align)
   (geometries :initarg :geometries :type xcb:-ignore)
   (geometries~ :initform
		'(name geometries type xcb:xkb:Listing size
		       (xcb:-fieldref 'nGeometries))
		:type xcb:-list)))

(defclass xcb:xkb:GetKbdByName
  (xcb:-request)
  ((~opcode :initform 23 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (need :initarg :need :type xcb:CARD16)
   (want :initarg :want :type xcb:CARD16)
   (load :initarg :load :type xcb:BOOL)
   (pad~0 :initform 1 :type xcb:-pad)))
(defclass xcb:xkb:GetKbdByName~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (minKeyCode :initarg :minKeyCode :type xcb:KEYCODE)
   (maxKeyCode :initarg :maxKeyCode :type xcb:KEYCODE)
   (loaded :initarg :loaded :type xcb:BOOL)
   (newKeyboard :initarg :newKeyboard :type xcb:BOOL)
   (found :initarg :found :type xcb:CARD16)
   (reported :initarg :reported :type xcb:CARD16)
   (pad~0 :initform 16 :type xcb:-pad)
   (replies :initform
	    '(expression
	      (xcb:-fieldref 'reported)
	      cases
	      (((logior xcb:xkb:GBNDetail:Types xcb:xkb:GBNDetail:ClientSymbols xcb:xkb:GBNDetail:ServerSymbols)
		getmap-type typeDeviceID getmap-sequence getmap-length pad~1 typeMinKeyCode typeMaxKeyCode present firstType nTypes totalTypes firstKeySym totalSyms nKeySyms firstKeyAction totalActions nKeyActions firstKeyBehavior nKeyBehaviors totalKeyBehaviors firstKeyExplicit nKeyExplicit totalKeyExplicit firstModMapKey nModMapKeys totalModMapKeys firstVModMapKey nVModMapKeys totalVModMapKeys pad~2 virtualMods map)
	       (xcb:xkb:GBNDetail:CompatMap compatmap-type compatDeviceID compatmap-sequence compatmap-length groupsRtrn pad~4 firstSIRtrn nSIRtrn nTotalSI pad~5 si-rtrn group-rtrn)
	       (xcb:xkb:GBNDetail:IndicatorMaps indicatormap-type indicatorDeviceID indicatormap-sequence indicatormap-length which realIndicators nIndicators pad~7 maps)
	       ((logior xcb:xkb:GBNDetail:KeyNames xcb:xkb:GBNDetail:OtherNames)
		keyname-type keyDeviceID keyname-sequence keyname-length which* keyMinKeyCode keyMaxKeyCode nTypes* groupNames virtualMods* firstKey nKeys indicators nRadioGroups nKeyAliases nKTLevels pad~8 valueList)
	       (xcb:xkb:GBNDetail:Geometry geometry-type geometryDeviceID geometry-sequence geometry-length name geometryFound pad~10 widthMM heightMM nProperties nColors nShapes nSections nDoodads nKeyAliases* baseColorNdx labelColorNdx labelFont)))
	    :type xcb:-switch)
   (getmap-type :initarg :getmap-type :type xcb:CARD8)
   (typeDeviceID :initarg :typeDeviceID :type xcb:CARD8)
   (getmap-sequence :initarg :getmap-sequence :type xcb:CARD16)
   (getmap-length :initarg :getmap-length :type xcb:CARD32)
   (pad~1 :initform 2 :type xcb:-pad)
   (typeMinKeyCode :initarg :typeMinKeyCode :type xcb:KEYCODE)
   (typeMaxKeyCode :initarg :typeMaxKeyCode :type xcb:KEYCODE)
   (present :initarg :present :type xcb:CARD16)
   (firstType :initarg :firstType :type xcb:CARD8)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (totalTypes :initarg :totalTypes :type xcb:CARD8)
   (firstKeySym :initarg :firstKeySym :type xcb:KEYCODE)
   (totalSyms :initarg :totalSyms :type xcb:CARD16)
   (nKeySyms :initarg :nKeySyms :type xcb:CARD8)
   (firstKeyAction :initarg :firstKeyAction :type xcb:KEYCODE)
   (totalActions :initarg :totalActions :type xcb:CARD16)
   (nKeyActions :initarg :nKeyActions :type xcb:CARD8)
   (firstKeyBehavior :initarg :firstKeyBehavior :type xcb:KEYCODE)
   (nKeyBehaviors :initarg :nKeyBehaviors :type xcb:CARD8)
   (totalKeyBehaviors :initarg :totalKeyBehaviors :type xcb:CARD8)
   (firstKeyExplicit :initarg :firstKeyExplicit :type xcb:KEYCODE)
   (nKeyExplicit :initarg :nKeyExplicit :type xcb:CARD8)
   (totalKeyExplicit :initarg :totalKeyExplicit :type xcb:CARD8)
   (firstModMapKey :initarg :firstModMapKey :type xcb:KEYCODE)
   (nModMapKeys :initarg :nModMapKeys :type xcb:CARD8)
   (totalModMapKeys :initarg :totalModMapKeys :type xcb:CARD8)
   (firstVModMapKey :initarg :firstVModMapKey :type xcb:KEYCODE)
   (nVModMapKeys :initarg :nVModMapKeys :type xcb:CARD8)
   (totalVModMapKeys :initarg :totalVModMapKeys :type xcb:CARD8)
   (pad~2 :initform 1 :type xcb:-pad)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (map :initform
	'(expression
	  (xcb:-fieldref 'present)
	  cases
	  ((xcb:xkb:MapPart:KeyTypes types-rtrn)
	   (xcb:xkb:MapPart:KeySyms syms-rtrn)
	   (xcb:xkb:MapPart:KeyActions acts-rtrn-count acts-rtrn-acts)
	   (xcb:xkb:MapPart:KeyBehaviors behaviors-rtrn)
	   (xcb:xkb:MapPart:VirtualMods vmods-rtrn)
	   (xcb:xkb:MapPart:ExplicitComponents explicit-rtrn)
	   (xcb:xkb:MapPart:ModifierMap modmap-rtrn)
	   (xcb:xkb:MapPart:VirtualModMap vmodmap-rtrn)))
	:type xcb:-switch)
   (types-rtrn :initarg :types-rtrn :type xcb:-ignore)
   (types-rtrn~ :initform
		'(name types-rtrn type xcb:xkb:KeyType size
		       (xcb:-fieldref 'nTypes))
		:type xcb:-list)
   (syms-rtrn :initarg :syms-rtrn :type xcb:-ignore)
   (syms-rtrn~ :initform
	       '(name syms-rtrn type xcb:xkb:KeySymMap size
		      (xcb:-fieldref 'nKeySyms))
	       :type xcb:-list)
   (acts-rtrn-count :initarg :acts-rtrn-count :type xcb:-ignore)
   (acts-rtrn-count~ :initform
		     '(name acts-rtrn-count type xcb:CARD8 size
			    (xcb:-fieldref 'nKeyActions))
		     :type xcb:-list)
   (pad~3 :initform 4 :type xcb:-pad-align)
   (acts-rtrn-acts :initarg :acts-rtrn-acts :type xcb:-ignore)
   (acts-rtrn-acts~ :initform
		    '(name acts-rtrn-acts type xcb:xkb:Action size
			   (xcb:-fieldref 'totalActions))
		    :type xcb:-list)
   (behaviors-rtrn :initarg :behaviors-rtrn :type xcb:-ignore)
   (behaviors-rtrn~ :initform
		    '(name behaviors-rtrn type xcb:xkb:SetBehavior size
			   (xcb:-fieldref 'totalKeyBehaviors))
		    :type xcb:-list)
   (vmods-rtrn :initarg :vmods-rtrn :type xcb:-ignore)
   (vmods-rtrn~ :initform
		'(name vmods-rtrn type xcb:CARD8 size
		       (xcb:-popcount
			(xcb:-fieldref 'virtualMods)))
		:type xcb:-list)
   (explicit-rtrn :initarg :explicit-rtrn :type xcb:-ignore)
   (explicit-rtrn~ :initform
		   '(name explicit-rtrn type xcb:xkb:SetExplicit size
			  (xcb:-fieldref 'totalKeyExplicit))
		   :type xcb:-list)
   (modmap-rtrn :initarg :modmap-rtrn :type xcb:-ignore)
   (modmap-rtrn~ :initform
		 '(name modmap-rtrn type xcb:xkb:KeyModMap size
			(xcb:-fieldref 'totalModMapKeys))
		 :type xcb:-list)
   (vmodmap-rtrn :initarg :vmodmap-rtrn :type xcb:-ignore)
   (vmodmap-rtrn~ :initform
		  '(name vmodmap-rtrn type xcb:xkb:KeyVModMap size
			 (xcb:-fieldref 'totalVModMapKeys))
		  :type xcb:-list)
   (compatmap-type :initarg :compatmap-type :type xcb:CARD8)
   (compatDeviceID :initarg :compatDeviceID :type xcb:CARD8)
   (compatmap-sequence :initarg :compatmap-sequence :type xcb:CARD16)
   (compatmap-length :initarg :compatmap-length :type xcb:CARD32)
   (groupsRtrn :initarg :groupsRtrn :type xcb:CARD8)
   (pad~4 :initform 1 :type xcb:-pad)
   (firstSIRtrn :initarg :firstSIRtrn :type xcb:CARD16)
   (nSIRtrn :initarg :nSIRtrn :type xcb:CARD16)
   (nTotalSI :initarg :nTotalSI :type xcb:CARD16)
   (pad~5 :initform 16 :type xcb:-pad)
   (si-rtrn :initarg :si-rtrn :type xcb:-ignore)
   (si-rtrn~ :initform
	     '(name si-rtrn type xcb:xkb:SymInterpret size
		    (xcb:-fieldref 'nSIRtrn))
	     :type xcb:-list)
   (pad~6 :initform 4 :type xcb:-pad-align)
   (group-rtrn :initarg :group-rtrn :type xcb:-ignore)
   (group-rtrn~ :initform
		'(name group-rtrn type xcb:xkb:ModDef size
		       (xcb:-popcount
			(xcb:-fieldref 'groupsRtrn)))
		:type xcb:-list)
   (indicatormap-type :initarg :indicatormap-type :type xcb:CARD8)
   (indicatorDeviceID :initarg :indicatorDeviceID :type xcb:CARD8)
   (indicatormap-sequence :initarg :indicatormap-sequence :type xcb:CARD16)
   (indicatormap-length :initarg :indicatormap-length :type xcb:CARD32)
   (which :initarg :which :type xcb:CARD32)
   (realIndicators :initarg :realIndicators :type xcb:CARD32)
   (nIndicators :initarg :nIndicators :type xcb:CARD8)
   (pad~7 :initform 15 :type xcb:-pad)
   (maps :initarg :maps :type xcb:-ignore)
   (maps~ :initform
	  '(name maps type xcb:xkb:IndicatorMap size
		 (xcb:-fieldref 'nIndicators))
	  :type xcb:-list)
   (keyname-type :initarg :keyname-type :type xcb:CARD8)
   (keyDeviceID :initarg :keyDeviceID :type xcb:CARD8)
   (keyname-sequence :initarg :keyname-sequence :type xcb:CARD16)
   (keyname-length :initarg :keyname-length :type xcb:CARD32)
   (which* :initarg :which* :type xcb:CARD32)
   (keyMinKeyCode :initarg :keyMinKeyCode :type xcb:KEYCODE)
   (keyMaxKeyCode :initarg :keyMaxKeyCode :type xcb:KEYCODE)
   (nTypes* :initarg :nTypes* :type xcb:CARD8)
   (groupNames :initarg :groupNames :type xcb:CARD8)
   (virtualMods* :initarg :virtualMods* :type xcb:CARD16)
   (firstKey :initarg :firstKey :type xcb:KEYCODE)
   (nKeys :initarg :nKeys :type xcb:CARD8)
   (indicators :initarg :indicators :type xcb:CARD32)
   (nRadioGroups :initarg :nRadioGroups :type xcb:CARD8)
   (nKeyAliases :initarg :nKeyAliases :type xcb:CARD8)
   (nKTLevels :initarg :nKTLevels :type xcb:CARD16)
   (pad~8 :initform 4 :type xcb:-pad)
   (valueList :initform
	      '(expression
		(xcb:-fieldref 'which)
		cases
		((xcb:xkb:NameDetail:Keycodes keycodesName)
		 (xcb:xkb:NameDetail:Geometry geometryName)
		 (xcb:xkb:NameDetail:Symbols symbolsName)
		 (xcb:xkb:NameDetail:PhysSymbols physSymbolsName)
		 (xcb:xkb:NameDetail:Types typesName)
		 (xcb:xkb:NameDetail:Compat compatName)
		 (xcb:xkb:NameDetail:KeyTypeNames typeNames)
		 (xcb:xkb:NameDetail:KTLevelNames nLevelsPerType ktLevelNames)
		 (xcb:xkb:NameDetail:IndicatorNames indicatorNames)
		 (xcb:xkb:NameDetail:VirtualModNames virtualModNames)
		 (xcb:xkb:NameDetail:GroupNames groups)
		 (xcb:xkb:NameDetail:KeyNames keyNames)
		 (xcb:xkb:NameDetail:KeyAliases keyAliases)
		 (xcb:xkb:NameDetail:RGNames radioGroupNames)))
	      :type xcb:-switch)
   (keycodesName :initarg :keycodesName :type xcb:ATOM)
   (geometryName :initarg :geometryName :type xcb:ATOM)
   (symbolsName :initarg :symbolsName :type xcb:ATOM)
   (physSymbolsName :initarg :physSymbolsName :type xcb:ATOM)
   (typesName :initarg :typesName :type xcb:ATOM)
   (compatName :initarg :compatName :type xcb:ATOM)
   (typeNames :initarg :typeNames :type xcb:-ignore)
   (typeNames~ :initform
	       '(name typeNames type xcb:ATOM size
		      (xcb:-fieldref 'nTypes))
	       :type xcb:-list)
   (nLevelsPerType :initarg :nLevelsPerType :type xcb:-ignore)
   (nLevelsPerType~ :initform
		    '(name nLevelsPerType type xcb:CARD8 size
			   (xcb:-fieldref 'nTypes))
		    :type xcb:-list)
   (pad~9 :initform 4 :type xcb:-pad-align)
   (ktLevelNames :initarg :ktLevelNames :type xcb:-ignore)
   (ktLevelNames~ :initform
		  '(name ktLevelNames type xcb:ATOM size
			 (apply #'+
				(slot-value obj 'nLevelsPerType)))
		  :type xcb:-list)
   (indicatorNames :initarg :indicatorNames :type xcb:-ignore)
   (indicatorNames~ :initform
		    '(name indicatorNames type xcb:ATOM size
			   (xcb:-popcount
			    (xcb:-fieldref 'indicators)))
		    :type xcb:-list)
   (virtualModNames :initarg :virtualModNames :type xcb:-ignore)
   (virtualModNames~ :initform
		     '(name virtualModNames type xcb:ATOM size
			    (xcb:-popcount
			     (xcb:-fieldref 'virtualMods)))
		     :type xcb:-list)
   (groups :initarg :groups :type xcb:-ignore)
   (groups~ :initform
	    '(name groups type xcb:ATOM size
		   (xcb:-popcount
		    (xcb:-fieldref 'groupNames)))
	    :type xcb:-list)
   (keyNames :initarg :keyNames :type xcb:-ignore)
   (keyNames~ :initform
	      '(name keyNames type xcb:xkb:KeyName size
		     (xcb:-fieldref 'nKeys))
	      :type xcb:-list)
   (keyAliases :initarg :keyAliases :type xcb:-ignore)
   (keyAliases~ :initform
		'(name keyAliases type xcb:xkb:KeyAlias size
		       (xcb:-fieldref 'nKeyAliases))
		:type xcb:-list)
   (radioGroupNames :initarg :radioGroupNames :type xcb:-ignore)
   (radioGroupNames~ :initform
		     '(name radioGroupNames type xcb:ATOM size
			    (xcb:-fieldref 'nRadioGroups))
		     :type xcb:-list)
   (geometry-type :initarg :geometry-type :type xcb:CARD8)
   (geometryDeviceID :initarg :geometryDeviceID :type xcb:CARD8)
   (geometry-sequence :initarg :geometry-sequence :type xcb:CARD16)
   (geometry-length :initarg :geometry-length :type xcb:CARD32)
   (name :initarg :name :type xcb:ATOM)
   (geometryFound :initarg :geometryFound :type xcb:BOOL)
   (pad~10 :initform 1 :type xcb:-pad)
   (widthMM :initarg :widthMM :type xcb:CARD16)
   (heightMM :initarg :heightMM :type xcb:CARD16)
   (nProperties :initarg :nProperties :type xcb:CARD16)
   (nColors :initarg :nColors :type xcb:CARD16)
   (nShapes :initarg :nShapes :type xcb:CARD16)
   (nSections :initarg :nSections :type xcb:CARD16)
   (nDoodads :initarg :nDoodads :type xcb:CARD16)
   (nKeyAliases* :initarg :nKeyAliases* :type xcb:CARD16)
   (baseColorNdx :initarg :baseColorNdx :type xcb:CARD8)
   (labelColorNdx :initarg :labelColorNdx :type xcb:CARD8)
   (labelFont :initarg :labelFont :type xcb:xkb:CountedString16)))

(defclass xcb:xkb:GetDeviceInfo
  (xcb:-request)
  ((~opcode :initform 24 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (wanted :initarg :wanted :type xcb:CARD16)
   (allButtons :initarg :allButtons :type xcb:BOOL)
   (firstButton :initarg :firstButton :type xcb:CARD8)
   (nButtons :initarg :nButtons :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (ledClass :initarg :ledClass :type xcb:xkb:LedClassSpec)
   (ledID :initarg :ledID :type xcb:xkb:IDSpec)))
(defclass xcb:xkb:GetDeviceInfo~reply
  (xcb:-reply)
  ((deviceID :initarg :deviceID :type xcb:CARD8)
   (present :initarg :present :type xcb:CARD16)
   (supported :initarg :supported :type xcb:CARD16)
   (unsupported :initarg :unsupported :type xcb:CARD16)
   (nDeviceLedFBs :initarg :nDeviceLedFBs :type xcb:CARD16)
   (firstBtnWanted :initarg :firstBtnWanted :type xcb:CARD8)
   (nBtnsWanted :initarg :nBtnsWanted :type xcb:CARD8)
   (firstBtnRtrn :initarg :firstBtnRtrn :type xcb:CARD8)
   (nBtnsRtrn :initarg :nBtnsRtrn :type xcb:CARD8)
   (totalBtns :initarg :totalBtns :type xcb:CARD8)
   (hasOwnState :initarg :hasOwnState :type xcb:BOOL)
   (dfltKbdFB :initarg :dfltKbdFB :type xcb:CARD16)
   (dfltLedFB :initarg :dfltLedFB :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (devType :initarg :devType :type xcb:ATOM)
   (nameLen :initarg :nameLen :type xcb:CARD16)
   (name :initarg :name :type xcb:-ignore)
   (name~ :initform
	  '(name name type xcb:xkb:STRING8 size
		 (xcb:-fieldref 'nameLen))
	  :type xcb:-list)
   (pad~1 :initform 4 :type xcb:-pad-align)
   (btnActions :initarg :btnActions :type xcb:-ignore)
   (btnActions~ :initform
		'(name btnActions type xcb:xkb:Action size
		       (xcb:-fieldref 'nBtnsRtrn))
		:type xcb:-list)
   (pad~2 :initform 4 :type xcb:-pad-align)
   (leds :initarg :leds :type xcb:-ignore)
   (leds~ :initform
	  '(name leds type xcb:xkb:DeviceLedInfo size
		 (xcb:-fieldref 'nDeviceLedFBs))
	  :type xcb:-list)))

(defclass xcb:xkb:SetDeviceInfo
  (xcb:-request)
  ((~opcode :initform 25 :type xcb:-u1)
   (deviceSpec :initarg :deviceSpec :type xcb:xkb:DeviceSpec)
   (firstBtn :initarg :firstBtn :type xcb:CARD8)
   (nBtns :initarg :nBtns :type xcb:CARD8)
   (change :initarg :change :type xcb:CARD16)
   (nDeviceLedFBs :initarg :nDeviceLedFBs :type xcb:CARD16)
   (btnActions :initarg :btnActions :type xcb:-ignore)
   (btnActions~ :initform
		'(name btnActions type xcb:xkb:Action size
		       (xcb:-fieldref 'nBtns))
		:type xcb:-list)
   (pad~0 :initform 4 :type xcb:-pad-align)
   (leds :initarg :leds :type xcb:-ignore)
   (leds~ :initform
	  '(name leds type xcb:xkb:DeviceLedInfo size
		 (xcb:-fieldref 'nDeviceLedFBs))
	  :type xcb:-list)))

(defclass xcb:xkb:SetDebuggingFlags
  (xcb:-request)
  ((~opcode :initform 101 :type xcb:-u1)
   (msgLength :initarg :msgLength :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)
   (affectFlags :initarg :affectFlags :type xcb:CARD32)
   (flags :initarg :flags :type xcb:CARD32)
   (affectCtrls :initarg :affectCtrls :type xcb:CARD32)
   (ctrls :initarg :ctrls :type xcb:CARD32)
   (message :initarg :message :type xcb:-ignore)
   (message~ :initform
	     '(name message type xcb:xkb:STRING8 size
		    (xcb:-fieldref 'msgLength))
	     :type xcb:-list)))
(defclass xcb:xkb:SetDebuggingFlags~reply
  (xcb:-reply)
  ((pad~0 :initform 1 :type xcb:-pad)
   (currentFlags :initarg :currentFlags :type xcb:CARD32)
   (currentCtrls :initarg :currentCtrls :type xcb:CARD32)
   (supportedFlags :initarg :supportedFlags :type xcb:CARD32)
   (supportedCtrls :initarg :supportedCtrls :type xcb:CARD32)
   (pad~1 :initform 8 :type xcb:-pad)))

(defclass xcb:xkb:NewKeyboardNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (oldDeviceID :initarg :oldDeviceID :type xcb:CARD8)
   (minKeyCode :initarg :minKeyCode :type xcb:KEYCODE)
   (maxKeyCode :initarg :maxKeyCode :type xcb:KEYCODE)
   (oldMinKeyCode :initarg :oldMinKeyCode :type xcb:KEYCODE)
   (oldMaxKeyCode :initarg :oldMaxKeyCode :type xcb:KEYCODE)
   (requestMajor :initarg :requestMajor :type xcb:CARD8)
   (requestMinor :initarg :requestMinor :type xcb:CARD8)
   (changed :initarg :changed :type xcb:CARD16)
   (pad~0 :initform 14 :type xcb:-pad)))

(defclass xcb:xkb:MapNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (ptrBtnActions :initarg :ptrBtnActions :type xcb:CARD8)
   (changed :initarg :changed :type xcb:CARD16)
   (minKeyCode :initarg :minKeyCode :type xcb:KEYCODE)
   (maxKeyCode :initarg :maxKeyCode :type xcb:KEYCODE)
   (firstType :initarg :firstType :type xcb:CARD8)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (firstKeySym :initarg :firstKeySym :type xcb:KEYCODE)
   (nKeySyms :initarg :nKeySyms :type xcb:CARD8)
   (firstKeyAct :initarg :firstKeyAct :type xcb:KEYCODE)
   (nKeyActs :initarg :nKeyActs :type xcb:CARD8)
   (firstKeyBehavior :initarg :firstKeyBehavior :type xcb:KEYCODE)
   (nKeyBehavior :initarg :nKeyBehavior :type xcb:CARD8)
   (firstKeyExplicit :initarg :firstKeyExplicit :type xcb:KEYCODE)
   (nKeyExplicit :initarg :nKeyExplicit :type xcb:CARD8)
   (firstModMapKey :initarg :firstModMapKey :type xcb:KEYCODE)
   (nModMapKeys :initarg :nModMapKeys :type xcb:CARD8)
   (firstVModMapKey :initarg :firstVModMapKey :type xcb:KEYCODE)
   (nVModMapKeys :initarg :nVModMapKeys :type xcb:CARD8)
   (virtualMods :initarg :virtualMods :type xcb:CARD16)
   (pad~0 :initform 2 :type xcb:-pad)))

(defclass xcb:xkb:StateNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (mods :initarg :mods :type xcb:CARD8)
   (baseMods :initarg :baseMods :type xcb:CARD8)
   (latchedMods :initarg :latchedMods :type xcb:CARD8)
   (lockedMods :initarg :lockedMods :type xcb:CARD8)
   (group :initarg :group :type xcb:CARD8)
   (baseGroup :initarg :baseGroup :type xcb:INT16)
   (latchedGroup :initarg :latchedGroup :type xcb:INT16)
   (lockedGroup :initarg :lockedGroup :type xcb:CARD8)
   (compatState :initarg :compatState :type xcb:CARD8)
   (grabMods :initarg :grabMods :type xcb:CARD8)
   (compatGrabMods :initarg :compatGrabMods :type xcb:CARD8)
   (lookupMods :initarg :lookupMods :type xcb:CARD8)
   (compatLoockupMods :initarg :compatLoockupMods :type xcb:CARD8)
   (ptrBtnState :initarg :ptrBtnState :type xcb:CARD16)
   (changed :initarg :changed :type xcb:CARD16)
   (keycode :initarg :keycode :type xcb:KEYCODE)
   (eventType :initarg :eventType :type xcb:CARD8)
   (requestMajor :initarg :requestMajor :type xcb:CARD8)
   (requestMinor :initarg :requestMinor :type xcb:CARD8)))

(defclass xcb:xkb:ControlsNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (numGroups :initarg :numGroups :type xcb:CARD8)
   (pad~0 :initform 2 :type xcb:-pad)
   (changedControls :initarg :changedControls :type xcb:CARD32)
   (enabledControls :initarg :enabledControls :type xcb:CARD32)
   (enabledControlChanges :initarg :enabledControlChanges :type xcb:CARD32)
   (keycode :initarg :keycode :type xcb:KEYCODE)
   (eventType :initarg :eventType :type xcb:CARD8)
   (requestMajor :initarg :requestMajor :type xcb:CARD8)
   (requestMinor :initarg :requestMinor :type xcb:CARD8)
   (pad~1 :initform 4 :type xcb:-pad)))

(defclass xcb:xkb:IndicatorStateNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (state :initarg :state :type xcb:CARD32)
   (stateChanged :initarg :stateChanged :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)))

(defclass xcb:xkb:IndicatorMapNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (pad~0 :initform 3 :type xcb:-pad)
   (state :initarg :state :type xcb:CARD32)
   (mapChanged :initarg :mapChanged :type xcb:CARD32)
   (pad~1 :initform 12 :type xcb:-pad)))

(defclass xcb:xkb:NamesNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (changed :initarg :changed :type xcb:CARD16)
   (firstType :initarg :firstType :type xcb:CARD8)
   (nTypes :initarg :nTypes :type xcb:CARD8)
   (firstLevelName :initarg :firstLevelName :type xcb:CARD8)
   (nLevelNames :initarg :nLevelNames :type xcb:CARD8)
   (pad~1 :initform 1 :type xcb:-pad)
   (nRadioGroups :initarg :nRadioGroups :type xcb:CARD8)
   (nKeyAliases :initarg :nKeyAliases :type xcb:CARD8)
   (changedGroupNames :initarg :changedGroupNames :type xcb:CARD8)
   (changedVirtualMods :initarg :changedVirtualMods :type xcb:CARD16)
   (firstKey :initarg :firstKey :type xcb:KEYCODE)
   (nKeys :initarg :nKeys :type xcb:CARD8)
   (changedIndicators :initarg :changedIndicators :type xcb:CARD32)
   (pad~2 :initform 4 :type xcb:-pad)))

(defclass xcb:xkb:CompatMapNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (changedGroups :initarg :changedGroups :type xcb:CARD8)
   (firstSI :initarg :firstSI :type xcb:CARD16)
   (nSI :initarg :nSI :type xcb:CARD16)
   (nTotalSI :initarg :nTotalSI :type xcb:CARD16)
   (pad~0 :initform 16 :type xcb:-pad)))

(defclass xcb:xkb:BellNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (bellClass :initarg :bellClass :type xcb:CARD8)
   (bellID :initarg :bellID :type xcb:CARD8)
   (percent :initarg :percent :type xcb:CARD8)
   (pitch :initarg :pitch :type xcb:CARD16)
   (duration :initarg :duration :type xcb:CARD16)
   (name :initarg :name :type xcb:ATOM)
   (window :initarg :window :type xcb:WINDOW)
   (eventOnly :initarg :eventOnly :type xcb:BOOL)
   (pad~0 :initform 7 :type xcb:-pad)))

(defclass xcb:xkb:ActionMessage
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (keycode :initarg :keycode :type xcb:KEYCODE)
   (press :initarg :press :type xcb:BOOL)
   (keyEventFollows :initarg :keyEventFollows :type xcb:BOOL)
   (mods :initarg :mods :type xcb:CARD8)
   (group :initarg :group :type xcb:CARD8)
   (message :initarg :message :type xcb:-ignore)
   (message~ :initform
	     '(name message type xcb:xkb:STRING8 size 8)
	     :type xcb:-list)
   (pad~0 :initform 10 :type xcb:-pad)))

(defclass xcb:xkb:AccessXNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (keycode :initarg :keycode :type xcb:KEYCODE)
   (detailt :initarg :detailt :type xcb:CARD16)
   (slowKeysDelay :initarg :slowKeysDelay :type xcb:CARD16)
   (debounceDelay :initarg :debounceDelay :type xcb:CARD16)
   (pad~0 :initform 16 :type xcb:-pad)))

(defclass xcb:xkb:ExtensionDeviceNotify
  (xcb:-event)
  ((xkbType :initarg :xkbType :type xcb:CARD8)
   (time :initarg :time :type xcb:TIMESTAMP)
   (deviceID :initarg :deviceID :type xcb:CARD8)
   (pad~0 :initform 1 :type xcb:-pad)
   (reason :initarg :reason :type xcb:CARD16)
   (ledClass :initarg :ledClass :type xcb:CARD16)
   (ledID :initarg :ledID :type xcb:CARD16)
   (ledsDefined :initarg :ledsDefined :type xcb:CARD32)
   (ledState :initarg :ledState :type xcb:CARD32)
   (firstButton :initarg :firstButton :type xcb:CARD8)
   (nButtons :initarg :nButtons :type xcb:CARD8)
   (supported :initarg :supported :type xcb:CARD16)
   (unsupported :initarg :unsupported :type xcb:CARD16)
   (pad~1 :initform 2 :type xcb:-pad)))

(defconst xcb:xkb:error-number-class-alist
  '((0 . xcb:xkb:Keyboard))
  "(error-number . error-class) alist")

(defconst xcb:xkb:event-number-class-alist
  '((0 . xcb:xkb:NewKeyboardNotify)
    (1 . xcb:xkb:MapNotify)
    (2 . xcb:xkb:StateNotify)
    (3 . xcb:xkb:ControlsNotify)
    (4 . xcb:xkb:IndicatorStateNotify)
    (5 . xcb:xkb:IndicatorMapNotify)
    (6 . xcb:xkb:NamesNotify)
    (7 . xcb:xkb:CompatMapNotify)
    (8 . xcb:xkb:BellNotify)
    (9 . xcb:xkb:ActionMessage)
    (10 . xcb:xkb:AccessXNotify)
    (11 . xcb:xkb:ExtensionDeviceNotify))
  "(event-number . event-class) alist")



(provide 'xcb-xkb)
