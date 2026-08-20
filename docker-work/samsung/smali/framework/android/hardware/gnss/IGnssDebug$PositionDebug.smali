.class public Landroid/hardware/gnss/IGnssDebug$PositionDebug;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionDebug"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssDebug$PositionDebug;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist ageSeconds:F

.field public blacklist altitudeMeters:F

.field public blacklist bearingAccuracyDegrees:D

.field public blacklist bearingDegrees:F

.field public blacklist horizontalAccuracyMeters:D

.field public blacklist latitudeDegrees:D

.field public blacklist longitudeDegrees:D

.field public blacklist speedAccuracyMetersPerSecond:D

.field public blacklist speedMetersPerSec:F

.field public blacklist valid:Z

.field public blacklist verticalAccuracyMeters:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 267
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$PositionDebug$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$PositionDebug$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    .line 255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 256
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 257
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 258
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 259
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 260
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 261
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 262
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 263
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 264
    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 302
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 304
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_156

    .line 305
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 305
    return-void

    .line 329
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 306
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 307
    return-void

    .line 329
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 309
    return-void

    .line 329
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 310
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    return-void

    .line 329
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 312
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 313
    return-void

    .line 329
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 314
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    return-void

    .line 329
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ce

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c8

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 317
    return-void

    .line 329
    :cond_c8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_ce
    :try_start_ce
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d8
    .catchall {:try_start_ce .. :try_end_d8} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ea

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e4

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 319
    return-void

    .line 329
    :cond_e4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 320
    :cond_ea
    :try_start_ea
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f4
    .catchall {:try_start_ea .. :try_end_f4} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_106

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_100

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 321
    return-void

    .line 329
    :cond_100
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 322
    :cond_106
    :try_start_106
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_110
    .catchall {:try_start_106 .. :try_end_110} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_122

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11c

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 323
    return-void

    .line 329
    :cond_11c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_122
    :try_start_122
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12c
    .catchall {:try_start_122 .. :try_end_12c} :catchall_154

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13e

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_138

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 325
    return-void

    .line 329
    :cond_138
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 326
    :cond_13e
    :try_start_13e
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F
    :try_end_144
    .catchall {:try_start_13e .. :try_end_144} :catchall_154

    .line 328
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14e

    .line 331
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    nop

    .line 333
    return-void

    .line 329
    :cond_14e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 328
    :catchall_154
    move-exception v2

    goto :goto_15e

    .line 304
    :cond_156
    :try_start_156
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssDebug$PositionDebug;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_15e
    .catchall {:try_start_156 .. :try_end_15e} :catchall_154

    .line 328
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssDebug$PositionDebug;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_15e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_167

    .line 329
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 331
    :cond_167
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 332
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 282
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-boolean v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->valid:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->latitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 285
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->longitudeDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 286
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->altitudeMeters:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 287
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedMetersPerSec:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 288
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingDegrees:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 289
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->horizontalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 290
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->verticalAccuracyMeters:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 291
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->speedAccuracyMetersPerSecond:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 292
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->bearingAccuracyDegrees:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 293
    iget v1, p0, Landroid/hardware/gnss/IGnssDebug$PositionDebug;->ageSeconds:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 295
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 296
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 298
    return-void
.end method
