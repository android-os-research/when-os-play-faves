.class public abstract Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.super Ljava/lang/Object;
.source "AbsCocktailBarStatePolicy.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
    }
.end annotation


# static fields
.field public static final IDLE_THREAD_LIFE_TIME_IN_MILLIS:I = 0x1388

.field public static final TAG:Ljava/lang/String; = "AbsCocktailBarStatePolicy"


# instance fields
.field public mCocktailBarStateHandler:Landroid/os/Handler;

.field public mCocktailBarStateThread:Landroid/os/HandlerThread;

.field public mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

.field public final mLock:Ljava/lang/Object;

.field public final mLockMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field public final mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

.field public mWindowType:I


# direct methods
.method public static bridge synthetic -$$Nest$mquitHandlerThread(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->quitHandlerThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    const/4 p1, 0x1

    .line 32
    iput p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    .line 34
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    .line 36
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    .line 41
    iput-object p2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mListener:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;

    return-void
.end method


# virtual methods
.method public final createHandlerThreadLocked()V
    .registers 4

    .line 49
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2d

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CocktailBarVisibility"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 53
    :try_start_13
    new-instance v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    .line 54
    new-instance v2, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$1;-><init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    monitor-exit v0

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    return-void
.end method

.method public dump()Ljava/lang/String;
    .registers 3

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[LockState : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Visibility : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CocktailBarWindowType : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v0, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WindowType : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final enqueueMessageLocked(Landroid/os/Message;JZ)V
    .registers 5

    .line 87
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->createHandlerThreadLocked()V

    if-eqz p4, :cond_a

    .line 89
    iget p4, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p4}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->removeQueuedMessageLocked(I)V

    .line 91
    :cond_a
    iget-object p4, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz p4, :cond_14

    .line 92
    invoke-virtual {p4, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    invoke-virtual {p0, p2, p3}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->updateThreadExpireTimeLocked(J)V

    :cond_14
    return-void
.end method

.method public final findModeLock(I)Landroid/util/SparseBooleanArray;
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_14

    .line 209
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 210
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLockMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .registers 1

    .line 144
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    return-object p0
.end method

.method public getLockState()I
    .registers 1

    .line 170
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget p0, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    return p0
.end method

.method public getWindowType()I
    .registers 1

    .line 139
    iget p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mWindowType:I

    return p0
.end method

.method public abstract handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V
.end method

.method public abstract handleUpdateActivate(Z)V
.end method

.method public abstract handleUpdateCocktailBarWindowType(ILjava/lang/String;)V
.end method

.method public abstract handleUpdatePosition(I)V
.end method

.method public abstract handleUpdateVisibility(I)V
.end method

.method public final hasQueuedMessageLocked(I)Z
    .registers 2

    .line 111
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz p0, :cond_9

    .line 112
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public initialize()V
    .registers 1

    return-void
.end method

.method public notifyStateToBinder(Landroid/os/IBinder;)V
    .registers 6

    .line 129
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x33

    .line 131
    iput v2, v1, Landroid/os/Message;->what:I

    .line 132
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    const/4 p1, 0x0

    .line 133
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V

    .line 134
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final quitHandlerThread()V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_f

    .line 69
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateThread:Landroid/os/HandlerThread;

    .line 71
    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    .line 73
    :cond_f
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final removeQueuedMessageLocked(I)V
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    if-eqz p0, :cond_7

    .line 106
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    return-void
.end method

.method public setLockState(IZ)V
    .registers 3

    .line 149
    invoke-virtual {p0, p1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->setLockState(IZI)V

    return-void
.end method

.method public setLockState(IZI)V
    .registers 6

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->findModeLock(I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    if-eqz p2, :cond_12

    .line 156
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    const/4 p0, 0x1

    .line 157
    invoke-virtual {v0, p3, p0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2a

    .line 159
    :cond_12
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result p2

    const/4 v1, -0x1

    if-le p2, v1, :cond_1c

    .line 160
    invoke-virtual {v0, p3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 162
    :cond_1c
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p2

    if-nez p2, :cond_2a

    .line 163
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->lockState:I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public updateActivate(Z)V
    .registers 7

    .line 175
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x31

    .line 177
    iput v2, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eqz p1, :cond_10

    move p1, v2

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    .line 178
    :goto_11
    iput p1, v1, Landroid/os/Message;->arg1:I

    const-wide/16 v3, 0x0

    .line 179
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V

    .line 180
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public updateCocktailBarWindowType(ILjava/lang/String;)V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x6

    .line 187
    iput v2, v1, Landroid/os/Message;->what:I

    .line 188
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 189
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p1, 0x0

    const/4 v2, 0x1

    .line 190
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V

    .line 191
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public updatePosition(I)V
    .registers 6

    .line 119
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    .line 121
    iput v2, v1, Landroid/os/Message;->what:I

    .line 122
    iput p1, v1, Landroid/os/Message;->arg1:I

    const-wide/16 v2, 0x0

    const/4 p1, 0x1

    .line 123
    invoke-virtual {p0, v1, v2, v3, p1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V

    .line 124
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public final updateThreadExpireTimeLocked(J)V
    .registers 5

    .line 99
    iget-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object p0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mCocktailBarStateHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public updateVisibility(I)V
    .registers 7

    .line 78
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 80
    iput v2, v1, Landroid/os/Message;->what:I

    .line 81
    iput p1, v1, Landroid/os/Message;->arg1:I

    const-wide/16 v3, 0x0

    .line 82
    invoke-virtual {p0, v1, v3, v4, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->enqueueMessageLocked(Landroid/os/Message;JZ)V

    .line 83
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
