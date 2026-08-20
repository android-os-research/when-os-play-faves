.class Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;
.super Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;
.source "ThermalGatherer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JtParser"
.end annotation


# instance fields
.field final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIIILjava/lang/String;)V
    .registers 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "base"    # I
    .param p4, "divisor"    # I
    .param p5, "min"    # I
    .param p6, "max"    # I
    .param p7, "path"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    .line 168
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$ThermalParser;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;Ljava/lang/String;IIII)V

    .line 169
    iput-object p7, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;->path:Ljava/lang/String;

    .line 170
    return-void
.end method


# virtual methods
.method getRawData()I
    .registers 7

    .line 178
    const-string v0, "GameSDK@ThermalGatherer"

    const/16 v1, -0x3e7

    .line 181
    .local v1, "rawJt":I
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;->path:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/gamesdk/util/IO;->readSysFs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "sysFs":Ljava/lang/String;
    if-eqz v2, :cond_19

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 183
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;->parseSysFs(Ljava/lang/String;)I

    move-result v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_18} :catch_1a

    move v1, v0

    .line 187
    .end local v2    # "sysFs":Ljava/lang/String;
    :cond_19
    goto :goto_45

    .line 185
    :catch_1a
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer$JtParser;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "::getRawData(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_45
    return v1
.end method

.method parseSysFs(Ljava/lang/String;)I
    .registers 3
    .param p1, "sysFs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
