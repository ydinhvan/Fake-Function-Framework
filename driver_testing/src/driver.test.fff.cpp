extern "C"
{
    #include "driver.h"
    #include "registers.h"
    #include "hardware_abstraction.h"
}
#include "fff.h"
#include <gtest/gtest.h>

DEFINE_FFF_GLOBALS;

FAKE_VOID_FUNC(IO_MEM_WR8, unsigned int, uint8_t);
FAKE_VALUE_FUNC(uint8_t, IO_MEM_RD8, unsigned int);

class DriverTest: public testing::Test
{
    void SetUp()
    {
        RESET_FAKE(IO_MEM_WR8);
        RESET_FAKE(IO_MEM_RD8);
        FFF_RESET_HISTORY();
    }
};

TEST_F(DriverTest, test_driver_write)
{
    driver_write(0x03);
    ASSERT_EQ(IO_MEM_WR8_fake.call_count, 1);
    ASSERT_EQ(IO_MEM_WR8_fake.arg0_val, DRIVER_OUTPUT_REGISTER);
    ASSERT_EQ(IO_MEM_WR8_fake.arg1_val, 0x03); 
}

TEST_F(DriverTest, test_driver_read)
{
    IO_MEM_RD8_fake.return_val = 0x56;
    uint8_t return_driver = driver_read();
    ASSERT_EQ(IO_MEM_RD8_fake.call_count, 1);
    ASSERT_EQ(IO_MEM_RD8_fake.arg0_val, DRIVER_INPUT_REGISTER);
    ASSERT_EQ(return_driver, 0x56);
}

TEST_F(DriverTest, test_driver_init_device)
{
    // 
    //uint8_t hw_version_ = HARDWARE_REV_B;
    IO_MEM_RD8_fake.return_val = HARDWARE_REV_B;
    // when driver_init_device duoc goi
    driver_init_device();

    // ham 
    ASSERT_EQ((void*) IO_MEM_RD8, fff.call_history[0]);
    ASSERT_EQ(IO_MEM_RD8_fake.arg0_history[0], HARDWARE_VERSION_REGISTER);

    //
    ASSERT_EQ((void*) IO_MEM_WR8, fff.call_history[1]);
    ASSERT_EQ(IO_MEM_WR8_fake.arg0_history[0], DRIVER_PERIPHERAL_ENABLE_REG);
    ASSERT_EQ(IO_MEM_WR8_fake.arg1_history[0], 1);

    //
    ASSERT_EQ((void*) IO_MEM_WR8, fff.call_history[2]);
    ASSERT_EQ(IO_MEM_WR8_fake.arg0_history[1], DRIVER_PERIPHERAL_INITIALIZE_REG);
    ASSERT_EQ(IO_MEM_WR8_fake.arg1_history[1], 1);

}

int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}