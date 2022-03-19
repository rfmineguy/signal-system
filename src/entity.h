#pragma once
#include <functional>

struct Entity {
    std::function<void(void*)> onKeyPressed = nullptr;
    std::function<void(void*)> onKeyReleased = nullptr;
    std::function<void(void*)> onMousePressed = nullptr;
    std::function<void(void*)> onMouseReleased = nullptr;
    std::function<void(void*)> onCollission = nullptr;
};
