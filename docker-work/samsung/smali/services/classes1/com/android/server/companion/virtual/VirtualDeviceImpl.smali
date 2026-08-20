.class public final Lcom/android/server/companion/virtual/VirtualDeviceImpl;
.super Landroid/companion/virtual/IVirtualDevice$Stub;
.source "VirtualDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;,
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;,
        Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;
    }
.end annotation


# static fields
.field public static final PENDING_TRAMPOLINE_TIMEOUT_MS:J = 0x1388L

.field public static final TAG:Ljava/lang/String; = "VirtualDeviceImpl"


# instance fields
.field public final mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field public final mAppToken:Landroid/os/IBinder;

.field public final mAssociationInfo:Landroid/companion/AssociationInfo;

.field public final mContext:Landroid/content/Context;

.field public mDefaultShowPointerIcon:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mVirtualDeviceLock"
        }
    .end annotation
.end field

.field public final mInputController:Lcom/android/server/companion/virtual/InputController;

.field public final mListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;

.field public final mOwnerUid:I

.field public final mParams:Landroid/companion/virtual/VirtualDeviceParams;

.field public final mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

.field public final mPerDisplayWakelocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/PowerManager$WakeLock;",
            ">;"
        }
    .end annotation
.end field

.field public mRunningAppsChangedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

.field public final mVirtualDeviceLock:Ljava/lang/Object;

