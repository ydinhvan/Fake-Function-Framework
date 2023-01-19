#include "test_common.h"

char GLOBAL_TEST_bus_read_ret[2] = {0x10};

DEFINE_FFF_GLOBALS;

/*bus*/


/*display*/
TEST_F(Test_Main, test_display_init)
{
    display_init();
    ASSERT_EQ(bus_read_write_fake.call_count, 1);
    ASSERT_EQ(bus_read_write_fake.arg0_val, DISPLAY_ADDRESS);
    ASSERT_EQ(bus_read_write_fake.arg1_val, DISPLAY_REG_INIT);
    //ASSERT_EQ(bus_read_write_fake.arg2_val, (uint8_t*)init_config);
    ASSERT_EQ(bus_read_write_fake.arg3_val, 3);
    ASSERT_EQ(bus_read_write_fake.arg4_val, false);
}

TEST_F(Test_Main, test_display_init_when)
{
    display_init();
    ASSERT_EQ(display_init(), false);
}

TEST_F(Test_Main, )



int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}