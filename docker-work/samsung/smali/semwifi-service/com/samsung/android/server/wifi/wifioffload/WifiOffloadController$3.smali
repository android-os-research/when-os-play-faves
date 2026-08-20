.class Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;
.super Landroid/database/ContentObserver;
.source "WifiOffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;Landroid/os/Handler;)V
    .registers 3

    .line 151
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 154
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$3;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi_offload_network_notify"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getSystemIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_17

    move v2, v0

    :cond_17
    iput-boolean v2, p1, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsSettingEnabled:Z

    return-void
.end method
