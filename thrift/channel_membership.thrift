include "_namespaces.thrift"
include "channel.thrift"

enum MembershipType {
    OWNER = 0,
    ADMIN = 1,
    EXTERNAL = 2,
    INTERNAL = 3
}

struct ChannelMembership {
    1: required i64 id;
    2: required channel.Channel channel;
    3: required MembershipType type = MembershipType.INTERNAL;
}
