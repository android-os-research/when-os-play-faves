.class public Lcom/android/server/am/OomAdjuster$1;
.super Landroid/content/BroadcastReceiver;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OomAdjuster;->initSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/OomAdjuster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OomAdjuster;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 405
    iget-object p1, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-static {p1}, Lcom/android/server/am/OomAdjuster;->-$$Nest$fgetmService(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 406
    iget-object p0, p0, Lcom/android/server/am/OomAdjuster$1;->this$0:Lcom/android/server/am/OomAdjuster;

    invoke-virtual {p0}, Lcom/android/server/am/OomAdjuster;->handleUserSwitchedLocked()V

    .line 407
    monitor-exit p1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_14
    move-exception p0

    :try_start_15
    monitor-exit p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
