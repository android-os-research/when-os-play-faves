.class public Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;
.super Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
.source "WifiScpmPolicyAutoWifi.java"


# instance fields
.field private aheadTimeForEstimatedArrivalTime:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private defaultUserControlTime:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private durationForMinusPoint:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private durationForPointFour:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private durationForPointOne:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private durationForPointTwo:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private durationForRecoveryPoint:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private maxCellCount:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private usePnoScanFunction:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAutoWifiAheadTimeForEstimatedArrivalTime()I
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->aheadTimeForEstimatedArrivalTime:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 93
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 95
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoWifiDefaultUserControlTime()I
    .registers 2

    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->defaultUserControlTime:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 104
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 106
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoWifiDurationForMinusScore()I
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForMinusPoint:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 148
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 150
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoWifiDurationForPointFour()I
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointFour:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 137
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 139
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoWifiDurationForPointOne()I
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointOne:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 115
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 117
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoWifiDurationForPointTwo()I
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointTwo:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 126
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 128
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoWifiDurationForRecoveryScore()I
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForRecoveryPoint:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 159
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 161
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAutoWifiMaxCellCount()I
    .registers 2

    .line 169
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->maxCellCount:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 170
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 172
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasAutoWifiAheadTimeForEstimatedArrivalTime()Z
    .registers 1

    .line 88
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->aheadTimeForEstimatedArrivalTime:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasAutoWifiDefaultUserControlTime()Z
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->defaultUserControlTime:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasAutoWifiDurationForMinusScore()Z
    .registers 1

    .line 143
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForMinusPoint:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasAutoWifiDurationForPointFour()Z
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointFour:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasAutoWifiDurationForPointOne()Z
    .registers 1

    .line 110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointOne:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasAutoWifiDurationForPointTwo()Z
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointTwo:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasAutoWifiDurationForRecoveryScore()Z
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForRecoveryPoint:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasAutoWifiMaxCellCount()Z
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->maxCellCount:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isEnabledAutoWifiPnoScan()Z
    .registers 1

    .line 84
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->usePnoScanFunction:Ljava/lang/Boolean;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method setAttribute(Ljava/lang/String;I)V
    .registers 5

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_a0

    goto/16 :goto_64

    :sswitch_d
    const-string v0, "duration_for_point_two"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_64

    :cond_16
    const/4 v1, 0x7

    goto :goto_64

    :sswitch_18
    const-string v0, "duration_for_point_one"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_64

    :cond_21
    const/4 v1, 0x6

    goto :goto_64

    :sswitch_23
    const-string v0, "duration_for_point_four"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_64

    :cond_2c
    const/4 v1, 0x5

    goto :goto_64

    :sswitch_2e
    const-string v0, "max_cell_count"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_64

    :cond_37
    const/4 v1, 0x4

    goto :goto_64

    :sswitch_39
    const-string v0, "duration_for_minus_score"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_64

    :cond_42
    const/4 v1, 0x3

    goto :goto_64

    :sswitch_44
    const-string v0, "ahead_time_for_estimated_arrival_time"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_64

    :cond_4d
    const/4 v1, 0x2

    goto :goto_64

    :sswitch_4f
    const-string v0, "default_user_control_timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_58

    goto :goto_64

    :cond_58
    const/4 v1, 0x1

    goto :goto_64

    :sswitch_5a
    const-string v0, "duration_for_recovery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_63

    goto :goto_64

    :cond_63
    const/4 v1, 0x0

    :goto_64
    packed-switch v1, :pswitch_data_c2

    goto :goto_9f

    .line 64
    :pswitch_68
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointTwo:Ljava/lang/Integer;

    goto :goto_9f

    .line 61
    :pswitch_6f
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointOne:Ljava/lang/Integer;

    goto :goto_9f

    .line 67
    :pswitch_76
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointFour:Ljava/lang/Integer;

    goto :goto_9f

    .line 76
    :pswitch_7d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->maxCellCount:Ljava/lang/Integer;

    goto :goto_9f

    .line 70
    :pswitch_84
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForMinusPoint:Ljava/lang/Integer;

    goto :goto_9f

    .line 55
    :pswitch_8b
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->aheadTimeForEstimatedArrivalTime:Ljava/lang/Integer;

    goto :goto_9f

    .line 58
    :pswitch_92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->defaultUserControlTime:Ljava/lang/Integer;

    goto :goto_9f

    .line 73
    :pswitch_99
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForRecoveryPoint:Ljava/lang/Integer;

    :goto_9f
    return-void

    :sswitch_data_a0
    .sparse-switch
        -0x4fddbcea -> :sswitch_5a
        -0x4807a0b7 -> :sswitch_4f
        -0x46b86720 -> :sswitch_44
        -0xee7091e -> :sswitch_39
        0x2a8255ad -> :sswitch_2e
        0x495451b6 -> :sswitch_23
        0x75fa97d6 -> :sswitch_18
        0x75faabbc -> :sswitch_d
    .end sparse-switch

    :pswitch_data_c2
    .packed-switch 0x0
        :pswitch_99
        :pswitch_92
        :pswitch_8b
        :pswitch_84
        :pswitch_7d
        :pswitch_76
        :pswitch_6f
        :pswitch_68
    .end packed-switch
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "enable_pno_scan"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 47
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->usePnoScanFunction:Ljava/lang/Boolean;

    :cond_e
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accepted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[pno: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->usePnoScanFunction:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", estimatedArrivalTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->aheadTimeForEstimatedArrivalTime:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", p1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointOne:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", p2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointTwo:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", p4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForPointFour:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", p-1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForMinusPoint:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->durationForRecoveryPoint:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxCell: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyAutoWifi;->maxCellCount:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
