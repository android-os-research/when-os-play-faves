.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;
.super Ljava/lang/Object;
.source "NanCapabilities.java"


# instance fields
.field public instantCommunicationModeSupportFlag:Z

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 12
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 16
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 20
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 24
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 28
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 32
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 36
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 40
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 45
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 49
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 53
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 57
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 65
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;",
            ">;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 192
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x3c

    int-to-long v5, v3

    .line 197
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 196
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 200
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 202
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;-><init>()V

    mul-int/lit8 v5, v3, 0x3c

    int-to-long v5, v5

    .line 203
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 204
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;",
            ">;)V"
        }
    .end annotation

    .line 238
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 240
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 241
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 242
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 243
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x3c

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 245
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    mul-int/lit8 v5, v4, 0x3c

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 247
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 250
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

    .line 75
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    if-eq v2, v3, :cond_11

    return v1

    .line 78
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;

    .line 79
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 82
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    if-eq v2, v3, :cond_21

    return v1

    .line 85
    :cond_21
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    if-eq v2, v3, :cond_28

    return v1

    .line 88
    :cond_28
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    if-eq v2, v3, :cond_2f

    return v1

    .line 91
    :cond_2f
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    if-eq v2, v3, :cond_36

    return v1

    .line 94
    :cond_36
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    if-eq v2, v3, :cond_3d

    return v1

    .line 97
    :cond_3d
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    if-eq v2, v3, :cond_44

    return v1

    .line 100
    :cond_44
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    if-eq v2, v3, :cond_4b

    return v1

    .line 103
    :cond_4b
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    if-eq v2, v3, :cond_52

    return v1

    .line 106
    :cond_52
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    if-eq v2, v3, :cond_59

    return v1

    .line 109
    :cond_59
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    if-eq v2, v3, :cond_60

    return v1

    .line 112
    :cond_60
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    if-eq v2, v3, :cond_67

    return v1

    .line 115
    :cond_67
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    if-eq v2, v3, :cond_6e

    return v1

    .line 118
    :cond_6e
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    return v1

    .line 121
    :cond_81
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    iget-boolean p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    if-eq p0, p1, :cond_88

    return v1

    :cond_88
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    .line 129
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    .line 130
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    .line 144
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xe

    aput-object p0, v0, v1

    .line 129
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 213
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 214
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    .line 215
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    .line 216
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    .line 217
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    .line 218
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    .line 219
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p3

    .line 220
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    const-wide/16 v0, 0x20

    add-long/2addr v0, p3

    .line 221
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    const-wide/16 v0, 0x24

    add-long/2addr v0, p3

    .line 222
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    const-wide/16 v0, 0x28

    add-long/2addr v0, p3

    .line 223
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p3

    .line 224
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    const-wide/16 v0, 0x30

    add-long/2addr v0, p3

    .line 225
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    const-wide/16 v0, 0x34

    add-long/2addr v0, p3

    .line 226
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    const-wide/16 v0, 0x38

    add-long/2addr p3, v0

    .line 227
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x3c

    .line 186
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 187
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".maxConcurrentClusters = "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxPublishes = "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxSubscribes = "

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxServiceNameLen = "

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxMatchFilterLen = "

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxTotalMatchFilterLen = "

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxServiceSpecificInfoLen = "

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxExtendedServiceSpecificInfoLen = "

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxNdiInterfaces = "

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxNdpSessions = "

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxAppInfoLen = "

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxQueuedTransmitFollowupMsgs = "

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .maxSubscribeInterfaceAddresses = "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .supportedCipherSuites = "

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCipherSuiteType;->dumpBitfield(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .instantCommunicationModeSupportFlag = "

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 181
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 255
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxConcurrentClusters:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 256
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxPublishes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    .line 257
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribes:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    .line 258
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceNameLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    .line 259
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxMatchFilterLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    .line 260
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxTotalMatchFilterLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    .line 261
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxServiceSpecificInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x1c

    add-long/2addr v0, p2

    .line 262
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxExtendedServiceSpecificInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x20

    add-long/2addr v0, p2

    .line 263
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdiInterfaces:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x24

    add-long/2addr v0, p2

    .line 264
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxNdpSessions:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    .line 265
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxAppInfoLen:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    .line 266
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxQueuedTransmitFollowupMsgs:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    .line 267
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->maxSubscribeInterfaceAddresses:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x34

    add-long/2addr v0, p2

    .line 268
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->supportedCipherSuites:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x38

    add-long/2addr p2, v0

    .line 269
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->instantCommunicationModeSupportFlag:Z

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putBool(JZ)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 231
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 232
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanCapabilities;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 233
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
