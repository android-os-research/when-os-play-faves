.class public final Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
.super Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;
.source "TelephonyProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetworkCapabilitiesInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
        "Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;


# instance fields
.field public blacklist isNetworkUnmetered:Z


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 4652
    invoke-direct {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 4653
    invoke-virtual {p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2

    .line 4638
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-nez v0, :cond_15

    .line 4639
    sget-object v0, Lcom/android/internal/telephony/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 4641
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    if-nez v1, :cond_10

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    .line 4642
    sput-object v1, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    .line 4644
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 4646
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->_emptyArray:[Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4713
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist parseFrom([B)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 4707
    new-instance v0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/MessageNano;[B)Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    return-object p0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 2

    const/4 v0, 0x0

    .line 4657
    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    const/4 v0, 0x0

    .line 4658
    iput-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->unknownFieldData:Lcom/android/internal/telephony/protobuf/nano/FieldArray;

    const/4 v0, -0x1

    .line 4659
    iput v0, p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;->cachedSize:I

    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 3

    .line 4674
    invoke-super {p0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 4675
    iget-boolean p0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    if-eqz p0, :cond_e

    const/4 v1, 0x1

    .line 4677
    invoke-static {v1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_e
    return v0
.end method

.method public blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4687
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    if-eqz v0, :cond_18

    const/16 v1, 0x8

    if-eq v0, v1, :cond_11

    .line 4692
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 4698
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    goto :goto_0

    :cond_18
    return-object p0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4632
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->mergeFrom(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4666
    iget-boolean v0, p0, Lcom/android/internal/telephony/nano/TelephonyProto$TelephonyEvent$NetworkCapabilitiesInfo;->isNetworkUnmetered:Z

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    .line 4667
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4669
    :cond_8
    invoke-super {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
