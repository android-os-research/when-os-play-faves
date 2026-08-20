.class Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;
.super Ljava/lang/Object;
.source "SemSupplicantP2pIfaceHalHidlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupplicantResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mMethodName:Ljava/lang/String;

.field private mStatus:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mMethodName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 878
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mStatus:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 879
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mValue:Ljava/lang/Object;

    .line 880
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "entering "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 903
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mValue:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public isSuccess()Z
    .registers 2

    .line 897
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mStatus:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    if-eqz p0, :cond_d

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->code:I

    if-eqz p0, :cond_b

    const/4 v0, 0x5

    if-ne p0, v0, :cond_d

    :cond_b
    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public setResult(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V
    .registers 4

    .line 891
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->logCompletion(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 892
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    .line 893
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mStatus:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    return-void
.end method

.method public setResult(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;",
            "TE;)V"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->logCompletion(Ljava/lang/String;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;)V

    .line 885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl;->logd(Ljava/lang/String;)V

    .line 886
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mStatus:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 887
    iput-object p2, p0, Lcom/samsung/android/server/wifi/p2p/SemSupplicantP2pIfaceHalHidlImpl$SupplicantResult;->mValue:Ljava/lang/Object;

    return-void
.end method
