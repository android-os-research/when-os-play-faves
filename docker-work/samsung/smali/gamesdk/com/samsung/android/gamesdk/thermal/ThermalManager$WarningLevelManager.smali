.class Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;
.super Ljava/lang/Object;
.source "ThermalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/thermal/ThermalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WarningLevelManager"
.end annotation


# instance fields
.field private prevWarningLevel:I

.field final synthetic this$0:Lcom/samsung/android/gamesdk/thermal/ThermalManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->prevWarningLevel:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .param p2, "x1"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)V

    return-void
.end method

.method private final getWarningLevel(I)I
    .registers 3
    .param p1, "lrp"    # I

    .line 125
    const/16 v0, 0x19a

    if-lt p1, v0, :cond_6

    .line 126
    const/4 v0, 0x2

    return v0

    .line 127
    :cond_6
    const/16 v0, 0x186

    if-lt p1, v0, :cond_c

    .line 128
    const/4 v0, 0x1

    return v0

    .line 130
    :cond_c
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public checkWarningLevel(I)V
    .registers 4
    .param p1, "lrp"    # I

    .line 148
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->getWarningLevel(I)I

    move-result v0

    .line 150
    .local v0, "warningLevel":I
    iget v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->prevWarningLevel:I

    if-eq v0, v1, :cond_b

    .line 151
    invoke-virtual {p0, v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->sendWarningLevel(I)V

    .line 153
    :cond_b
    return-void
.end method

.method public forceSendWarningLevel()V
    .registers 5

    .line 136
    :try_start_0
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getCurrentRealLRP()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->getWarningLevel(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->sendWarningLevel(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 139
    goto :goto_31

    .line 137
    :catch_10
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceSendWarningLevel(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDK@ThermalManager"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method public getCurrentWarningLevel()I
    .registers 2

    .line 156
    iget v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->prevWarningLevel:I

    return v0
.end method

.method public sendWarningLevel(I)V
    .registers 3
    .param p1, "warningLevel"    # I

    .line 143
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->this$0:Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    # invokes: Lcom/samsung/android/gamesdk/thermal/ThermalManager;->sendHighTempWarning(I)V
    invoke-static {v0, p1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->access$200(Lcom/samsung/android/gamesdk/thermal/ThermalManager;I)V

    .line 144
    iput p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->prevWarningLevel:I

    .line 145
    return-void
.end method

.method public start()V
    .registers 2

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->prevWarningLevel:I

    .line 122
    return-void
.end method
