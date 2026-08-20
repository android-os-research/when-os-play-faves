.class public Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThermalHal10Wrapper"
.end annotation


# instance fields
.field public mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHalLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$kPCH6rCCb2BP4C5Vkm0M417TwU0(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->lambda$getCurrentTemperatures$0(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zaTQgWrjEt2QD2W0-t1mr5xUtEg(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->lambda$getCurrentCoolingDevices$1(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 687
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 689
    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    return-void
.end method

.method public static synthetic lambda$getCurrentCoolingDevices$1(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 9

    .line 742
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2b

    .line 744
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_43

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/thermal/V1_0/CoolingDevice;

    if-eqz p0, :cond_1b

    .line 745
    iget v0, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    if-eq p1, v0, :cond_1b

    goto :goto_8

    .line 748
    :cond_1b
    new-instance v0, Landroid/os/CoolingDevice;

    iget v1, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->currentValue:F

    float-to-long v1, v1

    iget v3, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->type:I

    iget-object p4, p4, Landroid/hardware/thermal/V1_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, p4}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 754
    :cond_2b
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method

.method public static synthetic lambda$getCurrentTemperatures$0(ZILjava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .registers 9

    .line 705
    iget v0, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2b

    .line 707
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_43

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/thermal/V1_0/Temperature;

    if-eqz p0, :cond_1b

    .line 708
    iget v0, p4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    if-eq p1, v0, :cond_1b

    goto :goto_8

    .line 712
    :cond_1b
    new-instance v0, Landroid/os/Temperature;

    iget v1, p4, Landroid/hardware/thermal/V1_0/Temperature;->currentValue:F

    iget v2, p4, Landroid/hardware/thermal/V1_0/Temperature;->type:I

    iget-object p4, p4, Landroid/hardware/thermal/V1_0/Temperature;->name:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p4, v3}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 718
    :cond_2b
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    return-void
.end method


# virtual methods
.method public connectToHal()Z
    .registers 7

    .line 776
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 778
    :try_start_4
    invoke-static {v1}, Landroid/hardware/thermal/V1_0/IThermal;->getService(Z)Landroid/hardware/thermal/V1_0/IThermal;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 779
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v4, 0x15ec

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/thermal/V1_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 781
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.0 service connected, no thermal call back will be called due to legacy API."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_1b} :catch_1e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1b} :catch_1e
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    goto :goto_28

    :catchall_1c
    move-exception p0

    goto :goto_30

    .line 785
    :catch_1e
    :try_start_1e
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Thermal HAL 1.0 service not connected."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 787
    iput-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    .line 789
    :goto_28
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    monitor-exit v0

    return v1

    .line 790
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_1c

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 795
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 797
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 1.0 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-eqz p0, :cond_18

    const-string/jumbo p0, "yes"

    goto :goto_1b

    :cond_18
    const-string/jumbo p0, "no"

    .line 798
    :goto_1b
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 797
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 799
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

    .line 735
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 736
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 737
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_e

    .line 738
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    return-object v1

    .line 741
    :cond_e
    :try_start_e
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda1;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getCoolingDevices(Landroid/hardware/thermal/V1_0/IThermal$getCoolingDevicesCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17
    .catchall {:try_start_e .. :try_end_16} :catchall_24

    goto :goto_22

    :catch_17
    move-exception p1

    .line 761
    :try_start_18
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 762
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 764
    :goto_22
    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception p0

    .line 765
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

    .line 695
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 696
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 697
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->mThermalHal10:Landroid/hardware/thermal/V1_0/IThermal;

    if-nez v2, :cond_e

    .line 698
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_24

    return-object v1

    .line 701
    :cond_e
    :try_start_e
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper$$ExternalSyntheticLambda0;-><init>(ZILjava/util/List;)V

    invoke-interface {v2, v3}, Landroid/hardware/thermal/V1_0/IThermal;->getTemperatures(Landroid/hardware/thermal/V1_0/IThermal$getTemperaturesCallback;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_16} :catch_17
    .catchall {:try_start_e .. :try_end_16} :catchall_24

    goto :goto_22

    :catch_17
    move-exception p1

    .line 725
    :try_start_18
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 726
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal10Wrapper;->connectToHal()Z

    .line 728
    :goto_22
    monitor-exit v0

    return-object v1

    :catchall_24
    move-exception p0

    .line 729
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/List<",
            "Landroid/hardware/thermal/V2_0/TemperatureThreshold;",
            ">;"
        }
    .end annotation

    .line 771
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
