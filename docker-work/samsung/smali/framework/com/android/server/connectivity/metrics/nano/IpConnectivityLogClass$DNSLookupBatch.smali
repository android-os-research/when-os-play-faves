.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLookupBatch"
.end annotation


# static fields
.field private static volatile blacklist _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;


# instance fields
.field public blacklist eventTypes:[I

.field public blacklist getaddrinfoErrorCount:J

.field public blacklist getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist getaddrinfoQueryCount:J

.field public blacklist gethostbynameErrorCount:J

.field public blacklist gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

.field public blacklist gethostbynameQueryCount:J

.field public blacklist latenciesMs:[I

.field public blacklist networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

.field public blacklist returnCodes:[I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 924
    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    .line 925
    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    .line 926
    return-void
.end method

.method public static blacklist emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .registers 2

    .line 883
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v0, :cond_15

    .line 884
    sget-object v0, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 886
    :try_start_7
    sget-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v1, :cond_10

    .line 887
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    sput-object v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    .line 889
    :cond_10
    monitor-exit v0

    goto :goto_15

    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw v1

    .line 891
    :cond_15
    :goto_15
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1279
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .line 1273
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0
.end method


# virtual methods
.method public blacklist clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .registers 3

    .line 929
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 930
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    .line 931
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    .line 932
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    .line 933
    iput-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    .line 934
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 935
    invoke-static {}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 936
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 937
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 938
    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 939
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->cachedSize:I

    .line 940
    return-object p0
.end method

.method protected blacklist computeSerializedSize()I
    .registers 7

    .line 997
    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    .line 998
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    if-eqz v1, :cond_f

    .line 999
    nop

    .line 1000
    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1002
    :cond_f
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-eqz v1, :cond_2c

    array-length v1, v1

    if-lez v1, :cond_2c

    .line 1003
    const/4 v1, 0x0

    .line 1004
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v5, v4

    if-ge v3, v5, :cond_28

    .line 1005
    aget v4, v4, v3

    .line 1006
    .local v4, "element":I
    nop

    .line 1007
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 1004
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1009
    .end local v3    # "i":I
    :cond_28
    add-int/2addr v0, v1

    .line 1010
    array-length v3, v4

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1012
    .end local v1    # "dataSize":I
    :cond_2c
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v1, :cond_49

    array-length v1, v1

    if-lez v1, :cond_49

    .line 1013
    const/4 v1, 0x0

    .line 1014
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_35
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v5, v4

    if-ge v3, v5, :cond_45

    .line 1015
    aget v4, v4, v3

    .line 1016
    .restart local v4    # "element":I
    nop

    .line 1017
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 1014
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 1019
    .end local v3    # "i":I
    :cond_45
    add-int/2addr v0, v1

    .line 1020
    array-length v3, v4

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1022
    .end local v1    # "dataSize":I
    :cond_49
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v1, :cond_66

    array-length v1, v1

    if-lez v1, :cond_66

    .line 1023
    const/4 v1, 0x0

    .line 1024
    .restart local v1    # "dataSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_52
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v5, v4

    if-ge v3, v5, :cond_62

    .line 1025
    aget v4, v4, v3

    .line 1026
    .restart local v4    # "element":I
    nop

    .line 1027
    invoke-static {v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v1, v5

    .line 1024
    .end local v4    # "element":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 1029
    .end local v3    # "i":I
    :cond_62
    add-int/2addr v0, v1

    .line 1030
    array-length v3, v4

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    .line 1032
    .end local v1    # "dataSize":I
    :cond_66
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_74

    .line 1033
    const/4 v5, 0x5

    .line 1034
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1036
    :cond_74
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_80

    .line 1037
    const/4 v5, 0x6

    .line 1038
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1040
    :cond_80
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8c

    .line 1041
    const/4 v5, 0x7

    .line 1042
    invoke-static {v5, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1044
    :cond_8c
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_99

    .line 1045
    const/16 v3, 0x8

    .line 1046
    invoke-static {v3, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1048
    :cond_99
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_b4

    array-length v1, v1

    if-lez v1, :cond_b4

    .line 1049
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a1
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v2

    if-ge v1, v3, :cond_b4

    .line 1050
    aget-object v2, v2, v1

    .line 1051
    .local v2, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_b1

    .line 1052
    const/16 v3, 0x9

    .line 1053
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1049
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_b1
    add-int/lit8 v1, v1, 0x1

    goto :goto_a1

    .line 1057
    .end local v1    # "i":I
    :cond_b4
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v1, :cond_cf

    array-length v1, v1

    if-lez v1, :cond_cf

    .line 1058
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_bc
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v3, v2

    if-ge v1, v3, :cond_cf

    .line 1059
    aget-object v2, v2, v1

    .line 1060
    .restart local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v2, :cond_cc

    .line 1061
    const/16 v3, 0xa

    .line 1062
    invoke-static {v3, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v0, v3

    .line 1058
    .end local v2    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_cc
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    .line 1066
    .end local v1    # "i":I
    :cond_cf
    return v0
.end method

.method public bridge synthetic blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 877
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object p1

    return-object p1
.end method

.method public blacklist mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .registers 11
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1074
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1075
    .local v0, "tag":I
    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_20c

    .line 1079
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_209

    .line 1080
    return-object p0

    .line 1248
    :sswitch_f
    const/16 v2, 0x52

    .line 1249
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1250
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_1b

    move v4, v1

    goto :goto_1c

    :cond_1b
    array-length v4, v3

    .line 1251
    .local v4, "i":I
    :goto_1c
    add-int v5, v4, v2

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 1253
    .local v5, "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_25

    .line 1254
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1256
    :cond_25
    :goto_25
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_3c

    .line 1257
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 1258
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1259
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1256
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1262
    :cond_3c
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 1263
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1264
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 1265
    goto/16 :goto_209

    .line 1228
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_4c
    const/16 v2, 0x4a

    .line 1229
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1230
    .restart local v2    # "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-nez v3, :cond_58

    move v4, v1

    goto :goto_59

    :cond_58
    array-length v4, v3

    .line 1231
    .restart local v4    # "i":I
    :goto_59
    add-int v5, v4, v2

    new-array v5, v5, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 1233
    .restart local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v4, :cond_62

    .line 1234
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1236
    :cond_62
    :goto_62
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_79

    .line 1237
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 1238
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1239
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1236
    add-int/lit8 v4, v4, 0x1

    goto :goto_62

    .line 1242
    :cond_79
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    aput-object v1, v5, v4

    .line 1243
    aget-object v1, v5, v4

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1244
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 1245
    goto/16 :goto_209

    .line 1224
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :sswitch_89
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    .line 1225
    goto/16 :goto_209

    .line 1220
    :sswitch_91
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    .line 1221
    goto/16 :goto_209

    .line 1216
    :sswitch_99
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    .line 1217
    goto/16 :goto_209

    .line 1212
    :sswitch_a1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    .line 1213
    goto/16 :goto_209

    .line 1189
    :sswitch_a9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1190
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1192
    .local v3, "limit":I
    const/4 v4, 0x0

    .line 1193
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1194
    .local v5, "startPos":I
    :goto_b6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_c2

    .line 1195
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1196
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    .line 1198
    :cond_c2
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1199
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v6, :cond_cb

    move v7, v1

    goto :goto_cc

    :cond_cb
    array-length v7, v6

    .line 1200
    .local v7, "i":I
    :goto_cc
    add-int v8, v7, v4

    new-array v8, v8, [I

    .line 1201
    .local v8, "newArray":[I
    if-eqz v7, :cond_d5

    .line 1202
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1204
    :cond_d5
    :goto_d5
    array-length v1, v8

    if-ge v7, v1, :cond_e1

    .line 1205
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v8, v7

    .line 1204
    add-int/lit8 v7, v7, 0x1

    goto :goto_d5

    .line 1207
    :cond_e1
    iput-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 1208
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 1209
    goto/16 :goto_209

    .line 1172
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v7    # "i":I
    .end local v8    # "newArray":[I
    :sswitch_e8
    const/16 v2, 0x20

    .line 1173
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1174
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v3, :cond_f4

    move v4, v1

    goto :goto_f5

    :cond_f4
    array-length v4, v3

    .line 1175
    .local v4, "i":I
    :goto_f5
    add-int v5, v4, v2

    new-array v5, v5, [I

    .line 1176
    .local v5, "newArray":[I
    if-eqz v4, :cond_fe

    .line 1177
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1179
    :cond_fe
    :goto_fe
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_10f

    .line 1180
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1181
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1179
    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 1184
    :cond_10f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1185
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 1186
    goto/16 :goto_209

    .line 1149
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :sswitch_119
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1150
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1152
    .restart local v3    # "limit":I
    const/4 v4, 0x0

    .line 1153
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1154
    .local v5, "startPos":I
    :goto_126
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_132

    .line 1155
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1156
    add-int/lit8 v4, v4, 0x1

    goto :goto_126

    .line 1158
    :cond_132
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1159
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v6, :cond_13b

    move v7, v1

    goto :goto_13c

    :cond_13b
    array-length v7, v6

    .line 1160
    .restart local v7    # "i":I
    :goto_13c
    add-int v8, v7, v4

    new-array v8, v8, [I

    .line 1161
    .restart local v8    # "newArray":[I
    if-eqz v7, :cond_145

    .line 1162
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    :cond_145
    :goto_145
    array-length v1, v8

    if-ge v7, v1, :cond_151

    .line 1165
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v8, v7

    .line 1164
    add-int/lit8 v7, v7, 0x1

    goto :goto_145

    .line 1167
    :cond_151
    iput-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 1168
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 1169
    goto/16 :goto_209

    .line 1132
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v7    # "i":I
    .end local v8    # "newArray":[I
    :sswitch_158
    const/16 v2, 0x18

    .line 1133
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1134
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v3, :cond_164

    move v4, v1

    goto :goto_165

    :cond_164
    array-length v4, v3

    .line 1135
    .local v4, "i":I
    :goto_165
    add-int v5, v4, v2

    new-array v5, v5, [I

    .line 1136
    .local v5, "newArray":[I
    if-eqz v4, :cond_16e

    .line 1137
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1139
    :cond_16e
    :goto_16e
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_17f

    .line 1140
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1141
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1139
    add-int/lit8 v4, v4, 0x1

    goto :goto_16e

    .line 1144
    :cond_17f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1145
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 1146
    goto/16 :goto_209

    .line 1109
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :sswitch_189
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    .line 1110
    .local v2, "length":I
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    .line 1112
    .restart local v3    # "limit":I
    const/4 v4, 0x0

    .line 1113
    .local v4, "arrayLength":I
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    .line 1114
    .local v5, "startPos":I
    :goto_196
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v6

    if-lez v6, :cond_1a2

    .line 1115
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    .line 1116
    add-int/lit8 v4, v4, 0x1

    goto :goto_196

    .line 1118
    :cond_1a2
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 1119
    iget-object v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v6, :cond_1ab

    move v7, v1

    goto :goto_1ac

    :cond_1ab
    array-length v7, v6

    .line 1120
    .restart local v7    # "i":I
    :goto_1ac
    add-int v8, v7, v4

    new-array v8, v8, [I

    .line 1121
    .restart local v8    # "newArray":[I
    if-eqz v7, :cond_1b5

    .line 1122
    invoke-static {v6, v1, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1124
    :cond_1b5
    :goto_1b5
    array-length v1, v8

    if-ge v7, v1, :cond_1c1

    .line 1125
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v8, v7

    .line 1124
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b5

    .line 1127
    :cond_1c1
    iput-object v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 1128
    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    .line 1129
    goto :goto_209

    .line 1092
    .end local v2    # "length":I
    .end local v3    # "limit":I
    .end local v4    # "arrayLength":I
    .end local v5    # "startPos":I
    .end local v7    # "i":I
    .end local v8    # "newArray":[I
    :sswitch_1c7
    const/16 v2, 0x10

    .line 1093
    invoke-static {p1, v2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 1094
    .local v2, "arrayLength":I
    iget-object v3, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v3, :cond_1d3

    move v4, v1

    goto :goto_1d4

    :cond_1d3
    array-length v4, v3

    .line 1095
    .local v4, "i":I
    :goto_1d4
    add-int v5, v4, v2

    new-array v5, v5, [I

    .line 1096
    .local v5, "newArray":[I
    if-eqz v4, :cond_1dd

    .line 1097
    invoke-static {v3, v1, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1099
    :cond_1dd
    :goto_1dd
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_1ee

    .line 1100
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1101
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1099
    add-int/lit8 v4, v4, 0x1

    goto :goto_1dd

    .line 1104
    :cond_1ee
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    aput v1, v5, v4

    .line 1105
    iput-object v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 1106
    goto :goto_209

    .line 1085
    .end local v2    # "arrayLength":I
    .end local v4    # "i":I
    .end local v5    # "newArray":[I
    :sswitch_1f7
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-nez v1, :cond_202

    .line 1086
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 1088
    :cond_202
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 1089
    goto :goto_209

    .line 1077
    :sswitch_208
    return-object p0

    .line 1268
    .end local v0    # "tag":I
    :cond_209
    :goto_209
    goto/16 :goto_0

    nop

    :sswitch_data_20c
    .sparse-switch
        0x0 -> :sswitch_208
        0xa -> :sswitch_1f7
        0x10 -> :sswitch_1c7
        0x12 -> :sswitch_189
        0x18 -> :sswitch_158
        0x1a -> :sswitch_119
        0x20 -> :sswitch_e8
        0x22 -> :sswitch_a9
        0x28 -> :sswitch_a1
        0x30 -> :sswitch_99
        0x38 -> :sswitch_91
        0x40 -> :sswitch_89
        0x4a -> :sswitch_4c
        0x52 -> :sswitch_f
    .end sparse-switch
.end method

.method public blacklist writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 7
    .param p1, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-eqz v0, :cond_8

    .line 947
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 949
    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-eqz v0, :cond_1e

    array-length v0, v0

    if-lez v0, :cond_1e

    .line 950
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1e

    .line 951
    const/4 v2, 0x2

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 950
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 954
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v0, :cond_34

    array-length v0, v0

    if-lez v0, :cond_34

    .line 955
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_34

    .line 956
    const/4 v2, 0x3

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 955
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 959
    .end local v0    # "i":I
    :cond_34
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v0, :cond_4a

    array-length v0, v0

    if-lez v0, :cond_4a

    .line 960
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3c
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4a

    .line 961
    const/4 v2, 0x4

    aget v1, v1, v0

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 960
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 964
    .end local v0    # "i":I
    :cond_4a
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoQueryCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_56

    .line 965
    const/4 v4, 0x5

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 967
    :cond_56
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameQueryCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_60

    .line 968
    const/4 v4, 0x6

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 970
    :cond_60
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrorCount:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6a

    .line 971
    const/4 v4, 0x7

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 973
    :cond_6a
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrorCount:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_75

    .line 974
    const/16 v2, 0x8

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 976
    :cond_75
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_8e

    array-length v0, v0

    if-lez v0, :cond_8e

    .line 977
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7d
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->getaddrinfoErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_8e

    .line 978
    aget-object v1, v1, v0

    .line 979
    .local v1, "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_8b

    .line 980
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 977
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_8b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 984
    .end local v0    # "i":I
    :cond_8e
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    if-eqz v0, :cond_a7

    array-length v0, v0

    if-lez v0, :cond_a7

    .line 985
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_96
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->gethostbynameErrors:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    array-length v2, v1

    if-ge v0, v2, :cond_a7

    .line 986
    aget-object v1, v1, v0

    .line 987
    .restart local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    if-eqz v1, :cond_a4

    .line 988
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    .line 985
    .end local v1    # "element":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    goto :goto_96

    .line 992
    .end local v0    # "i":I
    :cond_a7
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 993
    return-void
.end method
