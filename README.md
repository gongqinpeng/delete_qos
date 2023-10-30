# delete_qos

delete "src/core/ddsc/include/dds/ddsc/dds_public_qosdefs.h"
enum dds_qos_policy_id "DDS_USERDATA_QOS_POLICY_ID" "DDS_TOPICDATA_QOS_POLITY_ID" "DDS_GROUPDATA_QOS_POLITY_ID"

delete "src/core/ddsc/include/dds/ddsc/dds_public_qos.h" The three QoS's definition of set and get methods

delete "src/core/ddsc/src/dds_qos.c" The three QoS's set and get methods


delete "src/core/ddsc/include/dds/ddsc/dds_public_qosdefs.h"
enum dds_qos_policy_id "DDS_USERDATA_QOS_POLICY_ID" "DDS_TOPICDATA_QOS_POLITY_ID" "DDS_GROUPDATA_QOS_POLITY_ID"

delete "src/core/ddsc/include/dds/ddsc/dds_public_qos.h" The three QoS's definition of set and get methods

delete "src/core/ddsc/src/dds_qos.c" The three QoS's set and get methods



delete "src/core/ddsc/include/dds/ddsc/dds_public_qosdefs.h"
enum dds_qos_policy_id "DDS_OWNERSHIP_QOS_POLICY_ID" "DDS_OWNERSHIPSTRENGTH_QOS_POLICY_ID"
enum dds_ownership_kind

delete "src/core/ddsc/include/dds/ddsc/dds_public_qos.h" The two QoS's definition of set and get methods

delete "src/core/ddsc/src/dds_qos.c" The three QoS's set and get methods

delete "src/core/ddsi/include/dds/ddsi/ddsi_xqos.h"
struct dds_ownership_qospolicy
line 279 "dds_ownership_qospolicy_t ownership"


delete "src/core/ddsi/src/ddsi_plist.c"
line 2030   QP  (OWNERSHIP, ownership, XE1),
line 3590    .ownership.kind = DDS_OWNERSHIP_SHARED,
line 3634     .ownership.kind = DDS_OWNERSHIP_SHARED,
line 3679    .ownership.kind = DDS_OWNERSHIP_SHARED,

delete "src/core/ddsi/src/ddsi_qosmatch.c"
line 193   if ((mask & DDSI_QP_OWNERSHIP) && rd_qos->ownership.kind != wr_qos->ownership.kind) {
    *reason = DDS_OWNERSHIP_QOS_POLICY_ID;
    return false;
  }
delete "src/core/ddsc/src/dds_rhc_default.c"
line 614 rhc->exclusive_ownership = (qos->ownership.kind == DDS_OWNERSHIP_EXCLUSIVE);


