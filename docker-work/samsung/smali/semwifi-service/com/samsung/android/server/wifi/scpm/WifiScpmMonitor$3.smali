.class Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiScpmMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

.field final synthetic val$executor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .registers 3

    .line 204
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->val$executor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 208
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->val$executor:Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;->this$0:Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;

    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->onScpmPolicyUpdated(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 210
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method
