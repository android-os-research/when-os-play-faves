.class Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScpmMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->setScpmPackageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 110
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cur: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemWifi.Scpm"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$mupdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Z

    return-void
.end method
