.class public Lcom/samsung/android/security/keystore/SamsungKeyStoreUtils;
.super Ljava/lang/Object;
.source "SamsungKeyStoreUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungKeyStoreUtils"


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SamsungAttestKey(Ljava/lang/String;[B)Ljava/lang/Iterable;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "SamsungKeyStoreUtils is Deprecated, use AttestationUtils"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public SamsungAttestKeyDeviceIds(Ljava/lang/String;[B)Ljava/lang/Iterable;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/lang/Iterable<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;,
            Lcom/samsung/android/security/keystore/DeviceIdAttestationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 52
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "SamsungKeyStoreUtils is Deprecated, use AttestationUtils"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/lang/NullPointerException;,
            Ljava/security/ProviderException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    .local p2, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "SamsungKeyStoreUtils is Deprecated, use AttestationUtils"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
