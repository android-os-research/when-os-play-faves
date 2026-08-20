.class public Lcom/android/server/vr/GearVrManagerServiceStubImpl;
.super Lcom/android/server/vr/GearVrManagerServiceStubAdapter;
.source "GearVrManagerServiceStubImpl.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mXrManagerService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrManagerService;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    .line 31
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I
    .registers 5

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->acquireVrClocks(Landroid/os/IBinder;Ljava/lang/String;II)[I

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 201
    iget-object v0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/server/vr/XrManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    if-eqz p3, :cond_33

    .line 202
    array-length v0, p3

    if-lez v0, :cond_33

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v1, "set"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 p2, 0x1

    .line 203
    array-length v0, p3

    invoke-static {p3, p2, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p1

    .line 204
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V

    goto :goto_38

    .line 206
    :cond_33
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vr/XrManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public final varargs enforceCallerPermissionAnyOf([Ljava/lang/String;)V
    .registers 6

    .line 229
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_12

    aget-object v2, p1, v1

    .line 230
    iget-object v3, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_f

    return-void

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 235
    :cond_12
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller does not hold at least one of the permissions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic enforceCallingPermission(IILjava/lang/String;)V
    .registers 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->enforceCallingPermission(IILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic enforceCallingSelfPermission(Ljava/lang/String;)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->enforceCallingSelfPermission(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic getPowerLevelState()I
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->getPowerLevelState()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getThreadId(ILjava/lang/String;I)[I
    .registers 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->getThreadId(ILjava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public is3rdPartyDevice(Ljava/lang/String;)Z
    .registers 2

    .line 176
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->is3rdPartyDeviceMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isConnect()Z
    .registers 1

    .line 62
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isConnect()Z

    move-result p0

    return p0
.end method

.method public isDock()Z
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isDock()Z

    move-result p0

    return p0
.end method

.method public isHmtDevice(Ljava/lang/String;)Z
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->isDeviceMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMount()Z
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isMount()Z

    move-result p0

    return p0
.end method

.method public isMounted()Z
    .registers 1

    .line 51
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isMounted()Z

    move-result p0

    return p0
.end method

.method public isPersistentVrMode()Z
    .registers 1

    .line 164
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isPersistentVrMode()Z

    move-result p0

    return p0
.end method

.method public isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 2

    .line 182
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->isPowerLimitingDevice(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVrMode()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->getPreferredXrDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result p0

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 18

    move-object v0, p0

    const-string v1, "android.permission.DUMP"

    const-string v2, "android.permission.ACCESS_VR_MANAGER"

    .line 189
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 190
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 192
    :try_start_10
    new-instance v1, Lcom/android/server/vr/XrManagerShellCommand;

    iget-object v2, v0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/vr/XrManagerShellCommand;-><init>(Lcom/android/server/vr/XrManagerService;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 193
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_27

    .line 195
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 196
    throw v0
.end method

.method public bridge synthetic readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->readSysNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public registerARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 218
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mARStateCallbacksController:Lcom/android/server/vr/ARStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/ARStateCallbacksController;->registerARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V

    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 145
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 146
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    return-void
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 121
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 122
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/GearVrStateCallbacksController;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public registerXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 133
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 134
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->registerXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V

    return-void
.end method

.method public bridge synthetic releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z
    .registers 3

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->releaseVrClocks(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic removeSysNode(Ljava/lang/String;)Z
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->removeSysNode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic retrieveEnableFrequencyLevels()[I
    .registers 1

    .line 24
    invoke-super {p0}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->retrieveEnableFrequencyLevels()[I

    move-result-object p0

    return-object p0
.end method

.method public setArDeveloperMode(Z)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 212
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setArDeveloperMode(Z)V

    return-void
.end method

.method public setConnect(Z)V
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setConnect(Z)V

    return-void
.end method

.method public setMount(Z)V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setMount(Z)V

    return-void
.end method

.method public setOverlayRestriction(Z[Ljava/lang/String;I)V
    .registers 5

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    .line 91
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mOverlayRectrictionController:Lcom/android/server/vr/OverlayRestrictionController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vr/OverlayRestrictionController;->setOverlayRestriction(Z[Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic setPermissions(Ljava/lang/String;III)I
    .registers 5

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->setPermissions(Ljava/lang/String;III)I

    move-result p0

    return p0
.end method

.method public setPersistentVrMode(Z)V
    .registers 3

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    .line 157
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 158
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setPersistentVrMode(Z)V

    return-void
.end method

.method public bridge synthetic setSystemMouseControlType(I)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->setSystemMouseControlType(I)V

    return-void
.end method

.method public bridge synthetic setSystemMouseShowMouseEnabled(Z)V
    .registers 2

    .line 24
    invoke-super {p0, p1}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->setSystemMouseShowMouseEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 24
    invoke-super {p0, p1, p2}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setThreadAffinity(I[I)I
    .registers 4

    .line 97
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->isMounted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    .line 100
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 101
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/DeviceController;->setThreadAffinity(I[I)I

    move-result p0

    return p0
.end method

.method public setThreadGroup(II)Z
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    .line 106
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 107
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vr/DeviceController;->setThreadGroup(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setThreadSchedFifo(Ljava/lang/String;III)Z
    .registers 5

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->setThreadSchedFifo(Ljava/lang/String;III)Z

    move-result p0

    return p0
.end method

.method public setThreadScheduler(III)Z
    .registers 5

    .line 112
    invoke-virtual {p0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->isMounted()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    .line 115
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 116
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mDeviceController:Lcom/android/server/vr/DeviceController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vr/DeviceController;->setThreadScheduler(III)Z

    move-result p0

    return p0
.end method

.method public setVrMode(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    .line 78
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 79
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setVrMode(Z)V

    return-void
.end method

.method public unregisterARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 224
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 225
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mARStateCallbacksController:Lcom/android/server/vr/ARStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/ARStateCallbacksController;->unregisterARStateListener(Lcom/samsung/android/vr/IARStateCallbacks;)V

    return-void
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 151
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 127
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 128
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/GearVrStateCallbacksController;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public unregisterXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V
    .registers 4

    const-string v0, "android.permission.ACCESS_VR_MANAGER"

    const-string v1, "android.permission.ACCESS_VR_STATE"

    .line 139
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->enforceCallerPermissionAnyOf([Ljava/lang/String;)V

    .line 140
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerServiceStubImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mXrStateCallbacksController:Lcom/android/server/vr/XrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrStateCallbacksController;->unregisterXrStateListener(Lcom/samsung/android/vr/IXrStateCallbacks;)V

    return-void
.end method

.method public bridge synthetic writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 4

    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/vr/GearVrManagerServiceStubAdapter;->writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
