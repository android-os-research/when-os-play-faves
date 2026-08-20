.class public Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.super Ljava/lang/Object;
.source "DeviceAdminServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field public final mConnections:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public final mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConstants(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .registers 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 83
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 84
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    .line 85
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    .line 86
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    return-void
.end method


# virtual methods
.method public final disconnectServiceOnUserLocked(ILjava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 169
    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    if-eqz p2, :cond_12

    .line 175
    invoke-virtual {p2}, Lcom/android/server/am/PersistentConnection;->unbind()V

    .line 176
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    .line 182
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 184
    monitor-exit v0

    return-void

    :cond_d
    const-string v1, "Owner Services:"

    .line 186
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 188
    :goto_16
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_42

    .line 189
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    const-string v3, "User: "

    .line 190
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 192
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 193
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v3, ""

    .line 194
    invoke-virtual {v2, v3, p1}, Lcom/android/server/am/PersistentConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 195
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 197
    :cond_42
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 198
    monitor-exit v0

    return-void

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public final findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .registers 10

    .line 95
    const-class v4, Landroid/app/admin/DeviceAdminService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.app.action.DEVICE_ADMIN_SERVICE"

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    move-object v0, p1

    move v1, p2

    .line 95
    invoke-static/range {v0 .. v6}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public startServiceForOwner(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 111
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 113
    :try_start_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_41

    .line 114
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    if-nez p1, :cond_19

    .line 120
    invoke-virtual {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 121
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_3e

    .line 149
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    .line 124
    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 125
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/PersistentConnection;

    if-eqz v3, :cond_26

    .line 134
    invoke-virtual {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 142
    :cond_26
    new-instance p3, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 144
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-direct {p3, p0, p2, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;-><init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V

    .line 145
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    invoke-virtual {p3}, Lcom/android/server/am/PersistentConnection;->bind()V

    .line 147
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_19 .. :try_end_38} :catchall_3e

    .line 149
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p1

    .line 147
    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    :try_start_40
    throw p1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    .line 149
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 150
    throw p1
.end method

.method public stopServiceForOwner(ILjava/lang/String;)V
    .registers 6

    .line 157
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 159
    :try_start_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_16

    .line 160
    :try_start_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 161
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_13

    .line 163
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p1

    .line 161
    :try_start_14
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception p1

    .line 163
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 164
    throw p1
.end method
