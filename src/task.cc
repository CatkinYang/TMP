#include "task.h"
#include <fstream>
#include <tuple>
namespace TMP {

std::tuple<int, int, int> processLineData(const std::string &line) {
    std::istringstream iss(line);
    int data1, data2, data3;
    if (iss >> data1 >> data2 >> data3) {
        return std::make_tuple(data1, data2, data3);
    } else {
        std::cerr << "无法解析行数据: " << line << std::endl;
        return std::make_tuple(0, 0, 0); // 返回默认值
    }
}

std::stringstream Task::r_info() {
    std::stringstream ss;
    ss << "CLB: " << m_clb << ", DSP: " << m_dsp << ", BRAM: " << m_bram
       << std::endl;
    return ss;
}

std::stringstream Task::c_info() {
    std::stringstream ss;
    for (auto c : m_child) {
        ss << "Task Name: " << c->getName() << std::endl;
    }
    return ss;
}

Task::Task(int clb, int dsp, int bram, std::string name, Task::ptr Parent) {
    m_clb = clb;
    m_dsp = dsp;
    m_bram = bram;
    m_name = name;
    // if (Parent) {
    //     Parent->addToChildTask(shared_from_this());
    // }
};

void Task::addToChildTask(Task::ptr tp) { m_child.push_back(tp); }

Task::Task(int clb, int dsp, int bram, std::string name)
    : m_clb(clb), m_dsp(dsp), m_bram(bram), m_name(name) {}

std::unordered_set<Task::ptr> TaskSet::getTS() { return m_ts; }
// TaskSet加入任务
void TaskSet::addTask(Task::ptr tp) { m_ts.insert(tp); }

void TaskSet::deleteTask(Task::ptr tp) {
    if (m_ts.find(tp) == m_ts.end()) {
        std::cout << "the task doesn't exist" << std::endl;
    } else {
        m_ts.erase(tp);
    }
}

// 从文件中批量加入任务
void TaskSet::addTaskFromFile(const std::string filename) {
    std::ifstream inputFile(filename);
    if (inputFile.is_open()) {
        std::string line;
        while (std::getline(inputFile, line)) {
            std::tuple<int, int, int> task = processLineData(line);
            int Clb = std::get<0>(task);
            int Dsp = std::get<1>(task);
            int Bram = std::get<2>(task);
            Task::ptr newTask =
                std::make_shared<Task>(Clb, Dsp, Bram, std::string(""));
            addTask(newTask);
        }
        inputFile.close();
    } else {
        std::cerr << "Can't open file: '" << filename << std::endl;
    }
}

void TaskSet::printTask() {
    int id = 0;
    for (auto t : m_ts) {
        std::cout << id << ": " << t->r_info().str();
        id++;
    }
}

} // namespace TMP
