.class public Lcom/android/server/am/ActiveServices$4;
.super Ljava/lang/Object;
.source "ActiveServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActiveServices;->deferServiceBringupIfFrozenLocked(Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IIZZIZLandroid/os/IBinder;ZLandroid/app/IServiceConnection;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActiveServices;

.field public final synthetic val$allowBackgroundActivityStarts:Z

.field public final synthetic val$backgroundActivityStartsToken:Landroid/os/IBinder;

.field public final synthetic val$callerFg:Z

.field public final synthetic val$callingFeatureId:Ljava/lang/String;

.field public final synthetic val$callingPackage:Ljava/lang/String;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$connection:Landroid/app/IServiceConnection;

.field public final synthetic val$fgRequired:Z

.field public final synthetic val$isBinding:Z

.field public final synthetic val$s:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$serviceIntent:Landroid/content/Intent;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;IZZLandroid/os/IBinder;)V
    .registers 15

    .line 1181
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iput-object p3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iput-object p6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iput-boolean p7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iput p8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iput-boolean p9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iput-object p10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    iput p11, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iput-boolean p12, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iput-boolean p13, p0, Lcom/android/server/am/ActiveServices$4;->val$allowBackgroundActivityStarts:Z

    iput-object p14, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundActivityStartsToken:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .line 1184
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1185
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {v1}, Lcom/android/server/am/ActiveServices;->-$$Nest$fgetmPendingBringups(Lcom/android/server/am/ActiveServices;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1186
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1190
    :cond_1b
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPackage:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingFeatureId:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget v8, p0, Lcom/android/server/am/ActiveServices$4;->val$userId:I

    iget-boolean v9, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z

    iget-object v10, p0, Lcom/android/server/am/ActiveServices$4;->val$connection:Landroid/app/IServiceConnection;

    invoke-static/range {v1 .. v10}, Lcom/android/server/am/ActiveServices;->-$$Nest$mrequestStartTargetPermissionsReviewIfNeededLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ZIZLandroid/app/IServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1194
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_1b .. :try_end_36} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1196
    :cond_3a
    :try_start_3a
    iget-boolean v1, p0, Lcom/android/server/am/ActiveServices$4;->val$isBinding:Z
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_8a

    if-eqz v1, :cond_70

    .line 1198
    :try_start_3e
    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    iget-boolean v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static/range {v2 .. v9}, Lcom/android/server/am/ActiveServices;->-$$Nest$mbringUpServiceLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;IZZZZZ)Ljava/lang/String;
    :try_end_51
    .catch Landroid/os/TransactionTooLargeException; {:try_start_3e .. :try_end_51} :catch_68
    .catchall {:try_start_3e .. :try_end_51} :catchall_5c

    .line 1207
    :try_start_51
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_startService"

    :goto_58
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    goto :goto_85

    :catchall_5c
    move-exception v1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_startService"

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 1209
    throw v1

    .line 1207
    :catch_68
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p0, p0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_startService"
    :try_end_6f
    .catchall {:try_start_51 .. :try_end_6f} :catchall_8a

    goto :goto_58

    .line 1212
    :cond_70
    :try_start_70
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$4;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$4;->val$s:Lcom/android/server/am/ServiceRecord;

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$4;->val$serviceIntent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/am/ActiveServices$4;->val$callingUid:I

    iget v5, p0, Lcom/android/server/am/ActiveServices$4;->val$callingPid:I

    iget-boolean v6, p0, Lcom/android/server/am/ActiveServices$4;->val$fgRequired:Z

    iget-boolean v7, p0, Lcom/android/server/am/ActiveServices$4;->val$callerFg:Z

    iget-boolean v8, p0, Lcom/android/server/am/ActiveServices$4;->val$allowBackgroundActivityStarts:Z

    iget-object v9, p0, Lcom/android/server/am/ActiveServices$4;->val$backgroundActivityStartsToken:Landroid/os/IBinder;

    invoke-static/range {v1 .. v9}, Lcom/android/server/am/ActiveServices;->-$$Nest$mstartServiceInnerLocked(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;Landroid/content/Intent;IIZZZLandroid/os/IBinder;)Landroid/content/ComponentName;
    :try_end_85
    .catch Landroid/os/TransactionTooLargeException; {:try_start_70 .. :try_end_85} :catch_85
    .catchall {:try_start_70 .. :try_end_85} :catchall_8a

    .line 1219
    :catch_85
    :goto_85
    :try_start_85
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_8a
    move-exception p0

    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
