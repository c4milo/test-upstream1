include "_namespaces.thrift"

include "user.thrift"
include "channel.thrift"

struct Thread {
    1: required i64 id;
    2: required channel.Channel channel;
    3: required string created_at;
    4: optional i32 message_count;
}

enum ContentType {
    TEXT_PLAIN = 0,
    TEXT_MARKDOWN = 1,
    HYPERLINK = 2;
    IMAGE = 3;
}

struct Message {
    1: required i64 id;
    2: required user.User from;
    3: required channel.Channel channel;
    4: required string content;
    5: required ContentType content_type;
    6: optional Thread thread;
}
