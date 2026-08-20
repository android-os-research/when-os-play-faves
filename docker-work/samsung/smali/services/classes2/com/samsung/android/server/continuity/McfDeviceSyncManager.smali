.class public Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
.super Ljava/lang/Object;
.source "McfDeviceSyncManager.java"


# static fields
.field public static final MSG_AVAILABLE_MCF:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_BIND_MCF:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_REPLACED_PKG:I = 0x4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_START_USER:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_STOP_USER:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MSG_UNBIND_MCF:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_McfDsManager"


# instance fields
.field public mCurrentUserHandle:Landroid/os/UserHandle;

.field public final mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

.field public final mHandler:Landroid/os/Handler;

.field public mIsValidState:Z

.field public final mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreconditionObserver(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Lcom/samsung/android/server/continuity/PreconditionObserver;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsValidState(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMessageWhat(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->handleMessageWhat(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitMcfDeviceSyncMainController(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->initMcfDeviceSyncMainController(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveMessage(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageDelayed(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;IIJ)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munbindMcf(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/continuity/PreconditionObserver;Lcom/samsung/android/mcfds/lib/DeviceSyncManager;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    .line 51
    new-instance p1, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$1;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final bindMcf(I)V
    .registers 6

    .line 173
    iget-boolean v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    if-nez v0, :cond_c

    const-string p0, "bindMcf - invalid state"

    .line 174
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 178
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->getServiceState()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1a

    const/4 v2, 0x6

    if-eq p1, v2, :cond_3d

    .line 181
    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindMcf - invalid state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3c

    .line 183
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->initMcfDeviceSyncMainController(I)V

    :cond_3c
    return-void

    .line 188
    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_47

    const-string p0, "bindMcf - null current user handle"

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_47
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    new-instance v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    iget-object v3, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->connectServiceAsUser(Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindMcf - failed with reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const-wide/16 v1, 0xbb8

    .line 226
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    goto :goto_85

    .line 228
    :cond_71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindMcf - success with reason: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_85
    return-void
.end method

.method public getCurrentUserId()I
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    if-nez p0, :cond_7

    const/16 p0, -0x2710

    return p0

    .line 63
    :cond_7
    invoke-virtual {p0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p0

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 339
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getNearbyDeviceCount(I)I
    .registers 5

    const-string v0, "[MCF_DS_SYS]_McfDsManager"

    const-string v1, "getNearbyDeviceCount"

    .line 156
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_e

    move v1, v2

    goto :goto_10

    :cond_e
    if-ne p1, v1, :cond_1b

    .line 165
    :goto_10
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {p0, v1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->getNearbyDeviceCount(I)I

    move-result p0

    .line 166
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_1b
    return v0
.end method

.method public final handleMessageWhat(II)V
    .registers 4

    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 p2, 0x3

    if-eq p1, p2, :cond_13

    const/4 p2, 0x4

    if-eq p1, p2, :cond_f

    goto :goto_22

    .line 322
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->replacedPackage()V

    goto :goto_22

    .line 318
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    goto :goto_22

    .line 314
    :cond_17
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->bindMcf(I)V

    goto :goto_22

    .line 310
    :cond_1b
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    goto :goto_22

    .line 306
    :cond_1f
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->start()V

    :goto_22
    return-void
.end method

.method public final initMcfDeviceSyncMainController(I)V
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    .line 235
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->getAutoSwitchDeviceAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 237
    :goto_b
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->initMcfDeviceSyncMainController(ILjava/lang/String;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_19

    .line 239
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->setAutoSwitchOff()V

    :cond_19
    return-void
.end method

.method public removeAndSendMessageDelayed(IIJ)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 294
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->sendMessageDelayed(IIJ)V

    return-void
.end method

.method public removeAndSendMessageDelayed(IJ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 299
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 300
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final removeMessage(I)V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 280
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    return-void
.end method

.method public final replacedPackage()V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    if-eqz v0, :cond_14

    const-string/jumbo v0, "replacedPackage - remove unbind message"

    .line 261
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 265
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo p0, "replacedPackage - has bind message"

    .line 266
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    const-string/jumbo v0, "replacedPackage"

    .line 270
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const-wide/16 v2, 0x0

    .line 271
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    return-void
.end method

.method public final sendMessageDelayed(IIJ)V
    .registers 6

    .line 285
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 286
    iput p1, v0, Landroid/os/Message;->what:I

    .line 287
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 288
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final start()V
    .registers 5

    .line 84
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_11

    const-string p0, "[MCF_DS_SYS]_McfDsManager"

    const-string/jumbo v0, "start : userId is USER_NULL"

    .line 86
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 89
    :cond_11
    iget-object v1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    new-instance v2, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$2;-><init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)V

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->start(ILcom/samsung/android/server/continuity/AbstractPreconditionObserver$StateChangedListener;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->meetConditions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mIsValidState:Z

    if-eqz v0, :cond_2c

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .line 148
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IIJ)V

    :cond_2c
    return-void
.end method

.method public startUser(Landroid/os/UserHandle;)V
    .registers 5

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_11

    const-string/jumbo p0, "startUser - invalid request!"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUser : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeAndSendMessageDelayed(IJ)V

    return-void
.end method

.method public stopUser()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 79
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mPreconditionObserver:Lcom/samsung/android/server/continuity/PreconditionObserver;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->stop()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unbindMcf()V

    return-void
.end method

.method public final unbindMcf()V
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    const-string v2, "[MCF_DS_SYS]_McfDsManager"

    if-eqz v0, :cond_14

    const-string/jumbo v0, "unbindMcf - remove bind message"

    .line 245
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->removeMessage(I)V

    .line 249
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->getServiceState()I

    move-result v0

    if-nez v0, :cond_32

    .line 251
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unbindMcf - invalid state "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_32
    const-string/jumbo v0, "unbindMcf"

    .line 255
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->mDsManager:Lcom/samsung/android/mcfds/lib/DeviceSyncManager;

    invoke-virtual {p0}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;->disconnectService()V

    return-void
.end method
