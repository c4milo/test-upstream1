include "_namespaces.thrift"

struct User {
    1: required i64 ID;
    2: required string email;
    3: optional string name;
    4: optional string last_time;
}
