#include <string>
#include <map>
#include <vector>

struct Entity {
    std::function<void(void*)> onKeyPressed = nullptr;
    std::function<void(void*)> onKeyReleased = nullptr;
    std::function<void(void*)> onMousePressed = nullptr;
    std::function<void(void*)> onMouseReleased = nullptr;
    std::function<void(void*)> onCollission = nullptr;
};

class Dispatcher {
    public:
        static Dispatcher& Get();
        static void Subscribe(std::function<void(void*)>, const char*);
        static void Emit(const char*, void* = nullptr, int count = 1);

    private:
        std::map<const char*, std::vector<std::function<void(void*)>>> subscribedListeners;
};
