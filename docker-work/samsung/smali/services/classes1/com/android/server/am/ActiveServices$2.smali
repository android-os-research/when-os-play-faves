.class public Lcom/android/server/am/ActiveServices$2;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->requestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$r:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$service:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;ZLandroid/app/IServiceConnection;)V
    .registers 6

    .line 1090
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$2;->val$service:Landroid/content/Intent;

    iput-boolean p4, p0, Lcom/android/server/am/ActiveServices$2;->val$callerFg:Z

    iput-object p5, p0, Lcom/android/server/am/ActiveServices$2;->val$connection:Landroid/app/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .registers 13

    .line 1093
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_7a

    .line 1096
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mPendingServices:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_75

    if-nez v2, :cond_20

    .line 1125
    :try_start_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit p1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_7a

    .line 1097
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1103
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, v2, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v3, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget v3, v3, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1104
    invoke-virtual {v2, v4, v3}, Landroid/content/pm/PackageManagerInternal;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result v2
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_75

    if-nez v2, :cond_66

    .line 1107
    :try_start_34
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$2;->val$r:Lcom/android/server/am/ServiceRecord;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$2;->val$service:Landroid/content/Intent;

    .line 1108
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$2;->val$callerFg:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 1107
    invoke-static/range {v3 .. v10}, Lcom/android/server/am/ActiveServices;->-$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_47} :catch_5e
    .catchall {:try_start_34 .. :try_end_47} :catchall_52

    .line 1118
    :try_start_47
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_startService"

    :goto_4e
    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    goto :goto_6d

    :catchall_52
    move-exception v2

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "updateOomAdj_startService"

    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 1120
    throw v2

    .line 1118
    :catch_5e
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_startService"

    goto :goto_4e

    .line 1122
    :cond_66
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$2;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$2;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActiveServices;->unbindServiceLocked(Landroid/app/IServiceConnection;)Z
    :try_end_6d
    .catchall {:try_start_47 .. :try_end_6d} :catchall_75

    .line 1125
    :goto_6d
    :try_start_6d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1127
    monitor-exit p1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_7a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_75
    move-exception p0

    .line 1125
    :try_start_76
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw p0

    :catchall_7a
    move-exception p0

    .line 1127
    monitor-exit p1
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
