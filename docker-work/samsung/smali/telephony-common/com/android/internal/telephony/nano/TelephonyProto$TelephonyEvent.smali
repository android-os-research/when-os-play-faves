.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatchingResult;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RadioState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkValidationState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$EventState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ApnType;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;


# instance fields
.field public blacklist activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

.field public blacklist carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

.field public blacklist carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

.field public blacklist dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public blacklist dataStallAction:I

.field public blacklist dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

.field public blacklist deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

.field public blacklist emergencyNumberDatabaseVersion:I

.field public blacklist enabledModemBitmap:I

.field public blacklist error:I

.field public blacklist imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public blacklist imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public blacklist modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

.field public blacklist networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

.field public blacklist networkValidationState:I

.field public blacklist nitzTimestampMillis:J

.field public blacklist onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

.field public blacklist phoneId:I

.field public blacklist radioState:I

.field public blacklist serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public blacklist settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public blacklist setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

.field public blacklist setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

.field public blacklist signalStrength:I

.field public blacklist simState:[I

.field public blacklist timestampMillis:J

.field public blacklist type:I

.field public blacklist updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4815
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4816
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 2

    .line 4720
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v0, :cond_15

    .line 4721
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4723
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 4724
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    .line 4726
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4728
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5455
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 5449
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 6

    const-wide/16 v0, 0x0

    .line 4820
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const/4 v2, 0x0

    .line 4821
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    .line 4822
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    const/4 v3, 0x0

    .line 4823
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 4824
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 4825
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 4826
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 4827
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 4828
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    .line 4829
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 4830
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 4831
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 4832
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    .line 4833
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 4834
    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    .line 4835
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 4836
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 4837
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    .line 4838
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    .line 4839
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    .line 4840
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    .line 4841
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 4842
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    .line 4843
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 4844
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    .line 4845
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    .line 4846
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    .line 4847
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    .line 4848
    iput-object v3, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4849
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 9

    .line 4952
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4953
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    .line 4955
    invoke-static {v5, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4957
    :cond_12
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    const/4 v2, 0x2

    if-eqz v1, :cond_1c

    .line 4959
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4961
    :cond_1c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-eqz v1, :cond_26

    const/4 v5, 0x3

    .line 4963
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4965
    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_30

    const/4 v5, 0x4

    .line 4967
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4969
    :cond_30
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_3a

    const/4 v5, 0x5

    .line 4971
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4973
    :cond_3a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_44

    const/4 v5, 0x6

    .line 4975
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4977
    :cond_44
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_4e

    const/4 v5, 0x7

    .line 4979
    invoke-static {v5, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4981
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v5, 0x0

    if-eqz v1, :cond_6a

    array-length v1, v1

    if-lez v1, :cond_6a

    move v1, v5

    .line 4982
    :goto_57
    iget-object v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v7, v6

    if-ge v1, v7, :cond_6a

    .line 4983
    aget-object v6, v6, v1

    if-eqz v6, :cond_67

    const/16 v7, 0x8

    .line 4986
    invoke-static {v7, v6}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v6

    add-int/2addr v0, v6

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 4990
    :cond_6a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    if-eqz v1, :cond_75

    const/16 v6, 0x9

    .line 4992
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4994
    :cond_75
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v1, :cond_80

    const/16 v6, 0xa

    .line 4996
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4998
    :cond_80
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v1, :cond_8b

    const/16 v6, 0xb

    .line 5000
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5002
    :cond_8b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v1, :cond_96

    const/16 v6, 0xc

    .line 5004
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5006
    :cond_96
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    if-eqz v1, :cond_a1

    const/16 v6, 0xd

    .line 5008
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5010
    :cond_a1
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v1, :cond_ac

    const/16 v6, 0xe

    .line 5012
    invoke-static {v6, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5014
    :cond_ac
    iget-wide v6, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_b9

    const/16 v1, 0xf

    .line 5016
    invoke-static {v1, v6, v7}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 5018
    :cond_b9
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-eqz v1, :cond_c4

    const/16 v3, 0x10

    .line 5020
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5022
    :cond_c4
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-eqz v1, :cond_cf

    const/16 v3, 0x11

    .line 5024
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5026
    :cond_cf
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-eqz v1, :cond_da

    const/16 v3, 0x13

    .line 5028
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5030
    :cond_da
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    if-eqz v1, :cond_e5

    const/16 v3, 0x14

    .line 5032
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5034
    :cond_e5
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-eqz v1, :cond_f0

    const/16 v3, 0x15

    .line 5036
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5038
    :cond_f0
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-eqz v1, :cond_10b

    array-length v1, v1

    if-lez v1, :cond_10b

    move v1, v5

    .line 5040
    :goto_f8
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    array-length v4, v3

    if-ge v5, v4, :cond_107

    .line 5041
    aget v3, v3, v5

    .line 5043
    invoke-static {v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_f8

    :cond_107
    add-int/2addr v0, v1

    .line 5046
    array-length v1, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 5048
    :cond_10b
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v1, :cond_116

    const/16 v2, 0x17

    .line 5050
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5052
    :cond_116
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    if-eqz v1, :cond_121

    const/16 v2, 0x18

    .line 5054
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5056
    :cond_121
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v1, :cond_12c

    const/16 v2, 0x19

    .line 5058
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5060
    :cond_12c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-eqz v1, :cond_137

    const/16 v2, 0x1a

    .line 5062
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5064
    :cond_137
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    if-eqz v1, :cond_142

    const/16 v2, 0x1b

    .line 5066
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5068
    :cond_142
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    if-eqz v1, :cond_14d

    const/16 v2, 0x1c

    .line 5070
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5072
    :cond_14d
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    if-eqz p0, :cond_158

    const/16 v1, 0x1d

    .line 5074
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_158
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5084
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_262

    .line 5089
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 5432
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_1f

    if-eq v0, v3, :cond_1f

    if-eq v0, v2, :cond_1f

    if-eq v0, v1, :cond_1f

    goto :goto_0

    .line 5438
    :cond_1f
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    goto :goto_0

    .line 5428
    :sswitch_22
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    goto :goto_0

    .line 5424
    :sswitch_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    goto :goto_0

    .line 5417
    :sswitch_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-nez v0, :cond_3b

    .line 5418
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    .line 5420
    :cond_3b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5410
    :sswitch_41
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-nez v0, :cond_4c

    .line 5411
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 5413
    :cond_4c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5406
    :sswitch_52
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    goto :goto_0

    .line 5399
    :sswitch_59
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-nez v0, :cond_64

    .line 5400
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    .line 5402
    :cond_64
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 5362
    :sswitch_6a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v0

    .line 5363
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v0

    .line 5366
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    move v5, v4

    .line 5367
    :goto_77
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_8b

    .line 5368
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    if-eqz v6, :cond_88

    if-eq v6, v3, :cond_88

    if-eq v6, v2, :cond_88

    goto :goto_77

    :cond_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_77

    :cond_8b
    if-eqz v5, :cond_b8

    .line 5377
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 5378
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-nez v1, :cond_96

    move v6, v4

    goto :goto_97

    :cond_96
    array-length v6, v1

    :goto_97
    add-int/2addr v5, v6

    .line 5379
    new-array v5, v5, [I

    if-eqz v6, :cond_9f

    .line 5381
    invoke-static {v1, v4, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5383
    :cond_9f
    :goto_9f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v1

    if-lez v1, :cond_b6

    .line 5384
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    if-eqz v1, :cond_b0

    if-eq v1, v3, :cond_b0

    if-eq v1, v2, :cond_b0

    goto :goto_9f

    :cond_b0
    add-int/lit8 v4, v6, 0x1

    .line 5389
    aput v1, v5, v6

    move v6, v4

    goto :goto_9f

    .line 5393
    :cond_b6
    iput-object v5, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    .line 5395
    :cond_b8
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_bd
    const/16 v0, 0xb0

    .line 5330
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5331
    new-array v1, v0, [I

    move v5, v4

    move v6, v5

    :goto_c7
    if-ge v5, v0, :cond_e1

    if-eqz v5, :cond_ce

    .line 5335
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 5337
    :cond_ce
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    if-eqz v7, :cond_d9

    if-eq v7, v3, :cond_d9

    if-eq v7, v2, :cond_d9

    goto :goto_de

    :cond_d9
    add-int/lit8 v8, v6, 0x1

    .line 5342
    aput v7, v1, v6

    move v6, v8

    :goto_de
    add-int/lit8 v5, v5, 0x1

    goto :goto_c7

    :cond_e1
    if-eqz v6, :cond_0

    .line 5347
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-nez v2, :cond_e9

    move v3, v4

    goto :goto_ea

    :cond_e9
    array-length v3, v2

    :goto_ea
    if-nez v3, :cond_f2

    if-ne v6, v0, :cond_f2

    .line 5349
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    goto/16 :goto_0

    :cond_f2
    add-int v0, v3, v6

    .line 5351
    new-array v0, v0, [I

    if-eqz v3, :cond_fb

    .line 5353
    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5355
    :cond_fb
    invoke-static {v1, v4, v0, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5356
    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    goto/16 :goto_0

    .line 5322
    :sswitch_102
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-nez v0, :cond_10d

    .line 5323
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    .line 5325
    :cond_10d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5310
    :sswitch_114
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_122

    if-eq v0, v3, :cond_122

    if-eq v0, v2, :cond_122

    if-eq v0, v1, :cond_122

    goto/16 :goto_0

    .line 5316
    :cond_122
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    goto/16 :goto_0

    .line 5303
    :sswitch_126
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-nez v0, :cond_131

    .line 5304
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    .line 5306
    :cond_131
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5296
    :sswitch_138
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-nez v0, :cond_143

    .line 5297
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    .line 5299
    :cond_143
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5289
    :sswitch_14a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-nez v0, :cond_155

    .line 5290
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    .line 5292
    :cond_155
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5285
    :sswitch_15c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    goto/16 :goto_0

    .line 5278
    :sswitch_164
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-nez v0, :cond_16f

    .line 5279
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    .line 5281
    :cond_16f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5274
    :sswitch_176
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    goto/16 :goto_0

    .line 5267
    :sswitch_17e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-nez v0, :cond_189

    .line 5268
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    .line 5270
    :cond_189
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5260
    :sswitch_190
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-nez v0, :cond_19b

    .line 5261
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    .line 5263
    :cond_19b
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5253
    :sswitch_1a2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-nez v0, :cond_1ad

    .line 5254
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    .line 5256
    :cond_1ad
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5184
    :sswitch_1b4
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2dc

    packed-switch v0, :pswitch_data_31a

    goto/16 :goto_0

    .line 5247
    :pswitch_1c0
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    goto/16 :goto_0

    :sswitch_1c4
    const/16 v0, 0x42

    .line 5165
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 5166
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v1, :cond_1d0

    move v2, v4

    goto :goto_1d1

    :cond_1d0
    array-length v2, v1

    :goto_1d1
    add-int/2addr v0, v2

    .line 5167
    new-array v3, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v2, :cond_1d9

    .line 5170
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1d9
    :goto_1d9
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_1ed

    .line 5173
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v1, v3, v2

    .line 5174
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 5175
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d9

    .line 5178
    :cond_1ed
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v0, v3, v2

    .line 5179
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 5180
    iput-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 5157
    :sswitch_1fb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_206

    .line 5158
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 5160
    :cond_206
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5150
    :sswitch_20d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_218

    .line 5151
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 5153
    :cond_218
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5143
    :sswitch_21f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_22a

    .line 5144
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 5146
    :cond_22a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5136
    :sswitch_231
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_23c

    .line 5137
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 5139
    :cond_23c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 5103
    :sswitch_243
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_35e

    goto/16 :goto_0

    .line 5130
    :pswitch_24c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    goto/16 :goto_0

    .line 5099
    :sswitch_250
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    goto/16 :goto_0

    .line 5095
    :sswitch_258
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    goto/16 :goto_0

    :sswitch_260
    return-object p0

    nop

    :sswitch_data_262
    .sparse-switch
        0x0 -> :sswitch_260
        0x8 -> :sswitch_258
        0x10 -> :sswitch_250
        0x18 -> :sswitch_243
        0x22 -> :sswitch_231
        0x2a -> :sswitch_21f
        0x32 -> :sswitch_20d
        0x3a -> :sswitch_1fb
        0x42 -> :sswitch_1c4
        0x48 -> :sswitch_1b4
        0x52 -> :sswitch_1a2
        0x5a -> :sswitch_190
        0x62 -> :sswitch_17e
        0x68 -> :sswitch_176
        0x72 -> :sswitch_164
        0x78 -> :sswitch_15c
        0x82 -> :sswitch_14a
        0x8a -> :sswitch_138
        0x9a -> :sswitch_126
        0xa0 -> :sswitch_114
        0xaa -> :sswitch_102
        0xb0 -> :sswitch_bd
        0xb2 -> :sswitch_6a
        0xba -> :sswitch_59
        0xc0 -> :sswitch_52
        0xca -> :sswitch_41
        0xd2 -> :sswitch_30
        0xd8 -> :sswitch_29
        0xe0 -> :sswitch_22
        0xe8 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_2dc
    .packed-switch 0x0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
    .end packed-switch

    :pswitch_data_31a
    .packed-switch 0x24
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
        :pswitch_1c0
    .end packed-switch

    :pswitch_data_35e
    .packed-switch 0x0
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
        :pswitch_24c
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2641
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;

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

    .line 4856
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->timestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    .line 4857
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4859
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->phoneId:I

    if-eqz v0, :cond_14

    const/4 v1, 0x2

    .line 4860
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4862
    :cond_14
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->type:I

    if-eqz v0, :cond_1c

    const/4 v1, 0x3

    .line 4863
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4865
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_24

    const/4 v1, 0x4

    .line 4866
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4868
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_2c

    const/4 v1, 0x5

    .line 4869
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4871
    :cond_2c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_34

    const/4 v1, 0x6

    .line 4872
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4874
    :cond_34
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_3c

    const/4 v1, 0x7

    .line 4875
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4877
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_56

    array-length v0, v0

    if-lez v0, :cond_56

    move v0, v1

    .line 4878
    :goto_45
    iget-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v5, v4

    if-ge v0, v5, :cond_56

    .line 4879
    aget-object v4, v4, v0

    if-eqz v4, :cond_53

    const/16 v5, 0x8

    .line 4881
    invoke-virtual {p1, v5, v4}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_53
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 4885
    :cond_56
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->error:I

    if-eqz v0, :cond_5f

    const/16 v4, 0x9

    .line 4886
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4888
    :cond_5f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCall;

    if-eqz v0, :cond_68

    const/16 v4, 0xa

    .line 4889
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4891
    :cond_68
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->setupDataCallResponse:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilSetupDataCallResponse;

    if-eqz v0, :cond_71

    const/16 v4, 0xb

    .line 4892
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4894
    :cond_71
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->deactivateDataCall:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$RilDeactivateDataCall;

    if-eqz v0, :cond_7a

    const/16 v4, 0xc

    .line 4895
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4897
    :cond_7a
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataStallAction:I

    if-eqz v0, :cond_83

    const/16 v4, 0xd

    .line 4898
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4900
    :cond_83
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->modemRestart:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$ModemRestart;

    if-eqz v0, :cond_8c

    const/16 v4, 0xe

    .line 4901
    invoke-virtual {p1, v4, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4903
    :cond_8c
    iget-wide v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->nitzTimestampMillis:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_97

    const/16 v0, 0xf

    .line 4904
    invoke-virtual {p1, v0, v4, v5}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 4906
    :cond_97
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierIdMatching:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierIdMatching;

    if-eqz v0, :cond_a0

    const/16 v2, 0x10

    .line 4907
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4909
    :cond_a0
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->carrierKeyChange:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$CarrierKeyChange;

    if-eqz v0, :cond_a9

    const/16 v2, 0x11

    .line 4910
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4912
    :cond_a9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->dataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$DataSwitch;

    if-eqz v0, :cond_b2

    const/16 v2, 0x13

    .line 4913
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4915
    :cond_b2
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkValidationState:I

    if-eqz v0, :cond_bb

    const/16 v2, 0x14

    .line 4916
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4918
    :cond_bb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->onDemandDataSwitch:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$OnDemandDataSwitch;

    if-eqz v0, :cond_c4

    const/16 v2, 0x15

    .line 4919
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4921
    :cond_c4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    if-eqz v0, :cond_da

    array-length v0, v0

    if-lez v0, :cond_da

    .line 4922
    :goto_cb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->simState:[I

    array-length v2, v0

    if-ge v1, v2, :cond_da

    const/16 v2, 0x16

    .line 4923
    aget v0, v0, v1

    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_cb

    .line 4926
    :cond_da
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->activeSubscriptionInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ActiveSubscriptionInfo;

    if-eqz v0, :cond_e3

    const/16 v1, 0x17

    .line 4927
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4929
    :cond_e3
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->enabledModemBitmap:I

    if-eqz v0, :cond_ec

    const/16 v1, 0x18

    .line 4930
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4932
    :cond_ec
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->updatedEmergencyNumber:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v0, :cond_f5

    const/16 v1, 0x19

    .line 4933
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4935
    :cond_f5
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->networkCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-eqz v0, :cond_fe

    const/16 v1, 0x1a

    .line 4936
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 4938
    :cond_fe
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->signalStrength:I

    if-eqz v0, :cond_107

    const/16 v1, 0x1b

    .line 4939
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4941
    :cond_107
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->emergencyNumberDatabaseVersion:I

    if-eqz v0, :cond_110

    const/16 v1, 0x1c

    .line 4942
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4944
    :cond_110
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;->radioState:I

    if-eqz v0, :cond_119

    const/16 v1, 0x1d

    .line 4945
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4947
    :cond_119
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
