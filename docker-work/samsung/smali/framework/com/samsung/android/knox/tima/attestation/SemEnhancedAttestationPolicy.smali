.class public Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;
.super Ljava/lang/Object;
.source "SemEnhancedAttestationPolicy.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SemEAPolicy"

.field private static blacklist mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "SemEAPolicy"

    const-string v1, "SemEnhancedAttestationPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->getEaPolicy()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    .line 48
    return-void
.end method

.method private blacklist getEaPolicy()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;
    .registers 3

    .line 111
    const-string v0, "SemEAPolicy"

    const-string v1, "getEaPolicy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized whitelist getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    monitor-enter v0

    .line 72
    :try_start_3
    const-string v1, "SemEAPolicy"

    const-string v2, "getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    if-nez p0, :cond_16

    .line 74
    const-string v2, "SemEAPolicy"

    const-string v3, "getInstance: Context null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_34

    .line 75
    monitor-exit v0

    return-object v1

    .line 77
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->isSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 78
    const-string v2, "SemEAPolicy"

    const-string v3, "getInstance: not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_34

    .line 79
    monitor-exit v0

    return-object v1

    .line 81
    :cond_25
    :try_start_25
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    if-nez v1, :cond_30

    .line 82
    new-instance v1, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    .line 84
    :cond_30
    sget-object v1, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEnhancedAttestationPolicy:Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_34

    monitor-exit v0

    return-object v1

    .line 71
    .end local p0    # "context":Landroid/content/Context;
    :catchall_34
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized whitelist isSupported(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;

    monitor-enter v0

    .line 56
    :try_start_3
    const-string v1, "SemEAPolicy"

    const-string v2, "isSupported: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-nez p0, :cond_16

    .line 58
    const-string v1, "SemEAPolicy"

    const-string v2, "isSupported: Context null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_20

    .line 59
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 61
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->isSupported()Z

    move-result v1
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_20

    monitor-exit v0

    return v1

    .line 55
    .end local p0    # "context":Landroid/content/Context;
    :catchall_20
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public whitelist attest(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)V
    .registers 5
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    .line 94
    const-string v0, "SemEAPolicy"

    const-string v1, "attest on-prem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-virtual {p2}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->getEnhancedAttestationPolicyCallback()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V

    .line 96
    return-void
.end method

.method public whitelist attest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;)V
    .registers 6
    .param p1, "auk"    # Ljava/lang/String;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "cb"    # Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;

    .line 106
    const-string v0, "SemEAPolicy"

    const-string v1, "attest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicy;->mEaPolicy:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;

    invoke-virtual {p3}, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationPolicyCallback;->getEnhancedAttestationPolicyCallback()Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicy;->startAttestation(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationPolicyCallback;)V

    .line 108
    return-void
.end method
