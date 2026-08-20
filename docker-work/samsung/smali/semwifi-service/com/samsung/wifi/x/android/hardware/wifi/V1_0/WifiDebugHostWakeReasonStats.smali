.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;
.super Ljava/lang/Object;
.source "WifiDebugHostWakeReasonStats.java"


# instance fields
.field public cmdEventWakeCntPerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public driverFwLocalWakeCntPerType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

.field public rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

.field public rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

.field public totalCmdEventWakeCnt:I

.field public totalDriverFwLocalWakeCnt:I

.field public totalRxPacketWakeCnt:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    .line 33
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    .line 34
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    .line 35
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    .line 36
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 121
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 124
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x60

    int-to-long v5, v3

    .line 126
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 125
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 131
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;-><init>()V

    mul-int/lit8 v5, v3, 0x60

    int-to-long v5, v5

    .line 132
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 133
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;",
            ">;)V"
        }
    .end annotation

    .line 184
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 187
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 188
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 189
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x60

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 191
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    mul-int/lit8 v5, v4, 0x60

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 193
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 196
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 46
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 49
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;

    .line 50
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 53
    :cond_1a
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    .line 56
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 59
    :cond_2c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 62
    :cond_37
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    if-eq v2, v3, :cond_3e

    return v1

    .line 65
    :cond_3e
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    return v1

    .line 68
    :cond_49
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    return v1

    .line 71
    :cond_54
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    return v1

    :cond_5f
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    .line 83
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    .line 85
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    .line 86
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    .line 87
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 79
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    .line 142
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    const-wide/16 v13, 0x8

    add-long v1, p3, v13

    add-long v3, v1, v13

    .line 144
    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v15

    mul-int/lit8 v3, v15, 0x4

    int-to-long v3, v3

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, v1, v11

    const/16 v16, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move/from16 v8, v16

    .line 145
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 149
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/16 v16, 0x0

    move/from16 v2, v16

    :goto_39
    if-ge v2, v15, :cond_4e

    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    .line 152
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    .line 153
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    :cond_4e
    const-wide/16 v1, 0x18

    add-long v1, p3, v1

    .line 156
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    const-wide/16 v1, 0x20

    add-long v1, p3, v1

    add-long/2addr v13, v1

    .line 158
    invoke-virtual {v10, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v13

    mul-int/lit8 v3, v13, 0x4

    int-to-long v3, v3

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v7, v1, v11

    const/4 v11, 0x1

    move-object/from16 v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    .line 159
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 163
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move/from16 v2, v16

    :goto_7c
    if-ge v2, v13, :cond_91

    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    .line 166
    invoke-virtual {v1, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    .line 167
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7c

    :cond_91
    const-wide/16 v1, 0x30

    add-long v1, p3, v1

    .line 170
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    .line 171
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    const-wide/16 v2, 0x34

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 172
    iget-object v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    const-wide/16 v2, 0x40

    add-long v2, p3, v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 173
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    const-wide/16 v1, 0x4c

    add-long v1, p3, v1

    invoke-virtual {v0, v9, v10, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x60

    .line 115
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 116
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".totalCmdEventWakeCnt = "

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .cmdEventWakeCntPerType = "

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .totalDriverFwLocalWakeCnt = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .driverFwLocalWakeCntPerType = "

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .totalRxPacketWakeCnt = "

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rxPktWakeDetails = "

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .rxMulticastPkWakeDetails = "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .rxIcmpPkWakeDetails = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 110
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    .line 201
    iget v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 203
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    add-long v9, v7, v5

    .line 204
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 205
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 206
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x4

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_2c
    if-ge v12, v4, :cond_44

    mul-int/lit8 v14, v12, 0x4

    int-to-long v14, v14

    .line 208
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_2c

    :cond_44
    add-long/2addr v7, v2

    .line 210
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    .line 212
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 214
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    add-long/2addr v5, v7

    .line 215
    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v5, 0x0

    .line 216
    invoke-virtual {v1, v9, v10, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 217
    new-instance v6, Landroid/os/HwBlob;

    mul-int/lit8 v9, v4, 0x4

    invoke-direct {v6, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v5

    :goto_6c
    if-ge v13, v4, :cond_83

    mul-int/lit8 v5, v13, 0x4

    int-to-long v9, v5

    .line 219
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v9, v10, v5}, Landroid/os/HwBlob;->putInt32(JI)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6c

    :cond_83
    add-long/2addr v7, v2

    .line 221
    invoke-virtual {v1, v7, v8, v6}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    const-wide/16 v2, 0x30

    add-long v2, p2, v2

    .line 223
    iget v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 224
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;

    const-wide/16 v3, 0x34

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxPacketDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 225
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    const-wide/16 v3, 0x40

    add-long v3, p2, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxMulticastPacketDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 226
    iget-object v0, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    const-wide/16 v2, 0x4c

    add-long v2, p2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonRxIcmpPacketDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 177
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x60

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 178
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/WifiDebugHostWakeReasonStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 179
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
