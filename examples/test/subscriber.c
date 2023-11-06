#include "dds/dds.h"
#include "testData.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

/* An array of one message (aka sample in dds terms) will be used. */
#define MAX_SAMPLES 1

int main(int argc, char **argv) {
    dds_entity_t participant;
    dds_entity_t topic;
    dds_entity_t reader;
    testData_Msg *msg;
    void *samples[MAX_SAMPLES];
    dds_sample_info_t infos[MAX_SAMPLES];
    dds_return_t rc;
    dds_qos_t *qos;
    (void) argc;
    (void) argv;
    dds_entity_t domain;
    char topic_name[10];


    /* Determine how the domain is created based on the number of parameters */
    if (argc > 1) {
        char cur = *argv[1];
        //printf("cur %c \n", cur);
        /*create a domain */
        domain = dds_create_domain(cur, NULL);
        if (domain < 0)
            DDS_FATAL("dds_create_domain: %s\n", dds_strretcode(-participant));
        /* Create a Participant. */
        participant = dds_create_participant(cur, NULL, NULL);
        if (participant < 0)
            DDS_FATAL("dds_create_participant: %s\n", dds_strretcode(-participant));
    } else {
        /* Create a Participant. */
        participant = dds_create_participant(DDS_DOMAIN_DEFAULT, NULL, NULL);
        if (participant < 0)
            DDS_FATAL("dds_create_participant: %s\n", dds_strretcode(-participant));
    }



    /* Create a Topic. */
    printf("please enter topic_name, the topic_name of publisher and subscriber must be same\n");
    gets(topic_name);
    topic = dds_create_topic(
            participant, &testData_Msg_desc, topic_name, NULL, NULL);
    if (topic < 0)
        DDS_FATAL("dds_create_topic: %s\n", dds_strretcode(-topic));

    /* Create a reliable and durable Reader. */
    qos = dds_create_qos();
    dds_qset_reliability(qos, DDS_RELIABILITY_RELIABLE, DDS_SECS(10));
    dds_qset_durability(qos, DDS_DURABILITY_TRANSIENT_LOCAL);


    reader = dds_create_reader(participant, topic, qos, NULL);
    if (reader < 0)
        DDS_FATAL("dds_create_reader: %s\n", dds_strretcode(-reader));
    dds_delete_qos(qos);

    printf("\n=== [Subscriber] Waiting for a sample ...\n");
    fflush(stdout);

    rc = dds_set_status_mask(reader, DDS_SUBSCRIPTION_MATCHED_STATUS);
    if (rc != DDS_RETCODE_OK)
        DDS_FATAL("dds_set_status_mask: %s\n", dds_strretcode(-rc));


    /* Initialize sample buffer, by pointing the void pointer within
     * the buffer array to a valid sample memory location. */


    samples[0] = testData_Msg__alloc();

    /* Poll until data has been read. */
    while (true) {
        /* Do the actual read.
         * The return value contains the number of read samples. */

        rc = dds_read(reader, samples, infos, MAX_SAMPLES, MAX_SAMPLES);
        if (rc < 0)
            DDS_FATAL("dds_read: %s\n", dds_strretcode(-rc));

        /* Check if we read some data and it is valid. */
        if ((rc > 0) && (infos[0].valid_data)) {
            /* Print Message. */
            msg = (testData_Msg *) samples[0];
            printf("=== [Subscriber] Received : ");
            printf("Message (%"PRId32", %s)\n", msg->userID, msg->message);
            fflush(stdout);
            break;
        } else {
            /* Polling sleep. */
            dds_sleepfor(DDS_MSECS(20));
        }
    }

    /* Free the data location. */
    testData_Msg_free(samples[0], DDS_FREE_ALL);

    /* Deleting the participant will delete all its children recursively as well. */
    rc = dds_delete(participant);
    if (rc != DDS_RETCODE_OK)
        DDS_FATAL("dds_delete: %s\n", dds_strretcode(-rc));

    return EXIT_SUCCESS;
}
