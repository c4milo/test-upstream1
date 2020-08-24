include "_namespaces.thrift"
include "user.thrift"
include "team.thrift"
include "channel.thrift"

struct Organization {
    1: required i64 id;
    2: required string name;
    3: required user.User owner;
    4: required string email;
}

struct OrganizationTeam {
    1: required i64 id;
    2: required Organization org;
    3: required team.Team team;
}

struct OrganizationMember {
    1: required i64 id;
    2: required Organization org;
    3: required user.User member;
}

struct OrganizationChannel {
    1: required i64 id;
    2: required Organization org;
    3: required channel.Channel channel;
}
