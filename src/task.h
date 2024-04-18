#pragma once
#include "singleton.h"
#include <fstream>
#include <iostream>
#include <map>
#include <memory>
#include <sstream>
#include <string>
#include <unordered_set>
#include <vector>
namespace TMP {

class Task : std::enable_shared_from_this<Task> {
  public:
    using ptr = std::shared_ptr<Task>;
    Task(int clb, int dsp, int bram, std::string name, Task::ptr Parent);
    Task(int clb, int dsp, int bram, std::string name);
    int getClb() const { return m_clb; }
    int getDsp() const { return m_dsp; }
    int getBram() const { return m_bram; }
    int getId() const { return m_id; }
    int getRt() const { return m_runtime; }
    std::string getName() const { return m_name; }
    std::vector<Task::ptr> getChild() const { return m_child; }
    std::stringstream r_info();
    void addToChildTask(Task::ptr tp);
    std::stringstream c_info();

  private:
    std::string m_name;
    int m_clb;
    int m_dsp;
    int m_bram;
    std::vector<Task::ptr> m_child;
    int m_id;
    int m_runtime;
};

class TaskSet {
  public:
    using ptr = std::shared_ptr<TaskSet>;
    TaskSet() { m_ts.clear(); };
    std::unordered_set<Task::ptr> getTS();
    void addTask(Task::ptr tp);
    void deleteTask(Task::ptr tp);
    void addTaskFromFile(const std::string filename);
    void addTaskFromFileDAG(const std::string filename);
    void printTask();

  private:
    std::unordered_set<Task::ptr> m_ts;
};

// class TaskSetManager {
//   public:
//     TaskSetManager();
//     TaskSet::ptr getTaskSet() const { return m_ts_default; }

//   private:
//     std::map<std::string, TaskSet::ptr> m_tss;
//     TaskSet::ptr m_ts_default;
// };

// using TaskSetMgr = TMP::singleton<TaskSetManager>;

} // namespace TMP
