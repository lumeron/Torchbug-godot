About:
    You are here to examine an expired distress call. Open the hatch to the abandoned ship/station in order to progress. The creature that roams the corridors may yet be hungry... but for what?

    Features co-op play, but these two engineers in space are not exactly well-equipped: there's one camera and one light split between the pair, and the stash of fuses has adopted a strange habit of shrinking...

    How to:
        The game was not 100% completed, so the above-mentioned stash of fuses does not yet exist. A simple control scheme is applied for two players (WASD for player 1, IJKL and O for player 2), and (as will be quickly obvious) one character has a portable light source but the other has the camera, so a form of cooperation is required to traverse the level. In current rushed implementation, you will simply need to find the right corridor to exit, but in the meantime feel free to play with glowsticks and shadows. :)

    Note:
        Do not press E - if you do, the camera character will freeze in place. This is because the character actions are handled by "states", and the unused "dropping" state is not handled correctly for the camera character. A very simple fix can be applied, but was not done in Jam time limit.

    

Run Steps (if not using executable file):

 1) Extract source zip 
 2) Install or download Godot (standalone launcher available on Godot website)
 3) Open Godot
 4) Import Project (point to project.godot file in extracted folder in step 1)
 5) Run project




Note:
    This game was not completely finished during the jam, but a branch will continue to be updated in Git; being built in Godot, everything was from the ground up (no prefabs or similar) - this allowed us to have a very, very light credits section but also cost us a fully-playable game. Collision and layering took precedent, and construction objects were built in a pseudo-modular fashion (modular but not quite ready for grid snap) so that more levels can be built in a matter of minutes. Light sources refer to the same script (except the permanent light affixed to one player), but the script provides randomness that allows for an interesting light show if playing with glowsticks.


Known bugs: 
 - Issue where the camera player will freeze if they press "E" - this is because the control scheme allows the player to go into a state of dropping a glowstick, but that character was not intended to do so... the code requires only a tiny tweak to fix this, but the issue was not identified until after 3PM Sunday. because the character actions are handled by "states", and the unused "dropping" state is not handled correctly for the camera character. A very simple fix can be applied, but was not done in Jam time limit.
 - The same issue occurs when clicking Q or U (intended for interaction states for the characters).
 - There is also an issue where footsteps cannot be heard for the camera player but can be heard for the light character... two lines of code were missed in the other player's script.
 
