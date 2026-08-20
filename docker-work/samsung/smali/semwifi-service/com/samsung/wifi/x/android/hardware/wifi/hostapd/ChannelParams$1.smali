.class Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams$1;
.super Ljava/lang/Object;
.source "ChannelParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;
    .registers 2

    .line 17
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;-><init>()V

    .line 18
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;
    .registers 2

    .line 23
    new-array p0, p1, [Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 14
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams$1;->newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;

    move-result-object p0

    return-object p0
.end method
