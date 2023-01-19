extern "C"{
#include "UI.h"
#include "SYSTEM.h"
#include "DISPLAY.h"
}
#include <gtest/gtest.h>


#include "/home/vany/FFF_UnitTest/fff/fff.h"
DEFINE_FFF_GLOBALS;

/*Display*/
FAKE_VOID_FUNC(DISPLAY_init);
FAKE_VOID_FUNC(DISPLAY_clear);
FAKE_VOID_FUNC(DISPLAY_output, char*);
FAKE_VALUE_FUNC(unsigned int, DISPLAY_get_line_capacity);
FAKE_VALUE_FUNC(unsigned int, DISPLAY_get_line_insert_index);
/*System*/
FAKE_VOID_FUNC(SYSTEM_register_irq, irq_func_t, unsigned int);


FAKE_VOID_FUNC(button_press_cbk);

class TestUI:public testing::Test
{
	void SetUp()
	{
		RESET_FAKE(DISPLAY_init);
		RESET_FAKE(DISPLAY_clear);
		RESET_FAKE(DISPLAY_output);
		RESET_FAKE(DISPLAY_get_line_capacity);
		RESET_FAKE(DISPLAY_get_line_insert_index);
		RESET_FAKE(SYSTEM_register_irq);
		RESET_FAKE(button_press_cbk);

		FFF_RESET_HISTORY();

		DISPLAY_get_line_capacity_fake.return_val = 2;
	}
};

TEST_F(TestUI, test_Ui_init)
{
	UI_init();
	ASSERT_EQ(DISPLAY_init_fake.call_count, 1);
	ASSERT_EQ(SYSTEM_register_irq_fake.call_count, 1);
	// special: test funtion callback function
	ASSERT_EQ((void*)SYSTEM_register_irq_fake.arg0_val,(void*)UI_button_irq_handler);
	ASSERT_EQ(SYSTEM_register_irq_fake.arg1_val, IRQ_GPIO_2);
}

TEST_F(TestUI, test_UI_get_missed_when_no_UI_button_irp_handler)
{
	ASSERT_EQ(UI_get_missed_irqs(), 0);
}

TEST_F(TestUI, test_UI_get_missed_irp_when_have_UI_botton_irp_handler)
{
	UI_init();
	UI_button_irq_handler();
	ASSERT_EQ(UI_get_missed_irqs(), 1);
}

TEST_F(TestUI, rest_UI_get_missed_irp_when_have_UI_register_button_cbk_and_UI_button_iqr_handler)
{
	UI_init();
	UI_register_button_cbk(button_press_cbk);
	UI_button_irq_handler();
	ASSERT_EQ(UI_get_missed_irqs(), 0);
}


TEST_F(TestUI, test_UI_write_line_when_equal_DISPLAY_get_line)
{
	char mes[] = "Dinh Van Y";
	DISPLAY_get_line_insert_index_fake.return_val = 2;
	UI_write_line(mes);
	ASSERT_EQ(DISPLAY_clear_fake.call_count, 1);
	ASSERT_EQ(DISPLAY_output_fake.call_count,1);

	// Check the order of the calls:  Don't care about the first two:
	// DISPLAY_get_line_capacity = fff.call_history[0]
	// and DISPLAY_get_line_insert_index = fff.call_history[1]
	ASSERT_EQ(fff.call_history_idx, 4);
	ASSERT_EQ(fff.call_history[2], (void *) DISPLAY_clear);
	ASSERT_EQ(fff.call_history[3], (void *) DISPLAY_output);
}

TEST_F(TestUI, test_UI_write_line_when_not_equal_DISPLAY_get_line)
{
	char mes[] = "Dinh Van Y";
	DISPLAY_get_line_insert_index_fake.return_val = 1;
	UI_write_line(mes);
	ASSERT_EQ(DISPLAY_clear_fake.call_count, 0);
	ASSERT_EQ(DISPLAY_output_fake.call_count,1);
}


TEST_F(TestUI, when_string_longer_than_26_then_truncated_string_output)
{
	// given
	char input[] = "abcdefghijklmnopqrstuvwxyz0123456789";
	char expected[] = "abcdefghijklmnopqrstuvwxyz";
	// when
	UI_write_line(input);
	// then, because UI_write_line has just strncpy 26 first char
	ASSERT_EQ(strncmp(expected, DISPLAY_output_fake.arg0_val, 37), 0);
}

int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
} 