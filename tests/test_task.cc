#include "../src/task.h"

void test() {
    TMP::Task::ptr T1(new TMP::Task(100, 200, 300, "Task_1", nullptr));
    TMP::Task::ptr T2(new TMP::Task(100, 200, 300, "Task_2", T1));
    TMP::Task::ptr T3(new TMP::Task(100, 200, 300, "Task_3", T2));
    TMP::Task::ptr T4(new TMP::Task(100, 200, 300, "Task_4", T3));
    std::cout << T1->c_info().str();
    std::cout << T2->c_info().str();
    std::cout << T3->c_info().str();
    std::cout << T4->c_info().str();
}
// void test1() {
//     TMP::Task::ptr parent = std::make_shared<TMP::Task>(10, 20, 30,
//     "Parent"); TMP::Task::ptr child = std::make_shared<TMP::Task>(
//         5, 10, 15, "Child",
//         [&](TMP::Task::ptr task) { parent->addToChildTask(task); });
//     std::cout << parent->c_info().str();
// }
int main() {
    // TMP::TaskSet::ptr Ts(new TMP::TaskSet);
    // Ts->addTaskFromFile(
    //     "/Users/catkin/Study/DFX/TMP/input/task_resources_requirements.txt");
    // Ts->printTask();
    test();
    // test1();
    return 0;
}
