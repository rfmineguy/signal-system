#include "dispatcher.h"
#include <cstring>
#include <iostream>
#include <ostream>
#include <vector>

Dispatcher& Dispatcher::Get() {
    static Dispatcher dispatcher;
    return dispatcher;
}

void Dispatcher::Enqueue(std::function<void(void*)> function, const char* name) {
    if (function == nullptr) {
        std::cerr << "ERROR: Cannot enqueue a null function" << std::endl;
        return;
    }
    auto& map = Get().queue;
    if (map.count(name) == 0) {
        map.insert(std::pair<const char*, std::vector<std::function<void(void*)>>>(name, {}));
    }
    map.at(name).push_back(function);
}

void Dispatcher::Dispatch(const char* signal, void* userData, bool erase) {
    if (Get().queue.count(signal) > 0) {
        auto& funcVec = Get().queue.at(signal);
        for (int i = 0; i < funcVec.size(); i++) {
            funcVec.at(i)(userData);
        }
        if (erase)
            Get().queue.erase(signal);
    }
    else {
        std::cout << "No signals matching '" << signal << "' in the queue" << std::endl;
    }
}

void Dispatcher::DispatchAll() {
    for (const auto& entry : Get().queue) {
        Dispatch(entry.first, nullptr, false);
    }
    Get().queue.clear();
}

void Dispatcher::DebugQueue() {
    for (auto& entry : Get().queue) {
        std::cout << "Entry : \t" << entry.first << std::endl;
    }
}
