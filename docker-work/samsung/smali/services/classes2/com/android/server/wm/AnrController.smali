.class public Lcom/android/server/wm/AnrController;
.super Ljava/lang/Object;
.source "AnrController.java"


# static fields
.field public static final PRE_DUMP_MIN_INTERVAL_MS:J

.field public static final PRE_DUMP_MONITOR_TIMEOUT_MS:J


# instance fields
.field public volatile mLastPreDumpTimeMs:J

.field public volatile mLastPreDumpTimeMs_onlyForAnr:J

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mUnresponsiveAppByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$sfgetPRE_DUMP_MONITOR_TIMEOUT_MS()J
    .registers 2

    sget-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    return-wide v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 53
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    const-wide/16 v1, 0x1

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method


# virtual methods
.method public final dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V
    .registers 5

    .line 315
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->saveANRStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 316
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->saveANRState(Ljava/lang/String;)V

    return-void
.end method

.method public final isWindowAboveSystem(Lcom/android/server/wm/WindowState;)Z
    .registers 4

    .line 320
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    const/16 v1, 0x7f6

    invoke-interface {p0, v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result p0

    .line 322
    iget p1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-le p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public notifyAppUnresponsive(Landroid/view/InputApplicationHandle;Ljava/lang/String;)V
    .registers 7

    .line 70
    invoke-virtual {p0}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 73
    iget-object v1, p1, Landroid/view/InputApplicationHandle;->token:Landroid/os/IBinder;

    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_35

    const-string p0, "WindowManager"

    .line 75
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown app appToken:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Dropping notifyNoFocusedWindowAnr request"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_6d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_35
    :try_start_35
    const-string p1, "WindowManager"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 80
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/AnrController;->dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 82
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_35 .. :try_end_65} :catchall_6d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    .line 83
    invoke-virtual {v1, p2, p0}, Lcom/android/server/wm/ActivityRecord;->inputDispatchingTimedOut(Ljava/lang/String;I)Z

    return-void

    :catchall_6d
    move-exception p0

    .line 82
    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyWindowResponsive(I)V
    .registers 2

    .line 198
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    return-void
.end method

.method public notifyWindowResponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;)V
    .registers 4

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AnrController;->notifyWindowResponsive(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 167
    :cond_7
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_29

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to notify that window token="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was responsive."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 171
    :cond_29
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AnrController;->notifyWindowResponsive(I)V

    return-void
.end method

.method public final notifyWindowResponsive(Landroid/os/IBinder;)Z
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 184
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p0, 0x0

    .line 186
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 188
    :cond_16
    :try_start_16
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getPid()I

    move-result p1

    .line 189
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 190
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    const/4 p0, 0x1

    return p0

    :catchall_27
    move-exception p0

    .line 189
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyWindowUnresponsive(ILjava/lang/String;)V
    .registers 5

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANR in input window owned by pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, v0, v0, p2}, Lcom/android/server/wm/AnrController;->dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 154
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    return-void
.end method

.method public notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/util/OptionalInt;Ljava/lang/String;)V
    .registers 5

    .line 96
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 99
    :cond_7
    invoke-virtual {p2}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v0

    if-nez v0, :cond_29

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to notify that window token="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was unresponsive."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_29
    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/AnrController;->notifyWindowUnresponsive(ILjava/lang/String;)V

    return-void
.end method

