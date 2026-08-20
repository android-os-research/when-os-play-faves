.class public Landroid/hardware/power/stats/State$1;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/stats/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/power/stats/State;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/State;
    .registers 2

    .line 14
    new-instance p0, Landroid/hardware/power/stats/State;

    invoke-direct {p0}, Landroid/hardware/power/stats/State;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/State;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/State$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/power/stats/State;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/power/stats/State;
    .registers 2

    .line 20
    new-array p0, p1, [Landroid/hardware/power/stats/State;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/hardware/power/stats/State$1;->newArray(I)[Landroid/hardware/power/stats/State;

    move-result-object p0

    return-object p0
.end method
