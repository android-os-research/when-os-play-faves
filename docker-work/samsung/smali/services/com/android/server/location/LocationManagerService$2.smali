.class public Lcom/android/server/location/LocationManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationManagerService;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    .line 540
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p1, "com.samsung.android.location.mock.delete"

    .line 543
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 544
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object p1, p1, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 545
    :try_start_11
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fputisMockLocationNotified(Lcom/android/server/location/LocationManagerService;Z)V

    const-string v0, "android.intent.extra.PACKAGE_NAME"

    .line 546
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_30

    .line 547
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {v0}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmMockLocationRecord(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    .line 548
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$2;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0, p2}, Lcom/android/server/location/LocationManagerService;->-$$Nest$mrecoverRealProviderLocked(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V

    .line 550
    :cond_30
    monitor-exit p1

    goto :goto_35

    :catchall_32
    move-exception p0

    monitor-exit p1
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_32

    throw p0

    :cond_35
    :goto_35
    return-void
.end method
