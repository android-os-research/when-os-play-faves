.class Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo$1;
.super Ljava/lang/Object;
.source "CallForwardingInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    invoke-direct {v0, p1}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;
    .registers 3
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo$1;->newArray(I)[Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    move-result-object p1

    return-object p1
.end method
