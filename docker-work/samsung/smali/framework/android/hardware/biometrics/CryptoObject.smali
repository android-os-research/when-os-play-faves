.class public Landroid/hardware/biometrics/CryptoObject;
.super Ljava/lang/Object;
.source "CryptoObject.java"


# instance fields
.field private final greylist-max-o mCrypto:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/security/identity/IdentityCredential;)V
    .registers 2
    .param p1, "credential"    # Landroid/security/identity/IdentityCredential;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/identity/PresentationSession;)V
    .registers 2
    .param p1, "session"    # Landroid/security/identity/PresentationSession;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/security/Signature;)V
    .registers 2
    .param p1, "signature"    # Ljava/security/Signature;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Cipher;)V
    .registers 2
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 44
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljavax/crypto/Mac;)V
    .registers 2
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public greylist-max-o getCipher()Ljavax/crypto/Cipher;
    .registers 3

    .line 78
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Cipher;

    if-eqz v1, :cond_9

    check-cast v0, Ljavax/crypto/Cipher;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/security/identity/IdentityCredential;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public greylist-max-o getMac()Ljavax/crypto/Mac;
    .registers 3

    .line 86
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljavax/crypto/Mac;

    if-eqz v1, :cond_9

    check-cast v0, Ljavax/crypto/Mac;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final greylist-max-o getOpId()J
    .registers 3

    .line 112
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 113
    const-wide/16 v0, 0x0

    return-wide v0

    .line 114
    :cond_7
    instance-of v1, v0, Landroid/security/identity/IdentityCredential;

    if-eqz v1, :cond_12

    .line 115
    check-cast v0, Landroid/security/identity/IdentityCredential;

    invoke-virtual {v0}, Landroid/security/identity/IdentityCredential;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    .line 116
    :cond_12
    instance-of v1, v0, Landroid/security/identity/PresentationSession;

    if-eqz v1, :cond_1d

    .line 117
    check-cast v0, Landroid/security/identity/PresentationSession;

    invoke-virtual {v0}, Landroid/security/identity/PresentationSession;->getCredstoreOperationHandle()J

    move-result-wide v0

    return-wide v0

    .line 119
    :cond_1d
    invoke-static {v0}, Landroid/security/keystore2/AndroidKeyStoreProvider;->getKeyStoreOperationHandle(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPresentationSession()Landroid/security/identity/PresentationSession;
    .registers 3

    .line 104
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Landroid/security/identity/PresentationSession;

    if-eqz v1, :cond_9

    check-cast v0, Landroid/security/identity/PresentationSession;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public greylist-max-o getSignature()Ljava/security/Signature;
    .registers 3

    .line 70
    iget-object v0, p0, Landroid/hardware/biometrics/CryptoObject;->mCrypto:Ljava/lang/Object;

    instance-of v1, v0, Ljava/security/Signature;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/security/Signature;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
