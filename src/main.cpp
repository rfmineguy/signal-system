#include <iostream>
#include "dispatcher.h"
#include "entity.h"

struct AdvancementData {
    std::string id;
    std::string message;
};

struct ItemData {
    std::string itemName;
    int count;
};

template<typename T>
bool vectorContains(const std::vector<T>& vec, T item);

class Player : public Entity {
    public:
        std::function<void(void*)> onAdvancementAchieved = [this](void* advancementData) {
            AdvancementData* data = (AdvancementData*) advancementData;
            if (!vectorContains(aquiredAdvancements, data->id)) {
                aquiredAdvancements.push_back(data->id);
                std::cout << "Achieved advancement : " << data->id << ", " << data->message << std::endl;
            }
            else {
                std::cout << "Already achieved that advancement : "  << data->id << std::endl;
            }
        };
        std::function<void(void*)> aquireItem = [](void* itemData) {
            ItemData* data = (ItemData*)itemData;
            AdvancementData adData {"aquire_item", "You aquired an item!"};
            Dispatcher::Emit("new_advancement", &adData);
        };
        std::function<void(void*)> openInventory = [this](void*) {
            AdvancementData adData{"open_inv", "You opened your inventory!"};
            Dispatcher::Emit("new_advancement", &adData);
        };
    private:
        std::vector<std::string> aquiredAdvancements;
};

int main() {
    //Player player;

    //Dispatcher::Subscribe(player.openInventory, "open_inventory");
    //Dispatcher::Subscribe(player.onAdvancementAchieved, "new_advancement");
    //Dispatcher::Subscribe(player.aquireItem, "on_aquireitem");

    Dispatcher::Emit("open_inventory");
    Dispatcher::Emit("open_inventory");

    ItemData item {"apple", 2};
    Dispatcher::Emit("on_aquireitem", &item);
    item.itemName = "apple";
    Dispatcher::Emit("on_aquireitem", &item);
}

template <typename T>
bool vectorContains(const std::vector<T>& vec, T item) {
    for (const T& val : vec) {
        if (val == item)
            return true;
    }
    return false;
}
