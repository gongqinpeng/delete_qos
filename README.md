# delete_qos

#delete userdata topicdata groupdata QoSs
delete "src/core/ddsc/include/dds/ddsc/dds_public_qosdefs.h"
enum dds_qos_policy_id "DDS_USERDATA_QOS_POLICY_ID" "DDS_TOPICDATA_QOS_POLITY_ID" "DDS_GROUPDATA_QOS_POLITY_ID"

delete "src/core/ddsc/include/dds/ddsc/dds_public_qos.h" The three QoS's definition of set and get methods

delete "src/core/ddsc/src/dds_qos.c" The three QoS's set and get methods

delete "src/core/ddsi/include/dds/ddsi/ddsi_xqos.h"
line 262 dds_groupdata_qospolicy_t group_data; 
line 265 dds_topicdata_qospolicy_t topic_data;
line 278 dds_userdata_qospolicy_t user_data;

delete "src/core/ddsi/src/ddsi_plist.c"
line 2003  QP  (USER_DATA, user_data, XO),
line 2006  QP  (TOPIC_DATA, topic_data, XO),
line 2007  QP  (GROUP_DATA, group_data, XO),







delete "src/core/ddsc/include/dds/ddsc/dds_public_qosdefs.h"
enum dds_qos_policy_id "DDS_DEADLINE_QOS_POLICY_ID" "DDS_LATENCYBUDGET_QOS_POLITY_ID"

delete "src/core/ddsc/include/dds/ddsc/dds_public_qos.h" The two QoS's definition of set and get methods

delete "src/core/ddsc/src/dds_qos.c" The two QoS's set and get methods

delete "src/core/ddsi/include/dds/ddsi/ddsi_xqos.h"
struct dds_deadline_qospolicy
struct dds_latency_budget_qospolicy
line 261 dds_deadline_qospolicy_t deadline;
line 262 dds_latency_budget_qospolicy_t latency_budget;

delete "src/core/ddsi/src/ddsi_plist.c"
line 2012 QP  (DEADLINE,  deadline, XD),
line 2013 QP  (LATENCY_BUDGET, latency_budget, XD),






delete "src/core/ddsc/include/dds/ddsc/dds_public_qosdefs.h"
enum dds_qos_policy_id "DDS_OWNERSHIP_QOS_POLICY_ID" "DDS_OWNERSHIPSTRENGTH_QOS_POLICY_ID"
enum dds_ownership_kind

delete "src/core/ddsc/include/dds/ddsc/dds_public_qos.h" The two QoS's definition of set and get methods

delete "src/core/ddsc/src/dds_qos.c" The three QoS's set and get methods

delete "src/core/ddsi/include/dds/ddsi/ddsi_xqos.h"
struct dds_ownership_qospolicy
struct dds_ownership_strength_qospolicy
line 279 "dds_ownership_qospolicy_t ownership"
line 280  dds_ownership_strength_qospolicy_t ownership_strength;


delete "src/core/ddsi/src/ddsi_plist.c"
line 2030   QP  (OWNERSHIP, ownership, XE1),
line 2031   QP  (OWNERSHIP_STRENGTH,  ownership_strength, Xi),
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


