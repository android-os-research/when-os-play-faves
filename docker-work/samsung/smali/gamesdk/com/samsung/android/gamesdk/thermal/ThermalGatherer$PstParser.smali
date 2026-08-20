.class Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$PstParser;
.super Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PstParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "base"    # I
    .param p4, "divisor"    # I
    .param p5, "min"    # I
    .param p6, "max"    # I

    .line 146
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$PstParser;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    .line 147
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V

    .line 148
    return-void
.end method


# virtual methods
.method getRawData()I
    .registers 6

    .line 152
    const/16 v0, -0x3e7

    .line 155
    .local v0, "pst":I
    const/4 v1, 0x0

    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v1

    .line 156
    .local v1, "mPST":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    invoke-virtual {v1}, Lcom/samsung/android/os/SemTemperatureManager$Thermistor;->getTemperature()I

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_d

    move v0, v2

    .line 159
    .end local v1    # "mPST":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    goto :goto_2e

    .line 157
    :catch_d
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] PstParser::getRawData(): msg: "

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

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2e
    return v0
.end method
