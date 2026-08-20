.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;
.super Ljava/lang/Object;
.source "NanConfigRequest.java"


# instance fields
.field public bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

.field public disableDiscoveryAddressChangeIndication:Z

.field public disableJoinedClusterIndication:Z

.field public disableStartedClusterIndication:Z

.field public includePublishServiceIdsInBeacon:Z

.field public includeSubscribeServiceIdsInBeacon:Z

.field public macAddressRandomizationIntervalSec:I

.field public masterPref:B

.field public numberOfPublishServiceIdsInBeacon:B

.field public numberOfSubscribeServiceIdsInBeacon:B

.field public rssiWindowSize:S


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    .line 14
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 19
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 29
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 36
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 41
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 48
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 52
    iput-short v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    .line 57
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    .line 61
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;",
            ">;"
        }
    .end annotation

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 164
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 167
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 169
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 168
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 174
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;-><init>()V

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    .line 175
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 176
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;",
            ">;)V"
        }
    .end annotation

    .line 213
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 215
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 216
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 217
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 218
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 220
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 222
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 225
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

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    if-eq v2, v3, :cond_11

    return v1

    .line 74
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;

    .line 75
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    if-eq v2, v3, :cond_1a

    return v1

    .line 78
    :cond_1a
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    if-eq v2, v3, :cond_21

    return v1

    .line 81
    :cond_21
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    if-eq v2, v3, :cond_28

    return v1

    .line 84
    :cond_28
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    if-eq v2, v3, :cond_2f

    return v1

    .line 87
    :cond_2f
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    if-eq v2, v3, :cond_36

    return v1

    .line 90
    :cond_36
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    if-eq v2, v3, :cond_3d

    return v1

    .line 93
    :cond_3d
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    if-eq v2, v3, :cond_44

    return v1

    .line 96
    :cond_44
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    iget-byte v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    if-eq v2, v3, :cond_4b

    return v1

    .line 99
    :cond_4b
    iget-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    iget-short v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    if-eq v2, v3, :cond_52

    return v1

    .line 102
    :cond_52
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    if-eq v2, v3, :cond_59

    return v1

    .line 105
    :cond_59
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_64

    return v1

    :cond_64
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    .line 114
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 119
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 120
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 121
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    .line 122
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    .line 124
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    .line 113
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 10

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 185
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    .line 186
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    const-wide/16 v0, 0x2

    add-long/2addr v0, p3

    .line 187
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    const-wide/16 v0, 0x3

    add-long/2addr v0, p3

    .line 188
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    .line 189
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    const-wide/16 v0, 0x5

    add-long/2addr v0, p3

    .line 190
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    const-wide/16 v0, 0x6

    add-long/2addr v0, p3

    .line 191
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    const-wide/16 v0, 0x7

    add-long/2addr v0, p3

    .line 192
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    const-wide/16 v0, 0x8

    add-long v2, p3, v0

    .line 193
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    const-wide/16 v2, 0xc

    add-long/2addr v2, p3

    .line 194
    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    const-wide/16 v2, 0x10

    add-long/2addr p3, v2

    const/4 v2, 0x0

    :goto_5f
    const/4 v3, 0x2

    if-ge v2, v3, :cond_76

    .line 198
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;-><init>()V

    aput-object v4, v3, v2

    .line 199
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    add-long/2addr p3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    :cond_76
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x20

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 159
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".masterPref = "

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .disableDiscoveryAddressChangeIndication = "

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .disableStartedClusterIndication = "

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .disableJoinedClusterIndication = "

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .includePublishServiceIdsInBeacon = "

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .numberOfPublishServiceIdsInBeacon = "

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .includeSubscribeServiceIdsInBeacon = "

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .numberOfSubscribeServiceIdsInBeacon = "

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .rssiWindowSize = "

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-short v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .macAddressRandomizationIntervalSec = "

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .bandSpecificConfig = "

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 9

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 230
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->masterPref:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    .line 231
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x2

    add-long/2addr v0, p2

    .line 232
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableStartedClusterIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x3

    add-long/2addr v0, p2

    .line 233
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->disableJoinedClusterIndication:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    .line 234
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x5

    add-long/2addr v0, p2

    .line 235
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x6

    add-long/2addr v0, p2

    .line 236
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x7

    add-long/2addr v0, p2

    .line 237
    iget-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v0, 0x8

    add-long v2, p2, v0

    .line 238
    iget-short v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->rssiWindowSize:S

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt16(JS)V

    const-wide/16 v2, 0xc

    add-long/2addr v2, p2

    .line 239
    iget v4, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0x10

    add-long/2addr p2, v2

    const/4 v2, 0x0

    :goto_55
    const/4 v3, 0x2

    if-ge v2, v3, :cond_63

    .line 243
    iget-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, p3}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanBandSpecificConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-long/2addr p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_63
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 206
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 207
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanConfigRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 208
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
