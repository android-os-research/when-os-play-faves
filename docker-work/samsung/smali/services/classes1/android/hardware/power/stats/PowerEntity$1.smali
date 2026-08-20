.class public Landroid/hardware/power/stats/PowerEntity$1;
.super Ljava/lang/Object;
.source "PowerEntity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/stats/PowerEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/power/stats/PowerEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/PowerEntity;
    .registers 2

    .line 15
    new-instance p0, Landroid/hardware/power/stats/PowerEntity;

    invoke-direct {p0}, Landroid/hardware/power/stats/PowerEntity;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/PowerEntity;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/PowerEntity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/PowerEntity;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/power/stats/PowerEntity;
    .registers 2

    .line 21
    new-array p0, p1, [Landroid/hardware/power/stats/PowerEntity;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/PowerEntity$1;->newArray(I)[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p0

    return-object p0
.end method
