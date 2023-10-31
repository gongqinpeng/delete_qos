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
line 3591    .topic_data.length = 0,
             .topic_data.value = NULL,
             .group_data.length = 0,
             .group_data.value = NULL,
             .user_data.length = 0,
             .user_data.value = NULL,
line 3629    .topic_data.length = 0,
             .topic_data.value = NULL,
             .group_data.length = 0,
             .group_data.value = NULL,
             .user_data.length = 0,
             .user_data.value = NULL,             
line 3695    .group_data.length = 0,
             .group_data.value = NULL,
line 3704    .user_data.length = 0,
             .user_data.value = NULL,




#delete deadline latencybudget QoSs
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
line 3245  if ((dest->present & DDSI_QP_DEADLINE) && (dest->present & DDSI_QP_TIME_BASED_FILTER))
  {
    if (dest->deadline.deadline < dest->time_based_filter.minimum_separation)
      return DDS_RETCODE_INCONSISTENT_POLICY;
  }
line 3579 .deadline.deadline = DDS_INFINITY,
line 3580 .latency_budget.duration = 0,
line 3618 .deadline.deadline = DDS_INFINITY,
          .latency_budget.duration = 0,
line 3656 .deadline.deadline = DDS_INFINITY,
          .latency_budget.duration = 0,

delete "src/core/ddsi/src/ddsi_qosmatch.c"
line 186   if ((mask & DDSI_QP_DEADLINE) && rd_qos->deadline.deadline < wr_qos->deadline.deadline) {
    *reason = DDS_DEADLINE_QOS_POLICY_ID;
    return false;
  }
  if ((mask & DDSI_QP_LATENCY_BUDGET) && rd_qos->latency_budget.duration < wr_qos->latency_budget.duration) {
    *reason = DDS_LATENCYBUDGET_QOS_POLICY_ID;
    return false;
  }

delete "src/core/ddsc/src/dds_rhc_default.c"
line 585 rhc->deadline.dur = (reader != NULL) ? reader->m_entity.m_qos->deadline.deadline : DDS_INFINITY;

delete "src/core/ddsi/src/ddsi_proxy_endpoint.c"
line 256 src/core/ddsi/src/ddsi_proxy_endpoint.c

delete "src/core/ddsi/src/ddsi_transmit.c"
line 92 ddsi_xmsg_setmaxdelay (*pmsg, wr->xqos->latency_budget.duration);
line 179  ddsi_xmsg_setmaxdelay (*pmsg, wr->xqos->latency_budget.duration);
line 564 wr_deadline = wr->xqos->deadline.deadline != DDS_INFINITY;

delete "src/core/ddsc/src/dds_writer.c"
line 398 change "bool async_mode = true"

delete "src/core/ddsc/src/dds_whc.c"
line 431 wrinfo->has_deadline = (qos->deadline.deadline != DDS_INFINITY);
line 480 whc->deadline.dur = (wrinfo->writer != NULL) ? wrinfo->writer->m_entity.m_qos->deadline.deadline : DDS_INFINITY;




#delete ownership ownershipstrength QoSs
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
line 3634    .ownership.kind = DDS_OWNERSHIP_SHARED,
line 3640    .ownership_strength.value = 0,
line 3679    .ownership.kind = DDS_OWNERSHIP_SHARED,

delete "src/core/ddsi/src/ddsi_qosmatch.c"
line 193   if ((mask & DDSI_QP_OWNERSHIP) && rd_qos->ownership.kind != wr_qos->ownership.kind) {
    *reason = DDS_OWNERSHIP_QOS_POLICY_ID;
    return false;
  }

delete "src/core/ddsc/src/dds_rhc_default.c"
line 614 rhc->exclusive_ownership = (qos->ownership.kind == DDS_OWNERSHIP_EXCLUSIVE);

delete "src/core/ddsi/src/ddsi_endpoint.c"
line 141  wrinfo->ownership_strength = xqos->ownership_strength.value;

