{
    with(argument[0]) {
        instance_destroy();
    }
    
    ds_list_delete(global.players, ds_list_find_index(global.players, argument[0]));
}
