.class public Lcom/android/server/alarm/AlarmManagerService$4;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/alarm/AlarmManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 2

    .line 2325
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2329
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/16 v1, 0x6b

    if-ne p1, v1, :cond_9a

    .line 2331
    invoke-static {p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_9a

    .line 2334
    :cond_10
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {p1, p3, p2}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_19

    return-void

    .line 2337
    :cond_19
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    return-void

    .line 2342
    :cond_2c
    iget-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v1, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    .line 2346
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v2, v2, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2347
    :try_start_39
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_4f

    .line 2349
    invoke-static {v1}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v1

    .line 2351
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v3, v3, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5e

    .line 2353
    :cond_4f
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 2354
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 2356
    :goto_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_97

    if-ne v1, p1, :cond_62

    return-void

    .line 2360
    :cond_62
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    .line 2361
    invoke-virtual {v2, p3, p2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmAllowedByDefault(Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v1, v4, :cond_73

    if-nez v1, :cond_71

    move v1, v3

    goto :goto_74

    :cond_71
    move v1, v5

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    if-eq p1, v4, :cond_7b

    if-nez p1, :cond_7a

    move v2, v3

    goto :goto_7b

    :cond_7a
    move v2, v5

    :cond_7b
    :goto_7b
    if-eqz v1, :cond_8d

    if-nez v2, :cond_8d

    .line 2377
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v5, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 2378
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_96

    :cond_8d
    if-nez v1, :cond_96

    if-eqz v2, :cond_96

    .line 2380
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$4;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-static {p0, p3, v0}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V

    :cond_96
    :goto_96
    return-void

    :catchall_97
    move-exception p0

    .line 2356
    :try_start_98
    monitor-exit v2
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw p0

    :cond_9a
    :goto_9a
    return-void
.end method
