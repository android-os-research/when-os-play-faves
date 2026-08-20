.class public Lcom/android/server/wm/CoreStateController;
.super Ljava/lang/Object;
.source "CoreStateController.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "CoreStateController"

.field public static final sCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/server/corestate/CoreStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final sObserverControllers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/corestate/CoreStateObserverController;",
            ">;"
        }
    .end annotation
.end field

.field public static final sObserverControllersMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Lcom/samsung/android/server/corestate/CoreStateObserverController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mInitialized:Z

.field public final mReturnStatesForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final mStatesForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    .line 64
    sget-object v0, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    const-string v1, "CoreStateController()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-object p1, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;
    .registers 15

    .line 73
    new-instance v8, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    move-object v0, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/server/corestate/CoreStateObserverController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/CoreStateController;Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;Ljava/lang/Class;)V

    return-object v8
.end method

.method public getCoreStates(I)Landroid/os/Bundle;
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 133
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_13

    .line 134
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    goto :goto_19

    :cond_13
    invoke-virtual {p0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    :goto_19
    monitor-exit v0

    return-object p0

    :catchall_1b
    move-exception p0

    .line 135
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public initializeLocked()V
    .registers 4

    .line 90
    sget-object v0, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    const-string v1, "initializeLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1a

    .line 92
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    :cond_1a
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 95
    invoke-virtual {v2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->init()V

    goto :goto_20

    :cond_30
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/android/server/wm/CoreStateController;->mInitialized:Z

    return-void
.end method

.method public final notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V
    .registers 14

    .line 162
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v3, 0x1

    if-ne v2, p1, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    const/4 v4, 0x0

    if-eqz v2, :cond_4f

    .line 166
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    if-eqz v1, :cond_4f

    .line 167
    invoke-virtual {v1, v0}, Landroid/app/ActivityThread;->onCoreStatesChange(Landroid/os/Bundle;)Ljava/util/HashMap;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    :goto_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 169
    sget-object v7, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/server/corestate/CoreStateCallback;

    if-eqz v7, :cond_27

    .line 171
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v7, v6}, Lcom/samsung/android/server/corestate/CoreStateCallback;->onCoreStateChanged(I)V

    goto :goto_27

    :cond_4f
    move-object v1, v4

    .line 176
    :cond_50
    iget-object v5, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v5

    .line 177
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v3

    :goto_5d
    if-ltz v6, :cond_c9

    .line 178
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 179
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowProcessController;

    .line 181
    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v8

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v8, v9, :cond_75

    iget v8, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    if-eq v8, p1, :cond_8d

    :cond_75
    if-eqz v2, :cond_c6

    .line 182
    iget v8, v7, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    if-nez v8, :cond_c6

    iget-object v8, v7, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    const-string v9, "com.android.systemui"

    .line 184
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c6

    .line 187
    sget-object v8, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "update systemUI\'s states with current user\'s."

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_8d
    :try_start_8d
    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_c6

    .line 197
    sget-object v8, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCoreStatesChangedLocked: schedule CoreStateChangeItem, pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-static {v7, v4}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v3

    .line 201
    invoke-static {v0}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 202
    iget-object v3, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v3

    .line 203
    invoke-static {v0}, Landroid/app/servertransaction/CoreStatesChangeItem;->obtain(Landroid/os/Bundle;)Landroid/app/servertransaction/CoreStatesChangeItem;

    move-result-object v8

    .line 202
    invoke-virtual {v3, v7, v4, v8}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_c1} :catch_c2

    goto :goto_c6

    :catch_c2
    move-exception v3

    .line 206
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_c6
    :goto_c6
    add-int/lit8 v6, v6, -0x1

    goto :goto_5d

    :cond_c9
    if-eqz v1, :cond_fb

    .line 211
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d3
    :goto_d3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_fb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 212
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/corestate/CoreStateCallback;

    if-eqz v0, :cond_d3

    .line 214
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/samsung/android/server/corestate/CoreStateCallback;->onPostCoreStateChanged(I)V

    goto :goto_d3

    :cond_fb
    if-eqz p2, :cond_100

    .line 220
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_100
    return-void
.end method

.method public onCoreStateChanged(Ljava/lang/Class;IZLjava/lang/Runnable;)V
    .registers 9

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 140
    sget-object v1, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getCoreStateLocked(I)Landroid/os/Bundle;

    move-result-object v1

    .line 141
    iget-object v2, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-nez v2, :cond_3f

    .line 143
    sget-object p0, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "u"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " doesn\'t have states onCoreStateChanged()."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_5 .. :try_end_3b} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 146
    :cond_3f
    :try_start_3f
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    sget-object p1, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCoreStateChanged() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", [u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    monitor-enter p1
    :try_end_74
    .catchall {:try_start_3f .. :try_end_74} :catchall_8b

    .line 153
    :try_start_74
    iget-object v1, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    monitor-exit p1
    :try_end_7e
    .catchall {:try_start_74 .. :try_end_7e} :catchall_88

    if-eqz p3, :cond_83

    .line 156
    :try_start_80
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V

    .line 158
    :cond_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_88
    move-exception p0

    .line 154
    :try_start_89
    monitor-exit p1
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw p0

    :catchall_8b
    move-exception p0

    .line 158
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public registerObserverControllerLocked(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V
    .registers 4

    .line 79
    iget-boolean p0, p0, Lcom/android/server/wm/CoreStateController;->mInitialized:Z

    if-nez p0, :cond_1e

    .line 82
    sget-object p0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object p0, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1d

    .line 85
    sget-object p0, Lcom/android/server/wm/CoreStateController;->sCallbacks:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->getTargetClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    return-void

    .line 80
    :cond_1e
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Try to registerObserverControllerLocked after initialized!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSharedPreferenceEdited(Ljava/lang/Class;I)V
    .registers 4

    .line 225
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 226
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    if-eqz p1, :cond_15

    .line 228
    invoke-virtual {p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(I)V

    .line 230
    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V
    .registers 15

    .line 235
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 236
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllersMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    if-eqz v0, :cond_1c

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    .line 238
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->setVolatileState(Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    .line 241
    :cond_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startUserLocked(IZZ)V
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    :cond_12
    sget-object v0, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUserLocked(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    sget-object v0, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 109
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->startUserLocked(IZZ)V

    goto :goto_3f

    :cond_4f
    const/4 p2, 0x0

    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/CoreStateController;->notifyCoreStatesChangedLocked(ILjava/lang/Runnable;)V

    return-void
.end method

.method public stopUserLocked(IZ)V
    .registers 6

    .line 115
    sget-object v0, Lcom/android/server/wm/CoreStateController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUserLocked(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 117
    sget-object v1, Lcom/android/server/wm/CoreStateController;->sObserverControllers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 118
    invoke-virtual {v2, v0, p1, p2}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->stopUserLocked(Ljava/util/ArrayList;IZ)V

    goto :goto_2a

    .line 120
    :cond_3a
    iget-object p2, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5c

    .line 121
    iget-object p2, p0, Lcom/android/server/wm/CoreStateController;->mStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 122
    iget-object p2, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    monitor-enter p2

    .line 123
    :try_start_4a
    iget-object v0, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 124
    iget-object p0, p0, Lcom/android/server/wm/CoreStateController;->mReturnStatesForUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 126
    :cond_57
    monitor-exit p2

    goto :goto_5c

    :catchall_59
    move-exception p0

    monitor-exit p2
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_59

    throw p0

    :cond_5c
    :goto_5c
    return-void
.end method
