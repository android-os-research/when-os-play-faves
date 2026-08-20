.class public Lcom/android/server/am/ActivityManagerService$9;
.super Landroid/content/BroadcastReceiver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->finishBooting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 6091
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const-string p1, "android.intent.extra.PACKAGES"

    .line 6094
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 6096
    array-length p2, p1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p2, :cond_3c

    aget-object v2, p1, v0

    .line 6097
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 6098
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$9;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "query restart"

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 p1, -0x1

    .line 6100
    invoke-virtual {p0, p1}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    .line 6101
    monitor-exit v11
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 6103
    :cond_2f
    :try_start_2f
    monitor-exit v11
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catchall_36
    move-exception p0

    :try_start_37
    monitor-exit v11
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    :cond_3c
    return-void
.end method
