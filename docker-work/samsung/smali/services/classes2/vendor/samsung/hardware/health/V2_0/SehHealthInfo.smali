.class public final Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;
.super Ljava/lang/Object;
.source "SehHealthInfo.java"


# instance fields
.field public batteryChargeType:I

.field public batteryCurrentEvent:I

.field public batteryCurrentNow:I

.field public batteryEvent:I

.field public batteryHighVoltageCharger:I

.field public batteryOnline:I

.field public batteryPowerSharingOnline:Z

.field public chargerOtgOnline:Z

.field public chargerPogoOnline:Z

.field public legacy:Landroid/hardware/health/V2_1/HealthInfo;

.field public wirelessPowerSharingTxEvent:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroid/hardware/health/V2_1/HealthInfo;

    invoke-direct {v0}, Landroid/hardware/health/V2_1/HealthInfo;-><init>()V

    iput-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 31
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 39
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 43
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 47
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 56
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 84
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 89
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 93
    iput-boolean v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 129
    iput v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

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
            "Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;",
            ">;"
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 232
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 235
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xb0

    int-to-long v5, v3

    .line 237
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 236
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 240
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 242
    new-instance v4, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {v4}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    mul-int/lit16 v5, v3, 0xb0

    int-to-long v5, v5

    .line 243
    invoke-virtual {v4, p0, v1, v5, v6}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 244
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
            "Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;",
            ">;)V"
        }
    .end annotation

    .line 274
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 276
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 277
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 278
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 279
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xb0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 281
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    mul-int/lit16 v5, v4, 0xb0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 283
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 286
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

    .line 139
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 142
    :cond_11
    check-cast p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 143
    iget-object v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iget-object v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 146
    :cond_1e
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    if-eq v2, v3, :cond_25

    return v1

    .line 149
    :cond_25
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    if-eq v2, v3, :cond_2c

    return v1

    .line 152
    :cond_2c
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    if-eq v2, v3, :cond_33

    return v1

    .line 155
    :cond_33
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    if-eq v2, v3, :cond_3a

    return v1

    .line 158
    :cond_3a
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    if-eq v2, v3, :cond_41

    return v1

    .line 161
    :cond_41
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    if-eq v2, v3, :cond_48

    return v1

    .line 164
    :cond_48
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    if-eq v2, v3, :cond_4f

    return v1

    .line 167
    :cond_4f
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    iget v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    if-eq v2, v3, :cond_56

    return v1

    .line 170
    :cond_56
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    iget-boolean v3, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    if-eq v2, v3, :cond_5d

    return v1

    .line 173
    :cond_5d
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    iget p1, p1, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    if-eq p0, p1, :cond_64

    return v1

    :cond_64
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 182
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 184
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 185
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 188
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 191
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 192
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v1, 0xa

    aput-object p0, v0, v1

    .line 181
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 253
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/health/V2_1/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x88

    add-long/2addr v0, p3

    .line 254
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    const-wide/16 v0, 0x8c

    add-long/2addr v0, p3

    .line 255
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    const-wide/16 v0, 0x90

    add-long/2addr v0, p3

    .line 256
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    const-wide/16 v0, 0x94

    add-long/2addr v0, p3

    .line 257
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    const-wide/16 v0, 0x95

    add-long/2addr v0, p3

    .line 258
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    const-wide/16 v0, 0x98

    add-long/2addr v0, p3

    .line 259
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    const-wide/16 v0, 0x9c

    add-long/2addr v0, p3

    .line 260
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    const-wide/16 v0, 0xa0

    add-long/2addr v0, p3

    .line 261
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    const-wide/16 v0, 0xa4

    add-long/2addr v0, p3

    .line 262
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result p1

    iput-boolean p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    const-wide/16 v0, 0xa8

    add-long/2addr p3, v0

    .line 263
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xb0

    .line 226
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 227
    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".legacy = "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget-object v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentNow = "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryOnline = "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryChargeType = "

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryPowerSharingOnline = "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerPogoOnline = "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryHighVoltageCharger = "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryEvent = "

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentEvent = "

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .chargerOtgOnline = "

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .wirelessPowerSharingTxEvent = "

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 221
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 291
    iget-object v0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/health/V2_1/HealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x88

    add-long/2addr v0, p2

    .line 292
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x8c

    add-long/2addr v0, p2

    .line 293
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x90

    add-long/2addr v0, p2

    .line 294
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x94

    add-long/2addr v0, p2

    .line 295
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x95

    add-long/2addr v0, p2

    .line 296
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0x98

    add-long/2addr v0, p2

    .line 297
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x9c

    add-long/2addr v0, p2

    .line 298
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xa0

    add-long/2addr v0, p2

    .line 299
    iget v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xa4

    add-long/2addr v0, p2

    .line 300
    iget-boolean v2, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    const-wide/16 v0, 0xa8

    add-long/2addr p2, v0

    .line 301
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 267
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xb0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 268
    invoke-virtual {p0, v0, v1, v2}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 269
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
