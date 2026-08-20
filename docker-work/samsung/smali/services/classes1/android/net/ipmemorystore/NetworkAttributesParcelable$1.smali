.class public Landroid/net/ipmemorystore/NetworkAttributesParcelable$1;
.super Ljava/lang/Object;
.source "NetworkAttributesParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/NetworkAttributesParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/ipmemorystore/NetworkAttributesParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .registers 2

    .line 17
    new-instance p0, Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    invoke-direct {p0}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .registers 2

    .line 23
    new-array p0, p1, [Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable$1;->newArray(I)[Landroid/net/ipmemorystore/NetworkAttributesParcelable;

    move-result-object p0

    return-object p0
.end method
