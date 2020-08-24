include "_namespaces.thrift"

struct Channel {
    1: required i64 id;
    2: required string name;
    3: optional string topic;
    4: required bool is_private;
    5: required bool is_external;
}
