.class public Landroid/hardware/health/StorageInfo$1;
.super Ljava/lang/Object;
.source "StorageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/StorageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/health/StorageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/StorageInfo;
    .registers 2

    .line 16
    new-instance p0, Landroid/hardware/health/StorageInfo;

    invoke-direct {p0}, Landroid/hardware/health/StorageInfo;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Landroid/hardware/health/StorageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/health/StorageInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/StorageInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/health/StorageInfo;
    .registers 2

    .line 22
    new-array p0, p1, [Landroid/hardware/health/StorageInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 13
    invoke-virtual {p0, p1}, Landroid/hardware/health/StorageInfo$1;->newArray(I)[Landroid/hardware/health/StorageInfo;

    move-result-object p0

    return-object p0
.end method
