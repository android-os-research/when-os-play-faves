.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;
.super Ljava/lang/Object;
.source "StaLinkLayerIfaceStats.java"


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

.field public peers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;",
            ">;"
        }
    .end annotation
.end field

.field public timeSliceDutyCycleInPercent:B

.field public wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

.field public wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

.field public wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

.field public wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    const/4 v0, 0x0

    .line 15
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 19
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 23
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 27
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 31
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 114
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 117
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xe0

    int-to-long v5, v3

    .line 119
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 118
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 124
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;-><init>()V

    mul-int/lit16 v5, v3, 0xe0

    int-to-long v5, v5

    .line 125
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 126
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 167
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xe0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 171
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;

    mul-int/lit16 v5, v4, 0xe0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 173
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
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

    .line 45
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;

    if-eq v2, v3, :cond_11

    return v1

    .line 48
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;

    .line 49
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 52
    :cond_1e
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    if-eq v2, v3, :cond_25

    return v1

    .line 55
    :cond_25
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    return v1

    .line 58
    :cond_30
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    return v1

    .line 61
    :cond_3b
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_46

    return v1

    .line 64
    :cond_46
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    return v1

    .line 67
    :cond_51
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5c

    return v1

    :cond_5c
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    .line 76
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 77
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 78
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 79
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 80
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    .line 82
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 75
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 135
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, v9, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x88

    add-long v5, p3, v5

    .line 136
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    iput-byte v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    .line 137
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v5, 0x8c

    add-long v5, p3, v5

    invoke-virtual {v2, v9, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 138
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v5, 0x9c

    add-long v5, p3, v5

    invoke-virtual {v2, v9, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 139
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v5, 0xac

    add-long v5, p3, v5

    invoke-virtual {v2, v9, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 140
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v5, 0xbc

    add-long v5, p3, v5

    invoke-virtual {v2, v9, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0xd0

    add-long v5, p3, v5

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    .line 142
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x18

    int-to-long v7, v2

    .line 144
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v5, v3

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move-wide v2, v7

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    .line 143
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 147
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_62
    if-ge v2, v10, :cond_77

    .line 149
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;-><init>()V

    mul-int/lit8 v4, v2, 0x18

    int-to-long v4, v4

    .line 150
    invoke-virtual {v3, v9, v1, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 151
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    :cond_77
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xe0

    .line 108
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 109
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".V1_0 = "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .timeSliceDutyCycleInPercent = "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeBeContentionTimeStats = "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeBkContentionTimeStats = "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeViContentionTimeStats = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .wmeVoContentionTimeStats = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .peers = "

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 103
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 181
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v3, 0x88

    add-long/2addr v3, p2

    .line 182
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->timeSliceDutyCycleInPercent:B

    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 183
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v3, 0x8c

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 184
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v3, 0x9c

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 185
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v3, 0xac

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 186
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;

    const-wide/16 v3, 0xbc

    add-long/2addr v3, p2

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceContentionTimeStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 188
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0xd0

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 189
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 190
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 191
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0x18

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_4e
    if-ge v5, v0, :cond_61

    .line 193
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->peers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;

    mul-int/lit8 v6, v5, 0x18

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaPeerInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4e

    :cond_61
    add-long/2addr p2, v1

    .line 195
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 157
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xe0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_5/StaLinkLayerIfaceStats;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
