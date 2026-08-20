.class public Lcom/samsung/android/security/keystore/AttestationUtils;
.super Ljava/lang/Object;
.source "AttestationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;
    }
.end annotation


# static fields
.field public static final DEFAULT_KEYSTORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final KEYMASTER_VERSION_SUPPORT_INTEGRITY_STATUS:I = 0x2

.field public static final PUBKEY_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final SAMSUNG_ATTESTESTATION_DEVICE_IDS_ROOT:Ljava/lang/String; = "samsungDeviceIds"

.field public static final SAMSUNG_ATTESTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field public static final TAG:Ljava/lang/String; = "AttestationUtils"

.field public static final separator:Ljava/lang/String; = ":"


# instance fields
.field public final mKeyStore:Landroid/security/KeyStore2;

.field public mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;


# direct methods
.method public static synthetic $r8$lambda$OyAJ8VzDeP8D_gFtuRKSKGcKcHQ(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->lambda$tryAttestation$0(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 719
    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 376
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    return-void
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .registers 3

    if-lez p0, :cond_5b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_53

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_43

    const/4 v0, 0x6

    if-eq p0, v0, :cond_3b

    const/4 v0, 0x7

    if-eq p0, v0, :cond_33

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x11

    if-eq p0, v0, :cond_23

    .line 1001
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 999
    :cond_23
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 997
    :cond_2b
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 995
    :cond_33
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 993
    :cond_3b
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 991
    :cond_43
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 989
    :cond_4b
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 987
    :cond_53
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_5b
    const/16 v0, -0x10

    if-eq p0, v0, :cond_69

    .line 1012
    new-instance v0, Landroid/security/KeyStoreException;

    .line 1013
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1009
    :cond_69
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static synthetic lambda$tryAttestation$0(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-interface {p2, p0, p1}, Landroid/security/samsungattestation/ISamsungAttestation;->attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static makeBool(I)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 949
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_17

    .line 953
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 954
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    const/4 p0, 0x1

    .line 955
    invoke-static {p0}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    .line 951
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a boolean tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;
    .registers 4

    .line 968
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_16

    .line 971
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 972
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 973
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object p0

    iput-object p0, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    return-object v0

    .line 969
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a bytes tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/security/keystore/AttestParameterSpec;",
            ")",
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

    if-eqz p1, :cond_21

    .line 531
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 532
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 536
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    .line 533
    :cond_19
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "attestDevice : alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 528
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attestDevice : AttestParameterSpec is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attestDevice(Ljava/lang/String;[B)Ljava/lang/Iterable;
    .registers 4
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

    .line 499
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    const/4 p1, 0x1

    .line 500
    invoke-virtual {v0, p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setDeviceAttestation(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object p1

    .line 502
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/security/keystore/AttestParameterSpec;",
            ")",
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

    if-eqz p1, :cond_48

    .line 445
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 451
    :try_start_10
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 452
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0

    .line 454
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    move-result-object p0
    :try_end_23
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_10 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p0

    .line 456
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incompatible argument detected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 447
    :cond_40
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "attestKey : alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 442
    :cond_48
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "attestKey : AttestParameterSpec is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attestKey(Ljava/lang/String;[B)Ljava/lang/Iterable;
    .registers 4
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

    .line 417
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 418
    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object p1

    .line 419
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public final constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 749
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v0

    if-eqz v0, :cond_118

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const v1, -0x6ffffd3c

    .line 754
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v1

    const v2, -0x6ffff7ca

    if-eqz v1, :cond_33

    .line 756
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v3, "samsungDeviceIds"

    .line 757
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 756
    invoke-static {v2, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_43

    .line 759
    :cond_33
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string/jumbo v3, "samsung"

    .line 760
    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 759
    invoke-static {v2, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :goto_43
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    if-eqz v1, :cond_69

    const-string v2, "RFC1779"

    .line 763
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_69

    const v3, -0x6ffff7c9

    .line 765
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 764
    invoke-static {v3, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_69
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isVerifiableIntegrity()Z

    move-result v1

    if-eqz v1, :cond_ab

    const v1, 0x700008fe

    .line 768
    invoke-static {v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "AttestationUtils"

    if-eqz v1, :cond_a6

    .line 771
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 772
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 773
    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 775
    :cond_8f
    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->getBytesAuthenticatePackage(Ljava/lang/String;Landroid/app/Application;)[B

    move-result-object p0

    if-eqz p0, :cond_a0

    const v1, -0x6ffff701

    .line 777
    invoke-static {v1, p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ab

    :cond_a0
    const-string p0, "Auth package byte is null"

    .line 779
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab

    :cond_a6
    const-string p0, "can not found application"

    .line 782
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_ab
    :goto_ab
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result p0

    if-eqz p0, :cond_10b

    const p0, -0x6ffffd3a

    .line 786
    sget-object p1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 788
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 786
    invoke-static {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, -0x6ffffd39

    .line 789
    sget-object p1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 791
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 789
    invoke-static {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, -0x6ffffd38

    .line 792
    sget-object p1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 794
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 792
    invoke-static {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, -0x6ffffd34

    .line 795
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 797
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 795
    invoke-static {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const p0, -0x6ffffd33

    .line 798
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 800
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 798
    invoke-static {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_10b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/security/keymint/KeyParameter;

    return-object p0

    .line 750
    :cond_118
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The challenge cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteKey(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    :try_start_0
    const-string p0, "AndroidKeyStore"

    .line 709
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    .line 710
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 711
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 714
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    new-instance p1, Ljava/security/KeyStoreException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    if-eqz p1, :cond_51

    .line 628
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    .line 629
    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_49

    .line 638
    :try_start_17
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidKeyStore"

    invoke-static {v2, v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v2

    .line 639
    invoke-virtual {v2, v0}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 640
    invoke-virtual {v2}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 642
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 643
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object p1

    goto :goto_37

    .line 644
    :cond_33
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object p1

    .line 646
    :goto_37
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_3a
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_17 .. :try_end_3a} :catch_3b
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_3a} :catch_3b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_3a} :catch_3b
    .catch Ljava/security/KeyStoreException; {:try_start_17 .. :try_end_3a} :catch_3b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_3a} :catch_3b
    .catch Ljava/security/NoSuchProviderException; {:try_start_17 .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    move-exception p0

    .line 651
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    new-instance p1, Ljava/security/ProviderException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 634
    :cond_49
    new-instance p0, Ljava/security/ProviderException;

    const-string p1, "Cannot generate key pair with empty alias or specified uid."

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 625
    :cond_51
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "AttestParameterSpec is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 603
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 604
    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object p1

    .line 605
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object p0

    return-object p0
.end method

.method public final getBytesAuthenticatePackage(Ljava/lang/String;Landroid/app/Application;)[B
    .registers 9

    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AttestationUtils"

    if-eqz v0, :cond_10

    const-string/jumbo p0, "packageName is null"

    .line 900
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 904
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->getPackagePublicKeys(Ljava/lang/String;Landroid/app/Application;)[Ljava/security/PublicKey;

    move-result-object p2

    if-nez p2, :cond_21

    const-string/jumbo p0, "pubKeys is null"

    .line 906
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 910
    :cond_21
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 911
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 912
    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 914
    array-length p1, p2

    move v1, v2

    :goto_31
    if-ge v1, p1, :cond_56

    aget-object v3, p2, v1

    const-string v4, ":"

    .line 915
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 916
    array-length v5, v4

    invoke-virtual {v0, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 917
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->sha256(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v3

    .line 918
    array-length v4, v3

    invoke-virtual {v0, v3, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 920
    :cond_56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "AndroidKeyStore"

    .line 669
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 670
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 671
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p1

    .line 674
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object p0
.end method

.method public getKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    :try_start_0
    const-string p0, "AndroidKeyStore"

    .line 691
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    .line 692
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 693
    invoke-virtual {p0, p1, v0}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 696
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 697
    new-instance p1, Ljava/security/KeyStoreException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPackagePublicKeys(Ljava/lang/String;Landroid/app/Application;)[Ljava/security/PublicKey;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 852
    invoke-virtual {p2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p2, 0x8000000

    const/4 v0, 0x0

    .line 855
    :try_start_7
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_b} :catch_37

    if-nez p0, :cond_16

    const-string p0, "AttestationUtils"

    const-string/jumbo p1, "pkgInfo is null"

    .line 862
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 866
    :cond_16
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 868
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 869
    array-length p1, p0

    new-array p1, p1, [Ljava/security/PublicKey;

    .line 871
    array-length p2, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_22
    if-ge v1, p2, :cond_36

    aget-object v3, p0, v1

    .line 873
    :try_start_26
    invoke-virtual {v3}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    aput-object v3, p1, v2
    :try_end_2c
    .catch Ljava/security/cert/CertificateException; {:try_start_26 .. :try_end_2c} :catch_31

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :catch_31
    move-exception p0

    .line 875
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    return-object v0

    :cond_36
    return-object p1

    :catch_37
    move-exception p0

    .line 857
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public final declared-synchronized getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;
    .registers 2

    monitor-enter p0

    .line 740
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    if-nez v0, :cond_11

    const-string v0, "android.security.samsungattestation"

    .line 742
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 741
    invoke-static {v0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 744
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest<",
            "TR;>;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    const-string v0, ""

    const-string v1, "AttestationUtils"

    .line 727
    invoke-virtual {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object p0

    .line 729
    :try_start_8
    invoke-interface {p1, p0}, Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;->execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_c} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    const-string p1, "Cannot connect to SamsungKeystore daemon."

    .line 734
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    new-instance p0, Landroid/security/KeyStoreException;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_1a
    move-exception p0

    const-string p1, "KeyStore exception"

    .line 731
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    new-instance p1, Landroid/security/KeyStoreException;

    iget p0, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {p1, p0, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public final isPrivateKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_23

    :try_start_6
    const-string p0, "AndroidKeyStore"

    .line 840
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    const/4 v0, 0x0

    .line 841
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 842
    invoke-virtual {p0, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result p0
    :try_end_14
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_14} :catch_15
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_14} :catch_15

    return p0

    :catch_15
    move-exception p0

    .line 845
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 846
    new-instance p1, Ljava/security/KeyStoreException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 836
    :cond_23
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "alias == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 4

    .line 932
    new-instance p0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {p0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    const/4 v0, 0x0

    .line 933
    iput v0, p0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    const-wide/16 v0, -0x1

    .line 934
    iput-wide v0, p0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 935
    iput-object p1, p0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    const/4 p1, 0x0

    .line 936
    iput-object p1, p0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    return-object p0
.end method

.method public final sha256(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_34

    :try_start_6
    const-string p0, "SHA-256"

    .line 889
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_c} :catch_18

    .line 893
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 895
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_18
    move-exception p0

    .line 891
    new-instance p1, Ljava/security/ProviderException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoSuchAlgorithmException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 885
    :cond_34
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "msg == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 8
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

    .line 551
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-eqz p2, :cond_5b

    .line 558
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 559
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1b

    const-string p0, "AttestationUtils"

    const-string/jumbo p1, "there is no cert chain byte"

    .line 560
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 564
    :cond_1b
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 565
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_28

    return-void

    .line 570
    :cond_28
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 571
    :goto_2d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 572
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const/4 v3, 0x0

    .line 573
    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2d

    .line 577
    :cond_3f
    :try_start_3f
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 578
    iget-object p0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_4c
    .catch Landroid/security/KeyStoreException; {:try_start_3f .. :try_end_4c} :catch_4d

    return-void

    :catch_4d
    move-exception p0

    .line 580
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->printStackTrace()V

    .line 581
    new-instance p1, Ljava/security/KeyStoreException;

    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 555
    :cond_5b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "iterable == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 552
    :cond_63
    new-instance p0, Ljava/security/KeyStoreException;

    const-string p1, "Entry exists and is not a trusted certificate"

    invoke-direct {p0, p1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/hardware/security/keymint/KeyParameter;",
            ")",
            "Ljava/util/Collection<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;,
            Lcom/samsung/android/security/keystore/DeviceIdAttestationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    .line 810
    new-instance v1, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/hardware/security/keymint/Certificate;

    if-eqz p0, :cond_4c

    .line 815
    array-length p1, p0

    const/4 p2, 0x0

    :goto_18
    if-ge p2, p1, :cond_24

    aget-object v1, p0, p2

    .line 816
    iget-object v1, v1, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/security/KeyStoreException; {:try_start_5 .. :try_end_21} :catch_54

    add-int/lit8 p2, p2, 0x1

    goto :goto_18

    .line 827
    :cond_24
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p0

    const/4 p1, 0x3

    if-lt p0, p1, :cond_2c

    return-object v0

    .line 828
    :cond_2c
    new-instance p0, Ljava/security/ProviderException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attestation certificate chain contained "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " entries. At least three are required."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 813
    :cond_4c
    :try_start_4c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "chain == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_54
    .catch Landroid/security/KeyStoreException; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    move-exception p0

    .line 819
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p1

    const/16 p2, -0x42

    if-ne p1, p2, :cond_6d

    .line 820
    new-instance p1, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;

    .line 822
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    const-string p2, "Failed to generate attestation certificate chain with deviceId"

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 824
    :cond_6d
    new-instance p1, Ljava/security/ProviderException;

    .line 825
    invoke-virtual {p0}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object p0

    const-string p2, "Failed to generate attestation certificate chain"

    invoke-direct {p1, p2, p0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
