package drc.types;

@:enum abstract AppEventType(UInt) from UInt to UInt {

	var ANY = 0;
	
	var READY = 1;
}