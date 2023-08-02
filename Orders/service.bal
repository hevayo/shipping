import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
    label: "Orders",
    id: "Orders-c295cbe1-cf8c-4448-bebe-d8ef9f0d610b"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get orders() returns Order[]|error {
        // Send a response back to the caller.
        return [
            {
                orderId: "1",
                orderName: "Order 1",
                orderDescription: "Order 1 Description",
                orderStatus: "Order 1 Status",
                orderDate: "Order 1 Date",
                orderAmount: "Order 1 Amount",
                orderCurrency: "Order 1 Currency"
            },
            {
                orderId: "2",
                orderName: "Order 2",
                orderDescription: "Order 2 Description",
                orderStatus: "Order 2 Status",
                orderDate: "Order 2 Date",
                orderAmount: "Order 2 Amount",
                orderCurrency: "Order 2 Currency"
            }
        ];
    }
}

type Order record {
    string orderId;
    string orderName;
    string orderDescription;
    string orderStatus;
    string orderDate;
    string orderAmount;
    string orderCurrency;
};
