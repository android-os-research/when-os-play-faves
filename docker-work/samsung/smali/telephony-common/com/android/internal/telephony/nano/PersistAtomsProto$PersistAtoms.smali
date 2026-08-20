.class public final Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "PersistAtomsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;


# instance fields
.field public blacklist buildFingerprint:Ljava/lang/String;

.field public blacklist carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

.field public blacklist carrierIdTableVersion:I

.field public blacklist cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

.field public blacklist cellularDataServiceSwitchPullTimestampMillis:J

.field public blacklist cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

.field public blacklist cellularServiceStatePullTimestampMillis:J

.field public blacklist dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

.field public blacklist dataCallSessionPullTimestampMillis:J

.field public blacklist gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

.field public blacklist gbaEventPullTimestampMillis:J

.field public blacklist imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

.field public blacklist imsDedicatedBearerEventPullTimestampMillis:J

.field public blacklist imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

.field public blacklist imsDedicatedBearerListenerEventPullTimestampMillis:J

.field public blacklist imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

.field public blacklist imsRegistrationFeatureTagStatsPullTimestampMillis:J

.field public blacklist imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

.field public blacklist imsRegistrationServiceDescStatsPullTimestampMillis:J

.field public blacklist imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

.field public blacklist imsRegistrationStatsPullTimestampMillis:J

.field public blacklist imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

.field public blacklist imsRegistrationTerminationPullTimestampMillis:J

.field public blacklist incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

.field public blacklist incomingSmsPullTimestampMillis:J

.field public blacklist networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

.field public blacklist networkRequestsPullTimestampMillis:J

.field public blacklist networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

.field public blacklist networkRequestsV2PullTimestampMillis:J

.field public blacklist outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

.field public blacklist outgoingSmsPullTimestampMillis:J

.field public blacklist presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

.field public blacklist presenceNotifyEventPullTimestampMillis:J

.field public blacklist rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

.field public blacklist rcsAcsProvisioningStatsPullTimestampMillis:J

.field public blacklist rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

.field public blacklist rcsClientProvisioningStatsPullTimestampMillis:J

.field public blacklist sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

.field public blacklist sipDelegateStatsPullTimestampMillis:J

.field public blacklist sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

.field public blacklist sipMessageResponsePullTimestampMillis:J

.field public blacklist sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

.field public blacklist sipTransportFeatureTagStatsPullTimestampMillis:J

.field public blacklist sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

.field public blacklist sipTransportSessionPullTimestampMillis:J

.field public blacklist uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

.field public blacklist uceEventStatsPullTimestampMillis:J

.field public blacklist voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

.field public blacklist voiceCallRatUsagePullTimestampMillis:J

.field public blacklist voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

