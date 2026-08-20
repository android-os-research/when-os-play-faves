.class public final Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$SmsType;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBPriority;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessageType;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Tech;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Format;,
        Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;


# instance fields
.field public blacklist blocked:Z

.field public blacklist cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

.field public blacklist dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

.field public blacklist delay:I

.field public blacklist error:I

.field public blacklist errorCode:I

.field public blacklist format:I

.field public blacklist imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

.field public blacklist imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

.field public blacklist imsError:I

.field public blacklist incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

.field public blacklist messageId:J

.field public blacklist rilRequestId:I

.field public blacklist serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

.field public blacklist settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

.field public blacklist smsType:I

.field public blacklist tech:I

.field public blacklist type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8134
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8135
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 2

    .line 8069
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-nez v0, :cond_15

    .line 8070
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 8072
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 8073
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    .line 8075
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 8077
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8580
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 8574
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 5

    const/4 v0, 0x0

    .line 8139
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    .line 8140
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    const/4 v1, 0x0

    .line 8141
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 8142
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 8143
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 8144
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 8145
    invoke-static {}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;->emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    .line 8146
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    .line 8147
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    .line 8148
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    .line 8149
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    .line 8150
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    .line 8151
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 8152
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    .line 8153
    iput-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 8154
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    .line 8155
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    const-wide/16 v2, 0x0

    .line 8156
    iput-wide v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    .line 8157
    iput-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 8158
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 6

    .line 8229
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 8230
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    .line 8232
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8234
    :cond_e
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    if-eqz v1, :cond_18

    const/4 v2, 0x2

    .line 8236
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8238
    :cond_18
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v1, :cond_22

    const/4 v2, 0x3

    .line 8240
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8242
    :cond_22
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v1, :cond_2c

    const/4 v2, 0x4

    .line 8244
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8246
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v1, :cond_36

    const/4 v2, 0x5

    .line 8248
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8250
    :cond_36
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v1, :cond_40

    const/4 v2, 0x6

    .line 8252
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8254
    :cond_40
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v1, :cond_5a

    array-length v1, v1

    if-lez v1, :cond_5a

    const/4 v1, 0x0

    .line 8255
    :goto_48
    iget-object v2, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v3, v2

    if-ge v1, v3, :cond_5a

    .line 8256
    aget-object v2, v2, v1

    if-eqz v2, :cond_57

    const/4 v3, 0x7

    .line 8259
    invoke-static {v3, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    .line 8263
    :cond_5a
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    if-eqz v1, :cond_65

    const/16 v2, 0x8

    .line 8265
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8267
    :cond_65
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    if-eqz v1, :cond_70

    const/16 v2, 0x9

    .line 8269
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8271
    :cond_70
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v1, :cond_7b

    const/16 v2, 0xa

    .line 8273
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8275
    :cond_7b
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    if-eqz v1, :cond_86

    const/16 v2, 0xb

    .line 8277
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8279
    :cond_86
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    if-eqz v1, :cond_91

    const/16 v2, 0xc

    .line 8281
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8283
    :cond_91
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-eqz v1, :cond_9c

    const/16 v2, 0xd

    .line 8285
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8287
    :cond_9c
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    if-eqz v1, :cond_a7

    const/16 v2, 0xe

    .line 8289
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8291
    :cond_a7
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-eqz v1, :cond_b2

    const/16 v2, 0xf

    .line 8293
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8295
    :cond_b2
    iget v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eqz v1, :cond_bd

    const/16 v2, 0x10

    .line 8297
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8299
    :cond_bd
    iget-boolean v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    if-eqz v1, :cond_c8

    const/16 v2, 0x11

    .line 8301
    invoke-static {v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8303
    :cond_c8
    iget-wide v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_d7

    const/16 p0, 0x12

    .line 8305
    invoke-static {p0, v1, v2}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_d7
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8315
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_140

    .line 8320
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 8565
    :sswitch_12
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    goto :goto_0

    .line 8561
    :sswitch_19
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    goto :goto_0

    .line 8548
    :sswitch_20
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_2f

    if-eq v0, v4, :cond_2f

    if-eq v0, v3, :cond_2f

    if-eq v0, v2, :cond_2f

    if-eq v0, v1, :cond_2f

    goto :goto_0

    .line 8555
    :cond_2f
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    goto :goto_0

    .line 8541
    :sswitch_32
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-nez v0, :cond_3d

    .line 8542
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    .line 8544
    :cond_3d
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8528
    :sswitch_43
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_52

    if-eq v0, v4, :cond_52

    if-eq v0, v3, :cond_52

    if-eq v0, v2, :cond_52

    if-eq v0, v1, :cond_52

    goto :goto_0

    .line 8535
    :cond_52
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    goto :goto_0

    .line 8521
    :sswitch_55
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-nez v0, :cond_60

    .line 8522
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    .line 8524
    :cond_60
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8517
    :sswitch_66
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    goto :goto_0

    .line 8448
    :sswitch_6d
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_18e

    packed-switch v0, :pswitch_data_1cc

    goto :goto_0

    .line 8511
    :pswitch_78
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    goto :goto_0

    .line 8444
    :sswitch_7b
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    goto/16 :goto_0

    .line 8432
    :sswitch_83
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_91

    if-eq v0, v4, :cond_91

    if-eq v0, v3, :cond_91

    if-eq v0, v2, :cond_91

    goto/16 :goto_0

    .line 8438
    :cond_91
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    goto/16 :goto_0

    .line 8421
    :sswitch_95
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    if-eqz v0, :cond_a1

    if-eq v0, v4, :cond_a1

    if-eq v0, v3, :cond_a1

    goto/16 :goto_0

    .line 8426
    :cond_a1
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    goto/16 :goto_0

    :sswitch_a5
    const/16 v0, 0x3a

    .line 8402
    invoke-static {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 8403
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    const/4 v2, 0x0

    if-nez v1, :cond_b2

    move v3, v2

    goto :goto_b3

    :cond_b2
    array-length v3, v1

    :goto_b3
    add-int/2addr v0, v3

    .line 8404
    new-array v4, v0, [Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v3, :cond_bb

    .line 8407
    invoke-static {v1, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_bb
    :goto_bb
    add-int/lit8 v1, v0, -0x1

    if-ge v3, v1, :cond_cf

    .line 8410
    new-instance v1, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v1, v4, v3

    .line 8411
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8412
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_bb

    .line 8415
    :cond_cf
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;-><init>()V

    aput-object v0, v4, v3

    .line 8416
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8417
    iput-object v4, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    goto/16 :goto_0

    .line 8394
    :sswitch_dd
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-nez v0, :cond_e8

    .line 8395
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    .line 8397
    :cond_e8
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8387
    :sswitch_ef
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-nez v0, :cond_fa

    .line 8388
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    .line 8390
    :cond_fa
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8380
    :sswitch_101
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-nez v0, :cond_10c

    .line 8381
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    .line 8383
    :cond_10c
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8373
    :sswitch_113
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-nez v0, :cond_11e

    .line 8374
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    .line 8376
    :cond_11e
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 8345
    :sswitch_125
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_210

    goto/16 :goto_0

    .line 8367
    :pswitch_12e
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    goto/16 :goto_0

    .line 8326
    :sswitch_132
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    packed-switch v0, :pswitch_data_23c

    goto/16 :goto_0

    .line 8339
    :pswitch_13b
    iput v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    goto/16 :goto_0

    :sswitch_13f
    return-object p0

    :sswitch_data_140
    .sparse-switch
        0x0 -> :sswitch_13f
        0x8 -> :sswitch_132
        0x10 -> :sswitch_125
        0x1a -> :sswitch_113
        0x22 -> :sswitch_101
        0x2a -> :sswitch_ef
        0x32 -> :sswitch_dd
        0x3a -> :sswitch_a5
        0x40 -> :sswitch_95
        0x48 -> :sswitch_83
        0x50 -> :sswitch_7b
        0x58 -> :sswitch_6d
        0x60 -> :sswitch_66
        0x6a -> :sswitch_55
        0x70 -> :sswitch_43
        0x7a -> :sswitch_32
        0x80 -> :sswitch_20
        0x88 -> :sswitch_19
        0x90 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
    .end packed-switch

    :pswitch_data_1cc
    .packed-switch 0x24
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
        :pswitch_78
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x0
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
        :pswitch_12e
    .end packed-switch

    :pswitch_data_23c
    .packed-switch 0x0
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
        :pswitch_13b
    .end packed-switch
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7723
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;

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

    .line 8165
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->type:I

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 8166
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8168
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->delay:I

    if-eqz v0, :cond_10

    const/4 v1, 0x2

    .line 8169
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8171
    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->settings:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonySettings;

    if-eqz v0, :cond_18

    const/4 v1, 0x3

    .line 8172
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8174
    :cond_18
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->serviceState:Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyServiceState;

    if-eqz v0, :cond_20

    const/4 v1, 0x4

    .line 8175
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8177
    :cond_20
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsConnectionState:Lcom/android/internal/telephony/nano/TelephonyProto$ImsConnectionState;

    if-eqz v0, :cond_28

    const/4 v1, 0x5

    .line 8178
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8180
    :cond_28
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsCapabilities:Lcom/android/internal/telephony/nano/TelephonyProto$ImsCapabilities;

    if-eqz v0, :cond_30

    const/4 v1, 0x6

    .line 8181
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8183
    :cond_30
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    if-eqz v0, :cond_48

    array-length v0, v0

    if-lez v0, :cond_48

    const/4 v0, 0x0

    .line 8184
    :goto_38
    iget-object v1, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->dataCalls:[Lcom/android/internal/telephony/nano/TelephonyProto$RilDataCall;

    array-length v2, v1

    if-ge v0, v2, :cond_48

    .line 8185
    aget-object v1, v1, v0

    if-eqz v1, :cond_45

    const/4 v2, 0x7

    .line 8187
    invoke-virtual {p1, v2, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 8191
    :cond_48
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->format:I

    if-eqz v0, :cond_51

    const/16 v1, 0x8

    .line 8192
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8194
    :cond_51
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->tech:I

    if-eqz v0, :cond_5a

    const/16 v1, 0x9

    .line 8195
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8197
    :cond_5a
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->errorCode:I

    if-eqz v0, :cond_63

    const/16 v1, 0xa

    .line 8198
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8200
    :cond_63
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->error:I

    if-eqz v0, :cond_6c

    const/16 v1, 0xb

    .line 8201
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8203
    :cond_6c
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->rilRequestId:I

    if-eqz v0, :cond_75

    const/16 v1, 0xc

    .line 8204
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8206
    :cond_75
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->cellBroadcastMessage:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$CBMessage;

    if-eqz v0, :cond_7e

    const/16 v1, 0xd

    .line 8207
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8209
    :cond_7e
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->imsError:I

    if-eqz v0, :cond_87

    const/16 v1, 0xe

    .line 8210
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8212
    :cond_87
    iget-object v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->incompleteSms:Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event$IncompleteSms;

    if-eqz v0, :cond_90

    const/16 v1, 0xf

    .line 8213
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    .line 8215
    :cond_90
    iget v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->smsType:I

    if-eqz v0, :cond_99

    const/16 v1, 0x10

    .line 8216
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8218
    :cond_99
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->blocked:Z

    if-eqz v0, :cond_a2

    const/16 v1, 0x11

    .line 8219
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 8221
    :cond_a2
    iget-wide v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$SmsSession$Event;->messageId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_af

    const/16 v2, 0x12

    .line 8222
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 8224
    :cond_af
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
