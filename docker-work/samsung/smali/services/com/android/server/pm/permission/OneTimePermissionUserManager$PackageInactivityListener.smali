.class public Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;
.super Ljava/lang/Object;
.source "OneTimePermissionUserManager.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/OneTimePermissionUserManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageInactivityListener"
.end annotation


# static fields
.field public static final STATE_ACTIVE:I = 0x2

.field public static final STATE_GONE:I = 0x0

.field public static final STATE_TIMER:I = 0x1

.field public static final TIMER_INACTIVE:J = -0x1L


# instance fields
.field public final mInnerLock:Ljava/lang/Object;

.field public mIsAlarmSet:Z

.field public mIsFinished:Z

.field public final mObserver:Landroid/app/IUidObserver$Stub;

.field public final mPackageName:Ljava/lang/String;

.field public mRevokeAfterKilledDelay:J

.field public mTimeout:J

.field public mTimerStart:J

.field public final mToken:Ljava/lang/Object;

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;


# direct methods
.method public static synthetic $r8$lambda$2pv9zTcBEkRLVgiXfAxJIQIK7jA(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->lambda$updateUidState$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Sn4uU8pN4728SWXywNztATK4RdE(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->lambda$onPackageInactiveLocked$1()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmUid(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)I
    .registers 1

    iget p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcancel(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancel()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateUidState(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JJ)V
    .registers 14

    .line 203
    iput-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 167
    iput-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 169
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    .line 170
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    .line 171
    new-instance v2, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;

    invoke-direct {v2, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iput-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Landroid/app/IUidObserver$Stub;

    .line 204
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start tracking "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " killedDelay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput p2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    .line 209
    iput-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    .line 210
    iput-wide p4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    cmp-long p2, p6, v0

    if-nez p2, :cond_64

    const-string/jumbo p2, "permissions"

    const-string/jumbo p3, "one_time_permissions_killed_delay_millis"

    const-wide/16 p4, 0x1388

    .line 212
    invoke-static {p2, p3, p4, p5}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p6

    .line 215
    :cond_64
    iput-wide p6, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 218
    :try_start_66
    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmIActivityManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/IActivityManager;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x4

    const/4 p4, 0x0

    invoke-interface {p1, v2, p2, p3, p4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_70} :catch_71

    goto :goto_82

    :catch_71
    move-exception p1

    .line 223
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Couldn\'t check uid proc state"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 226
    :try_start_7e
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 227
    monitor-exit p1
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_86

    .line 230
    :goto_82
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState()V

    return-void

    :catchall_86
    move-exception p0

    .line 227
    :try_start_87
    monitor-exit p1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw p0
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JJLcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener-IA;)V
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager;ILjava/lang/String;JJ)V

    return-void
.end method

.method private synthetic lambda$onPackageInactiveLocked$1()V
    .registers 4

    .line 383
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One time session expired for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmPermissionControllerManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/permission/PermissionControllerManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/permission/PermissionControllerManager;->notifyOneTimePermissionSessionTimeout(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$updateUidState$0()V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->getCurrentState()I

    move-result v1

    if-nez v1, :cond_e

    .line 287
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 288
    monitor-exit v0

    return-void

    .line 290
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    return-void

    :catchall_13
    move-exception p0

    .line 290
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method


# virtual methods
.method public final cancel()V
    .registers 4

    .line 319
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 320
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 321
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_21

    .line 323
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmIActivityManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Landroid/app/IUidObserver$Stub;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_14} :catch_15
    .catchall {:try_start_9 .. :try_end_14} :catchall_21

    goto :goto_1f

    :catch_15
    move-exception p0

    .line 325
    :try_start_16
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to unregister uid observer."

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    :goto_1f
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public final cancelAlarmLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInnerLock"
        }
    .end annotation

    .line 358
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v0, :cond_10

    .line 362
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmAlarmManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    .line 363
    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    :cond_10
    return-void
.end method

.method public final getCurrentState()I
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->getStateFromProcState(I)I

    move-result p0

    return p0
.end method

.method public final getStateFromProcState(I)I
    .registers 2

    const/16 p0, 0x14

    if-ne p1, p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x4

    if-le p1, p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x2

    return p0
.end method

.method public onAlarm()V
    .registers 3

    .line 404
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-nez v1, :cond_9

    .line 406
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 408
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 409
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 410
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final onPackageInactiveLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInnerLock"
        }
    .end annotation

    .line 372
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 379
    iput-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsFinished:Z

    .line 380
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V

    .line 381
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 390
    :try_start_19
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmIActivityManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mObserver:Landroid/app/IUidObserver$Stub;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_24} :catch_25

    goto :goto_2f

    :catch_25
    move-exception v0

    .line 392
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to unregister uid observer."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    :goto_2f
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmLock(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 395
    :try_start_36
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmListeners(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget p0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 396
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_36 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public final setAlarmLocked()V
    .registers 12
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mInnerLock"
        }
    .end annotation

    .line 335
    iget-boolean v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    if-eqz v0, :cond_5

    return-void

    .line 342
    :cond_5
    iget-wide v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    iget-wide v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    add-long v6, v0, v2

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v6, v0

    const/4 v1, 0x1

    if-lez v0, :cond_2c

    .line 344
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmAlarmManager(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v10

    move-object v9, p0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 346
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    goto :goto_31

    .line 348
    :cond_2c
    iput-boolean v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mIsAlarmSet:Z

    .line 349
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onAlarm()V

    :goto_31
    return-void
.end method

.method public updateSessionParameters(JJ)V
    .registers 8

    .line 234
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    .line 236
    iget-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    const-wide/16 v1, -0x1

    cmp-long v1, p3, v1

    if-nez v1, :cond_1f

    const-string/jumbo p3, "permissions"

    const-string/jumbo p4, "one_time_permissions_killed_delay_millis"

    const-wide/16 v1, 0x1388

    .line 238
    invoke-static {p3, p4, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p3

    .line 236
    :cond_1f
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    .line 242
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Updated params for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ". timeout="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimeout:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " killedDelay="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState()V

    .line 246
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public final updateUidState()V
    .registers 2

    .line 266
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->getCurrentState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->updateUidState(I)V

    return-void
.end method

.method public final updateUidState(I)V
    .registers 8

    .line 270
    invoke-static {}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "). state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mInnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {v1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    if-nez p1, :cond_5d

    .line 277
    iget-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_49

    .line 278
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->onPackageInactiveLocked()V

    .line 279
    monitor-exit v0

    return-void

    .line 282
    :cond_49
    iget-object p1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->this$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager;

    invoke-static {p1}, Lcom/android/server/pm/permission/OneTimePermissionUserManager;->-$$Nest$fgetmHandler(Lcom/android/server/pm/permission/OneTimePermissionUserManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V

    iget-object v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mToken:Ljava/lang/Object;

    iget-wide v3, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mRevokeAfterKilledDelay:J

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 298
    monitor-exit v0

    return-void

    :cond_5d
    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-ne p1, v1, :cond_72

    .line 300
    iget-wide v4, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_7a

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 306
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->setAlarmLocked()V

    goto :goto_7a

    :cond_72
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7a

    .line 309
    iput-wide v2, p0, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->mTimerStart:J

    .line 310
    invoke-virtual {p0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->cancelAlarmLocked()V

    .line 312
    :cond_7a
    :goto_7a
    monitor-exit v0

    return-void

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_2f .. :try_end_7e} :catchall_7c

    throw p0
.end method