.field public final mVirtualDisplayIds:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mWindowPolicyControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1TXMkh6NQMEvS4Y3R_QuVKDLOJ8(Lcom/android/server/companion/virtual/VirtualDeviceImpl;ILandroid/content/pm/ActivityInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EVqL3Qf8QfE6V-iKu7bpsmln0Yg(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_I-14D8lq2ySvBk_ZJhCnNsopkU(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Ljava/lang/Integer;Landroid/os/PowerManager$WakeLock;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->lambda$close$1(Ljava/lang/Integer;Landroid/os/PowerManager$WakeLock;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmActivityListener(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Landroid/os/IBinder;",
            "I",
            "Lcom/android/server/companion/virtual/InputController;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ")V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDevice$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    .line 99
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    .line 104
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    const/4 v1, 0x1

    .line 109
    iput-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 139
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    .line 159
    invoke-static {p4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 162
    iput-object p7, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    .line 163
    iput-object p8, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mActivityListener:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 164
    iput-object p9, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    .line 165
    iput p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    .line 166
    iput-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    .line 167
    iput-object p10, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    if-nez p5, :cond_51

    .line 169
    new-instance p2, Lcom/android/server/companion/virtual/InputController;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p4

    const-class p5, Landroid/view/WindowManager;

    .line 172
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-direct {p2, v0, p4, p1}, Lcom/android/server/companion/virtual/InputController;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/view/WindowManager;)V

    iput-object p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    goto :goto_53

    .line 174
    :cond_51
    iput-object p5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    .line 176
    :goto_53
    iput-object p6, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;

    .line 178
    :try_start_55
    invoke-interface {p3, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_58} :catch_59

    return-void

    :catch_59
    move-exception p0

    .line 180
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/companion/AssociationInfo;",
            "Landroid/os/IBinder;",
            "I",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;",
            "Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;",
            "Landroid/companion/virtual/IVirtualDeviceActivityListener;",
            "Ljava/util/function/Consumer<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Landroid/companion/virtual/VirtualDeviceParams;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 148
    invoke-direct/range {v0 .. v10}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/InputController;Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V

    return-void
.end method

.method private synthetic lambda$close$1(Ljava/lang/Integer;Landroid/os/PowerManager$WakeLock;)V
    .registers 5

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDisplay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " owned by UID "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " was not properly released"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VirtualDeviceImpl"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private synthetic lambda$launchPendingIntent$0(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 5

    .line 227
    iget-object v0, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 229
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 290
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->close()V

    return-void
.end method

.method public close()V
    .registers 4

    .line 259
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to close the virtual device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 265
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    new-instance v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 272
    :cond_23
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_2d

    .line 273
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    const/4 v1, 0x0

    .line 274
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 276
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_c .. :try_end_2e} :catchall_51

    .line 277
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mListener:Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;->onClose(I)V

    .line 278
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAppToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    :try_start_43
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0}, Lcom/android/server/companion/virtual/InputController;->close()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4c

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw p0

    :catchall_51
    move-exception p0

    .line 276
    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final createListenerAdapter()Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;
    .registers 2

    .line 113
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    return-object v0
.end method

.method public createVirtualKeyboard(ILjava/lang/String;IILandroid/os/IBinder;)V
    .registers 14

    .line 353
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to create a virtual keyboard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 362
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_38

    .line 363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 365
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2b

    .line 368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    throw p0

    .line 358
    :cond_30
    :try_start_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot create a virtual keyboard for a display not associated with this virtual device"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_38
    move-exception p0

    .line 362
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public createVirtualMouse(ILjava/lang/String;IILandroid/os/IBinder;)V
    .registers 14

    .line 379
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to create a virtual mouse"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 388
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_38

    .line 389
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 391
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->createMouse(Ljava/lang/String;IILandroid/os/IBinder;I)V
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2b

    .line 393
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    throw p0

    .line 384
    :cond_30
    :try_start_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot create a virtual mouse for a display not associated with this virtual device"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_38
    move-exception p0

    .line 388
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public createVirtualTouchscreen(ILjava/lang/String;IILandroid/os/IBinder;Landroid/graphics/Point;)V
    .registers 16

    .line 405
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to create a virtual touchscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 414
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_39

    .line 415
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 417
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p1

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/companion/virtual/InputController;->createTouchscreen(Ljava/lang/String;IILandroid/os/IBinder;ILandroid/graphics/Point;)V
    :try_end_28
    .catchall {:try_start_1d .. :try_end_28} :catchall_2c

    .line 420
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 421
    throw p0

    .line 410
    :cond_31
    :try_start_31
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot create a virtual touchscreen for a display not associated with this virtual device"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_39
    move-exception p0

    .line 414
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public createWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;
    .registers 15

    .line 533
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 534
    :try_start_3
    new-instance v13, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    const/16 v2, 0x2000

    const/high16 v3, 0x80000

    .line 537
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getAllowedUserHandles()Landroid/util/ArraySet;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 538
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v5

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 539
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedCrossTaskNavigations()Ljava/util/Set;

    move-result-object v6

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 540
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getAllowedActivities()Ljava/util/Set;

    move-result-object v7

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 541
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getBlockedActivities()Ljava/util/Set;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    .line 542
    invoke-virtual {v1}, Landroid/companion/virtual/VirtualDeviceParams;->getDefaultActivityPolicy()I

    move-result v9

    .line 543
    invoke-virtual {p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createListenerAdapter()Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    move-result-object v10

    new-instance v11, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;)V

    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 545
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceProfile()Ljava/lang/String;

    move-result-object v12

    move-object v1, v13

    invoke-direct/range {v1 .. v12}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;-><init>(IILandroid/util/ArraySet;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILandroid/companion/virtual/VirtualDeviceManager$ActivityListener;Lcom/android/server/companion/virtual/GenericWindowPolicyController$ActivityBlockedCallback;Ljava/lang/String;)V

    .line 546
    invoke-virtual {v13, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->registerRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 547
    monitor-exit v0

    return-object v13

    :catchall_43
    move-exception p0

    .line 548
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    const-string p1, "  VirtualDevice: "

    .line 519
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 520
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mAssociationId: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {p3}, Landroid/companion/AssociationInfo;->getId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "    mParams: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "    mVirtualDisplayIds: "

    .line 522
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 524
    :try_start_3d
    iget-object p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_43
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_43

    .line 527
    :cond_68
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "    mDefaultShowPointerIcon: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    monitor-exit p1
    :try_end_7f
    .catchall {:try_start_3d .. :try_end_7f} :catchall_85

    .line 529
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p2}, Lcom/android/server/companion/virtual/InputController;->dump(Ljava/io/PrintWriter;)V

    return-void

    :catchall_85
    move-exception p0

    .line 528
    :try_start_86
    monitor-exit p1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public final getAllowedUserHandles()Landroid/util/ArraySet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 595
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 596
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 597
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 598
    invoke-virtual {v2}, Landroid/os/UserManager;->getAllProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 599
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getNearbyAppStreamingPolicy(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4e

    if-nez v4, :cond_3b

    goto :goto_4e

    :cond_3b
    const/4 v5, 0x3

    if-ne v4, v5, :cond_21

    .line 604
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {v4}, Landroid/companion/virtual/VirtualDeviceParams;->getUsersWithMatchingAccounts()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 605
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 602
    :cond_4e
    :goto_4e
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_52
    return-object v0
.end method

.method public getAssociationId()I
    .registers 1

    .line 203
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getId()I

    move-result p0

    return p0
.end method

.method public getBaseVirtualDisplayFlags()I
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mParams:Landroid/companion/virtual/VirtualDeviceParams;

    invoke-virtual {p0}, Landroid/companion/virtual/VirtualDeviceParams;->getLockState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    const/16 p0, 0x1000

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .registers 4

    .line 490
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 492
    :try_start_4
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 494
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    throw p0
.end method

.method public getDisplayName()Ljava/lang/CharSequence;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerUid()I
    .registers 1

    .line 633
    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mOwnerUid:I

    return p0
.end method

.method public getVirtualAudioControllerForTesting()Lcom/android/server/companion/virtual/audio/VirtualAudioController;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 300
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    return-object p0
.end method

.method public getWindowPolicyControllersForTesting()Landroid/util/SparseArray;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/companion/virtual/GenericWindowPolicyController;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public isAppRunningOnVirtualDevice(I)Z
    .registers 6

    .line 641
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 643
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public isDisplayOwnedByVirtualDevice(I)Z
    .registers 2

    .line 678
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    .registers 13

    .line 209
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 213
    invoke-virtual {p2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Pending intent canceled"

    const-string v3, "VirtualDeviceImpl"

    const/4 v4, 0x0

    if-eqz v0, :cond_28

    .line 215
    :try_start_18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V

    const/4 p0, 0x0

    .line 216
    invoke-virtual {p3, p0, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1f
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_52

    :catch_20
    move-exception p0

    .line 218
    invoke-static {v3, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    invoke-virtual {p3, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_52

    .line 223
    :cond_28
    new-instance v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    invoke-direct {v0, p2, p3, p1, v4}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;-><init>(Landroid/app/PendingIntent;Landroid/os/ResultReceiver;ILcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline-IA;)V

    .line 225
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {v5, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->startWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    .line 226
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceImpl;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    const-wide/16 v7, 0x1388

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :try_start_42
    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->sendPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_45
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_52

    :catch_46
    move-exception p1

    .line 234
    invoke-static {v3, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    invoke-virtual {p3, v1, v4}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 237
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPendingTrampolineCallback:Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;

    invoke-interface {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;->stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V

    :goto_52
    return-void

    .line 210
    :cond_53
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Display ID "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not found for this virtual device"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onActivityBlocked(ILandroid/content/pm/ActivityInfo;)V
    .registers 5

    .line 586
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mAssociationInfo:Landroid/companion/AssociationInfo;

    .line 587
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 586
    invoke-static {p2, v0}, Lcom/android/internal/app/BlockedAppStreamingActivity;->createIntent(Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    .line 588
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const v1, 0x10008000

    .line 589
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 590
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 591
    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    .line 588
    invoke-virtual {v0, p2, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onAudioSessionEnded()V
    .registers 4
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.CREATE_VIRTUAL_DEVICE"
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to stop audio session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-eqz v1, :cond_16

    .line 340
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->stopListening()V

    const/4 v1, 0x0

    .line 341
    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 343
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onAudioSessionStarting(ILandroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V
    .registers 7
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.CREATE_VIRTUAL_DEVICE"
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to start audio session"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_c
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 323
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    if-nez v1, :cond_32

    .line 324
    new-instance v1, Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    .line 325
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    .line 326
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualAudioController:Lcom/android/server/companion/virtual/audio/VirtualAudioController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/audio/VirtualAudioController;->startListening(Lcom/android/server/companion/virtual/GenericWindowPolicyController;Landroid/companion/virtual/audio/IAudioRoutingCallback;Landroid/companion/virtual/audio/IAudioConfigChangedCallback;)V

    .line 329
    :cond_32
    monitor-exit v0

    return-void

    .line 318
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot start audio session for a display not associated with this virtual device"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3c
    move-exception p0

    .line 329
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_c .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public onRunningAppsChanged(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mRunningAppsChangedCallback:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onVirtualDisplayCreatedLocked(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    .registers 7

    .line 552
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_8

    .line 554
    :try_start_6
    monitor-exit v0

    return-void

    .line 556
    :cond_8
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_91

    .line 560
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 562
    invoke-virtual {p1, p2}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->setDisplayId(I)V

    .line 563
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 565
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {p1, v1, p2}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    .line 566
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1, p2}, Lcom/android/server/companion/virtual/InputController;->setPointerAcceleration(FI)V

    .line 567
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/android/server/companion/virtual/InputController;->setDisplayEligibilityForPointerCapture(ZI)V

    .line 569
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p1, p2}, Lcom/android/server/companion/virtual/InputController;->setLocalIme(I)V

    .line 572
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    const-string p0, "VirtualDeviceImpl"

    .line 573
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not creating wakelock for displayId "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    monitor-exit v0

    return-void

    .line 576
    :cond_62
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 v1, 0xa

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VirtualDeviceImpl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;I)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    .line 580
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 582
    monitor-exit v0

    return-void

    .line 557
    :cond_91
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Virtual device already has a virtual display with ID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_a8
    move-exception p0

    .line 582
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_6 .. :try_end_aa} :catchall_a8

    throw p0
.end method

.method public onVirtualDisplayRemovedLocked(I)V
    .registers 5

    .line 613
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 614
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 618
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_29

    .line 620
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 621
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mPerDisplayWakelocks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :cond_29
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    if-eqz v1, :cond_36

    .line 625
    invoke-virtual {v1, p0}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->unregisterRunningAppsChangedListener(Lcom/android/server/companion/virtual/GenericWindowPolicyController$RunningAppsChangedListener;)V

    .line 627
    :cond_36
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 628
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 629
    monitor-exit v0

    return-void

    .line 615
    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual device doesn\'t have a virtual display with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5d
    move-exception p0

    .line 629
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_3 .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .registers 5

    .line 450
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 452
    :try_start_4
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 454
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 455
    throw p0
.end method

.method public sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .registers 5

    .line 440
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 442
    :try_start_4
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 444
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 445
    throw p0
.end method

.method public final sendPendingIntent(ILandroid/app/PendingIntent;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x1

    .line 245
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 246
    invoke-virtual {p1, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    .line 247
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    .line 247
    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .registers 5

    .line 470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 472
    :try_start_4
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 474
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    throw p0
.end method

.method public sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .registers 5

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 482
    :try_start_4
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 484
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 485
    throw p0
.end method

.method public sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .registers 5

    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 462
    :try_start_4
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/companion/virtual/InputController;->sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_e

    .line 464
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw p0
.end method

.method public setShowPointerIcon(Z)V
    .registers 8

    .line 500
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to unregister this input device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 506
    :try_start_d
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_38

    .line 507
    :try_start_10
    iput-boolean p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    .line 508
    iget-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDisplayIds:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_18
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 509
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    iget-boolean v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mDefaultShowPointerIcon:Z

    invoke-virtual {v4, v5, v3}, Lcom/android/server/companion/virtual/InputController;->setShowPointerIcon(ZI)V

    goto :goto_18

    .line 511
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_35

    .line 513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_35
    move-exception p0

    .line 511
    :try_start_36
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p0

    .line 513
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 514
    throw p0
.end method

.method public showToastWhereUidIsRunning(III)V
    .registers 5

    .line 654
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->showToastWhereUidIsRunning(ILjava/lang/String;I)V

    return-void
.end method

.method public showToastWhereUidIsRunning(ILjava/lang/String;I)V
    .registers 10

    .line 661
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mVirtualDeviceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 662
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 663
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_46

    .line 665
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    invoke-virtual {v4, p1}, Lcom/android/server/companion/virtual/GenericWindowPolicyController;->containsUid(I)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 666
    iget-object v4, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mWindowPolicyControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 667
    invoke-virtual {v1, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 668
    invoke-virtual {v4}, Landroid/view/Display;->isValid()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 669
    iget-object v5, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 670
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 674
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public unregisterInputDevice(Landroid/os/IBinder;)V
    .registers 5

    .line 426
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v2, "Permission required to unregister this input device"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 432
    :try_start_d
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->mInputController:Lcom/android/server/companion/virtual/InputController;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/InputController;->unregisterInputDevice(Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_16

    .line 434
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 435
    throw p0
.end method
