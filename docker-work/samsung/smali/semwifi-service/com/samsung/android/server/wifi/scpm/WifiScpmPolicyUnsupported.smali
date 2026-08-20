.class public Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicyUnsupported;
.super Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
.source "WifiScpmPolicyUnsupported.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->getPolicyName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " policy"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
