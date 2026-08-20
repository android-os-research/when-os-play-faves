.class public Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;
.super Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
.source "WifiScpmPolicyRoaming.java"


# instance fields
.field private useSilentRoamingFunction:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private useStrongRoamingFunction:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isEnabledSilentRoaming()Z
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->useSilentRoamingFunction:Ljava/lang/Boolean;

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

.method public isEnabledStrongRoaming()Z
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->useStrongRoamingFunction:Ljava/lang/Boolean;

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

.method setAttribute(Ljava/lang/String;Z)V
    .registers 4

    const-string v0, "enable_strong_roaming"

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->useStrongRoamingFunction:Ljava/lang/Boolean;

    goto :goto_1d

    :cond_f
    const-string v0, "enable_silent_roaming"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->useSilentRoamingFunction:Ljava/lang/Boolean;

    :cond_1d
    :goto_1d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accepted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [strongRoaming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledStrongRoaming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", silentRoaming:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyRoaming;->isEnabledSilentRoaming()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
