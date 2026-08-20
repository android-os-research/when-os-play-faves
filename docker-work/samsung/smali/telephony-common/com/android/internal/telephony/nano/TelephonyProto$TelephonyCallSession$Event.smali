.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$SignalStrength;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilSrvccState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$AudioCodec;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$PhoneState;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$ImsCommand;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilRequest;,
        Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;


# instance fields
.field public blacklist audioCodec:I

.field public blacklist callIndex:I

.field public blacklist callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

.field public blacklist callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

.field public blacklist callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

.field public blacklist callState:I

.field public blacklist calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

.field public blacklist dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public blacklist delay:I

.field public blacklist emergencyNumberDatabaseVersion:I

.field public blacklist error:I

.field public blacklist imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public blacklist imsCommand:I

.field public blacklist imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public blacklist imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

.field public blacklist isImsEmergencyCall:Z

.field public blacklist mergedCallIndex:I

.field public blacklist nitzTimestampMillis:J

.field public blacklist phoneState:I

.field public blacklist reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

.field public blacklist rilRequest:I

.field public blacklist rilRequestId:I

.field public blacklist serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public blacklist settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public blacklist srcAccessTech:I

.field public blacklist srvccState:I

.field public blacklist targetAccessTech:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 6846
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 6847
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 2

    .line 6751
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-nez v0, :cond_15

    .line 6752
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 6754
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 6755
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    .line 6757
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 6759
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7563
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 7557
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 6

    const/4 v0, 0x0

    .line 6851
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    .line 6852
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    const/4 v1, 0x0

    .line 6853
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 6854
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 6855
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 6856
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 6857
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 6858
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    .line 6859
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    .line 6860
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    .line 6861
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    .line 6862
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    .line 6863
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    .line 6864
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    .line 6865
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    .line 6866
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    .line 6867
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    .line 6868
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    const/4 v2, -0x1

    .line 6869
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    .line 6870
    iput v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    const-wide/16 v3, 0x0

    .line 6871
    iput-wide v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    .line 6872
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    .line 6873
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 6874
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 6875
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 6876
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    .line 6877
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 6878
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    .line 6879
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    .line 6880
    iput v2, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 6986
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 6987
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 6989
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6991
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 6993
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6995
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 6997
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6999
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 7001
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7003
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 7005
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7007
    :cond_36
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 7009
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7011
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v2, 0x0

    if-eqz v1, :cond_5b

    array-length v1, v1

    if-lez v1, :cond_5b

    move v1, v2

    .line 7012
    :goto_49
    iget-object v3, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v4, v3

    if-ge v1, v4, :cond_5b

    .line 7013
    aget-object v3, v3, v1

    if-eqz v3, :cond_58

    const/4 v4, 0x7

    .line 7016
    invoke-static {v4, v3}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 7020
    :cond_5b
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    if-eqz v1, :cond_66

    const/16 v3, 0x8

    .line 7022
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7024
    :cond_66
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    if-eqz v1, :cond_71

    const/16 v3, 0x9

    .line 7026
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7028
    :cond_71
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    if-eqz v1, :cond_7c

    const/16 v3, 0xa

    .line 7030
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7032
    :cond_7c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    if-eqz v1, :cond_87

    const/16 v3, 0xb

    .line 7034
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7036
    :cond_87
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v1, :cond_a1

    array-length v1, v1

    if-lez v1, :cond_a1

    .line 7037
    :goto_8e
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v3, v1

    if-ge v2, v3, :cond_a1

    .line 7038
    aget-object v1, v1, v2

    if-eqz v1, :cond_9e

    const/16 v3, 0xc

    .line 7041
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    .line 7045
    :cond_a1
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    if-eqz v1, :cond_ac

    const/16 v2, 0xd

    .line 7047
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7049
    :cond_ac
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    if-eqz v1, :cond_b7

    const/16 v2, 0xe

    .line 7051
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7053
    :cond_b7
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    if-eqz v1, :cond_c2

    const/16 v2, 0xf

    .line 7055
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7057
    :cond_c2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    if-eqz v1, :cond_cd

    const/16 v2, 0x10

    .line 7059
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7061
    :cond_cd
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    if-eqz v1, :cond_d8

    const/16 v2, 0x11

    .line 7063
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7065
    :cond_d8
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz v1, :cond_e3

    const/16 v2, 0x12

    .line 7067
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7069
    :cond_e3
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_ef

    const/16 v3, 0x13

    .line 7071
    invoke-static {v3, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7073
    :cond_ef
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    if-eq v1, v2, :cond_fa

    const/16 v2, 0x14

    .line 7075
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7077
    :cond_fa
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_109

    const/16 v3, 0x15

    .line 7079
    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7081
    :cond_109
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    if-eqz v1, :cond_114

    const/16 v2, 0x16

    .line 7083
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 7085
    :cond_114
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v1, :cond_11f

    const/16 v2, 0x17

    .line 7087
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7089
    :cond_11f
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v1, :cond_12a

    const/16 v2, 0x18

    .line 7091
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7093
    :cond_12a
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v1, :cond_135

    const/16 v2, 0x19

    .line 7095
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7097
    :cond_135
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    if-eqz v1, :cond_140

    const/16 v2, 0x1a

    .line 7099
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7101
    :cond_140
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v1, :cond_14b

    const/16 v2, 0x1b

    .line 7103
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7105
    :cond_14b
    iget p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    if-eqz p0, :cond_156

    const/16 v1, 0x1c

    .line 7107
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_156
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7117
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_1e8

    .line 7122
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 7548
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    goto :goto_0

    .line 7541
    :sswitch_19
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-nez v0, :cond_24

    .line 7542
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    .line 7544
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7537
    :sswitch_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    goto :goto_0

    .line 7530
    :sswitch_31
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-nez v0, :cond_3c

    .line 7531
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 7533
    :cond_3c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7523
    :sswitch_42
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-nez v0, :cond_4d

    .line 7524
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    .line 7526
    :cond_4d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7516
    :sswitch_53
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-nez v0, :cond_5e

    .line 7517
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    .line 7519
    :cond_5e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7487
    :sswitch_64
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_25e

    goto :goto_0

    .line 7510
    :pswitch_6c
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    goto :goto_0

    .line 7483
    :sswitch_6f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    goto :goto_0

    .line 7453
    :sswitch_76
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_28c

    goto :goto_0

    .line 7477
    :pswitch_7e
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    goto/16 :goto_0

    .line 7423
    :sswitch_82
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2bc

    goto/16 :goto_0

    .line 7447
    :pswitch_8b
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    goto/16 :goto_0

    .line 7416
    :sswitch_8f
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-nez v0, :cond_9a

    .line 7417
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    .line 7419
    :cond_9a
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7396
    :sswitch_a1
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_2ec

    goto/16 :goto_0

    .line 7410
    :pswitch_aa
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    goto/16 :goto_0

    .line 7383
    :sswitch_ae
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_bf

    if-eq v0, v4, :cond_bf

    if-eq v0, v2, :cond_bf

    if-eq v0, v1, :cond_bf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_bf

    goto/16 :goto_0

    .line 7390
    :cond_bf
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    goto/16 :goto_0

    .line 7379
    :sswitch_c3
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    goto/16 :goto_0

    .line 7363
    :sswitch_cb
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_308

    goto/16 :goto_0

    .line 7373
    :pswitch_d4
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    goto/16 :goto_0

    .line 7294
    :sswitch_d8
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_31c

    packed-switch v0, :pswitch_data_35a

    goto/16 :goto_0

    .line 7357
    :pswitch_e4
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    goto/16 :goto_0

    :sswitch_e8
    const/16 v0, 0x62

    .line 7275
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7276
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-nez v1, :cond_f4

    move v2, v3

    goto :goto_f5

    :cond_f4
    array-length v2, v1

    :goto_f5
    add-int/2addr v0, v2

    .line 7277
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v2, :cond_fd

    .line 7280
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_fd
    :goto_fd
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_111

    .line 7283
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v1, v4, v2

    .line 7284
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7285
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_fd

    .line 7288
    :cond_111
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;-><init>()V

    aput-object v0, v4, v2

    .line 7289
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7290
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    goto/16 :goto_0

    .line 7270
    :sswitch_11f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    goto/16 :goto_0

    .line 7266
    :sswitch_127
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    goto/16 :goto_0

    .line 7248
    :sswitch_12f
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_39e

    goto/16 :goto_0

    .line 7260
    :pswitch_138
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    goto/16 :goto_0

    .line 7236
    :sswitch_13c
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_14a

    if-eq v0, v4, :cond_14a

    if-eq v0, v2, :cond_14a

    if-eq v0, v1, :cond_14a

    goto/16 :goto_0

    .line 7242
    :cond_14a
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    goto/16 :goto_0

    :sswitch_14e
    const/16 v0, 0x3a

    .line 7217
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 7218
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-nez v1, :cond_15a

    move v2, v3

    goto :goto_15b

    :cond_15a
    array-length v2, v1

    :goto_15b
    add-int/2addr v0, v2

    .line 7219
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v2, :cond_163

    .line 7222
    invoke-static {v1, v3, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_163
    :goto_163
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_177

    .line 7225
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v1, v4, v2

    .line 7226
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7227
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_163

    .line 7230
    :cond_177
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v0, v4, v2

    .line 7231
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 7232
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 7209
    :sswitch_185
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_190

    .line 7210
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 7212
    :cond_190
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7202
    :sswitch_197
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_1a2

    .line 7203
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 7205
    :cond_1a2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7195
    :sswitch_1a9
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_1b4

    .line 7196
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 7198
    :cond_1b4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7188
    :sswitch_1bb
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_1c6

    .line 7189
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 7191
    :cond_1c6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 7160
    :sswitch_1cd
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_3b6

    goto/16 :goto_0

    .line 7182
    :pswitch_1d6
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    goto/16 :goto_0

    .line 7128
    :sswitch_1da
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_3e2

    goto/16 :goto_0

    .line 7154
    :pswitch_1e3
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    goto/16 :goto_0

    :sswitch_1e7
    return-object p0

    :sswitch_data_1e8
    .sparse-switch
        0x0 -> :sswitch_1e7
        0x8 -> :sswitch_1da
        0x10 -> :sswitch_1cd
        0x1a -> :sswitch_1bb
        0x22 -> :sswitch_1a9
        0x2a -> :sswitch_197
        0x32 -> :sswitch_185
        0x3a -> :sswitch_14e
        0x40 -> :sswitch_13c
        0x48 -> :sswitch_12f
        0x50 -> :sswitch_127
        0x58 -> :sswitch_11f
        0x62 -> :sswitch_e8
        0x68 -> :sswitch_d8
        0x70 -> :sswitch_cb
        0x78 -> :sswitch_c3
        0x80 -> :sswitch_ae
        0x88 -> :sswitch_a1
        0x92 -> :sswitch_8f
        0x98 -> :sswitch_82
        0xa0 -> :sswitch_76
        0xa8 -> :sswitch_6f
        0xb0 -> :sswitch_64
        0xba -> :sswitch_53
        0xc2 -> :sswitch_42
        0xca -> :sswitch_31
        0xd0 -> :sswitch_2a
        0xda -> :sswitch_19
        0xe0 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_25e
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
        :pswitch_6c
    .end packed-switch

    :pswitch_data_28c
    .packed-switch -0x1
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
    .end packed-switch

    :pswitch_data_2bc
    .packed-switch -0x1
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
        :pswitch_8b
    .end packed-switch

    :pswitch_data_2ec
    .packed-switch 0x0
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
        :pswitch_aa
    .end packed-switch

    :pswitch_data_308
    .packed-switch 0x0
        :pswitch_d4
        :pswitch_d4
        :pswitch_d4
        :pswitch_d4
        :pswitch_d4
        :pswitch_d4
        :pswitch_d4
        :pswitch_d4
    .end packed-switch

    :pswitch_data_31c
    .packed-switch 0x0
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
    .end packed-switch

    :pswitch_data_35a
    .packed-switch 0x24
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
        :pswitch_e4
    .end packed-switch

    :pswitch_data_39e
    .packed-switch 0x0
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
        :pswitch_138
    .end packed-switch

    :pswitch_data_3b6
    .packed-switch 0x0
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
        :pswitch_1d6
    .end packed-switch

    :pswitch_data_3e2
    .packed-switch 0x0
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
        :pswitch_1e3
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5592
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6887
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->type:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 6888
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6890
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->delay:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 6891
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6893
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 6894
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6896
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 6897
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6899
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 6900
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6902
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 6903
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6905
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    array-length v0, v0

    if-lez v0, :cond_49

    move v0, v1

    .line 6906
    :goto_39
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v3, v2

    if-ge v0, v3, :cond_49

    .line 6907
    aget-object v2, v2, v0

    if-eqz v2, :cond_46

    const/4 v3, 0x7

    .line 6909
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 6913
    :cond_49
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->phoneState:I

    if-eqz v0, :cond_52

    const/16 v2, 0x8

    .line 6914
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6916
    :cond_52
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callState:I

    if-eqz v0, :cond_5b

    const/16 v2, 0x9

    .line 6917
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6919
    :cond_5b
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callIndex:I

    if-eqz v0, :cond_64

    const/16 v2, 0xa

    .line 6920
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6922
    :cond_64
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->mergedCallIndex:I

    if-eqz v0, :cond_6d

    const/16 v2, 0xb

    .line 6923
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6925
    :cond_6d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    if-eqz v0, :cond_85

    array-length v0, v0

    if-lez v0, :cond_85

    .line 6926
    :goto_74
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->calls:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$RilCall;

    array-length v2, v0

    if-ge v1, v2, :cond_85

    .line 6927
    aget-object v0, v0, v1

    if-eqz v0, :cond_82

    const/16 v2, 0xc

    .line 6929
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_82
    add-int/lit8 v1, v1, 0x1

    goto :goto_74

    .line 6933
    :cond_85
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->error:I

    if-eqz v0, :cond_8e

    const/16 v1, 0xd

    .line 6934
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6936
    :cond_8e
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequest:I

    if-eqz v0, :cond_97

    const/16 v1, 0xe

    .line 6937
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6939
    :cond_97
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->rilRequestId:I

    if-eqz v0, :cond_a0

    const/16 v1, 0xf

    .line 6940
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6942
    :cond_a0
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srvccState:I

    if-eqz v0, :cond_a9

    const/16 v1, 0x10

    .line 6943
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6945
    :cond_a9
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsCommand:I

    if-eqz v0, :cond_b2

    const/16 v1, 0x11

    .line 6946
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6948
    :cond_b2
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->reasonInfo:Lcom/android/internal/telephony/nano/TelephonyProto$ImsReasonInfo;

    if-eqz v0, :cond_bb

    const/16 v1, 0x12

    .line 6949
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6951
    :cond_bb
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->srcAccessTech:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c5

    const/16 v2, 0x13

    .line 6952
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6954
    :cond_c5
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->targetAccessTech:I

    if-eq v0, v1, :cond_ce

    const/16 v1, 0x14

    .line 6955
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6957
    :cond_ce
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->nitzTimestampMillis:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_db

    const/16 v2, 0x15

    .line 6958
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 6960
    :cond_db
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->audioCodec:I

    if-eqz v0, :cond_e4

    const/16 v1, 0x16

    .line 6961
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6963
    :cond_e4
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQuality:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQuality;

    if-eqz v0, :cond_ed

    const/16 v1, 0x17

    .line 6964
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6966
    :cond_ed
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryDl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v0, :cond_f6

    const/16 v1, 0x18

    .line 6967
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6969
    :cond_f6
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->callQualitySummaryUl:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event$CallQualitySummary;

    if-eqz v0, :cond_ff

    const/16 v1, 0x19

    .line 6970
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6972
    :cond_ff
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->isImsEmergencyCall:Z

    if-eqz v0, :cond_108

    const/16 v1, 0x1a

    .line 6973
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 6975
    :cond_108
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->imsEmergencyNumberInfo:Lcom/android/internal/telephony/nano/TelephonyProto$EmergencyNumberInfo;

    if-eqz v0, :cond_111

    const/16 v1, 0x1b

    .line 6976
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 6978
    :cond_111
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyCallSession$Event;->emergencyNumberDatabaseVersion:I

    if-eqz v0, :cond_11a

    const/16 v1, 0x1c

    .line 6979
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 6981
    :cond_11a
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
