.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;
.super Ljava/lang/Object;
.source "NanCapabilities.java"


# instance fields
.field public maxAppInfoLen:I

.field public maxConcurrentClusters:I

.field public maxExtendedServiceSpecificInfoLen:I

.field public maxMatchFilterLen:I

.field public maxNdiInterfaces:I

.field public maxNdpSessions:I

.field public maxPublishes:I

.field public maxQueuedTransmitFollowupMsgs:I

.field public maxServiceNameLen:I

.field public maxServiceSpecificInfoLen:I

.field public maxSubscribeInterfaceAddresses:I

.field public maxSubscribes:I

.field public maxTotalMatchFilterLen:I

.field public supportedCipherSuites:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    .line 24
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    .line 28
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 32
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 36
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 40
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    .line 45
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    .line 49
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    .line 53
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 57
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;",
            ">;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 182
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x38

    int-to-long v5, v3

    .line 187
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 186
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 190
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 192
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;-><init>()V

    mul-int/lit8 v5, v3, 0x38

    int-to-long v5, v5

    .line 193
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 194
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;",
            ">;)V"
        }
    .end annotation

    .line 227
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 229
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 230
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 231
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 232
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x38

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 234
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    mul-int/lit8 v5, v4, 0x38

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 236
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 239
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

    .line 71
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    if-eq v2, v3, :cond_11

    return v1

    .line 74
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;

    .line 75
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 78
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    if-eq v2, v3, :cond_21

    return v1

    .line 81
    :cond_21
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    if-eq v2, v3, :cond_28

    return v1

    .line 84
    :cond_28
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    if-eq v2, v3, :cond_2f

    return v1

    .line 87
    :cond_2f
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    if-eq v2, v3, :cond_36

    return v1

    .line 90
    :cond_36
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    if-eq v2, v3, :cond_3d

    return v1

    .line 93
    :cond_3d
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    if-eq v2, v3, :cond_44

    return v1

    .line 96
    :cond_44
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    if-eq v2, v3, :cond_4b

    return v1

    .line 99
    :cond_4b
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    if-eq v2, v3, :cond_52

    return v1

    .line 102
    :cond_52
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    if-eq v2, v3, :cond_59

    return v1

    .line 105
    :cond_59
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    if-eq v2, v3, :cond_60

    return v1

    .line 108
    :cond_60
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    if-eq v2, v3, :cond_67

    return v1

    .line 111
    :cond_67
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    if-eq v2, v3, :cond_6e

    return v1

    .line 114
    :cond_6e
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_81

    return v1

    :cond_81
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 128
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    .line 136
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xd

    aput-object p0, v0, v1

    .line 122
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 203
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 204
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 205
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 206
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 207
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 208
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 209
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 210
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 211
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 212
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 213
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    .line 214
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    .line 215
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    const-wide/16 v0, 0x34

    add-long/2addr p3, v0

    .line 216
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x38

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 177
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".maxConcurrentClusters = "

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxPublishes = "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxSubscribes = "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxServiceNameLen = "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxMatchFilterLen = "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxTotalMatchFilterLen = "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxServiceSpecificInfoLen = "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxExtendedServiceSpecificInfoLen = "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxNdiInterfaces = "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxNdpSessions = "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxAppInfoLen = "

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxQueuedTransmitFollowupMsgs = "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxSubscribeInterfaceAddresses = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .supportedCipherSuites = "

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-static {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCipherSuiteType;->dumpBitfield(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 171
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 244
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxConcurrentClusters:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 245
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxPublishes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 246
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 247
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceNameLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 248
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxMatchFilterLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 249
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 250
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 251
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 252
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdiInterfaces:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 253
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxNdpSessions:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 254
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxAppInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    .line 255
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 256
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x34

    add-long/2addr p2, v0

    .line 257
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->supportedCipherSuites:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 220
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x38

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 221
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
