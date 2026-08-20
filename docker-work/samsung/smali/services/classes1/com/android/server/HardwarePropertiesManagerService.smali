.class public Lcom/android/server/HardwarePropertiesManagerService;
.super Landroid/os/IHardwarePropertiesManager$Stub;
.source "HardwarePropertiesManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HardwarePropertiesManagerService"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 61
    invoke-direct {p0}, Landroid/os/IHardwarePropertiesManager$Stub;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 64
    monitor-enter v0

    .line 65
    :try_start_17
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeInit()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method private static native nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;
.end method

.method private static native nativeGetDeviceTemperatures(II)[F
.end method

.method private static native nativeGetFanSpeeds()[F
.end method

.method private static native nativeInit()V
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 129
    iget-object p1, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string p3, "HardwarePropertiesManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "****** Dump of HardwarePropertiesManagerService ******"

    .line 130
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/server/HardwarePropertiesManagerService;->getCallingPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    const-string v0, "CPU "

    .line 133
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "GPU "

    .line 134
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "Battery "

    .line 135
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "Skin "

    .line 136
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->getFanSpeeds(Ljava/lang/String;)[F

    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fan speed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;

    move-result-object p0

    .line 143
    :goto_51
    array-length p1, p0

    if-ge p3, p1, :cond_87

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cpu usage of core: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", active = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, p3

    .line 145
    invoke-virtual {v0}, Landroid/os/CpuUsageInfo;->getActive()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", total = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, p0, p3

    .line 146
    invoke-virtual {v0}, Landroid/os/CpuUsageInfo;->getTotal()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_51

    :cond_87
    const-string p0, "****** End of HardwarePropertiesManagerService dump ******"

    .line 148
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;)V
    .registers 19

    const-string/jumbo v5, "temperatures: "

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v12, "throttling temperatures: "

    const/4 v13, 0x1

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    .line 113
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v5, "shutdown temperatures: "

    const/4 v6, 0x2

    .line 115
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    const-string/jumbo v12, "vr throttling temperatures: "

    const/4 v13, 0x3

    .line 117
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/HardwarePropertiesManagerService;->dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final dumpTempValues(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p3, p6}, Lcom/android/server/HardwarePropertiesManagerService;->getDeviceTemperatures(Ljava/lang/String;II)[F

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 165
    const-class v1, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/vr/VrManagerInternal;

    .line 166
    iget-object v2, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 167
    invoke-virtual {v2, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_44

    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.DEVICE_POWER"

    .line 168
    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_44

    if-eqz v1, :cond_3c

    .line 170
    invoke-virtual {v1, p1, v0}, Lcom/android/server/vr/VrManagerInternal;->isCurrentVrListener(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_3c

    goto :goto_44

    .line 171
    :cond_3c
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The caller is neither a device owner, nor holding the DEVICE_POWER permission, nor the current VrListener."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_44
    :goto_44
    return-void
.end method

.method public final getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 102
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 101
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 103
    array-length v0, p0

    if-lez v0, :cond_17

    const/4 v0, 0x0

    .line 104
    aget-object p0, p0, v0

    return-object p0

    :cond_17
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public getCpuUsages(Ljava/lang/String;)[Landroid/os/CpuUsageInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 85
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 86
    :try_start_6
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetCpuUsages()[Landroid/os/CpuUsageInfo;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    .line 87
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public getDeviceTemperatures(Ljava/lang/String;II)[F
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 76
    :try_start_6
    invoke-static {p2, p3}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetDeviceTemperatures(II)[F

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    .line 77
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public getFanSpeeds(Ljava/lang/String;)[F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/HardwarePropertiesManagerService;->enforceHardwarePropertiesRetrievalAllowed(Ljava/lang/String;)V

    .line 95
    iget-object p0, p0, Lcom/android/server/HardwarePropertiesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 96
    :try_start_6
    invoke-static {}, Lcom/android/server/HardwarePropertiesManagerService;->nativeGetFanSpeeds()[F

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_c
    move-exception p1

    .line 97
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw p1
.end method
