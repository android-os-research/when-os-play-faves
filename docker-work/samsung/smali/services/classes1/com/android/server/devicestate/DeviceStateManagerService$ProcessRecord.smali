.class public final Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$RequestStatus;,
        Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;
    }
.end annotation


# static fields
.field public static final STATUS_ACTIVE:I = 0x0

.field public static final STATUS_CANCELED:I = 0x2

.field public static final STATUS_SUSPENDED:I = 0x1


# instance fields
.field public final mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

.field public final mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;

.field public final mHandler:Landroid/os/Handler;

.field public final mLastNotifiedStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mPid:I


# direct methods
.method public static synthetic $r8$lambda$CwW07WXYvf61Ol5nJ8YZUiNBSUo(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->lambda$notifyDeviceStateInfoAsync$0(Landroid/hardware/devicestate/DeviceStateInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SspQzIhDSlXW7bl4-NWejBI1nCc(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->lambda$notifyRequestActiveAsync$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jIvlenWboencU3rN0W-RvbozO0w(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->lambda$notifyRequestCanceledAsync$2(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmPid(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)I
    .registers 1

    iget p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    return p0
.end method

.method public constructor <init>(Landroid/hardware/devicestate/IDeviceStateManagerCallback;ILcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;Landroid/os/Handler;)V
    .registers 6

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    .line 849
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    .line 850
    iput p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    .line 851
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;

    .line 852
    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$notifyDeviceStateInfoAsync$0(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 4

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_24

    :catch_6
    move-exception p1

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " that device state changed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceStateManagerService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method private synthetic lambda$notifyRequestActiveAsync$1(Landroid/os/IBinder;)V
    .registers 4

    .line 881
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestActive(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_24

    :catch_6
    move-exception p1

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " that request state changed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceStateManagerService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method

.method private synthetic lambda$notifyRequestCanceledAsync$2(Landroid/os/IBinder;)V
    .registers 4

    .line 898
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mCallback:Landroid/hardware/devicestate/IDeviceStateManagerCallback;

    invoke-interface {v0, p1}, Landroid/hardware/devicestate/IDeviceStateManagerCallback;->onRequestCanceled(Landroid/os/IBinder;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_24

    :catch_6
    move-exception p1

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to notify process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " that request state changed."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DeviceStateManagerService"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_24
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mDeathListener:Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;

    invoke-interface {v0, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$DeathListener;->onProcessDied(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;)V

    return-void
.end method

.method public notifyDeviceStateInfoAsync(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 4

    .line 861
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/hardware/devicestate/DeviceStateInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRequestActiveAsync(Landroid/os/IBinder;)V
    .registers 4

    .line 872
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_18

    .line 874
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    :cond_17
    return-void

    .line 878
    :cond_18
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyRequestCanceledAsync(Landroid/os/IBinder;)V
    .registers 4

    .line 890
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    if-eqz v0, :cond_12

    .line 891
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_12

    return-void

    .line 895
    :cond_12
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mLastNotifiedStatus:Ljava/util/WeakHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$ProcessRecord;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
