.class public Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;
.super Ljava/lang/Object;
.source "IGnssCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssSystemInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist name:Ljava/lang/String;

.field public blacklist yearOfHw:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 578
    new-instance v0, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->yearOfHw:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 577
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 603
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 604
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 606
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5a

    .line 607
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_58

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 612
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 615
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 607
    return-void

    .line 613
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 608
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->yearOfHw:I

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_58

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 612
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 615
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 609
    return-void

    .line 613
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 610
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->name:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_58

    .line 612
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_52

    .line 615
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 616
    nop

    .line 617
    return-void

    .line 613
    :cond_52
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 612
    :catchall_58
    move-exception v2

    goto :goto_62

    .line 606
    :cond_5a
    :try_start_5a
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_58

    .line 612
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_62
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6b

    .line 613
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 615
    :cond_6b
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 616
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 593
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->yearOfHw:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v1, p0, Landroid/hardware/gnss/IGnssCallback$GnssSystemInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 597
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 598
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 600
    return-void
.end method
