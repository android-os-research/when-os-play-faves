.class public Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AGnssRefLocation"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 379
    new-instance v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 426
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 427
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 428
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 430
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 423
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 378
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 405
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 407
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5e

    .line 408
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 413
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 416
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 408
    return-void

    .line 414
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 409
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->type:I

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_5c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 413
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 416
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 410
    return-void

    .line 414
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_42
    :try_start_42
    sget-object v2, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    iput-object v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_5c

    .line 413
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_56

    .line 416
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 417
    nop

    .line 418
    return-void

    .line 414
    :cond_56
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :catchall_5c
    move-exception v2

    goto :goto_66

    .line 407
    :cond_5e
    :try_start_5e
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_5c

    .line 413
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_66
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6f

    .line 414
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 416
    :cond_6f
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 417
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 394
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 398
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 399
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 401
    return-void
.end method
