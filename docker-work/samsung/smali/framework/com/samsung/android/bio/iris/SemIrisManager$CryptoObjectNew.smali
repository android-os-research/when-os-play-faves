.class public final Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/iris/SemIrisManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObjectNew"
.end annotation


# instance fields
.field private blacklist mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private final blacklist mFidoRequestData:[B

.field private blacklist mFidoResultData:[B


# direct methods
.method constructor blacklist <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V
    .registers 3
    .param p1, "cry"    # Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoResultData:[B

    .line 1417
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1418
    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoRequestData:[B

    .line 1419
    return-void
.end method

.method public constructor blacklist <init>(Ljava/security/Signature;[B)V
    .registers 4
    .param p1, "signature"    # Ljava/security/Signature;
    .param p2, "fidoRequestData"    # [B

    .line 1434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoResultData:[B

    .line 1435
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1436
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoRequestData:[B

    .line 1437
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Cipher;[B)V
    .registers 4
    .param p1, "cipher"    # Ljavax/crypto/Cipher;
    .param p2, "fidoRequestData"    # [B

    .line 1439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoResultData:[B

    .line 1440
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1441
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoRequestData:[B

    .line 1442
    return-void
.end method

.method public constructor blacklist <init>(Ljavax/crypto/Mac;[B)V
    .registers 4
    .param p1, "mac"    # Ljavax/crypto/Mac;
    .param p2, "fidoRequestData"    # [B

    .line 1444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoResultData:[B

    .line 1445
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    .line 1446
    iput-object p2, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoRequestData:[B

    .line 1447
    return-void
.end method

.method private blacklist setFidoResultData([B)V
    .registers 2
    .param p1, "fidoResultData"    # [B

    .line 1501
    iput-object p1, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoResultData:[B

    .line 1502
    return-void
.end method


# virtual methods
.method public blacklist getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .registers 2

    .line 1423
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public blacklist getCipher()Ljavax/crypto/Cipher;
    .registers 2

    .line 1466
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFidoRequestData()[B
    .registers 2

    .line 1486
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoRequestData:[B

    return-object v0
.end method

.method public blacklist getFidoResultData()[B
    .registers 2

    .line 1497
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mFidoResultData:[B

    return-object v0
.end method

.method public blacklist getMac()Ljavax/crypto/Mac;
    .registers 2

    .line 1476
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOpId()J
    .registers 3

    .line 1431
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getSignature()Ljava/security/Signature;
    .registers 2

    .line 1456
    iget-object v0, p0, Lcom/samsung/android/bio/iris/SemIrisManager$CryptoObjectNew;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
