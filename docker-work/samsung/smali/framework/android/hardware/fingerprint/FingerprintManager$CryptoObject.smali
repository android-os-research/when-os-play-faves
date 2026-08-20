.class public final Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
.super Landroid/hardware/biometrics/CryptoObject;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>(Ljava/security/Signature;)V
    .registers 2
    .param p1, "signature"    # Ljava/security/Signature;

    .line 335
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljava/security/Signature;)V

    .line 336
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Cipher;)V
    .registers 2
    .param p1, "cipher"    # Ljavax/crypto/Cipher;

    .line 339
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    .line 340
    return-void
.end method

.method public constructor whitelist <init>(Ljavax/crypto/Mac;)V
    .registers 2
    .param p1, "mac"    # Ljavax/crypto/Mac;

    .line 343
    invoke-direct {p0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    .line 344
    return-void
.end method


# virtual methods
.method public whitelist getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 359
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIdentityCredential()Landroid/security/identity/IdentityCredential;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getIdentityCredential()Landroid/security/identity/IdentityCredential;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMac()Ljavax/crypto/Mac;
    .registers 2

    .line 367
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPresentationSession()Landroid/security/identity/PresentationSession;
    .registers 2

    .line 387
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getPresentationSession()Landroid/security/identity/PresentationSession;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSignature()Ljava/security/Signature;
    .registers 2

    .line 351
    invoke-super {p0}, Landroid/hardware/biometrics/CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
