.class final Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "SemMobileWipsWifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;Landroid/os/Looper;)V
    .registers 3

    .line 173
    iput-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    .line 174
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method doPartialScan(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 178
    invoke-static {}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$sfgetmStarted()Z

    move-result v0

    const-string v1, "MobileWips::scanner"

    if-nez v0, :cond_e

    const-string p0, "scanner stoped"

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_e
    new-instance v0, Landroid/net/wifi/WifiScanner$ScanSettings;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$ScanSettings;-><init>()V

    const/4 v2, 0x2

    .line 187
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->type:I

    const/4 v2, 0x0

    .line 190
    iput v2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->band:I

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 191
    iput-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    .line 192
    iget-object v3, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->channels:[Landroid/net/wifi/WifiScanner$ChannelSpec;

    new-instance v4, Landroid/net/wifi/WifiScanner$ChannelSpec;

    invoke-direct {v4, p1}, Landroid/net/wifi/WifiScanner$ChannelSpec;-><init>(I)V

    aput-object v4, v3, v2

    const/4 p1, 0x3

    .line 193
    iput p1, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->reportEvents:I

    .line 198
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    new-instance v2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 201
    new-instance p2, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {p2, p3}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance p3, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-direct {p3, p4}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object p2, v0, Landroid/net/wifi/WifiScanner$ScanSettings;->hiddenNetworks:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object p1, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$fgetmWifiScanner(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/net/wifi/WifiScanner;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$fgetmPartialScanListener(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$PartialScanListener;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->this$0:Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;->-$$Nest$fgetmWorkSource(Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner;)Landroid/os/WorkSource;

    move-result-object p0

    invoke-virtual {p1, v0, p2, p0}, Landroid/net/wifi/WifiScanner;->startScan(Landroid/net/wifi/WifiScanner$ScanSettings;Landroid/net/wifi/WifiScanner$ScanListener;Landroid/os/WorkSource;)V

    const-string p0, "doScanInternal started"

    .line 211
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 217
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x22

    if-eq v0, v1, :cond_7

    goto :goto_26

    .line 219
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "karma"

    .line 220
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fKarma"

    .line 221
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fkarmaOri"

    .line 222
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "freq"

    .line 223
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 224
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsWifiScanner$ServiceHandler;->doPartialScan(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method
