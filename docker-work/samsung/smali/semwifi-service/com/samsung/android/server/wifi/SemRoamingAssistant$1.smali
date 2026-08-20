.class Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;
.super Ljava/lang/Object;
.source "SemRoamingAssistant.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemRoamingAssistant;-><init>(Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/util/SemClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemRoamingAssistant;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemRoamingAssistant;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;->this$0:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;->this$0:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->-$$Nest$mforgetNetwork(Lcom/samsung/android/server/wifi/SemRoamingAssistant;Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkReset()V
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemRoamingAssistant$1;->this$0:Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->-$$Nest$mfactoryReset(Lcom/samsung/android/server/wifi/SemRoamingAssistant;)V

    return-void
.end method
