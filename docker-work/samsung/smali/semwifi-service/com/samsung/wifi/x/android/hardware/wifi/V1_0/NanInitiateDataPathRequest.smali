.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;
.super Ljava/lang/Object;
.source "NanInitiateDataPathRequest.java"


# instance fields
.field public appInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public channel:I

.field public channelRequestType:I

.field public ifaceName:Ljava/lang/String;

.field public peerDiscMacAddr:[B

.field public peerId:I

.field public securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

.field public serviceNameOutOfBand:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 14
    iput-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 18
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    .line 28
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 133
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x80

    int-to-long v5, v3

    .line 138
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 137
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 141
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 143
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;-><init>()V

    mul-int/lit16 v5, v3, 0x80

    int-to-long v5, v5

    .line 144
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 145
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;",
            ">;)V"
        }
    .end annotation

    .line 206
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 208
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 209
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 210
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 211
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x80

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 213
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    mul-int/lit16 v5, v4, 0x80

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 215
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 218
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

    .line 58
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    if-eq v2, v3, :cond_11

    return v1

    .line 61
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;

    .line 62
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 65
    :cond_1a
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    return v1

    .line 68
    :cond_25
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 71
    :cond_2c
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    if-eq v2, v3, :cond_33

    return v1

    .line 74
    :cond_33
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    return v1

    .line 77
    :cond_3e
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    return v1

    .line 80
    :cond_49
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    return v1

    .line 83
    :cond_54
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

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

    .line 91
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 96
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    .line 97
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    .line 98
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 99
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    .line 91
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 154
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 157
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    const/4 v7, 0x6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    const-wide/16 v4, 0xc

    add-long v4, p3, v4

    .line 160
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    const-wide/16 v4, 0x10

    add-long v4, p3, v4

    .line 161
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    const-wide/16 v4, 0x18

    add-long v4, p3, v4

    .line 162
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    .line 165
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 166
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x0

    move-object/from16 v7, p1

    .line 164
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 169
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v5, 0x28

    add-long v5, p3, v5

    move-object/from16 v15, p1

    invoke-virtual {v4, v15, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v4, 0x60

    add-long v4, p3, v4

    const-wide/16 v16, 0x8

    add-long v6, v4, v16

    .line 171
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    mul-int/lit8 v7, v6, 0x1

    int-to-long v8, v7

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x1

    move-object/from16 v7, p1

    .line 172
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 176
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    move v7, v5

    :goto_78
    if-ge v7, v6, :cond_8d

    mul-int/lit8 v8, v7, 0x1

    int-to-long v8, v8

    .line 179
    invoke-virtual {v4, v8, v9}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v8

    .line 180
    iget-object v9, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_78

    :cond_8d
    const-wide/16 v6, 0x70

    add-long v6, p3, v6

    add-long v8, v6, v16

    .line 184
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v8, v4, 0x1

    int-to-long v8, v8

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v6, v2

    const/4 v14, 0x1

    move-object/from16 v7, p1

    .line 185
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 189
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_ac
    if-ge v5, v4, :cond_c1

    mul-int/lit8 v2, v5, 0x1

    int-to-long v2, v2

    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    .line 193
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    :cond_c1
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x80

    .line 127
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 128
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".peerId = "

    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .peerDiscMacAddr = "

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .channelRequestType = "

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    invoke-static {v1}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathChannelCfg;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .channel = "

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .ifaceName = "

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .securityConfig = "

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .appInfo = "

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .serviceNameOutOfBand = "

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 122
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
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

    .line 223
    iget v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 226
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->peerDiscMacAddr:[B

    if-eqz v6, :cond_b2

    .line 228
    array-length v7, v6

    const/4 v8, 0x6

    if-ne v7, v8, :cond_b2

    .line 232
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    const-wide/16 v4, 0xc

    add-long v6, p2, v4

    .line 235
    iget v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channelRequestType:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x10

    add-long v6, p2, v6

    .line 236
    iget v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->channel:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v6, 0x18

    add-long v6, p2, v6

    .line 237
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 238
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;

    const-wide/16 v7, 0x28

    add-long v7, p2, v7

    invoke-virtual {v6, v1, v7, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 240
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x60

    add-long v7, p2, v7

    const-wide/16 v9, 0x8

    add-long v11, v7, v9

    .line 241
    invoke-virtual {v1, v11, v12, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long v11, v7, v4

    const/4 v13, 0x0

    .line 242
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 243
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_5f
    if-ge v12, v6, :cond_77

    mul-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    .line 245
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_5f

    :cond_77
    add-long/2addr v7, v2

    .line 247
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 250
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x70

    add-long v7, p2, v7

    add-long/2addr v9, v7

    .line 251
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v4, v7

    const/4 v9, 0x0

    .line 252
    invoke-virtual {v1, v4, v5, v9}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 253
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x1

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v9

    :goto_96
    if-ge v13, v6, :cond_ad

    mul-int/lit8 v5, v13, 0x1

    int-to-long v9, v5

    .line 255
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v4, v9, v10, v5}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_96

    :cond_ad
    add-long/2addr v7, v2

    .line 257
    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void

    .line 229
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Array element is not of the expected length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 199
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 200
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/NanInitiateDataPathRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 201
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