.field public blacklist voiceCallSessionPullTimestampMillis:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 178
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 2

    .line 14
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    if-nez v0, :cond_15

    .line 15
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 17
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    .line 18
    sput-object v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    .line 20
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 22
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->_emptyArray:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1489
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1483
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 4

    .line 183
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const-wide/16 v0, 0x0

    .line 184
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    .line 185
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    .line 186
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    .line 187
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    .line 188
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    .line 190
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    .line 191
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    const/4 v2, 0x0

    .line 192
    iput v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    .line 194
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    .line 195
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    .line 196
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    .line 197
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    .line 198
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    .line 199
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    .line 200
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    .line 201
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    .line 202
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    const-string v2, ""

    .line 203
    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    .line 205
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsPullTimestampMillis:J

    .line 206
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    .line 207
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    .line 208
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    .line 209
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    .line 210
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    .line 211
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    .line 212
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    .line 213
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    .line 214
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    .line 215
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    .line 216
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    .line 217
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    .line 218
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    .line 219
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    .line 220
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    .line 221
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    .line 222
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    .line 223
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    .line 224
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    .line 225
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    .line 226
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    .line 227
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    .line 228
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    .line 229
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    .line 230
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    .line 231
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    .line 232
    invoke-static {}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->emptyArray()[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    .line 233
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 8

    .line 525
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 526
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    array-length v1, v1

    if-lez v1, :cond_1f

    move v1, v2

    .line 527
    :goto_d
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    array-length v4, v3

    if-ge v1, v4, :cond_1f

    .line 528
    aget-object v3, v3, v1

    if-eqz v3, :cond_1c

    const/4 v4, 0x1

    .line 531
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 535
    :cond_1f
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2d

    const/4 v1, 0x2

    .line 537
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 539
    :cond_2d
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v1, :cond_47

    array-length v1, v1

    if-lez v1, :cond_47

    move v1, v2

    .line 540
    :goto_35
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    array-length v4, v3

    if-ge v1, v4, :cond_47

    .line 541
    aget-object v3, v3, v1

    if-eqz v3, :cond_44

    const/4 v4, 0x3

    .line 544
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 548
    :cond_47
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_53

    const/4 v1, 0x4

    .line 550
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 552
    :cond_53
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-eqz v1, :cond_6d

    array-length v1, v1

    if-lez v1, :cond_6d

    move v1, v2

    .line 553
    :goto_5b
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    array-length v4, v3

    if-ge v1, v4, :cond_6d

    .line 554
    aget-object v3, v3, v1

    if-eqz v3, :cond_6a

    const/4 v4, 0x5

    .line 557
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5b

    .line 561
    :cond_6d
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_79

    const/4 v1, 0x6

    .line 563
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 565
    :cond_79
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v1, :cond_93

    array-length v1, v1

    if-lez v1, :cond_93

    move v1, v2

    .line 566
    :goto_81
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    array-length v4, v3

    if-ge v1, v4, :cond_93

    .line 567
    aget-object v3, v3, v1

    if-eqz v3, :cond_90

    const/4 v4, 0x7

    .line 570
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_90
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 574
    :cond_93
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a0

    const/16 v1, 0x8

    .line 576
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 578
    :cond_a0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    if-eqz v1, :cond_bb

    array-length v1, v1

    if-lez v1, :cond_bb

    move v1, v2

    .line 579
    :goto_a8
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v4, v3

    if-ge v1, v4, :cond_bb

    .line 580
    aget-object v3, v3, v1

    if-eqz v3, :cond_b8

    const/16 v4, 0x9

    .line 583
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_b8
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .line 587
    :cond_bb
    iget v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    if-eqz v1, :cond_c6

    const/16 v3, 0xa

    .line 589
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 591
    :cond_c6
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-eqz v1, :cond_e1

    array-length v1, v1

    if-lez v1, :cond_e1

    move v1, v2

    .line 592
    :goto_ce
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    array-length v4, v3

    if-ge v1, v4, :cond_e1

    .line 593
    aget-object v3, v3, v1

    if-eqz v3, :cond_de

    const/16 v4, 0xb

    .line 596
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_de
    add-int/lit8 v1, v1, 0x1

    goto :goto_ce

    .line 600
    :cond_e1
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_ee

    const/16 v1, 0xc

    .line 602
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 604
    :cond_ee
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-eqz v1, :cond_109

    array-length v1, v1

    if-lez v1, :cond_109

    move v1, v2

    .line 605
    :goto_f6
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    array-length v4, v3

    if-ge v1, v4, :cond_109

    .line 606
    aget-object v3, v3, v1

    if-eqz v3, :cond_106

    const/16 v4, 0xd

    .line 609
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_106
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 613
    :cond_109
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_116

    const/16 v1, 0xe

    .line 615
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 617
    :cond_116
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-eqz v1, :cond_131

    array-length v1, v1

    if-lez v1, :cond_131

    move v1, v2

    .line 618
    :goto_11e
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    array-length v4, v3

    if-ge v1, v4, :cond_131

    .line 619
    aget-object v3, v3, v1

    if-eqz v3, :cond_12e

    const/16 v4, 0xf

    .line 622
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_12e
    add-int/lit8 v1, v1, 0x1

    goto :goto_11e

    .line 626
    :cond_131
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_13e

    const/16 v1, 0x10

    .line 628
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 630
    :cond_13e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-eqz v1, :cond_159

    array-length v1, v1

    if-lez v1, :cond_159

    move v1, v2

    .line 631
    :goto_146
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    array-length v4, v3

    if-ge v1, v4, :cond_159

    .line 632
    aget-object v3, v3, v1

    if-eqz v3, :cond_156

    const/16 v4, 0x11

    .line 635
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_156
    add-int/lit8 v1, v1, 0x1

    goto :goto_146

    .line 639
    :cond_159
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_166

    const/16 v1, 0x12

    .line 641
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 643
    :cond_166
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-eqz v1, :cond_181

    array-length v1, v1

    if-lez v1, :cond_181

    move v1, v2

    .line 644
    :goto_16e
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    array-length v4, v3

    if-ge v1, v4, :cond_181

    .line 645
    aget-object v3, v3, v1

    if-eqz v3, :cond_17e

    const/16 v4, 0x13

    .line 648
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_17e
    add-int/lit8 v1, v1, 0x1

    goto :goto_16e

    .line 652
    :cond_181
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_18e

    const/16 v1, 0x14

    .line 654
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 656
    :cond_18e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const/16 v1, 0x15

    .line 657
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    .line 658
    invoke-static {v1, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 660
    :cond_1a1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-eqz v1, :cond_1bc

    array-length v1, v1

    if-lez v1, :cond_1bc

    move v1, v2

    .line 661
    :goto_1a9
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    array-length v4, v3

    if-ge v1, v4, :cond_1bc

    .line 662
    aget-object v3, v3, v1

    if-eqz v3, :cond_1b9

    const/16 v4, 0x16

    .line 665
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1b9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a9

    .line 669
    :cond_1bc
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1c9

    const/16 v1, 0x17

    .line 671
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 673
    :cond_1c9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    if-eqz v1, :cond_1e4

    array-length v1, v1

    if-lez v1, :cond_1e4

    move v1, v2

    .line 674
    :goto_1d1
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v4, v3

    if-ge v1, v4, :cond_1e4

    .line 675
    aget-object v3, v3, v1

    if-eqz v3, :cond_1e1

    const/16 v4, 0x18

    .line 678
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_1e1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d1

    .line 682
    :cond_1e4
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_1f1

    const/16 v1, 0x19

    .line 684
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 686
    :cond_1f1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    if-eqz v1, :cond_20c

    array-length v1, v1

    if-lez v1, :cond_20c

    move v1, v2

    .line 687
    :goto_1f9
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v4, v3

    if-ge v1, v4, :cond_20c

    .line 688
    aget-object v3, v3, v1

    if-eqz v3, :cond_209

    const/16 v4, 0x1a

    .line 691
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_209
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f9

    .line 695
    :cond_20c
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_219

    const/16 v1, 0x1b

    .line 697
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 699
    :cond_219
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    if-eqz v1, :cond_234

    array-length v1, v1

    if-lez v1, :cond_234

    move v1, v2

    .line 700
    :goto_221
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v4, v3

    if-ge v1, v4, :cond_234

    .line 701
    aget-object v3, v3, v1

    if-eqz v3, :cond_231

    const/16 v4, 0x1c

    .line 704
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_231
    add-int/lit8 v1, v1, 0x1

    goto :goto_221

    .line 708
    :cond_234
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_241

    const/16 v1, 0x1d

    .line 710
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 712
    :cond_241
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    if-eqz v1, :cond_25c

    array-length v1, v1

    if-lez v1, :cond_25c

    move v1, v2

    .line 713
    :goto_249
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    array-length v4, v3

    if-ge v1, v4, :cond_25c

    .line 714
    aget-object v3, v3, v1

    if-eqz v3, :cond_259

    const/16 v4, 0x1e

    .line 717
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_259
    add-int/lit8 v1, v1, 0x1

    goto :goto_249

    .line 721
    :cond_25c
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_269

    const/16 v1, 0x1f

    .line 723
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 725
    :cond_269
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    if-eqz v1, :cond_284

    array-length v1, v1

    if-lez v1, :cond_284

    move v1, v2

    .line 726
    :goto_271
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v4, v3

    if-ge v1, v4, :cond_284

    .line 727
    aget-object v3, v3, v1

    if-eqz v3, :cond_281

    const/16 v4, 0x20

    .line 730
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_281
    add-int/lit8 v1, v1, 0x1

    goto :goto_271

    .line 734
    :cond_284
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_291

    const/16 v1, 0x21

    .line 736
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 738
    :cond_291
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    if-eqz v1, :cond_2ac

    array-length v1, v1

    if-lez v1, :cond_2ac

    move v1, v2

    .line 739
    :goto_299
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v4, v3

    if-ge v1, v4, :cond_2ac

    .line 740
    aget-object v3, v3, v1

    if-eqz v3, :cond_2a9

    const/16 v4, 0x22

    .line 743
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2a9
    add-int/lit8 v1, v1, 0x1

    goto :goto_299

    .line 747
    :cond_2ac
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2b9

    const/16 v1, 0x23

    .line 749
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 751
    :cond_2b9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    if-eqz v1, :cond_2d4

    array-length v1, v1

    if-lez v1, :cond_2d4

    move v1, v2

    .line 752
    :goto_2c1
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v4, v3

    if-ge v1, v4, :cond_2d4

    .line 753
    aget-object v3, v3, v1

    if-eqz v3, :cond_2d1

    const/16 v4, 0x24

    .line 756
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2d1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c1

    .line 760
    :cond_2d4
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2e1

    const/16 v1, 0x25

    .line 762
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_2e1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    if-eqz v1, :cond_2fc

    array-length v1, v1

    if-lez v1, :cond_2fc

    move v1, v2

    .line 765
    :goto_2e9
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v4, v3

    if-ge v1, v4, :cond_2fc

    .line 766
    aget-object v3, v3, v1

    if-eqz v3, :cond_2f9

    const/16 v4, 0x26

    .line 769
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_2f9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e9

    .line 773
    :cond_2fc
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_309

    const/16 v1, 0x27

    .line 775
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 777
    :cond_309
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    if-eqz v1, :cond_324

    array-length v1, v1

    if-lez v1, :cond_324

    move v1, v2

    .line 778
    :goto_311
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v4, v3

    if-ge v1, v4, :cond_324

    .line 779
    aget-object v3, v3, v1

    if-eqz v3, :cond_321

    const/16 v4, 0x28

    .line 782
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_321
    add-int/lit8 v1, v1, 0x1

    goto :goto_311

    .line 786
    :cond_324
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_331

    const/16 v1, 0x29

    .line 788
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 790
    :cond_331
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    if-eqz v1, :cond_34c

    array-length v1, v1

    if-lez v1, :cond_34c

    move v1, v2

    .line 791
    :goto_339
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v4, v3

    if-ge v1, v4, :cond_34c

    .line 792
    aget-object v3, v3, v1

    if-eqz v3, :cond_349

    const/16 v4, 0x2a

    .line 795
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_349
    add-int/lit8 v1, v1, 0x1

    goto :goto_339

    .line 799
    :cond_34c
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_359

    const/16 v1, 0x2b

    .line 801
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 803
    :cond_359
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    if-eqz v1, :cond_374

    array-length v1, v1

    if-lez v1, :cond_374

    move v1, v2

    .line 804
    :goto_361
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v4, v3

    if-ge v1, v4, :cond_374

    .line 805
    aget-object v3, v3, v1

    if-eqz v3, :cond_371

    const/16 v4, 0x2c

    .line 808
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_371
    add-int/lit8 v1, v1, 0x1

    goto :goto_361

    .line 812
    :cond_374
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_381

    const/16 v1, 0x2d

    .line 814
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 816
    :cond_381
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    if-eqz v1, :cond_39c

    array-length v1, v1

    if-lez v1, :cond_39c

    move v1, v2

    .line 817
    :goto_389
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v4, v3

    if-ge v1, v4, :cond_39c

    .line 818
    aget-object v3, v3, v1

    if-eqz v3, :cond_399

    const/16 v4, 0x2e

    .line 821
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_399
    add-int/lit8 v1, v1, 0x1

    goto :goto_389

    .line 825
    :cond_39c
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3a9

    const/16 v1, 0x2f

    .line 827
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 829
    :cond_3a9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-eqz v1, :cond_3c4

    array-length v1, v1

    if-lez v1, :cond_3c4

    move v1, v2

    .line 830
    :goto_3b1
    iget-object v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v4, v3

    if-ge v1, v4, :cond_3c4

    .line 831
    aget-object v3, v3, v1

    if-eqz v3, :cond_3c1

    const/16 v4, 0x30

    .line 834
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3c1
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b1

    .line 838
    :cond_3c4
    iget-wide v3, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3d1

    const/16 v1, 0x31

    .line 840
    invoke-static {v1, v3, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 842
    :cond_3d1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-eqz v1, :cond_3eb

    array-length v1, v1

    if-lez v1, :cond_3eb

    .line 843
    :goto_3d8
    iget-object v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    array-length v3, v1

    if-ge v2, v3, :cond_3eb

    .line 844
    aget-object v1, v1, v2

    if-eqz v1, :cond_3e8

    const/16 v3, 0x32

    .line 847
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3e8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3d8

    .line 851
    :cond_3eb
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    cmp-long p0, v1, v5

    if-eqz p0, :cond_3f8

    const/16 p0, 0x33

    .line 853
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_3f8
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_63c

    .line 868
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 1474
    :sswitch_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    goto :goto_0

    :sswitch_16
    const/16 v0, 0x192

    .line 1455
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1456
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-nez v2, :cond_22

    move v3, v1

    goto :goto_23

    :cond_22
    array-length v3, v2

    :goto_23
    add-int/2addr v0, v3

    .line 1457
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-eqz v3, :cond_2b

    .line 1460
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2b
    :goto_2b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3f

    .line 1463
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    aput-object v1, v4, v3

    .line 1464
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1465
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2b

    .line 1468
    :cond_3f
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    aput-object v0, v4, v3

    .line 1469
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1470
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    goto :goto_0

    .line 1450
    :sswitch_4c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    goto :goto_0

    :sswitch_53
    const/16 v0, 0x182

    .line 1431
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1432
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-nez v2, :cond_5f

    move v3, v1

    goto :goto_60

    :cond_5f
    array-length v3, v2

    :goto_60
    add-int/2addr v0, v3

    .line 1433
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-eqz v3, :cond_68

    .line 1436
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_68
    :goto_68
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_7c

    .line 1439
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1440
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1441
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_68

    .line 1444
    :cond_7c
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;-><init>()V

    aput-object v0, v4, v3

    .line 1445
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1446
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    goto/16 :goto_0

    .line 1426
    :sswitch_8a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_92
    const/16 v0, 0x172

    .line 1407
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1408
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    if-nez v2, :cond_9e

    move v3, v1

    goto :goto_9f

    :cond_9e
    array-length v3, v2

    :goto_9f
    add-int/2addr v0, v3

    .line 1409
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    if-eqz v3, :cond_a7

    .line 1412
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a7
    :goto_a7
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_bb

    .line 1415
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1416
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1417
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_a7

    .line 1420
    :cond_bb
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;-><init>()V

    aput-object v0, v4, v3

    .line 1421
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1422
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    goto/16 :goto_0

    .line 1402
    :sswitch_c9
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_d1
    const/16 v0, 0x162

    .line 1383
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1384
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    if-nez v2, :cond_dd

    move v3, v1

    goto :goto_de

    :cond_dd
    array-length v3, v2

    :goto_de
    add-int/2addr v0, v3

    .line 1385
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    if-eqz v3, :cond_e6

    .line 1388
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_e6
    :goto_e6
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_fa

    .line 1391
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;-><init>()V

    aput-object v1, v4, v3

    .line 1392
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1393
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    .line 1396
    :cond_fa
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;-><init>()V

    aput-object v0, v4, v3

    .line 1397
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1398
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    goto/16 :goto_0

    .line 1378
    :sswitch_108
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_110
    const/16 v0, 0x152

    .line 1359
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1360
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    if-nez v2, :cond_11c

    move v3, v1

    goto :goto_11d

    :cond_11c
    array-length v3, v2

    :goto_11d
    add-int/2addr v0, v3

    .line 1361
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    if-eqz v3, :cond_125

    .line 1364
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_125
    :goto_125
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_139

    .line 1367
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    aput-object v1, v4, v3

    .line 1368
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1369
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_125

    .line 1372
    :cond_139
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;-><init>()V

    aput-object v0, v4, v3

    .line 1373
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1374
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    goto/16 :goto_0

    .line 1354
    :sswitch_147
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_14f
    const/16 v0, 0x142

    .line 1335
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1336
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    if-nez v2, :cond_15b

    move v3, v1

    goto :goto_15c

    :cond_15b
    array-length v3, v2

    :goto_15c
    add-int/2addr v0, v3

    .line 1337
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    if-eqz v3, :cond_164

    .line 1340
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_164
    :goto_164
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_178

    .line 1343
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1344
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1345
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_164

    .line 1348
    :cond_178
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;-><init>()V

    aput-object v0, v4, v3

    .line 1349
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1350
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    goto/16 :goto_0

    .line 1330
    :sswitch_186
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_18e
    const/16 v0, 0x132

    .line 1311
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1312
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    if-nez v2, :cond_19a

    move v3, v1

    goto :goto_19b

    :cond_19a
    array-length v3, v2

    :goto_19b
    add-int/2addr v0, v3

    .line 1313
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    if-eqz v3, :cond_1a3

    .line 1316
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1a3
    :goto_1a3
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1b7

    .line 1319
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    aput-object v1, v4, v3

    .line 1320
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1321
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a3

    .line 1324
    :cond_1b7
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;-><init>()V

    aput-object v0, v4, v3

    .line 1325
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1326
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    goto/16 :goto_0

    .line 1306
    :sswitch_1c5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_1cd
    const/16 v0, 0x122

    .line 1287
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1288
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    if-nez v2, :cond_1d9

    move v3, v1

    goto :goto_1da

    :cond_1d9
    array-length v3, v2

    :goto_1da
    add-int/2addr v0, v3

    .line 1289
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    if-eqz v3, :cond_1e2

    .line 1292
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1e2
    :goto_1e2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_1f6

    .line 1295
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;-><init>()V

    aput-object v1, v4, v3

    .line 1296
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1297
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e2

    .line 1300
    :cond_1f6
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;-><init>()V

    aput-object v0, v4, v3

    .line 1301
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1302
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    goto/16 :goto_0

    .line 1282
    :sswitch_204
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_20c
    const/16 v0, 0x112

    .line 1263
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1264
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    if-nez v2, :cond_218

    move v3, v1

    goto :goto_219

    :cond_218
    array-length v3, v2

    :goto_219
    add-int/2addr v0, v3

    .line 1265
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    if-eqz v3, :cond_221

    .line 1268
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_221
    :goto_221
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_235

    .line 1271
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;-><init>()V

    aput-object v1, v4, v3

    .line 1272
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1273
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_221

    .line 1276
    :cond_235
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;-><init>()V

    aput-object v0, v4, v3

    .line 1277
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1278
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    goto/16 :goto_0

    .line 1258
    :sswitch_243
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_24b
    const/16 v0, 0x102

    .line 1239
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1240
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    if-nez v2, :cond_257

    move v3, v1

    goto :goto_258

    :cond_257
    array-length v3, v2

    :goto_258
    add-int/2addr v0, v3

    .line 1241
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    if-eqz v3, :cond_260

    .line 1244
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_260
    :goto_260
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_274

    .line 1247
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;-><init>()V

    aput-object v1, v4, v3

    .line 1248
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1249
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_260

    .line 1252
    :cond_274
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;-><init>()V

    aput-object v0, v4, v3

    .line 1253
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1254
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    goto/16 :goto_0

    .line 1234
    :sswitch_282
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_28a
    const/16 v0, 0xf2

    .line 1215
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1216
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    if-nez v2, :cond_296

    move v3, v1

    goto :goto_297

    :cond_296
    array-length v3, v2

    :goto_297
    add-int/2addr v0, v3

    .line 1217
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    if-eqz v3, :cond_29f

    .line 1220
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_29f
    :goto_29f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_2b3

    .line 1223
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;-><init>()V

    aput-object v1, v4, v3

    .line 1224
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1225
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_29f

    .line 1228
    :cond_2b3
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;-><init>()V

    aput-object v0, v4, v3

    .line 1229
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1230
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    goto/16 :goto_0

    .line 1210
    :sswitch_2c1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_2c9
    const/16 v0, 0xe2

    .line 1191
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1192
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    if-nez v2, :cond_2d5

    move v3, v1

    goto :goto_2d6

    :cond_2d5
    array-length v3, v2

    :goto_2d6
    add-int/2addr v0, v3

    .line 1193
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    if-eqz v3, :cond_2de

    .line 1196
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2de
    :goto_2de
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_2f2

    .line 1199
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;-><init>()V

    aput-object v1, v4, v3

    .line 1200
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1201
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2de

    .line 1204
    :cond_2f2
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;-><init>()V

    aput-object v0, v4, v3

    .line 1205
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1206
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    goto/16 :goto_0

    .line 1186
    :sswitch_300
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_308
    const/16 v0, 0xd2

    .line 1167
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1168
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    if-nez v2, :cond_314

    move v3, v1

    goto :goto_315

    :cond_314
    array-length v3, v2

    :goto_315
    add-int/2addr v0, v3

    .line 1169
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    if-eqz v3, :cond_31d

    .line 1172
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_31d
    :goto_31d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_331

    .line 1175
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;-><init>()V

    aput-object v1, v4, v3

    .line 1176
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1177
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_31d

    .line 1180
    :cond_331
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;-><init>()V

    aput-object v0, v4, v3

    .line 1181
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1182
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    goto/16 :goto_0

    .line 1162
    :sswitch_33f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_347
    const/16 v0, 0xc2

    .line 1143
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1144
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    if-nez v2, :cond_353

    move v3, v1

    goto :goto_354

    :cond_353
    array-length v3, v2

    :goto_354
    add-int/2addr v0, v3

    .line 1145
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    if-eqz v3, :cond_35c

    .line 1148
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_35c
    :goto_35c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_370

    .line 1151
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;-><init>()V

    aput-object v1, v4, v3

    .line 1152
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1153
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_35c

    .line 1156
    :cond_370
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;-><init>()V

    aput-object v0, v4, v3

    .line 1157
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1158
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    goto/16 :goto_0

    .line 1138
    :sswitch_37e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_386
    const/16 v0, 0xb2

    .line 1119
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1120
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-nez v2, :cond_392

    move v3, v1

    goto :goto_393

    :cond_392
    array-length v3, v2

    :goto_393
    add-int/2addr v0, v3

    .line 1121
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-eqz v3, :cond_39b

    .line 1124
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_39b
    :goto_39b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3af

    .line 1127
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;-><init>()V

    aput-object v1, v4, v3

    .line 1128
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1129
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_39b

    .line 1132
    :cond_3af
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;-><init>()V

    aput-object v0, v4, v3

    .line 1133
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1134
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    goto/16 :goto_0

    .line 1114
    :sswitch_3bd
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    goto/16 :goto_0

    .line 1110
    :sswitch_3c5
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_3cd
    const/16 v0, 0x9a

    .line 1091
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1092
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-nez v2, :cond_3d9

    move v3, v1

    goto :goto_3da

    :cond_3d9
    array-length v3, v2

    :goto_3da
    add-int/2addr v0, v3

    .line 1093
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-eqz v3, :cond_3e2

    .line 1096
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3e2
    :goto_3e2
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_3f6

    .line 1099
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    aput-object v1, v4, v3

    .line 1100
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1101
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e2

    .line 1104
    :cond_3f6
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;-><init>()V

    aput-object v0, v4, v3

    .line 1105
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1106
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    goto/16 :goto_0

    .line 1086
    :sswitch_404
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_40c
    const/16 v0, 0x8a

    .line 1067
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1068
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-nez v2, :cond_418

    move v3, v1

    goto :goto_419

    :cond_418
    array-length v3, v2

    :goto_419
    add-int/2addr v0, v3

    .line 1069
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-eqz v3, :cond_421

    .line 1072
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_421
    :goto_421
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_435

    .line 1075
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;-><init>()V

    aput-object v1, v4, v3

    .line 1076
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1077
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_421

    .line 1080
    :cond_435
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;-><init>()V

    aput-object v0, v4, v3

    .line 1081
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1082
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    goto/16 :goto_0

    .line 1062
    :sswitch_443
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_44b
    const/16 v0, 0x7a

    .line 1043
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1044
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-nez v2, :cond_457

    move v3, v1

    goto :goto_458

    :cond_457
    array-length v3, v2

    :goto_458
    add-int/2addr v0, v3

    .line 1045
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-eqz v3, :cond_460

    .line 1048
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_460
    :goto_460
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_474

    .line 1051
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    aput-object v1, v4, v3

    .line 1052
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1053
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_460

    .line 1056
    :cond_474
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;-><init>()V

    aput-object v0, v4, v3

    .line 1057
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1058
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    goto/16 :goto_0

    .line 1038
    :sswitch_482
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_48a
    const/16 v0, 0x6a

    .line 1019
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1020
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-nez v2, :cond_496

    move v3, v1

    goto :goto_497

    :cond_496
    array-length v3, v2

    :goto_497
    add-int/2addr v0, v3

    .line 1021
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-eqz v3, :cond_49f

    .line 1024
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_49f
    :goto_49f
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4b3

    .line 1027
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    aput-object v1, v4, v3

    .line 1028
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1029
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_49f

    .line 1032
    :cond_4b3
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;-><init>()V

    aput-object v0, v4, v3

    .line 1033
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1034
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    goto/16 :goto_0

    .line 1014
    :sswitch_4c1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_4c9
    const/16 v0, 0x5a

    .line 995
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 996
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-nez v2, :cond_4d5

    move v3, v1

    goto :goto_4d6

    :cond_4d5
    array-length v3, v2

    :goto_4d6
    add-int/2addr v0, v3

    .line 997
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-eqz v3, :cond_4de

    .line 1000
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4de
    :goto_4de
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_4f2

    .line 1003
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    aput-object v1, v4, v3

    .line 1004
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1005
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_4de

    .line 1008
    :cond_4f2
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;-><init>()V

    aput-object v0, v4, v3

    .line 1009
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 1010
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    goto/16 :goto_0

    .line 990
    :sswitch_500
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    goto/16 :goto_0

    :sswitch_508
    const/16 v0, 0x4a

    .line 971
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 972
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    if-nez v2, :cond_514

    move v3, v1

    goto :goto_515

    :cond_514
    array-length v3, v2

    :goto_515
    add-int/2addr v0, v3

    .line 973
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    if-eqz v3, :cond_51d

    .line 976
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_51d
    :goto_51d
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_531

    .line 979
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;-><init>()V

    aput-object v1, v4, v3

    .line 980
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 981
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_51d

    .line 984
    :cond_531
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;-><init>()V

    aput-object v0, v4, v3

    .line 985
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 986
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    goto/16 :goto_0

    .line 966
    :sswitch_53f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_547
    const/16 v0, 0x3a

    .line 947
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 948
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-nez v2, :cond_553

    move v3, v1

    goto :goto_554

    :cond_553
    array-length v3, v2

    :goto_554
    add-int/2addr v0, v3

    .line 949
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v3, :cond_55c

    .line 952
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_55c
    :goto_55c
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_570

    .line 955
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    aput-object v1, v4, v3

    .line 956
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 957
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_55c

    .line 960
    :cond_570
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;-><init>()V

    aput-object v0, v4, v3

    .line 961
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 962
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    goto/16 :goto_0

    .line 942
    :sswitch_57e
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_586
    const/16 v0, 0x2a

    .line 923
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 924
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-nez v2, :cond_592

    move v3, v1

    goto :goto_593

    :cond_592
    array-length v3, v2

    :goto_593
    add-int/2addr v0, v3

    .line 925
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-eqz v3, :cond_59b

    .line 928
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_59b
    :goto_59b
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5af

    .line 931
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    aput-object v1, v4, v3

    .line 932
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 933
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_59b

    .line 936
    :cond_5af
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;-><init>()V

    aput-object v0, v4, v3

    .line 937
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 938
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    goto/16 :goto_0

    .line 918
    :sswitch_5bd
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_5c5
    const/16 v0, 0x1a

    .line 899
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 900
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-nez v2, :cond_5d1

    move v3, v1

    goto :goto_5d2

    :cond_5d1
    array-length v3, v2

    :goto_5d2
    add-int/2addr v0, v3

    .line 901
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v3, :cond_5da

    .line 904
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5da
    :goto_5da
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_5ee

    .line 907
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    aput-object v1, v4, v3

    .line 908
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 909
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_5da

    .line 912
    :cond_5ee
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;-><init>()V

    aput-object v0, v4, v3

    .line 913
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 914
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    goto/16 :goto_0

    .line 894
    :sswitch_5fc
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    goto/16 :goto_0

    :sswitch_604
    const/16 v0, 0xa

    .line 875
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 876
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    if-nez v2, :cond_610

    move v3, v1

    goto :goto_611

    :cond_610
    array-length v3, v2

    :goto_611
    add-int/2addr v0, v3

    .line 877
    new-array v4, v0, [Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    if-eqz v3, :cond_619

    .line 880
    invoke-static {v2, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_619
    :goto_619
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_62d

    .line 883
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;-><init>()V

    aput-object v1, v4, v3

    .line 884
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 885
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_619

    .line 888
    :cond_62d
    new-instance v0, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;-><init>()V

    aput-object v0, v4, v3

    .line 889
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 890
    iput-object v4, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    goto/16 :goto_0

    :sswitch_63b
    return-object p0

    :sswitch_data_63c
    .sparse-switch
        0x0 -> :sswitch_63b
        0xa -> :sswitch_604
        0x10 -> :sswitch_5fc
        0x1a -> :sswitch_5c5
        0x20 -> :sswitch_5bd
        0x2a -> :sswitch_586
        0x30 -> :sswitch_57e
        0x3a -> :sswitch_547
        0x40 -> :sswitch_53f
        0x4a -> :sswitch_508
        0x50 -> :sswitch_500
        0x5a -> :sswitch_4c9
        0x60 -> :sswitch_4c1
        0x6a -> :sswitch_48a
        0x70 -> :sswitch_482
        0x7a -> :sswitch_44b
        0x80 -> :sswitch_443
        0x8a -> :sswitch_40c
        0x90 -> :sswitch_404
        0x9a -> :sswitch_3cd
        0xa0 -> :sswitch_3c5
        0xaa -> :sswitch_3bd
        0xb2 -> :sswitch_386
        0xb8 -> :sswitch_37e
        0xc2 -> :sswitch_347
        0xc8 -> :sswitch_33f
        0xd2 -> :sswitch_308
        0xd8 -> :sswitch_300
        0xe2 -> :sswitch_2c9
        0xe8 -> :sswitch_2c1
        0xf2 -> :sswitch_28a
        0xf8 -> :sswitch_282
        0x102 -> :sswitch_24b
        0x108 -> :sswitch_243
        0x112 -> :sswitch_20c
        0x118 -> :sswitch_204
        0x122 -> :sswitch_1cd
        0x128 -> :sswitch_1c5
        0x132 -> :sswitch_18e
        0x138 -> :sswitch_186
        0x142 -> :sswitch_14f
        0x148 -> :sswitch_147
        0x152 -> :sswitch_110
        0x158 -> :sswitch_108
        0x162 -> :sswitch_d1
        0x168 -> :sswitch_c9
        0x172 -> :sswitch_92
        0x178 -> :sswitch_8a
        0x182 -> :sswitch_53
        0x188 -> :sswitch_4c
        0x192 -> :sswitch_16
        0x198 -> :sswitch_f
    .end sparse-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    array-length v0, v0

    if-lez v0, :cond_19

    move v0, v1

    .line 243
    :goto_9
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsage:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallRatUsage;

    array-length v3, v2

    if-ge v0, v3, :cond_19

    .line 244
    aget-object v2, v2, v0

    if-eqz v2, :cond_16

    const/4 v3, 0x1

    .line 246
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 250
    :cond_19
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallRatUsagePullTimestampMillis:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_25

    const/4 v0, 0x2

    .line 251
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 253
    :cond_25
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    if-eqz v0, :cond_3d

    array-length v0, v0

    if-lez v0, :cond_3d

    move v0, v1

    .line 254
    :goto_2d
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$VoiceCallSession;

    array-length v3, v2

    if-ge v0, v3, :cond_3d

    .line 255
    aget-object v2, v2, v0

    if-eqz v2, :cond_3a

    const/4 v3, 0x3

    .line 257
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 261
    :cond_3d
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->voiceCallSessionPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_47

    const/4 v0, 0x4

    .line 262
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 264
    :cond_47
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    if-eqz v0, :cond_5f

    array-length v0, v0

    if-lez v0, :cond_5f

    move v0, v1

    .line 265
    :goto_4f
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$IncomingSms;

    array-length v3, v2

    if-ge v0, v3, :cond_5f

    .line 266
    aget-object v2, v2, v0

    if-eqz v2, :cond_5c

    const/4 v3, 0x5

    .line 268
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_5c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4f

    .line 272
    :cond_5f
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->incomingSmsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_69

    const/4 v0, 0x6

    .line 273
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 275
    :cond_69
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    if-eqz v0, :cond_81

    array-length v0, v0

    if-lez v0, :cond_81

    move v0, v1

    .line 276
    :goto_71
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSms:[Lcom/android/internal/telephony/nano/PersistAtomsProto$OutgoingSms;

    array-length v3, v2

    if-ge v0, v3, :cond_81

    .line 277
    aget-object v2, v2, v0

    if-eqz v2, :cond_7e

    const/4 v3, 0x7

    .line 279
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_7e
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 283
    :cond_81
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->outgoingSmsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_8c

    const/16 v0, 0x8

    .line 284
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 286
    :cond_8c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    if-eqz v0, :cond_a5

    array-length v0, v0

    if-lez v0, :cond_a5

    move v0, v1

    .line 287
    :goto_94
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdMismatch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CarrierIdMismatch;

    array-length v3, v2

    if-ge v0, v3, :cond_a5

    .line 288
    aget-object v2, v2, v0

    if-eqz v2, :cond_a2

    const/16 v3, 0x9

    .line 290
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 294
    :cond_a5
    iget v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->carrierIdTableVersion:I

    if-eqz v0, :cond_ae

    const/16 v2, 0xa

    .line 295
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 297
    :cond_ae
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    if-eqz v0, :cond_c7

    array-length v0, v0

    if-lez v0, :cond_c7

    move v0, v1

    .line 298
    :goto_b6
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$DataCallSession;

    array-length v3, v2

    if-ge v0, v3, :cond_c7

    .line 299
    aget-object v2, v2, v0

    if-eqz v2, :cond_c4

    const/16 v3, 0xb

    .line 301
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_c4
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 305
    :cond_c7
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->dataCallSessionPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_d2

    const/16 v0, 0xc

    .line 306
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 308
    :cond_d2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    if-eqz v0, :cond_eb

    array-length v0, v0

    if-lez v0, :cond_eb

    move v0, v1

    .line 309
    :goto_da
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceState:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularServiceState;

    array-length v3, v2

    if-ge v0, v3, :cond_eb

    .line 310
    aget-object v2, v2, v0

    if-eqz v2, :cond_e8

    const/16 v3, 0xd

    .line 312
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_e8
    add-int/lit8 v0, v0, 0x1

    goto :goto_da

    .line 316
    :cond_eb
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularServiceStatePullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_f6

    const/16 v0, 0xe

    .line 317
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 319
    :cond_f6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    if-eqz v0, :cond_10f

    array-length v0, v0

    if-lez v0, :cond_10f

    move v0, v1

    .line 320
    :goto_fe
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitch:[Lcom/android/internal/telephony/nano/PersistAtomsProto$CellularDataServiceSwitch;

    array-length v3, v2

    if-ge v0, v3, :cond_10f

    .line 321
    aget-object v2, v2, v0

    if-eqz v2, :cond_10c

    const/16 v3, 0xf

    .line 323
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_10c
    add-int/lit8 v0, v0, 0x1

    goto :goto_fe

    .line 327
    :cond_10f
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->cellularDataServiceSwitchPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_11a

    const/16 v0, 0x10

    .line 328
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 330
    :cond_11a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    if-eqz v0, :cond_133

    array-length v0, v0

    if-lez v0, :cond_133

    move v0, v1

    .line 331
    :goto_122
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTermination:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationTermination;

    array-length v3, v2

    if-ge v0, v3, :cond_133

    .line 332
    aget-object v2, v2, v0

    if-eqz v2, :cond_130

    const/16 v3, 0x11

    .line 334
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_130
    add-int/lit8 v0, v0, 0x1

    goto :goto_122

    .line 338
    :cond_133
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationTerminationPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_13e

    const/16 v0, 0x12

    .line 339
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 341
    :cond_13e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    if-eqz v0, :cond_157

    array-length v0, v0

    if-lez v0, :cond_157

    move v0, v1

    .line 342
    :goto_146
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationStats;

    array-length v3, v2

    if-ge v0, v3, :cond_157

    .line 343
    aget-object v2, v2, v0

    if-eqz v2, :cond_154

    const/16 v3, 0x13

    .line 345
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_154
    add-int/lit8 v0, v0, 0x1

    goto :goto_146

    .line 349
    :cond_157
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_162

    const/16 v0, 0x14

    .line 350
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 352
    :cond_162
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_173

    const/16 v0, 0x15

    .line 353
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 355
    :cond_173
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    if-eqz v0, :cond_18c

    array-length v0, v0

    if-lez v0, :cond_18c

    move v0, v1

    .line 356
    :goto_17b
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequests:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequests;

    array-length v3, v2

    if-ge v0, v3, :cond_18c

    .line 357
    aget-object v2, v2, v0

    if-eqz v2, :cond_189

    const/16 v3, 0x16

    .line 359
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_189
    add-int/lit8 v0, v0, 0x1

    goto :goto_17b

    .line 363
    :cond_18c
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_197

    const/16 v0, 0x17

    .line 364
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 366
    :cond_197
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    if-eqz v0, :cond_1b0

    array-length v0, v0

    if-lez v0, :cond_1b0

    move v0, v1

    .line 367
    :goto_19f
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationFeatureTagStats;

    array-length v3, v2

    if-ge v0, v3, :cond_1b0

    .line 368
    aget-object v2, v2, v0

    if-eqz v2, :cond_1ad

    const/16 v3, 0x18

    .line 370
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_1ad
    add-int/lit8 v0, v0, 0x1

    goto :goto_19f

    .line 374
    :cond_1b0
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationFeatureTagStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1bb

    const/16 v0, 0x19

    .line 375
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 377
    :cond_1bb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    if-eqz v0, :cond_1d4

    array-length v0, v0

    if-lez v0, :cond_1d4

    move v0, v1

    .line 378
    :goto_1c3
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsClientProvisioningStats;

    array-length v3, v2

    if-ge v0, v3, :cond_1d4

    .line 379
    aget-object v2, v2, v0

    if-eqz v2, :cond_1d1

    const/16 v3, 0x1a

    .line 381
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_1d1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c3

    .line 385
    :cond_1d4
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsClientProvisioningStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1df

    const/16 v0, 0x1b

    .line 386
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 388
    :cond_1df
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    if-eqz v0, :cond_1f8

    array-length v0, v0

    if-lez v0, :cond_1f8

    move v0, v1

    .line 389
    :goto_1e7
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$RcsAcsProvisioningStats;

    array-length v3, v2

    if-ge v0, v3, :cond_1f8

    .line 390
    aget-object v2, v2, v0

    if-eqz v2, :cond_1f5

    const/16 v3, 0x1c

    .line 392
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_1f5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e7

    .line 396
    :cond_1f8
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->rcsAcsProvisioningStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_203

    const/16 v0, 0x1d

    .line 397
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 399
    :cond_203
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    if-eqz v0, :cond_21c

    array-length v0, v0

    if-lez v0, :cond_21c

    move v0, v1

    .line 400
    :goto_20b
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipDelegateStats;

    array-length v3, v2

    if-ge v0, v3, :cond_21c

    .line 401
    aget-object v2, v2, v0

    if-eqz v2, :cond_219

    const/16 v3, 0x1e

    .line 403
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_219
    add-int/lit8 v0, v0, 0x1

    goto :goto_20b

    .line 407
    :cond_21c
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipDelegateStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_227

    const/16 v0, 0x1f

    .line 408
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 410
    :cond_227
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    if-eqz v0, :cond_240

    array-length v0, v0

    if-lez v0, :cond_240

    move v0, v1

    .line 411
    :goto_22f
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportFeatureTagStats;

    array-length v3, v2

    if-ge v0, v3, :cond_240

    .line 412
    aget-object v2, v2, v0

    if-eqz v2, :cond_23d

    const/16 v3, 0x20

    .line 414
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_23d
    add-int/lit8 v0, v0, 0x1

    goto :goto_22f

    .line 418
    :cond_240
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportFeatureTagStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_24b

    const/16 v0, 0x21

    .line 419
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 421
    :cond_24b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    if-eqz v0, :cond_264

    array-length v0, v0

    if-lez v0, :cond_264

    move v0, v1

    .line 422
    :goto_253
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponse:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipMessageResponse;

    array-length v3, v2

    if-ge v0, v3, :cond_264

    .line 423
    aget-object v2, v2, v0

    if-eqz v2, :cond_261

    const/16 v3, 0x22

    .line 425
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_261
    add-int/lit8 v0, v0, 0x1

    goto :goto_253

    .line 429
    :cond_264
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipMessageResponsePullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_26f

    const/16 v0, 0x23

    .line 430
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 432
    :cond_26f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    if-eqz v0, :cond_288

    array-length v0, v0

    if-lez v0, :cond_288

    move v0, v1

    .line 433
    :goto_277
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSession:[Lcom/android/internal/telephony/nano/PersistAtomsProto$SipTransportSession;

    array-length v3, v2

    if-ge v0, v3, :cond_288

    .line 434
    aget-object v2, v2, v0

    if-eqz v2, :cond_285

    const/16 v3, 0x24

    .line 436
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_285
    add-int/lit8 v0, v0, 0x1

    goto :goto_277

    .line 440
    :cond_288
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->sipTransportSessionPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_293

    const/16 v0, 0x25

    .line 441
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 443
    :cond_293
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    if-eqz v0, :cond_2ac

    array-length v0, v0

    if-lez v0, :cond_2ac

    move v0, v1

    .line 444
    :goto_29b
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerListenerEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_2ac

    .line 445
    aget-object v2, v2, v0

    if-eqz v2, :cond_2a9

    const/16 v3, 0x26

    .line 447
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2a9
    add-int/lit8 v0, v0, 0x1

    goto :goto_29b

    .line 451
    :cond_2ac
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerListenerEventPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2b7

    const/16 v0, 0x27

    .line 452
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 454
    :cond_2b7
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    if-eqz v0, :cond_2d0

    array-length v0, v0

    if-lez v0, :cond_2d0

    move v0, v1

    .line 455
    :goto_2bf
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsDedicatedBearerEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_2d0

    .line 456
    aget-object v2, v2, v0

    if-eqz v2, :cond_2cd

    const/16 v3, 0x28

    .line 458
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2cd
    add-int/lit8 v0, v0, 0x1

    goto :goto_2bf

    .line 462
    :cond_2d0
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsDedicatedBearerEventPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2db

    const/16 v0, 0x29

    .line 463
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 465
    :cond_2db
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    if-eqz v0, :cond_2f4

    array-length v0, v0

    if-lez v0, :cond_2f4

    move v0, v1

    .line 466
    :goto_2e3
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$ImsRegistrationServiceDescStats;

    array-length v3, v2

    if-ge v0, v3, :cond_2f4

    .line 467
    aget-object v2, v2, v0

    if-eqz v2, :cond_2f1

    const/16 v3, 0x2a

    .line 469
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_2f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e3

    .line 473
    :cond_2f4
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->imsRegistrationServiceDescStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2ff

    const/16 v0, 0x2b

    .line 474
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 476
    :cond_2ff
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    if-eqz v0, :cond_318

    array-length v0, v0

    if-lez v0, :cond_318

    move v0, v1

    .line 477
    :goto_307
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStats:[Lcom/android/internal/telephony/nano/PersistAtomsProto$UceEventStats;

    array-length v3, v2

    if-ge v0, v3, :cond_318

    .line 478
    aget-object v2, v2, v0

    if-eqz v2, :cond_315

    const/16 v3, 0x2c

    .line 480
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_315
    add-int/lit8 v0, v0, 0x1

    goto :goto_307

    .line 484
    :cond_318
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->uceEventStatsPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_323

    const/16 v0, 0x2d

    .line 485
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 487
    :cond_323
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    if-eqz v0, :cond_33c

    array-length v0, v0

    if-lez v0, :cond_33c

    move v0, v1

    .line 488
    :goto_32b
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$PresenceNotifyEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_33c

    .line 489
    aget-object v2, v2, v0

    if-eqz v2, :cond_339

    const/16 v3, 0x2e

    .line 491
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_339
    add-int/lit8 v0, v0, 0x1

    goto :goto_32b

    .line 495
    :cond_33c
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->presenceNotifyEventPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_347

    const/16 v0, 0x2f

    .line 496
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 498
    :cond_347
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    if-eqz v0, :cond_360

    array-length v0, v0

    if-lez v0, :cond_360

    move v0, v1

    .line 499
    :goto_34f
    iget-object v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEvent:[Lcom/android/internal/telephony/nano/PersistAtomsProto$GbaEvent;

    array-length v3, v2

    if-ge v0, v3, :cond_360

    .line 500
    aget-object v2, v2, v0

    if-eqz v2, :cond_35d

    const/16 v3, 0x30

    .line 502
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_35d
    add-int/lit8 v0, v0, 0x1

    goto :goto_34f

    .line 506
    :cond_360
    iget-wide v2, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->gbaEventPullTimestampMillis:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_36b

    const/16 v0, 0x31

    .line 507
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 509
    :cond_36b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    if-eqz v0, :cond_383

    array-length v0, v0

    if-lez v0, :cond_383

    .line 510
    :goto_372
    iget-object v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2:[Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    array-length v2, v0

    if-ge v1, v2, :cond_383

    .line 511
    aget-object v0, v0, v1

    if-eqz v0, :cond_380

    const/16 v2, 0x32

    .line 513
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_380
    add-int/lit8 v1, v1, 0x1

    goto :goto_372

    .line 517
    :cond_383
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/PersistAtomsProto$PersistAtoms;->networkRequestsV2PullTimestampMillis:J

    cmp-long v2, v0, v4

    if-eqz v2, :cond_38e

    const/16 v2, 0x33

    .line 518
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 520
    :cond_38e
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
