.class Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;
.super Ljava/lang/Object;
.source "SemMobileWipsWifiScanner.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PartialScanListener"
.end annotation


# instance fields
.field private final ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;)V
    .registers 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 113
    invoke-static {}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$sfgetmStarted()Z

    move-result p1

    if-nez p1, :cond_e

    const-string p0, "MobileWips::scanner"

    const-string p1, "scanner stoped"

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_e
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x23

    .line 118
    iput p2, p1, Landroid/os/Message;->what:I

    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;->sendServiceMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .registers 2

    return-void
.end method

.method public onPeriodChanged(I)V
    .registers 2

    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .registers 9

    .line 124
    invoke-static {}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$sfgetmStarted()Z

    move-result v0

    const-string v1, "MobileWips::scanner"

    if-nez v0, :cond_e

    const-string p0, "scanner stoped"

    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    if-nez p1, :cond_16

    const-string p0, "scanDatas null"

    .line 129
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 134
    :cond_16
    array-length v0, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_20

    const-string p0, "Found more than 1 batch of scan results, Failing..."

    .line 135
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    const-string v0, "onResults"

    .line 138
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 141
    :try_start_2b
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiScanner$ScanData;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object p1

    array-length v2, p1

    move v3, v1

    :goto_33
    if-ge v3, v2, :cond_6b

    aget-object v4, p1, v3

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 143
    invoke-virtual {v4, v5, v1}, Landroid/net/wifi/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 144
    invoke-virtual {v5, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 145
    sget-object v4, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;

    .line 146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 147
    invoke-virtual {v4, v6, v1}, Lcom/samsung/android/wifi/SemMobileWipsScanResultAdapter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 148
    invoke-virtual {v6, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    sget-object v4, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    .line 150
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_64} :catch_67

    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    :catch_67
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    :cond_6b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;->ISemMobileWipsCallback:Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;

    invoke-interface {p0, v0}, Lcom/samsung/android/server/wifi/mobilewips/ISemMobileWipsFrameworkServiceCallback;->sendScanResult(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess()V
    .registers 2

    const-string p0, "MobileWips::scanner"

    const-string v0, "Partial scan success"

    .line 108
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
