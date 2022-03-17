#include "dispatcher.h"
#include <cstring>
#include <iostream>
#include <ostream>
#include <stdexcept>
#include <vector>
#include <assert.h>

Dispatcher& Dispatcher::Get() {
    static Dispatcher dispatcher;
    return dispatcher;
}

void Dispatcher::Subscribe(std::function<void(void *)> function, const char* name) {
    if (function == nullptr) {
        throw std::runtime_error("ERROR: Cannot enqueue a null function");
    }
    auto& map = Get().subscribedListeners;
    if (map.count(name) == 0) {
        map.insert(std::pair<const char*, std::vector<std::function<void(void*)>>>(name, {}));
    }
    map.at(name).push_back(function);
}

void Dispatcher::Emit(const char* signal, void* userData, int count) {
    if (Get().subscribedListeners.count(signal) > 0) {
        auto& funcVec = Get().subscribedListeners.at(signal);
        for (int i = 0; i < funcVec.size(); i++) {
            for (int j = 0; j < count; j++) {
                funcVec.at(i)(userData);
            }
        }
    }
}