.method public final notifyWindowUnresponsive(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 10

    .line 113
    invoke-virtual {p0}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow()V

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 118
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getInputTargetFromToken(Landroid/os/IBinder;)Lcom/android/server/wm/InputTarget;

    move-result-object v1

    if-nez v1, :cond_19

    const/4 p0, 0x0

    .line 120
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    .line 122
    :cond_19
    :try_start_19
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 123
    invoke-interface {v1}, Lcom/android/server/wm/InputTarget;->getPid()I

    move-result v3

    .line 126
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mInputChannelToken:Landroid/os/IBinder;

    if-ne v4, p1, :cond_28

    .line 127
    iget-object p1, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    goto :goto_29

    :cond_28
    const/4 p1, 0x0

    :goto_29
    const-string v4, "WindowManager"

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ANR in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". Reason:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/server/wm/AnrController;->isWindowAboveSystem(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    .line 130
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/wm/AnrController;->dumpAnrStateLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;Ljava/lang/String;)V

    .line 131
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_19 .. :try_end_4f} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 134
    invoke-virtual {p0, v3}, Lcom/android/server/wm/AnrController;->preDumpIfLockTooSlow_onlyForAnr(I)V

    if-eqz p1, :cond_5b

    .line 138
    invoke-virtual {p1, p2, v3}, Lcom/android/server/wm/ActivityRecord;->inputDispatchingTimedOut(Ljava/lang/String;I)Z

    goto :goto_62

    .line 140
    :cond_5b
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v3, v1, p2}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    :goto_62
    const/4 p0, 0x1

    return p0

    :catchall_64
    move-exception p0

    .line 131
    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onFocusChanged(Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 210
    iget-object v1, p0, Lcom/android/server/wm/AnrController;->mUnresponsiveAppByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_2b

    .line 211
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, p1, :cond_1b

    goto :goto_2b

    .line 214
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 215
    iget-object p0, p0, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->inputDispatchingResumed(I)V

    return-void

    .line 212
    :cond_2b
    :goto_2b
    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_30
    move-exception p0

    .line 214
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final preDumpIfLockTooSlow()V
    .registers 20

    move-object/from16 v8, p0

    .line 226
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_7

    return-void

    .line 229
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 230
    iget-wide v0, v8, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    iget-wide v0, v8, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    sub-long v0, v9, v0

    sget-wide v2, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1e

    return-void

    :cond_1e
    const/4 v11, 0x1

    new-array v12, v11, [Z

    const/4 v13, 0x0

    aput-boolean v11, v12, v13

    .line 235
    new-instance v14, Landroid/util/ArrayMap;

    const/4 v0, 0x2

    invoke-direct {v14, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 236
    iget-object v0, v8, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-string v15, "WindowManager"

    invoke-virtual {v14, v15, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, v8, Lcom/android/server/wm/AnrController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AnrController$$ExternalSyntheticLambda1;-><init>(Landroid/app/ActivityManagerInternal;)V

    const-string v0, "ActivityManager"

    invoke-virtual {v14, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-direct {v7, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move v6, v13

    .line 240
    :goto_54
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-ge v6, v0, :cond_82

    .line 241
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Ljava/lang/String;

    .line 242
    invoke-virtual {v14, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    .line 245
    new-instance v17, Lcom/android/server/wm/AnrController$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v3, v7

    move-wide v4, v9

    move/from16 v18, v6

    move-object/from16 v6, v16

    move-object v13, v7

    move-object v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/AnrController$1;-><init>(Lcom/android/server/wm/AnrController;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V

    .line 259
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->start()V

    add-int/lit8 v6, v18, 0x1

    move-object v7, v13

    const/4 v13, 0x0

    goto :goto_54

    :cond_82
    move-object v13, v7

    .line 262
    :try_start_83
    sget-wide v0, Lcom/android/server/wm/AnrController;->PRE_DUMP_MONITOR_TIMEOUT_MS:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v13, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_8b
    .catch Ljava/lang/InterruptedException; {:try_start_83 .. :try_end_8b} :catch_8e

    if-eqz v0, :cond_8e

    return-void

    .line 266
    :catch_8e
    :cond_8e
    iput-wide v9, v8, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs:J

    const-string v0, "Pre-dump for unresponsive"

    .line 267
    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 270
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    aget-boolean v2, v12, v0

    const/4 v3, 0x0

    if-eqz v2, :cond_b4

    const-string v2, "/system/bin/surfaceflinger"

    .line 273
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_b5

    :cond_b4
    move-object v2, v3

    :goto_b5
    if-eqz v2, :cond_cc

    .line 276
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 277
    array-length v4, v2

    move v13, v0

    :goto_be
    if-ge v13, v4, :cond_cc

    aget v0, v2, v13

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_be

    :cond_cc
    move-object v4, v3

    .line 282
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logLinesForSystemServerTraceFile()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "Pre-dump"

    .line 283
    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_101

    .line 287
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_pre"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_101
    return-void
.end method

.method public final preDumpIfLockTooSlow_onlyForAnr(I)V
    .registers 8

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    .line 293
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 296
    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 297
    iget-wide v2, p0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs_onlyForAnr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_27

    iget-wide v2, p0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs_onlyForAnr:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/wm/AnrController;->PRE_DUMP_MIN_INTERVAL_MS:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_27

    return-void

    .line 300
    :cond_27
    iput-wide v0, p0, Lcom/android/server/wm/AnrController;->mLastPreDumpTimeMs_onlyForAnr:J

    const-string p0, "WindowManager"

    const-string v0, "Pre-dump(onlyForAnr) for unresponsive"

    .line 301
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 303
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 304
    invoke-static {p0, p1, p1, p1, p1}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_65

    .line 308
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_preOnlyForAnr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_65
    return-void
.end method
