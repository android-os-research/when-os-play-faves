.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;
.super Ljava/lang/Object;
.source "NanDataPathConfirmInd.java"


# instance fields
.field public V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

.field public channelInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 63
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 66
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x48

    int-to-long v5, v3

    .line 68
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 67
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 71
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 73
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;-><init>()V

    mul-int/lit8 v5, v3, 0x48

    int-to-long v5, v5

    .line 74
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 75
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;",
            ">;)V"
        }
    .end annotation

    .line 108
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 110
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 111
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 112
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 113
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x48

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 115
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;

    mul-int/lit8 v5, v4, 0x48

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 117
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 120
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

    .line 24
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;

    if-eq v2, v3, :cond_11

    return v1

    .line 27
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;

    .line 28
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 31
    :cond_1e
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    return v1

    :cond_29
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    .line 40
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    .line 41
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p2

    .line 84
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    const-wide/16 v3, 0x0

    add-long v5, p3, v3

    invoke-virtual {v2, v9, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v5, 0x38

    add-long v5, p3, v5

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    .line 86
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0xc

    int-to-long v7, v2

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v11

    add-long v13, v5, v3

    const/4 v15, 0x1

    move-object/from16 v1, p1

    move-wide v2, v7

    move-wide v4, v11

    move-wide v6, v13

    move v8, v15

    .line 87
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 91
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_34
    if-ge v2, v10, :cond_49

    .line 93
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;

    invoke-direct {v3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;-><init>()V

    mul-int/lit8 v4, v2, 0xc

    int-to-long v4, v4

    .line 94
    invoke-virtual {v3, v9, v1, v4, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 95
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    :cond_49
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x48

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 58
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".V1_0 = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .channelInfo = "

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 12

    .line 125
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->V1_0:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;

    const-wide/16 v1, 0x0

    add-long v3, p2, v1

    invoke-virtual {v0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathConfirmInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 127
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v3, 0x38

    add-long/2addr p2, v3

    const-wide/16 v3, 0x8

    add-long/2addr v3, p2

    .line 128
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v3, 0xc

    add-long/2addr v3, p2

    const/4 v5, 0x0

    .line 129
    invoke-virtual {p1, v3, v4, v5}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 130
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v0, 0xc

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    :goto_26
    if-ge v5, v0, :cond_39

    .line 132
    iget-object v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->channelInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;

    mul-int/lit8 v6, v5, 0xc

    int-to-long v6, v6

    invoke-virtual {v4, v3, v6, v7}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathChannelInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_39
    add-long/2addr p2, v1

    .line 134
    invoke-virtual {p1, p2, p3, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 101
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x48

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 102
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/NanDataPathConfirmInd;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
