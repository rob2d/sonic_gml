#define object_deactivate

// ==== Manage object deactivation ======================================================

    // ---- Deactivate all objects ------------------------------------------------------
    instance_deactivate_object(objParentDeactivable);

    // ---- Activate all objects around camera ------------------------------------------
    instance_activate_region(view_xview[0]-16, view_yview[0]-16, view_wview[0]+32, view_hview[0]+32, true);

    // ---- Activate all objects around players -----------------------------------------
    var _ActivationExtension;

    if (global.player1 != noone) {
        _ActivationExtension = max(abs(global.Player1.Speed), abs(global.player1.g));
        instance_activate_region(global.player1.x-24-_ActivationExtension, global.player1.y-24-_ActivationExtension, 48+_ActivationExtension*2, 48+_ActivationExtension*2, true);
    }
