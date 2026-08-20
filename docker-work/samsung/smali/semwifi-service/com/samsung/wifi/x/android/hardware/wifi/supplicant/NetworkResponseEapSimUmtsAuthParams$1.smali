.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams$1;
.super Ljava/lang/Object;
.source "NetworkResponseEapSimUmtsAuthParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;
    .registers 2

    .line 15
    new-instance p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;->readFromParcel(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;
    .registers 2

    .line 21
    new-array p0, p1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 12
    invoke-virtual {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams$1;->newArray(I)[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkResponseEapSimUmtsAuthParams;

    move-result-object p0

    return-object p0
.end method
