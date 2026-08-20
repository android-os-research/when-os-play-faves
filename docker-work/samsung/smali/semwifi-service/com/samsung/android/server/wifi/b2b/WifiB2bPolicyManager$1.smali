.class Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiB2bPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->handleLazyBootCompleted(Lcom/samsung/android/server/wifi/driver/WifiDriverFeatureProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->-$$Nest$mupdateWiFiB2BPolicy(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->-$$Nest$fgetlistenerLock(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 110
    :try_start_c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1;->this$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->-$$Nest$fgetlisteners(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)Ljava/util/Set;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 111
    monitor-exit p1

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_1c

    throw p0
.end method
