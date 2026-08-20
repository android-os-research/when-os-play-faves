.class public Landroid/net/Layer2PacketParcelable$1;
.super Ljava/lang/Object;
.source "Layer2PacketParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Layer2PacketParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/Layer2PacketParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/Layer2PacketParcelable;
    .registers 2

    .line 12
    new-instance p0, Landroid/net/Layer2PacketParcelable;

    invoke-direct {p0}, Landroid/net/Layer2PacketParcelable;-><init>()V

    .line 13
    invoke-virtual {p0, p1}, Landroid/net/Layer2PacketParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Landroid/net/Layer2PacketParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/Layer2PacketParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/Layer2PacketParcelable;
    .registers 2

    .line 18
    new-array p0, p1, [Landroid/net/Layer2PacketParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 9
    invoke-virtual {p0, p1}, Landroid/net/Layer2PacketParcelable$1;->newArray(I)[Landroid/net/Layer2PacketParcelable;

    move-result-object p0

    return-object p0
.end method
