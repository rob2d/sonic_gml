#define cam_limits_boss
obj_camera.camSmoothLimiting = 1
{
    obj_camera.camLeftBorderB = view_xview;
    obj_camera.camRightBorderB = view_xview + view_wview;
    obj_camera.camUpBorderB = view_yview;
    obj_camera.camDownBorderB = view_yview + view_hview;
}

obj_camera.camLeftBorder = stg_bosscam_ld.x
obj_camera.camRightBorder = stg_bosscam_ru.x
obj_camera.camDownBorder = stg_bosscam_ld.y
obj_camera.camUpBorder = stg_bosscam_ru.y

