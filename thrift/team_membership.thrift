include "_namespaces.thrift"
include "team.thrift"

enum MembershipType {
    OWNER = 0,
    ADMIN = 1,
    MEMBER = 2,
}

struct TeamMembership {
    1: required i64 id;
    2: required team.Team team;
    3: required MembershipType type = MembershipType.MEMBER;
}
