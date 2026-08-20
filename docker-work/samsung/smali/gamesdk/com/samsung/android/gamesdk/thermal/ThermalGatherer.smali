.class public Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.super Ljava/lang/Object;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Singleton;,
        Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;,
        Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$PstParser;,
        Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;,
        Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;,
        Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mCpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

.field private final mGpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

.field private final mLrpParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

.field private final mPstParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;


# direct methods
.method private constructor <init>()V
    .registers 11

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "GameSDK@ThermalGatherer"

    iput-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->TAG:Ljava/lang/String;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getChipsetVendor()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    move-result-object v8

    .line 26
    .local v8, "vendor":Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
    new-instance v7, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;

    const-string v2, "LrpParser"

    const/16 v3, 0x154

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/16 v6, 0xa

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V

    iput-object v7, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mLrpParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    .line 29
    new-instance v7, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$PstParser;

    const-string v2, "PstParser"

    const/16 v3, 0x1b8

    const/4 v6, 0x7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$PstParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V

    iput-object v7, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mPstParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    .line 32
    new-instance v9, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;

    const-string v2, "CpuJtParser"

    const/4 v3, 0x0

    const/16 v4, 0x96

    const/4 v6, 0x6

    const-string v7, "/sys/devices/virtual/sec/sec-ap-thermistor/temperature"

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIIILjava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mCpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    .line 35
    sget-object v0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$2;->$SwitchMap$com$samsung$android$gamesdk$thermal$ThermalGatherer$Vendor:[I

    invoke-virtual {v8}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    .line 41
    new-instance v9, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$1;

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x6

    const-string v2, "GpuJtParser"

    const-string v7, "/sys/kernel/gpu/gpu_tmu"

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$1;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIIILjava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mGpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    goto :goto_6b

    .line 37
    :pswitch_58
    new-instance v9, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;

    const/4 v3, 0x0

    const/16 v4, 0x3a98

    const/4 v5, 0x0

    const/4 v6, 0x6

    const-string v2, "GpuJtParser"

    const-string v7, "/sys/kernel/gpu/gpu_tmu"

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIIILjava/lang/String;)V

    iput-object v9, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mGpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    .line 38
    nop

    .line 49
    :goto_6b
    return-void

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_58
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$1;

    .line 10
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;-><init>()V

    return-void
.end method

.method private getChipsetVendor()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
    .registers 7

    .line 193
    const-string v0, "GameSDK@ThermalGatherer"

    const-string v1, "Waffle"

    sget-object v2, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->OTHER:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;

    .line 195
    .local v2, "vendor":Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
    move-object v3, v1

    .line 196
    .local v3, "vendorConfig":Ljava/lang/String;
    :try_start_7
    const-string v4, "Combination"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 197
    sget-object v1, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;->ADRENO:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Vendor;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    move-object v2, v1

    .line 201
    .end local v3    # "vendorConfig":Ljava/lang/String;
    :cond_12
    goto :goto_32

    .line 199
    :catch_13
    move-exception v1

    .line 200
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] getChipsetVendor(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_32
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PROGRESS] getChipsetVendor(): vendor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 204
    return-object v2
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
    .registers 1

    .line 212
    # getter for: Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Singleton;->instance:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$Singleton;->access$100()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCpuJTLevel()I
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mCpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getLevel()I

    move-result v0

    return v0
.end method

.method public getCurrentHighLevelLRP()D
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mLrpParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getFloatLevel()D

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentLevelLRP()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mLrpParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getLevel()I

    move-result v0

    return v0
.end method

.method public getCurrentLevelPST()I
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mPstParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getLevel()I

    move-result v0

    return v0
.end method

.method public getCurrentRealLRP()I
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mLrpParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getRawData()I

    move-result v0

    return v0
.end method

.method public getGpuJTLevel()I
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mGpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getLevel()I

    move-result v0

    return v0
.end method

.method public getRawCpuJt()I
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mCpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getRawData()I

    move-result v0

    return v0
.end method

.method public getRawGpuJt()I
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->mGpuJtParser:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getRawData()I

    move-result v0

    return v0
.end method
