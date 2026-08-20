.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;
.super Ljava/lang/Object;
.source "StaRoamingConfig.java"


# instance fields
.field public bssidBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field public ssidWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 61
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 64
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x20

    int-to-long v5, v3

    .line 66
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 65
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 71
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x20

    int-to-long v5, v5

    .line 72
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 73
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;",
            ">;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 128
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 129
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 130
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 131
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x20

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 133
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 135
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 138
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

    .line 22
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 25
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;

    .line 26
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 29
    :cond_1e
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

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

    .line 37
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    .line 38
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    .line 39
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 37
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

    const-wide/16 v6, 0x8

    add-long v8, v4, v6

    .line 83
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x6

    int-to-long v11, v9

    .line 85
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v4, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 84
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v4

    .line 88
    iget-object v5, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x0

    move v9, v5

    :goto_28
    if-ge v9, v8, :cond_3b

    const/4 v10, 0x6

    new-array v11, v10, [B

    mul-int/lit8 v12, v9, 0x6

    int-to-long v12, v12

    .line 93
    invoke-virtual {v4, v12, v13, v11, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 96
    iget-object v10, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_28

    :cond_3b
    const-wide/16 v8, 0x10

    add-long v8, p3, v8

    add-long/2addr v6, v8

    .line 100
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v6, v4, 0x20

    int-to-long v11, v6

    .line 102
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v8, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 101
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 105
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_5a
    if-ge v5, v4, :cond_6e

    const/16 v2, 0x20

    new-array v3, v2, [B

    mul-int/lit8 v6, v5, 0x20

    int-to-long v6, v6

    .line 110
    invoke-virtual {v1, v6, v7, v3, v2}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 113
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    :cond_6e
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x20

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 56
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".bssidBlacklist = "

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .ssidWhitelist = "

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 144
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v3, 0x0

    add-long v5, p2, v3

    const-wide/16 v7, 0x8

    add-long v9, v5, v7

    .line 145
    invoke-virtual {v1, v9, v10, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v5, v9

    const/4 v13, 0x0

    .line 146
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 147
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v2, 0x6

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_25
    const-string v14, "Array element is not of the expected length"

    if-ge v12, v2, :cond_4b

    mul-int/lit8 v15, v12, 0x6

    int-to-long v9, v15

    .line 151
    iget-object v15, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->bssidBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    if-eqz v15, :cond_45

    .line 153
    array-length v13, v15

    const/4 v7, 0x6

    if-ne v13, v7, :cond_45

    .line 157
    invoke-virtual {v11, v9, v10, v15}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v7, 0x8

    const-wide/16 v9, 0xc

    const/4 v13, 0x0

    goto :goto_25

    .line 154
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    add-long/2addr v5, v3

    .line 161
    invoke-virtual {v1, v5, v6, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 164
    iget-object v2, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-wide/16 v5, 0x10

    add-long v5, p2, v5

    const-wide/16 v7, 0x8

    add-long/2addr v7, v5

    .line 165
    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v7, 0xc

    add-long v9, v5, v7

    const/4 v7, 0x0

    .line 166
    invoke-virtual {v1, v9, v10, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 167
    new-instance v8, Landroid/os/HwBlob;

    mul-int/lit8 v9, v2, 0x20

    invoke-direct {v8, v9}, Landroid/os/HwBlob;-><init>(I)V

    move v13, v7

    :goto_6f
    if-ge v13, v2, :cond_8f

    mul-int/lit8 v7, v13, 0x20

    int-to-long v9, v7

    .line 171
    iget-object v7, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->ssidWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    if-eqz v7, :cond_89

    .line 173
    array-length v11, v7

    const/16 v12, 0x20

    if-ne v11, v12, :cond_89

    .line 177
    invoke-virtual {v8, v9, v10, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_6f

    .line 174
    :cond_89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8f
    add-long/2addr v5, v3

    .line 181
    invoke-virtual {v1, v5, v6, v8}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 119
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 120
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/StaRoamingConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
