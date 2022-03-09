#include <string>
#include <map>
#include <vector>

struct DispatchData {

};

class Dispatcher {
    public:
        static Dispatcher& Get();
        static void Enqueue(std::function<void(void*)>, const char*);
        static void Dispatch(const char*, void* = nullptr, bool erase = true);
        static void DebugQueue();
    private:
        static void DispatchAll();

    private:
        std::map<const char*, std::vector<std::function<void(void*)>>> queue;
};
