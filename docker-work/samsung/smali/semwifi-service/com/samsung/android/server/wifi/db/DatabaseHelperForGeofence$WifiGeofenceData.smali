.class public Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;
.super Ljava/lang/Object;
.source "DatabaseHelperForGeofence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiGeofenceData"
.end annotation


# static fields
.field public static final INVALID_GEOFENCE_ID:I = -0x1

.field public static final INVALID_LATITUDE_LONGITUDE:D = 1000.0

.field public static final RADIUS:I = 0x1f4


# instance fields
.field protected final mConfigKey:Ljava/lang/String;

.field protected mGeofenceId:I

.field protected mLastConnectedTime:J

.field protected mLatitude:D

.field protected mLongitude:D


# direct methods
.method protected constructor <init>(Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;)V
    .registers 4

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iget-object v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 334
    iget v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    iput v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 335
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    .line 336
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 337
    iget-wide v0, p1, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    const/4 p1, -0x1

    .line 326
    iput p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 327
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 328
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->touch()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 318
    iput p2, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 319
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    const-wide p1, 0x408f400000000000L    # 1000.0

    .line 320
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 321
    iput-wide p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJDD)V
    .registers 9

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    iput-object p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    .line 309
    iput p2, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    .line 310
    iput-wide p3, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    .line 311
    iput-wide p5, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    .line 312
    iput-wide p7, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-void
.end method

.method static from(Landroid/database/Cursor;)Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 301
    new-instance v9, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v0, 0x8

    .line 302
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v0, 0x9

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v5

    const/16 v0, 0xa

    .line 303
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;-><init>(Ljava/lang/String;IJDD)V

    return-object v9
.end method

.method public static isValidLocation(DD)Z
    .registers 6

    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_26

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpg-double p0, p0, v0

    if-gtz p0, :cond_26

    const-wide p0, -0x3f99800000000000L    # -180.0

    cmpl-double p0, p2, p0

    if-ltz p0, :cond_26

    const-wide p0, 0x4066800000000000L    # 180.0

    cmpg-double p0, p2, p0

    if-gtz p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method


# virtual methods
.method public getConfigKey()Ljava/lang/String;
    .registers 1

    .line 341
    iget-object p0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method public getGeofenceId()I
    .registers 1

    .line 345
    iget p0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    return p0
.end method

.method public getLastConnectedTime()J
    .registers 3

    .line 357
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    return-wide v0
.end method

.method public getLatitude()D
    .registers 3

    .line 349
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .line 353
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    return-wide v0
.end method

.method public getMeasuredGeoLocation()[D
    .registers 5

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 374
    iget-wide v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    const/4 p0, 0x1

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public hasValidLocation()Z
    .registers 5

    .line 365
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLatitude:D

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLongitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->isValidLocation(DD)Z

    move-result p0

    return p0
.end method

.method public setGeofenceId(I)V
    .registers 2

    .line 361
    iput p1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mGeofenceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mConfigKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lastConnectedTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public touch()V
    .registers 3

    .line 378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/db/DatabaseHelperForGeofence$WifiGeofenceData;->mLastConnectedTime:J

    return-void
.end method
