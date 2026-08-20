.class public Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Lcom/android/server/AppStateTracker$BackgroundRestrictedAppListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BackgroundRestrictedListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2

    .line 411
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBackgroundRestrictedForUidPackage(ILjava/lang/String;Z)V
    .registers 6

    .line 416
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 417
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 421
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 422
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v1, p1, p2}, Lcom/android/server/am/ActiveServices;->-$$Nest$misForegroundServiceAllowedInBackgroundRestricted(Lcom/android/server/am/ActiveServices;ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 423
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 425
    :cond_32
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$BackgroundRestrictedListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/ProcessList;->updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V

    .line 427
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_22 .. :try_end_3c} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_40
    move-exception p0

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
