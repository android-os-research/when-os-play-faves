.class Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;
.super Landroid/companion/virtual/IVirtualDeviceManager$Stub;
.source "VirtualDeviceManagerService.java"

# interfaces
.implements Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VirtualDeviceManagerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method public static synthetic $r8$lambda$AX24K1SX1g6jGdtmuNXo1XowuXY(Lcom/android/server/companion/virtual/CameraAccessController;Landroid/util/ArraySet;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->lambda$createVirtualDevice$0(Lcom/android/server/companion/virtual/CameraAccessController;Landroid/util/ArraySet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$createVirtualDevice$0(Lcom/android/server/companion/virtual/CameraAccessController;Landroid/util/ArraySet;)V
    .registers 2

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/CameraAccessController;->blockCameraAccessIfNeeded(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public createVirtualDevice(Landroid/os/IBinder;Ljava/lang/String;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;)Landroid/companion/virtual/IVirtualDevice;
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    .line 221
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.CREATE_VIRTUAL_DEVICE"

    const-string v5, "createVirtualDevice"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    move-result v5

    .line 225
    iget-object v3, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/server/companion/virtual/PermissionUtils;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 230
    invoke-virtual {v0, v1, v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->getAssociationInfo(Ljava/lang/String;I)Landroid/companion/AssociationInfo;

    move-result-object v11

    if-eqz v11, :cond_b6

    .line 234
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 235
    :try_start_30
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_97

    .line 240
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    .line 241
    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmCameraAccessControllers(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    .line 242
    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/companion/virtual/CameraAccessController;

    .line 243
    new-instance v15, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    iget-object v1, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;

    invoke-direct {v6, v0, v14, v13}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$1;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;Lcom/android/server/companion/virtual/CameraAccessController;I)V

    new-instance v9, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v9, v14}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/virtual/CameraAccessController;)V

    move-object v1, v15

    move-object v3, v11

    move-object/from16 v4, p1

    move-object/from16 v7, p0

    move-object/from16 v8, p5

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v10}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;-><init>(Landroid/content/Context;Landroid/companion/AssociationInfo;Landroid/os/IBinder;ILcom/android/server/companion/virtual/VirtualDeviceImpl$OnDeviceCloseListener;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampolineCallback;Landroid/companion/virtual/IVirtualDeviceActivityListener;Ljava/util/function/Consumer;Landroid/companion/virtual/VirtualDeviceParams;)V

    if-eqz v14, :cond_72

    .line 264
    invoke-virtual {v14}, Lcom/android/server/companion/virtual/CameraAccessController;->startObservingIfNeeded()V

    goto :goto_88

    :cond_72
    const-string v1, "VirtualDeviceManagerService"

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cameraAccessController not found for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :goto_88
    iget-object v0, v0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v11}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 269
    monitor-exit v12

    return-object v15

    .line 236
    :cond_97
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual device for association ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_b3
    move-exception v0

    .line 270
    monitor-exit v12
    :try_end_b5
    .catchall {:try_start_30 .. :try_end_b5} :catchall_b3

    throw v0

    .line 232
    :cond_b6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No association with ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_cd
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not belong to calling uid "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUid()I

    move-result v0

    .line 278
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/android/server/companion/virtual/PermissionUtils;->validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 284
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 285
    :try_start_17
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-interface {p3}, Landroid/companion/virtual/IVirtualDevice;->getAssociationId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    if-eqz v2, :cond_81

    .line 289
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_89

    .line 290
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getOwnerUid()I

    move-result v1

    if-ne v1, v0, :cond_64

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 298
    :try_start_34
    invoke-virtual {v2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->createWindowPolicyController()Lcom/android/server/companion/virtual/GenericWindowPolicyController;

    move-result-object v9
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_5f

    .line 300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 303
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    # invokes: Lcom/android/server/SystemService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    invoke-static {p0, v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->access$000(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v9

    move-object v8, p4

    .line 305
    invoke-virtual/range {v3 .. v8}, Landroid/hardware/display/DisplayManagerInternal;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Landroid/window/DisplayWindowPolicyController;Ljava/lang/String;)I

    move-result p0

    .line 308
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 310
    :try_start_53
    invoke-virtual {v2, v9, p0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onVirtualDisplayCreatedLocked(Lcom/android/server/companion/virtual/GenericWindowPolicyController;I)V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_5a

    .line 313
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_5a
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    throw p0

    :catchall_5f
    move-exception p0

    .line 300
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 301
    throw p0

    .line 291
    :cond_64
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not the owner of the supplied VirtualDevice"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 287
    :cond_81
    :try_start_81
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid VirtualDevice"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_89
    move-exception p0

    .line 289
    monitor-exit v1
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_89

    throw p0

    .line 279
    :cond_8c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package name "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not belong to calling uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 352
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "VirtualDeviceManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const-string v0, "Created virtual devices: "

    .line 355
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 357
    :goto_1c
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 358
    iget-object v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 360
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_1c .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public final getAssociationInfo(Ljava/lang/String;I)Landroid/companion/AssociationInfo;
    .registers 8

    .line 319
    invoke-static {}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 320
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmAllAssociations(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    .line 321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_37

    .line 323
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_4d

    .line 325
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/companion/AssociationInfo;

    .line 326
    invoke-virtual {v3, v0, p1}, Landroid/companion/AssociationInfo;->belongsToPackage(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 327
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    move-result v4

    if-ne p2, v4, :cond_34

    return-object v3

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 332
    :cond_37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No associations for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VirtualDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/virtual/IVirtualDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    move-exception p0

    const-string p1, "VirtualDeviceManagerService"

    const-string p2, "Error during IPC"

    .line 343
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 344
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 3

    .line 365
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    .line 366
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->put(Ljava/lang/String;Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 369
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mResultReceiver:Landroid/os/ResultReceiver;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_19
    return-void
.end method

.method public stopWaitingForPendingTrampoline(Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;)V
    .registers 2

    .line 376
    iget-object p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$VirtualDeviceManagerImpl;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmPendingTrampolines(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$PendingTrampolineMap;->remove(Ljava/lang/String;)Lcom/android/server/companion/virtual/VirtualDeviceImpl$PendingTrampoline;

    return-void
.end method
