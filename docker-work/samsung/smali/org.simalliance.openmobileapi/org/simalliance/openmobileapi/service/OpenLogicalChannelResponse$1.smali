.class Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;
.super Ljava/lang/Object;
.source "OpenLogicalChannelResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;->createFromParcel(Landroid/os/Parcel;)Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 35
    new-instance v0, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;-><init>(Landroid/os/Parcel;Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 33
    invoke-virtual {p0, p1}, Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse$1;->newArray(I)[Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
    .registers 3
    .param p1, "size"    # I

    .line 39
    new-array v0, p1, [Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;

    return-object v0
.end method
