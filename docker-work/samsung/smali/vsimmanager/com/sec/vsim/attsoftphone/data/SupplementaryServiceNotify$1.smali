.class Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify$1;
.super Ljava/lang/Object;
.source "SupplementaryServiceNotify.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 53
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    invoke-direct {v0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;
    .registers 3
    .param p1, "size"    # I

    .line 58
    new-array v0, p1, [Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify$1;->newArray(I)[Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    move-result-object p1

    return-object p1
.end method
