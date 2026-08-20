.class public Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;
.super Ljava/lang/Object;
.source "NearbyDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_NEARBY_DEVICE_ARRAY_LIST:Ljava/lang/String; = "KEY_NEARBY_DEVICE_ARRAY_LIST"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mBleMac:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 32
    new-instance v0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$1;

    invoke-direct {v0}, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$1;-><init>()V

    sput-object v0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;->mBleMac:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$1;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;->mBleMac:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice$1;)V
    .registers 3

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getNearbyDeviceList(Landroid/os/Bundle;)Ljava/util/List;
    .registers 4
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;",
            ">;"
        }
    .end annotation

    .line 82
    const-class v0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "KEY_NEARBY_DEVICE_ARRAY_LIST"

    .line 83
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_13

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 90
    instance-of v2, v1, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;

    if-eqz v2, :cond_20

    .line 91
    check-cast v1, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_36
    return-object v0
.end method

.method public static setBundle(Landroid/os/Bundle;Ljava/util/ArrayList;)V
    .registers 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KEY_NEARBY_DEVICE_ARRAY_LIST"

    .line 77
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBleMac()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 25
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;->mBleMac:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 51
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/domain/device/NearbyDevice;->mBleMac:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
