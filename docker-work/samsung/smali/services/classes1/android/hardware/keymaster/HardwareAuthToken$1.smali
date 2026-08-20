.class public Landroid/hardware/keymaster/HardwareAuthToken$1;
.super Ljava/lang/Object;
.source "HardwareAuthToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/keymaster/HardwareAuthToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/keymaster/HardwareAuthToken;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/keymaster/HardwareAuthToken;
    .registers 2

    .line 18
    new-instance p0, Landroid/hardware/keymaster/HardwareAuthToken;

    invoke-direct {p0}, Landroid/hardware/keymaster/HardwareAuthToken;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Landroid/hardware/keymaster/HardwareAuthToken;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/keymaster/HardwareAuthToken$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/hardware/keymaster/HardwareAuthToken;
    .registers 2

    .line 24
    new-array p0, p1, [Landroid/hardware/keymaster/HardwareAuthToken;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 15
    invoke-virtual {p0, p1}, Landroid/hardware/keymaster/HardwareAuthToken$1;->newArray(I)[Landroid/hardware/keymaster/HardwareAuthToken;

    move-result-object p0

    return-object p0
.end method
