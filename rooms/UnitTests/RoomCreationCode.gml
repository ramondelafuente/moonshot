// Register all the test suites
test_bullet_actions();
test_event_types();
test_eventbus();
test_level_generation_actions();

// Run all the tests and auto-end the game
test_run_all(true);