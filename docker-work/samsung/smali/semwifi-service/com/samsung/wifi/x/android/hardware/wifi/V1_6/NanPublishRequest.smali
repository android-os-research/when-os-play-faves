.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;
.super Ljava/lang/Object;
.source "NanPublishRequest.java"


# instance fields
.field public autoAcceptDataPathRequests:Z

.field public baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

.field public publishType:I

.field public txType:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->publishType:I

    .line 18
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->txType:I

    .line 25
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->autoAcceptDataPathRequests:Z

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 86
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xd0

    int-to-long v5, v3

    .line 91
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 90
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 96
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;-><init>()V

    mul-int/lit16 v5, v3, 0xd0

    int-to-long v5, v5

    .line 97
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 98
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;",
            ">;)V"
        }
    .end annotation

    .line 121
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 123
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 124
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 125
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 126
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xd0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 128
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;

    mul-int/lit16 v5, v4, 0xd0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 130
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 133
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

    .line 35
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;

    if-eq v2, v3, :cond_11

    return v1

    .line 38
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;

    .line 39
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 42
    :cond_1e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->publishType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->publishType:I

    if-eq v2, v3, :cond_25

    return v1

    .line 45
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->txType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->txType:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 48
    :cond_2c
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->autoAcceptDataPathRequests:Z

    iget-boolean p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->autoAcceptDataPathRequests:Z

    if-eq p0, p1, :cond_33

    return v1

    :cond_33
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    .line 57
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->publishType:I

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->txType:I

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->autoAcceptDataPathRequests:Z

    .line 60
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x3

    aput-object p0, v0, v1

    .line 56
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 107
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xc0

    add-long/2addr v0, p3

    .line 108
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->publishType:I

    const-wide/16 v0, 0xc4

    add-long/2addr v0, p3

    .line 109
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->txType:I

    const-wide/16 v0, 0xc8

    add-long/2addr p3, v0

    .line 110
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->autoAcceptDataPathRequests:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xd0

    .line 80
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".baseConfigs = "

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .publishType = "

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->publishType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanPublishType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .txType = "

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->txType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanTxType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .autoAcceptDataPathRequests = "

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->autoAcceptDataPathRequests:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 138
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDiscoveryCommonConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0xc0

    add-long/2addr v0, p2

    .line 139
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->publishType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc4

    add-long/2addr v0, p2

    .line 140
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->txType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc8

    add-long/2addr p2, v0

    .line 141
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->autoAcceptDataPathRequests:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 114
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xd0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 115
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanPublishRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
