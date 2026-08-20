.class public final Lcom/android/server/devicestate/DeviceStateManagerService;
.super Lcom/android/server/SystemService;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;,
        Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;,
        Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;,
        Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DeviceStateManagerService"


# instance fields
.field public mActiveOverride:Ljava/util/Optional;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/OverrideRequest;",
            ">;"
        }
    .end annotation
.end field

.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mBaseState:Ljava/util/Optional;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field public final mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

.field public mCommittedState:Ljava/util/Optional;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field public final mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

.field public mDeviceStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceStatesAvailableForAppRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayEnabled:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsPolicyWaitingForState:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

.field public mPendingState:Ljava/util/Optional;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field public final mProcessRecords:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$UaA7yMWStQbVPF5T0N18j3gX22Q(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/OverrideRequest;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->onOverrideRequestStatusChangedLocked(Lcom/android/server/devicestate/OverrideRequest;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jiU5VXokYcJUH2EJ6jFQstyxfLE(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->commitPendingState()V

    return-void
.end method

.method public static synthetic $r8$lambda$s8kEW-K3GJMb1y3UvMw1-_u88Uk(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wIWgFzEDmf-WTNtQtPpan3TstOU(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayEnabled(Lcom/android/server/devicestate/DeviceStateManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDisplayEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertCanControlDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->assertCanControlDeviceState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertCanRequestDeviceState(Lcom/android/server/devicestate/DeviceStateManagerService;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->assertCanRequestDeviceState(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->cancelStateRequestInternal(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/devicestate/DeviceStateManagerService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetDeviceStateInfoLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSupportedStateIdentifiersLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)[I
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyPolicyIfNeeded(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyPolicyIfNeeded()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrequestStateInternal(Lcom/android/server/devicestate/DeviceStateManagerService;IIILandroid/os/IBinder;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/devicestate/DeviceStateManagerService;->requestStateInternal(IIILandroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetBaseState(Lcom/android/server/devicestate/DeviceStateManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->setBaseState(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdatePendingStateLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateSupportedStates(Lcom/android/server/devicestate/DeviceStateManagerService;[Lcom/android/server/devicestate/DeviceState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->updateSupportedStates([Lcom/android/server/devicestate/DeviceState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;->fromResources(Landroid/content/res/Resources;)Lcom/android/server/devicestate/DeviceStatePolicy$Provider;

    move-result-object v0

    .line 162
    invoke-interface {v0, p1}, Lcom/android/server/devicestate/DeviceStatePolicy$Provider;->instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object v0

    .line 160
    invoke-direct {p0, p1, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;-><init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicestate/DeviceStatePolicy;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 167
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 104
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    .line 120
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    .line 127
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 131
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    const/4 p1, 0x0

    .line 133
    iput-boolean p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 140
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 146
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 150
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    .line 988
    iput-boolean p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDisplayEnabled:Z

    .line 170
    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object p1

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    .line 172
    new-instance p1, Lcom/android/server/devicestate/OverrideRequestController;

    new-instance v0, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-direct {p1, v0}, Lcom/android/server/devicestate/OverrideRequestController;-><init>(Lcom/android/server/devicestate/OverrideRequestController$StatusChangeListener;)V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    .line 174
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    .line 175
    invoke-virtual {p2}, Lcom/android/server/devicestate/DeviceStatePolicy;->getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;

    move-result-object p1

    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$DeviceStateProviderListener-IA;)V

    invoke-interface {p1, p2}, Lcom/android/server/devicestate/DeviceStateProvider;->setListener(Lcom/android/server/devicestate/DeviceStateProvider$Listener;)V

    .line 176
    new-instance p1, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-direct {p1, p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$BinderService-IA;)V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    .line 177
    const-class p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 180
    const-class p1, Landroid/app/ActivityManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManagerInternal;

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-void
.end method


# virtual methods
.method public final assertCanControlDeviceState(I)V
    .registers 3

    .line 749
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 750
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    if-eq v0, p1, :cond_19

    .line 751
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.CONTROL_DEVICE_STATE"

    const-string v0, "Permission required to request device state, or the call must come from the top app."

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public final assertCanRequestDeviceState(II)V
    .registers 4

    .line 732
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopApp()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 733
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v0

    if-ne v0, p1, :cond_14

    .line 734
    invoke-virtual {p0, p2}, Lcom/android/server/devicestate/DeviceStateManagerService;->isStateAvailableForAppRequests(I)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 735
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.CONTROL_DEVICE_STATE"

    const-string p2, "Permission required to request device state, or the call must come from the top app and be a device state that is available for apps to request."

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public final cancelStateRequestInternal(I)V
    .registers 5

    .line 671
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v1, :cond_1e

    .line 684
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicestate/OverrideRequestController;)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 685
    monitor-exit v0

    return-void

    .line 674
    :cond_1e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has no registered callback."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_3a
    move-exception p0

    .line 685
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final commitPendingState()V
    .registers 6

    .line 480
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    const-string v2, "DeviceStateManagerService"

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Committing state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x15e

    .line 490
    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-nez v4, :cond_31

    const/4 v4, 0x1

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    .line 489
    :goto_32
    invoke-static {v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZ)V

    .line 492
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 493
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    .line 494
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 497
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 503
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/OverrideRequest;

    if-eqz v2, :cond_71

    .line 505
    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    if-ne v3, v1, :cond_71

    .line 506
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v1, :cond_71

    .line 508
    invoke-virtual {v2}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    .line 513
    :cond_71
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    monitor-exit v0

    return-void

    :catchall_7d
    move-exception p0

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_3 .. :try_end_7f} :catchall_7d

    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 8

    const-string v0, "DEVICE STATE MANAGER (dumpsys device_state)"

    .line 689
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 692
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCommittedState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mBaseState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 695
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mOverrideState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getOverrideState()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 703
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 704
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered processes: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_80
    if-ge v2, v1, :cond_ad

    .line 707
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    .line 708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": mPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_80

    .line 711
    :cond_ad
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->dumpInternal(Ljava/io/PrintWriter;)V

    .line 718
    monitor-exit v0

    return-void

    :catchall_b4
    move-exception p0

    monitor-exit v0
    :try_end_b6
    .catchall {:try_start_8 .. :try_end_b6} :catchall_b4

    throw p0
.end method

.method public getBaseState()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 241
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getBinderService()Landroid/hardware/devicestate/IDeviceStateManager;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    return-object p0
.end method

.method public getCommittedState()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 212
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;
    .registers 4

    .line 281
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 286
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    .line 288
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result p0

    .line 290
    new-instance v2, Landroid/hardware/devicestate/DeviceStateInfo;

    invoke-direct {v2, v0, v1, p0}, Landroid/hardware/devicestate/DeviceStateInfo;-><init>([III)V

    return-object v2

    .line 282
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to get the current DeviceStateInfo before the initial state has been committed."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 196
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getOverrideState()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 252
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 253
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 255
    :cond_1d
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_23
    move-exception p0

    .line 256
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public getPendingState()Ljava/util/Optional;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 224
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getStateLocked(I)Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Lcom/android/server/devicestate/DeviceState;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicestate/DeviceState;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getSupportedStateIdentifiersLocked()[I
    .registers 5

    .line 272
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_1c

    .line 274
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v3}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_1c
    return-object v1
.end method

.method public getSupportedStates()[Lcom/android/server/devicestate/DeviceState;
    .registers 6

    .line 261
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v2, v1, [Lcom/android/server/devicestate/DeviceState;

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v1, :cond_1b

    .line 264
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicestate/DeviceState;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 266
    :cond_1b
    monitor-exit v0

    return-object v2

    :catchall_1d
    move-exception p0

    .line 267
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public final handleProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V
    .registers 5

    .line 618
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 620
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-static {p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->-$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/OverrideRequestController;->handleProcessDied(I)V

    .line 627
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final isStateAvailableForAppRequests(I)Z
    .registers 3

    .line 758
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 759
    :try_start_3
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 760
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final isSupportedStateLocked(I)Z
    .registers 2

    .line 341
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final isValidState(I)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 787
    :goto_2
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 788
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v2}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v2

    if-ne p1, v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public final notifyDeviceStateInfoChangedAsync()V
    .registers 6

    .line 518
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 520
    monitor-exit v0

    return-void

    .line 534
    :cond_d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 535
    :goto_14
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 536
    iget-object v4, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 539
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    .line 541
    :goto_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 542
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    invoke-virtual {v3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 544
    :cond_40
    monitor-exit v0

    return-void

    :catchall_42
    move-exception p0

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public final notifyPolicyIfNeeded()V
    .registers 4

    .line 443
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 444
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Attempting to notify DeviceStatePolicy with service lock held"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v1, "DeviceStateManagerService"

    .line 447
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 450
    :cond_17
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_1a
    iget-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    if-nez v1, :cond_20

    .line 452
    monitor-exit v0

    return-void

    :cond_20
    const/4 v1, 0x0

    .line 454
    iput-boolean v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    .line 455
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v1

    .line 456
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1a .. :try_end_30} :catchall_3b

    .line 461
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatePolicy:Lcom/android/server/devicestate/DeviceStatePolicy;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/devicestate/DeviceStatePolicy;->configureDeviceForState(ILjava/lang/Runnable;)V

    return-void

    :catchall_3b
    move-exception p0

    .line 456
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final onOverrideRequestStatusChangedLocked(Lcom/android/server/devicestate/OverrideRequest;I)V
    .registers 7

    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 550
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    goto :goto_23

    :cond_a
    const/4 v1, 0x2

    if-ne p2, v1, :cond_66

    .line 552
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_23

    .line 553
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    .line 559
    :cond_23
    :goto_23
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    move-result v1

    .line 561
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-nez v2, :cond_40

    .line 565
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_40
    if-ne p2, v0, :cond_54

    if-nez v1, :cond_5b

    .line 570
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p2

    if-nez p2, :cond_5b

    .line 574
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestActiveAsync(Landroid/os/IBinder;)V

    goto :goto_5b

    .line 577
    :cond_54
    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequest;->getToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyRequestCanceledAsync(Landroid/os/IBinder;)V

    .line 580
    :cond_5b
    :goto_5b
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 556
    :cond_66
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown request status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onStart()V
    .registers 4

    const-string v0, "device_state"

    .line 186
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBinderService:Lcom/android/server/devicestate/DeviceStateManagerService$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 187
    const-class v0, Landroid/hardware/devicestate/DeviceStateManagerInternal;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->readStatesAvailableForRequestFromApps()V

    .line 191
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method public final readStatesAvailableForRequestFromApps()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 768
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    .line 769
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a1

    .line 770
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 771
    :goto_17
    array-length v2, v0

    if-ge v1, v2, :cond_62

    .line 772
    aget-object v2, v0, v1

    .line 773
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "integer"

    const-string v5, "android"

    .line 774
    invoke-virtual {v3, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 775
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 776
    invoke-virtual {p0, v2}, Lcom/android/server/devicestate/DeviceStateManagerService;->isValidState(I)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 777
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStatesAvailableForAppRequests:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 779
    :cond_49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid device state was found in the configuration file. State id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceStateManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_62
    return-void
.end method

.method public final registerProcess(ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)V
    .registers 7

    .line 584
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_48

    .line 590
    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    new-instance v2, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p2, p1, v2, v3}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;-><init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;Landroid/os/Handler;)V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_50

    .line 593
    :try_start_17
    invoke-interface {p2}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_41
    .catchall {:try_start_17 .. :try_end_1f} :catchall_50

    .line 597
    :try_start_1f
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 607
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    .line 605
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_39

    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 607
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 608
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getDeviceStateInfoLocked()Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    goto :goto_3a

    :cond_39
    const/4 p0, 0x0

    :goto_3a
    if-eqz p0, :cond_3f

    .line 612
    invoke-virtual {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V

    .line 614
    :cond_3f
    monitor-exit v0

    return-void

    :catch_41
    move-exception p0

    .line 595
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 586
    :cond_48
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The calling process has already registered an IDeviceStateManagerCallback."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_50
    move-exception p0

    .line 614
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_50

    throw p0
.end method

.method public final requestStateInternal(IIILandroid/os/IBinder;)V
    .registers 7

    .line 639
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mProcessRecords:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;

    if-eqz v1, :cond_5e

    .line 646
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v1, p4}, Lcom/android/server/devicestate/OverrideRequestController;->hasRequest(Landroid/os/IBinder;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 651
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 657
    new-instance v1, Lcom/android/server/devicestate/OverrideRequest;

    invoke-direct {v1, p4, p3, p1, p2}, Lcom/android/server/devicestate/OverrideRequest;-><init>(Landroid/os/IBinder;III)V

    .line 658
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/OverrideRequestController;->addRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 667
    monitor-exit v0

    return-void

    .line 653
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Requested state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not supported."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 647
    :cond_47
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Request has already been made for the supplied token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 642
    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Process "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " has no registered callback."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_7a
    move-exception p0

    .line 667
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public final setBaseState(I)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 367
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicestate/DeviceState;

    .line 368
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v1, p1}, Lcom/android/server/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 370
    monitor-exit v0

    return-void

    .line 372
    :cond_2b
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    const/4 v1, 0x1

    .line 374
    invoke-virtual {p1, v1}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 375
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelOverrideRequest()V

    .line 377
    :cond_3d
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p1}, Lcom/android/server/devicestate/OverrideRequestController;->handleBaseStateChanged()V

    .line 378
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 380
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_50

    .line 384
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 387
    :cond_50
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 388
    monitor-exit v0

    return-void

    .line 364
    :cond_5c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Base state is not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_64
    move-exception p0

    .line 388
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_3 .. :try_end_66} :catchall_64

    throw p0
.end method

.method public final updatePendingStateLocked()Z
    .registers 4

    .line 407
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 413
    :cond_a
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 414
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mActiveOverride:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/OverrideRequest;

    invoke-virtual {v0}, Lcom/android/server/devicestate/OverrideRequest;->getRequestedState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getStateLocked(I)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    goto :goto_4d

    .line 415
    :cond_29
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    .line 416
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->isSupportedStateLocked(I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 418
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mBaseState:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceState;

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    :goto_4d
    if-nez v0, :cond_50

    return v1

    .line 428
    :cond_50
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_65

    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mCommittedState:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/devicestate/DeviceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    return v1

    .line 433
    :cond_65
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    const/4 v0, 0x1

    .line 434
    iput-boolean v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mIsPolicyWaitingForState:Z

    return v0
.end method

.method public final updateSupportedStates([Lcom/android/server/devicestate/DeviceState;)V
    .registers 9

    .line 299
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    move v3, v2

    .line 307
    :goto_e
    array-length v4, p1

    if-ge v2, v4, :cond_27

    .line 308
    aget-object v4, p1, v2

    const/4 v5, 0x1

    .line 309
    invoke-virtual {v4, v5}, Lcom/android/server/devicestate/DeviceState;->hasFlag(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    move v3, v5

    .line 312
    :cond_1b
    iget-object v5, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mDeviceStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/android/server/devicestate/DeviceState;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 315
    :cond_27
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {p1, v3}, Lcom/android/server/devicestate/OverrideRequestController;->setStickyRequestsAllowed(Z)V

    .line 317
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->getSupportedStateIdentifiersLocked()[I

    move-result-object p1

    .line 318
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 319
    monitor-exit v0

    return-void

    .line 322
    :cond_38
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mOverrideRequestController:Lcom/android/server/devicestate/OverrideRequestController;

    invoke-virtual {v1, p1}, Lcom/android/server/devicestate/OverrideRequestController;->handleNewSupportedStates([I)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->updatePendingStateLocked()Z

    .line 325
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mPendingState:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-nez p1, :cond_4b

    .line 329
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->notifyDeviceStateInfoChangedAsync()V

    .line 332
    :cond_4b
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 333
    monitor-exit v0

    return-void

    :catchall_57
    move-exception p0

    monitor-exit v0
    :try_end_59
    .catchall {:try_start_3 .. :try_end_59} :catchall_57

    throw p0
.end method
