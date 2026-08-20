.class public Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;
.super Ljava/lang/Object;
.source "BgDexOptUtils.java"


# static fields
.field public static final HIGHEST_POSSIBLE_TEMPERATURE:I = 0x186

.field public static NumberOfOptimizablePackages:I = 0x0

.field public static final PKGS_LIMIT_AT_HIGH_TEMPERATURE:I = 0x5

.field public static final PPLIST_BATTERY_THRESHOLD:I = 0x50

.field public static SurfaceTemperatureThreshold:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BackgroundDexOptService"

.field public static final TEMPERATURE_360:I = 0x168

.field public static final TEMPERATURE_370:I = 0x172

.field public static final TEMPERATURE_380:I = 0x17c

.field public static final TEMPERATURE_390:I = 0x186

.field public static final TEMPERATURE_NONE:I = -0x1

.field public static abortCount:I = 0x0

.field public static enableTemperaturePolicy:Z = false

.field public static initialSurfaceTemperature:I = 0x0

.field public static policySelector:Z = true


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exceedSurfaceTemperatureThreshold()Z
    .registers 5

    .line 103
    sget v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->initialSurfaceTemperature:I

    const-string v1, "Aborted by thermal: "

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/16 v4, 0x186

    if-le v0, v4, :cond_26

    .line 104
    sget v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->NumberOfOptimizablePackages:I

    sub-int/2addr v0, v3

    sput v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->NumberOfOptimizablePackages:I

    if-gez v0, :cond_5a

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->initialSurfaceTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v3

    .line 110
    :cond_26
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getSkinTemperature()I

    move-result v0

    .line 112
    sget v4, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->SurfaceTemperatureThreshold:I

    if-le v0, v4, :cond_5a

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " (initial : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->initialSurfaceTemperature:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " threshold : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->SurfaceTemperatureThreshold:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    return v3

    :cond_5a
    const/4 v0, 0x0

    return v0
.end method

.method public static getAbortCount()I
    .registers 1

    .line 143
    sget v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->abortCount:I

    return v0
.end method

.method public static getBatteryLevel()I
    .registers 1

    .line 147
    const-class v0, Landroid/os/BatteryManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public static getSkinTemperature()I
    .registers 1

    const/16 v0, 0x9

    .line 85
    invoke-static {v0}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 88
    invoke-virtual {v0}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method public static getTemperaturePolicy()Z
    .registers 1

    .line 99
    sget-boolean v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->enableTemperaturePolicy:Z

    return v0
.end method

.method public static initSurfaceTemperature()V
    .registers 3

    .line 61
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getSkinTemperature()I

    move-result v0

    sput v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->initialSurfaceTemperature:I

    const/4 v1, 0x0

    .line 62
    sput v1, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->NumberOfOptimizablePackages:I

    const/16 v1, 0x168

    if-gt v0, v1, :cond_12

    add-int/lit8 v0, v0, 0xa

    .line 65
    sput v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->SurfaceTemperatureThreshold:I

    goto :goto_2f

    :cond_12
    const/16 v1, 0x172

    if-gt v0, v1, :cond_1b

    add-int/lit8 v0, v0, 0x8

    .line 67
    sput v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->SurfaceTemperatureThreshold:I

    goto :goto_2f

    :cond_1b
    const/16 v1, 0x17c

    const/4 v2, 0x5

    if-gt v0, v1, :cond_24

    add-int/2addr v0, v2

    .line 69
    sput v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->SurfaceTemperatureThreshold:I

    goto :goto_2f

    :cond_24
    const/16 v1, 0x186

    if-gt v0, v1, :cond_2d

    add-int/lit8 v0, v0, 0x2

    .line 71
    sput v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->SurfaceTemperatureThreshold:I

    goto :goto_2f

    .line 73
    :cond_2d
    sput v2, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->NumberOfOptimizablePackages:I

    .line 76
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceTemperature ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->initialSurfaceTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] threashold ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->SurfaceTemperatureThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] package limit ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->NumberOfOptimizablePackages:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BackgroundDexOptService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isBatteryFullyCharged(Landroid/content/Context;)Z
    .registers 6

    .line 124
    invoke-static {p0}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->isRunningBgDexOptCTS(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BackgroundDexOptService"

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    const-string p0, "Keep running"

    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 130
    :cond_f
    invoke-static {}, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->getBatteryLevel()I

    move-result v0

    .line 132
    sget-boolean v3, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->policySelector:Z

    if-eqz v3, :cond_21

    const/16 v3, 0x50

    if-gt v0, v3, :cond_21

    const-string p0, "Not fully charged. Optimize only recently used packages"

    .line 133
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 137
    :cond_21
    const-class v1, Landroid/os/BatteryManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/BatteryManager;

    const/16 v1, 0x64

    if-ge v0, v1, :cond_3b

    if-eqz p0, :cond_3a

    .line 139
    invoke-virtual {p0}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long p0, v0, v3

    if-gtz p0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :cond_3b
    :goto_3b
    return v2
.end method

.method public static isRunningBgDexOptCTS(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    .line 156
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "android.compilation.cts"

    invoke-virtual {p0, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_f

    :catch_f
    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public static setTemperaturePolicy(Z)V
    .registers 1

    .line 95
    sput-boolean p0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->enableTemperaturePolicy:Z

    return-void
.end method

.method public static toggleBatteryLevelPolicy()V
    .registers 4

    .line 36
    sget v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->abortCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->abortCount:I

    const/4 v2, 0x0

    .line 37
    sput-boolean v2, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->policySelector:Z

    const/4 v3, 0x3

    if-le v0, v3, :cond_10

    .line 40
    sput v2, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->abortCount:I

    .line 41
    sput-boolean v1, Lcom/samsung/android/server/pm/dexopt/BgDexOptUtils;->policySelector:Z

    :cond_10
    return-void
.end method
