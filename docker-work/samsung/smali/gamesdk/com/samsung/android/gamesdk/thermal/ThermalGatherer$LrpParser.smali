.class Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;
.super Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LrpParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "inBase"    # I
    .param p4, "inDivisor"    # I
    .param p5, "inMin"    # I
    .param p6, "inMax"    # I

    .line 122
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    .line 123
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V

    .line 124
    return-void
.end method


# virtual methods
.method getFloatLevel()D
    .registers 11

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;->getRawData()I

    move-result v0

    int-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;->base:I

    int-to-double v2, v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;->divisor:I

    int-to-double v2, v2

    div-double v4, v0, v2

    iget v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;->min:I

    int-to-double v6, v0

    iget v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$LrpParser;->max:I

    int-to-double v8, v0

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/gamesdk/util/MathUtil;->clamp(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method getRawData()I
    .registers 6

    .line 128
    const/16 v0, -0x3e7

    .line 131
    .local v0, "lrp":I
    const/16 v1, 0x9

    :try_start_4
    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v1

    .line 132
    .local v1, "mLRP":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    invoke-virtual {v1}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_e

    move v0, v2

    .line 135
    .end local v1    # "mLRP":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    goto :goto_2f

    .line 133
    :catch_e
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] LrpParser::getRawData(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSDK@ThermalGatherer"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    return v0
.end method
