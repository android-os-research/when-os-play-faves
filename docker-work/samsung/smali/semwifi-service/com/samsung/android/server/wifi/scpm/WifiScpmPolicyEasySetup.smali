.class public Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;
.super Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
.source "WifiScpmPolicyEasySetup.java"


# instance fields
.field private partialScanIntervalMs:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private resetAfterScreenOffOn:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useEasySetupFunction:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPartialScanIntervalMs()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->partialScanIntervalMs:Ljava/lang/Integer;

    if-eqz p0, :cond_9

    .line 66
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 68
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "value is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPartialScanIntervalMs()Z
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->partialScanIntervalMs:Ljava/lang/Integer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isEnabledEasySetup()Z
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->useEasySetupFunction:Ljava/lang/Boolean;

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

.method public isEnabledResetAfterScreenOffOn()Z
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->resetAfterScreenOffOn:Ljava/lang/Boolean;

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
    .registers 4

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "partial_scan_interval_ms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_12

    .line 45
    :cond_c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->partialScanIntervalMs:Ljava/lang/Integer;

    :goto_12
    return-void
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "enable_easy_setup"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->useEasySetupFunction:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_f
    const-string v0, "reset_after_screen_off_on"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->resetAfterScreenOffOn:Ljava/lang/Boolean;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accepted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [EasySetupEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->isEnabledEasySetup()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resetAfterScreenOffOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->isEnabledResetAfterScreenOffOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", partialScanIntervalMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyEasySetup;->getPartialScanIntervalMs()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
