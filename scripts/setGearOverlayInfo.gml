// Helper to set the gear overlay information for a single sprite frame.
// setGearOverlayInfo(sprite, subimage, gear, overlaySprite, overlaySubimage, dx, dy, angle, xscale)

var sprite, subimage, gear, overlaySprite, overlaySubimage, dx, dy, angle, xscale;

sprite = argument[0];
subimage = argument[1];
gear = argument[2];
overlaySprite = argument[3];
overlaySubimage = argument[4];
dx = argument[5];
dy = argument[6];
angle = argument[7];
xscale = argument[8];
subimageSelectionScript = argument[9];
zindex = argument[10];

if(!variable_global_exists("gearOverlayInfo"))
    global.gearOverlayInfo = ds_map_create();
    
var spriteMap;
if(ds_map_exists(global.gearOverlayInfo, gear))
{
    spriteMap = ds_map_find_value(global.gearOverlayInfo, gear);
}
else
{
    spriteMap = ds_map_create();
    ds_map_add(global.gearOverlayInfo, gear, spriteMap);
}

var subimageMap;
if(ds_map_exists(spriteMap, sprite))
{
    subimageMap = ds_map_find_value(spriteMap, sprite);
}
else
{
    subimageMap = ds_map_create();
    ds_map_add(spriteMap, sprite, subimageMap);
}

var frameInfo;
if(ds_map_exists(subimageMap, subimage))
{
    frameInfo = ds_map_find_value(subimageMap, subimage);
    ds_list_clear(frameInfo);
}
else
{
    frameInfo = ds_list_create();
    ds_map_add(subimageMap, subimage, frameInfo);
}

ds_list_add(frameInfo, overlaySprite);
ds_list_add(frameInfo, overlaySubimage);
ds_list_add(frameInfo, dx);
ds_list_add(frameInfo, dy);
ds_list_add(frameInfo, angle);
ds_list_add(frameInfo, xscale);
ds_list_add(frameInfo, subimageSelectionScript);
ds_list_add(frameInfo, zindex);
