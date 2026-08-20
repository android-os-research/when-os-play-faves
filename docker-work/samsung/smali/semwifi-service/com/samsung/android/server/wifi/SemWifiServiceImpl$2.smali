.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;
.super Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;
.source "SemWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->lambda$handleBootCompleted$3()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 2

    .line 323
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/wcm/OpenNetworkQos$OpenNetworkQosCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoInternetStatusChanged(Z)V
    .registers 4

    .line 326
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmProfileShare(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    move-result-object p0

    const-string p1, "internet"

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->updateQoSData(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public onQualityScoreChanged()V
    .registers 4

    .line 331
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmProfileShare(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    move-result-object p0

    const-string v0, "score"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->updateQoSData(Ljava/lang/String;ZZ)V

    return-void
.end method
