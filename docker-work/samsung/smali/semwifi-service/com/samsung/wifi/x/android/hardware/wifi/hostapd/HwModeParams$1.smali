.class Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams$1;
.super Ljava/lang/Object;
.source "HwModeParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;
    .registers 2

    .line 23
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;
    .registers 2

    .line 29
    new-array p0, p1, [Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams$1;->newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;

    move-result-object p0

    return-object p0
.end method
