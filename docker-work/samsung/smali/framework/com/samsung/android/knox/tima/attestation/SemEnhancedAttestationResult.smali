.class public Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;
.super Ljava/lang/Object;
.source "SemEnhancedAttestationResult.java"


# instance fields
.field private blacklist result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .registers 2
    .param p1, "result"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    .line 17
    return-void
.end method


# virtual methods
.method public whitelist getBlob()[B
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getBlob()[B

    move-result-object v0

    return-object v0

    .line 64
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResponseId()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getServerResponseId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 76
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getResponseRawData()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getResponseRawData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUniqueId()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 26
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 28
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getUrl()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationResult;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 38
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 40
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
