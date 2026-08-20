.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;
.super Ljava/lang/Object;
.source "NanRespondToDataPathIndicationRequest.java"


# instance fields
.field public acceptRequest:Z

.field public appInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public ifaceName:Ljava/lang/String;

.field public ndpInstanceId:I

.field public securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

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
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    .line 14
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    .line 19
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 112
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 115
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0x80

    int-to-long v5, v3

    .line 117
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 116
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 122
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;-><init>()V

    mul-int/lit16 v5, v3, 0x80

    int-to-long v5, v5

    .line 123
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 124
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;",
            ">;)V"
        }
    .end annotation

    .line 179
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 181
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 182
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 183
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 184
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x80

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 186
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;

    mul-int/lit16 v5, v4, 0x80

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 188
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 191
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

    .line 49
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;

    if-eq v2, v3, :cond_11

    return v1

    .line 52
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;

    .line 53
    iget-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    iget-boolean v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    if-eq v2, v3, :cond_1a

    return v1

    .line 56
    :cond_1a
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    if-eq v2, v3, :cond_21

    return v1

    .line 59
    :cond_21
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    return v1

    .line 62
    :cond_2c
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    return v1

    .line 65
    :cond_37
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    return v1

    .line 68
    :cond_42
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4d

    return v1

    :cond_4d
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 79
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    .line 80
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    .line 81
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    .line 82
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 76
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 133
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v4

    iput-boolean v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 134
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 135
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    .line 138
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v6, v2

    const/16 v16, 0x0

    move-object/from16 v9, p1

    .line 137
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 142
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    const-wide/16 v7, 0x18

    add-long v7, p3, v7

    move-object/from16 v14, p1

    invoke-virtual {v6, v14, v1, v7, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v6, 0x60

    add-long v6, p3, v6

    add-long v8, v6, v4

    .line 144
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x1

    int-to-long v10, v9

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long/2addr v6, v2

    const/16 v16, 0x1

    move-object/from16 v9, p1

    move-wide v14, v6

    .line 145
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 149
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_64
    if-ge v9, v8, :cond_79

    mul-int/lit8 v10, v9, 0x1

    int-to-long v10, v10

    .line 152
    invoke-virtual {v6, v10, v11}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v10

    .line 153
    iget-object v11, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_64

    :cond_79
    const-wide/16 v8, 0x70

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 157
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v10, v5

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v12

    add-long v14, v8, v2

    const/16 v16, 0x1

    move-object/from16 v9, p1

    .line 158
    invoke-virtual/range {v9 .. v16}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 162
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_98
    if-ge v7, v4, :cond_ad

    mul-int/lit8 v2, v7, 0x1

    int-to-long v2, v2

    .line 165
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    .line 166
    iget-object v3, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_98

    :cond_ad
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x80

    .line 106
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 107
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

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

    const-string v1, ".acceptRequest = "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .ndpInstanceId = "

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .ifaceName = "

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .securityConfig = "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .appInfo = "

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .serviceNameOutOfBand = "

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
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

    .line 196
    iget-boolean v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->acceptRequest:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 197
    iget v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ndpInstanceId:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 198
    iget-object v8, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->ifaceName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 199
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;

    const-wide/16 v7, 0x18

    add-long v7, p2, v7

    invoke-virtual {v6, v1, v7, v8}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanDataPathSecurityConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 201
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x60

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 202
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 203
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 204
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x1

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_47
    if-ge v12, v6, :cond_5f

    mul-int/lit8 v14, v12, 0x1

    int-to-long v14, v14

    .line 206
    iget-object v13, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->appInfo:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Byte;

    invoke-virtual {v13}, Ljava/lang/Byte;->byteValue()B

    move-result v13

    invoke-virtual {v11, v14, v15, v13}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    goto :goto_47

    :cond_5f
    add-long/2addr v7, v2

    .line 208
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 211
    iget-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x70

    add-long v7, p2, v7

    add-long/2addr v4, v7

    .line 212
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    add-long/2addr v9, v7

    const/4 v4, 0x0

    .line 213
    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 214
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v9, v6, 0x1

    invoke-direct {v5, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v4

    :goto_7e
    if-ge v13, v6, :cond_95

    mul-int/lit8 v4, v13, 0x1

    int-to-long v9, v4

    .line 216
    iget-object v4, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->serviceNameOutOfBand:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v5, v9, v10, v4}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7e

    :cond_95
    add-long/2addr v7, v2

    .line 218
    invoke-virtual {v1, v7, v8, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 172
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 173
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_6/NanRespondToDataPathIndicationRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 174
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
