#include <string>
#include <map>
#include <vector>

class Dispatcher {
    public:
        static Dispatcher& Get();
        static void Subscribe(std::function<void(void*)>, const char*);
        static void Emit(const char*, void* = nullptr, int count = 1);

    private:
        std::map<const char*, std::vector<std::function<void(void*)>>> subscribedListeners;
};
