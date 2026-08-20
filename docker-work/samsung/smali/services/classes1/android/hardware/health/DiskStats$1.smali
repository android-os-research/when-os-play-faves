.class public Landroid/hardware/health/DiskStats$1;
.super Ljava/lang/Object;
.source "DiskStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/DiskStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/health/DiskStats;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/DiskStats;
    .registers 2

    .line 23
    new-instance p0, Landroid/hardware/health/DiskStats;

    invoke-direct {p0}, Landroid/hardware/health/DiskStats;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Landroid/hardware/health/DiskStats;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/health/DiskStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/health/DiskStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/health/DiskStats;
    .registers 2

    .line 29
    new-array p0, p1, [Landroid/hardware/health/DiskStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Landroid/hardware/health/DiskStats$1;->newArray(I)[Landroid/hardware/health/DiskStats;

    move-result-object p0

    return-object p0
.end method
