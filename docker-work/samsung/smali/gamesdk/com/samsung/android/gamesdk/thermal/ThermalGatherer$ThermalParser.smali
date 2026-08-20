.class abstract Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;
.super Ljava/lang/Object;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ThermalParser"
.end annotation


# instance fields
.field final base:I

.field final divisor:I

.field final max:I

.field final min:I

.field final name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V
    .registers 7
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "base"    # I
    .param p4, "divisor"    # I
    .param p5, "min"    # I
    .param p6, "max"    # I

    .line 90
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->name:Ljava/lang/String;

    .line 92
    iput p3, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->base:I

    .line 93
    iput p4, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->divisor:I

    .line 94
    iput p5, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->min:I

    .line 95
    iput p6, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->max:I

    .line 96
    return-void
.end method


# virtual methods
.method getFloatLevel()D
    .registers 3

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getLevel()I

    move-result v0

    int-to-double v0, v0

    return-wide v0
.end method

.method getLevel()I
    .registers 8

    .line 99
    const-string v0, "[PROGRESS] "

    const-string v1, "GameSDK@ThermalGatherer"

    const/16 v2, -0x3e7

    .line 102
    .local v2, "level":I
    :try_start_6
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->getRawData()I

    move-result v3

    .line 103
    .local v3, "rawData":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::getLevel(): rawData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/16 v4, -0x3e7

    if-eq v3, v4, :cond_42

    .line 105
    iget v4, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->base:I

    sub-int v4, v3, v4

    iget v5, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->divisor:I

    div-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->min:I

    iget v6, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->max:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/gamesdk/util/MathUtil;->clamp(III)I

    move-result v4
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_41} :catch_43

    move v2, v4

    .line 109
    .end local v3    # "rawData":I
    :cond_42
    goto :goto_6e

    .line 107
    :catch_43
    move-exception v3

    .line 108
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FAIL] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::getLevel(): msg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "::getLevel(): level: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return v2
.end method

.method abstract getRawData()I
.end method
