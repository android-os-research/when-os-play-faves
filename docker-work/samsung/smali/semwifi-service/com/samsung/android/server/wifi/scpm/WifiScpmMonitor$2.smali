.class Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;
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
.method public static synthetic $r8$lambda$bTvXL3rBMUiElCED8n-2V8NOV84(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$mupdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "SemWifi.Scpm"

    const-string p2, "cleared scpm app data, token will be updated 1 min. later"

    .line 118
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$fgetisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 120
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$fputisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Z)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->-$$Nest$fgethandler(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;)V

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_26
    return-void
.end method
