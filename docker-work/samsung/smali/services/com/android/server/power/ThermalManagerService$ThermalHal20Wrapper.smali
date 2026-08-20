.class public Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThermalHal20Wrapper"
.end annotation


# instance fields
.field public final mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

.field public mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHalLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5Gy7SxTXuDNOdRldHRw7gT8HCK8(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->lambda$getCurrentCoolingDevices$1(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Cl1-bsrR1F1TpRTNqsN1E8MPdIo(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->lambda$getCurrentTemperatures$0(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eU9NGR0FpzsZYcBLuc0gYLJFOic(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->lambda$getTemperatureThresholds$2(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 937
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 939
    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 943
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    return-void
.end method

.method public static synthetic lambda$getCurrentCoolingDevices$1(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 7

    .line 1011
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_23

    .line 1013
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/thermal/V2_0/CoolingDevice;

    .line 1014
    new-instance v0, Landroid/os/CoolingDevice;

    iget-wide v1, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->value:J

    iget v3, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->type:I

    iget-object p2, p2, Landroid/hardware/thermal/V2_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1019
    :cond_23
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public static synthetic lambda$getCurrentTemperatures$0(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 7

    .line 971
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_37

    .line 973
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/thermal/V2_0/Temperature;

    .line 974
    iget v0, p2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-static {v0}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 976
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Invalid status data from HAL"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 977
    iput v0, p2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 980
    :cond_26
    new-instance v0, Landroid/os/Temperature;

    iget v1, p2, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v2, p2, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v3, p2, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget p2, p2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 986
    :cond_37
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    return-void
.end method

.method public static synthetic lambda$getTemperatureThresholds$2(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 4

    .line 1044
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_8

    .line 1045
    invoke-interface {p0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_20

    .line 1047
    :cond_8
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get temperature thresholds because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    return-void
.end method


# virtual methods
.method public connectToHal()Z
    .registers 8

    .line 1061
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1063
    :try_start_5
    invoke-static {v1}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Z)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1064
    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v5, 0x15ec

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1065
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    invoke-interface {v3, v4, v2, v2}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    .line 1067
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_23} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_23} :catch_26
    .catchall {:try_start_5 .. :try_end_23} :catchall_24

    goto :goto_30

    :catchall_24
    move-exception p0

    goto :goto_38

    .line 1069
    :catch_26
    :try_start_26
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service not connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1070
    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1072
    :goto_30
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    :goto_36
    monitor-exit v0

    return v1

    .line 1073
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_26 .. :try_end_39} :catchall_24

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1078
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1079
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1080
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 2.0 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_18

    const-string/jumbo p0, "yes"

    goto :goto_1b

    :cond_18
    const-string/jumbo p0, "no"

    .line 1081
    :goto_1b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1080
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public getCurrentCoolingDevices(ZI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/CoolingDevice;",
            ">;"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_e

    .line 1006
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    return-object v1

    .line 1009
    :cond_e
    :try_start_e
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17
    .catchall {:try_start_e .. :try_end_16} :catchall_24

    goto :goto_22

    :catch_17
    move-exception p1

    .line 1026
    :try_start_18
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 1029
    :goto_22
    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception p0

    .line 1030
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getCurrentTemperatures(ZI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation

    .line 963
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 964
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 965
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_e

    .line 966
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    return-object v1

    .line 969
    :cond_e
    :try_start_e
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17
    .catchall {:try_start_e .. :try_end_16} :catchall_24

    goto :goto_22

    :catch_17
    move-exception p1

    .line 993
    :try_start_18
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 994
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 996
    :goto_22
    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception p0

    .line 997
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/hardware/thermal/V2_0/TemperatureThreshold;",
            ">;"
        }
    .end annotation

    .line 1036
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1037
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez p0, :cond_e

    .line 1039
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_21

    return-object v1

    .line 1042
    :cond_e
    :try_start_e
    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1, p2, v2}, Landroid/hardware/thermal/V2_0/IThermal;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17
    .catchall {:try_start_e .. :try_end_16} :catchall_21

    goto :goto_1f

    :catch_17
    move-exception p0

    .line 1053
    :try_start_18
    sget-object p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1055
    :goto_1f
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception p0

    .line 1056
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_21

    throw p0
.end method
