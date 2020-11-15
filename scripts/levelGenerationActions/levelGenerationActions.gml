function generateAliens(startX, startY, amountOfRows, amountOfColumns) {
	var xPos = startX;	
	var yPos = startY;
	for (rows = 0; rows < amountOfRows; rows += 1) {
		for (columns = 0; columns < amountOfColumns; columns += 1) {
			instance_create_layer(xPos, yPos, "Instances", obj_alien);
			xPos = xPos + 96;
		}
		xPos = startX;
		yPos = yPos + 96;
	}
}

function generatePlayer(lives_left) {
	player = instance_create_layer(640, 704, "Instances", obj_player);
	player.lives_left = lives_left;
}


#region UnitTests
function test_level_generation_actions() {

test_describe("generate_player_actions", function() {

	test_after_each(function() {
		instance_destroy(obj_player);
	});

	test_it("generates a player", function() {
		// Act
		generatePlayer(1337);

		// Assert
		assert_exists(obj_player);
		assert_equal(1337, obj_player.lives_left, "Incorrect number of lives set on the player");
	});

});

test_describe("generate_aliens_actions", function() {

	test_after_each(function() {
		instance_destroy(obj_alien);
	});

	test_it("generates an alien", function() {
		// Act
		generateAliens(0, 0, 1, 1);

		// Assert
		assert_exists(obj_alien);
	});

	test_it("generates multiple aliens", function() {
		// Act
		generateAliens(0, 0, 3, 3);

		// Assert
		assert_equal(9, instance_number(obj_alien), "Incorrect number of aliens generated");
	});


});
}

#endregion