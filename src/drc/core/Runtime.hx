package drc.core;

import drc.system.Window;

#if js

import drcJS.core.Runtime as BackendRuntime;

#end

class Runtime extends BackendRuntime {

    // ** Privates

    private var __backendWindow:__BackendWindow;

    public function new() {

        super();
    }

    override function init() {

        __backendWindow = new __BackendWindow();

        __initVideo();

        super.init();
    }
}

private class __BackendWindow extends Window {
    
    public function new() {
        
        super();
    }
}