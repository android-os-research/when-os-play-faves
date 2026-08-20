.class public Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Coord"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist x:D

.field public blacklist xUncertainty:D

.field public blacklist y:D

.field public blacklist yUncertainty:D

.field public blacklist z:D

.field public blacklist zUncertainty:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 243
    new-instance v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->x:D

    .line 236
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 237
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->y:D

    .line 238
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 239
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->z:D

    .line 240
    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 242
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 273
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ca

    .line 276
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 289
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 292
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 276
    return-void

    .line 290
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 277
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->x:D

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 289
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 292
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 278
    return-void

    .line 290
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 289
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 292
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 280
    return-void

    .line 290
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->y:D

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 289
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 292
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 282
    return-void

    .line 290
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 289
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 292
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 284
    return-void

    .line 290
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->z:D

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 289
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 292
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 286
    return-void

    .line 290
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->zUncertainty:D
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_c8

    .line 289
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    .line 292
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 293
    nop

    .line 294
    return-void

    .line 290
    :cond_c2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :catchall_c8
    move-exception v2

    goto :goto_d2

    .line 275
    :cond_ca
    :try_start_ca
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_c8

    .line 289
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_d2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_db

    .line 290
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 292
    :cond_db
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 293
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 258
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->x:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 260
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->xUncertainty:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 261
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->y:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 262
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->yUncertainty:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 263
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->z:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 264
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->zUncertainty:D

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 266
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 267
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 269
    return-void
.end method
