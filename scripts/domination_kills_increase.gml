//Adds 1 to the kill count for the specified player, in the specified domination_kills table.
//If player is not found, add them to the table.
//Arg0: domination_kills table
//Arg1: Player
domination_kills_set(argument[0], argument[1], domination_kills_get(argument[0], argument[1]) + 1);
