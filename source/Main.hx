/*
    Copyright (c) 2021 KBoardGames.com
    This program is part of KBoardGames client software.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published
    by the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

package;

/**
 * the first class.
 * TODO one day you need to remove all created elements before they are created so that memory does not grow which will slow down the client which will happens now. the client becomes a bit more slow each time entering and exiting a scene.
 * search for the word TODO to see all the to do.
 * @author kboardgames.com
 */
class Main extends Sprite
{
	var initialState:Class<FlxState> = MenuState; // The FlxState the game starts with.

	var zoom:Float = -1; // If -1, zoom is automatically calculated to fit the window dimensions.

	// You can pretty much ignore everything from here on - your code should go in your states.

	public function new()
	{
		super();

		setupGame();
	}

	private function setupGame():Void
	{
		addChild(new FlxGame(Reg.gameWidth, Reg.gameHeight, initialState, zoom, Reg._framerate, Reg._framerate, true, true));
	}
	
}
