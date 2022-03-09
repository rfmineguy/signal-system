#include <iostream>
#include "dispatcher.h"

struct ColData {
    int type;
    int x, y;
};

struct MousePressData {
    int button;
};

struct Entity {
    void(*onKeyPressed)(void *) = nullptr;
    void(*onKeyReleased)(void*) = nullptr;
    void(*onMousePressed)(void*) = [](void* userData) {
        MousePressData* data = (MousePressData*) userData;
        std::cout << "Mouse button #" << data->button << " pressed" << std::endl;
    };
    void(*onMouseReleased)(void*) = nullptr;
    void(*onCollission)(void*) = nullptr;
};

int main() {
    Entity entity1, entity2;
    entity1.onKeyPressed = [](void*) { std::cout << "Testing" << std::endl; };
    entity1.onKeyReleased = [](void*) { std::cout << "Key released callback" << std::endl; };

    entity2.onKeyPressed = [](void*) { std::cout << "Entity2 pressed" << std::endl; };
    entity2.onKeyReleased = [](void*) { std::cout << "Entity2 released" << std::endl; };

    entity2.onCollission = [](void* userData) {
        if (userData) {
            ColData* colData = (ColData*) userData;
            std::cout << colData->type << std::endl;
            std::cout << colData->x << ", " << colData->y << std::endl;
        }
        else {
            std::cout << "userData is nullptr" << std::endl;
        }
    };

    ColData data { 213, 20, 30 };
    MousePressData mouseData { 1 };
    for (int i = 0; i < 20; i++) {
        Dispatcher::Enqueue(entity1.onKeyPressed, "key_pressed");
        Dispatcher::Enqueue(entity1.onMousePressed, "mouse_pressed");
        Dispatcher::Enqueue(entity2.onKeyPressed, "key_pressed");
        Dispatcher::Enqueue(entity1.onKeyReleased, "key_released");
        Dispatcher::Enqueue(entity2.onKeyReleased, "key_released");
        Dispatcher::Enqueue(entity2.onCollission, "on_collision");
        Dispatcher::Dispatch("key_pressed");
        Dispatcher::Dispatch("key_released");
        Dispatcher::Dispatch("on_collision", &data);
        Dispatcher::Dispatch("mouse_pressed", &mouseData);
    }
}
