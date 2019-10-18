//Origin (x, y) of the sound, Sound to play
{
    var vol, isWindows8DotX;
    vol = calculateVolume(argument[0], argument[1]);
    if(vol==0) exit;
    
    // Prevent crashes on Win8 (NT Kernel 6.2)
    isWindows8DotX = (global.NTKernelVersion == 6.2 or global.NTKernelVersion == 6.3) and global.CurrentMajorVersionNumber == -1;
    if (isWindows8DotX or global.forceAudioFix)
        sound_stop(argument[2]);
        
    sound_volume(argument[2], vol);
    sound_pan(argument[2], calculatePan(argument[0]));
    sound_play(argument[2]);
}
