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

.field private static final KEYMASTER_VERSION_SUPPORT_INTEGRITY_STATUS:I = 0x2

.field public static final PUBKEY_DIGEST_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final SAMSUNG_ATTESTESTATION_DEVICE_IDS_ROOT:Ljava/lang/String; = "samsungDeviceIds"

.field private static final SAMSUNG_ATTESTESTATION_ROOT:Ljava/lang/String; = "samsung"

.field private static final TAG:Ljava/lang/String; = "AttestationUtils"

.field private static final separator:Ljava/lang/String; = ":"


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore2;

.field private mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 376
    invoke-static {}, Landroid/security/KeyStore2;->getInstance()Landroid/security/KeyStore2;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    .line 377
    return-void
.end method

.method private constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;
    .registers 9
    .param p1, "spec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 749
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v0

    if-eqz v0, :cond_116

    .line 753
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/security/keymint/KeyParameter;>;"
    const v1, -0x6ffffd3c

    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getChallenge()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v1

    const v2, -0x6ffff7ca

    if-eqz v1, :cond_32

    .line 756
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 757
    const-string v3, "samsungDeviceIds"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 756
    invoke-static {v2, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 759
    :cond_32
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 760
    const-string v3, "samsung"

    invoke-virtual {v3, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 759
    invoke-static {v2, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 762
    :goto_41
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 763
    .local v1, "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    if-eqz v1, :cond_67

    const-string v2, "RFC1779"

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_67

    .line 764
    const v3, -0x6ffff7c9

    .line 765
    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 764
    invoke-static {v3, v2}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    :cond_67
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isVerifiableIntegrity()Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 768
    const v2, 0x700008fe

    invoke-static {v2}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBool(I)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    .line 770
    .local v2, "application":Landroid/app/Application;
    const-string v3, "AttestationUtils"

    if-eqz v2, :cond_a4

    .line 771
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, "packageName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 773
    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 775
    :cond_8d
    invoke-direct {p0, v4, v2}, Lcom/samsung/android/security/keystore/AttestationUtils;->getBytesAuthenticatePackage(Ljava/lang/String;Landroid/app/Application;)[B

    move-result-object v5

    .line 776
    .local v5, "bytesAuthPkg":[B
    if-eqz v5, :cond_9e

    .line 777
    const v3, -0x6ffff701

    invoke-static {v3, v5}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 779
    :cond_9e
    const-string v6, "Auth package byte is null"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "bytesAuthPkg":[B
    :goto_a3
    goto :goto_a9

    .line 782
    :cond_a4
    const-string v4, "can not found application"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    .end local v2    # "application":Landroid/app/Application;
    :cond_a9
    :goto_a9
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDevicePropertiesAttestationIncluded()Z

    move-result v2

    if-eqz v2, :cond_109

    .line 786
    const v2, -0x6ffffd3a

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 788
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 786
    invoke-static {v2, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    const v2, -0x6ffffd39

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 791
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 789
    invoke-static {v2, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    const v2, -0x6ffffd38

    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 794
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 792
    invoke-static {v2, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 795
    const v2, -0x6ffffd34

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 797
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 795
    invoke-static {v2, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    const v2, -0x6ffffd33

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 800
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 798
    invoke-static {v2, v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 802
    :cond_109
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/security/keymint/KeyParameter;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/KeyParameter;

    return-object v2

    .line 750
    .end local v0    # "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/security/keymint/KeyParameter;>;"
    .end local v1    # "certificateSubject":Ljavax/security/auth/x500/X500Principal;
    :cond_116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The challenge cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBytesAuthenticatePackage(Ljava/lang/String;Landroid/app/Application;)[B
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "application"    # Landroid/app/Application;

    .line 899
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AttestationUtils"

    if-eqz v0, :cond_f

    .line 900
    const-string v0, "packageName is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/4 v0, 0x0

    return-object v0

    .line 904
    :cond_f
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils;->getPackagePublicKeys(Ljava/lang/String;Landroid/app/Application;)[Ljava/security/PublicKey;

    move-result-object v0

    .line 905
    .local v0, "pubKeys":[Ljava/security/PublicKey;
    if-nez v0, :cond_1f

    .line 906
    const-string v2, "pubKeys is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1

    .line 910
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 911
    .local v1, "packageNameByte":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 912
    .local v2, "authPkgStream":Ljava/io/ByteArrayOutputStream;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 914
    array-length v3, v0

    move v5, v4

    :goto_2f
    if-ge v5, v3, :cond_54

    aget-object v6, v0, v5

    .line 915
    .local v6, "pubKey":Ljava/security/PublicKey;
    const-string v7, ":"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 916
    .local v7, "separator":[B
    array-length v8, v7

    invoke-virtual {v2, v7, v4, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 917
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/samsung/android/security/keystore/AttestationUtils;->sha256(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v8

    .line 918
    .local v8, "baseEncode":[B
    array-length v9, v8

    invoke-virtual {v2, v8, v4, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 914
    .end local v6    # "pubKey":Ljava/security/PublicKey;
    .end local v7    # "separator":[B
    .end local v8    # "baseEncode":[B
    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 920
    :cond_54
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .registers 3
    .param p0, "errorCode"    # I

    .line 983
    if-lez p0, :cond_47

    .line 985
    sparse-switch p0, :sswitch_data_5c

    .line 1001
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 999
    :sswitch_f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key permanently invalidated"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 997
    :sswitch_17
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 995
    :sswitch_1f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 993
    :sswitch_27
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 991
    :sswitch_2f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 989
    :sswitch_37
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 987
    :sswitch_3f
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1005
    :cond_47
    packed-switch p0, :pswitch_data_7a

    .line 1012
    new-instance v0, Landroid/security/KeyStoreException;

    .line 1013
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    .line 1012
    return-object v0

    .line 1009
    :pswitch_54
    new-instance v0, Landroid/security/KeyStoreException;

    const-string v1, "Invalid user authentication validity duration"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    :sswitch_data_5c
    .sparse-switch
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_37
        0x4 -> :sswitch_2f
        0x6 -> :sswitch_27
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_17
        0x11 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch -0x10
        :pswitch_54
    .end packed-switch
.end method

.method private getPackagePublicKeys(Ljava/lang/String;Landroid/app/Application;)[Ljava/security/PublicKey;
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 852
    invoke-virtual {p2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 853
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 855
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    const/high16 v2, 0x8000000

    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_c} :catch_3b

    move-object v1, v2

    .line 859
    nop

    .line 861
    if-nez v1, :cond_18

    .line 862
    const-string v2, "AttestationUtils"

    const-string v4, "pkgInfo is null"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    return-object v3

    .line 866
    :cond_18
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    .line 868
    .local v2, "signInfo":Landroid/content/pm/SigningInfo;
    invoke-virtual {v2}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v4

    .line 869
    .local v4, "sigs":[Landroid/content/pm/Signature;
    array-length v5, v4

    new-array v5, v5, [Ljava/security/PublicKey;

    .line 870
    .local v5, "pubKeys":[Ljava/security/PublicKey;
    const/4 v6, 0x0

    .line 871
    .local v6, "i":I
    array-length v7, v4

    const/4 v8, 0x0

    :goto_24
    if-ge v8, v7, :cond_3a

    aget-object v9, v4, v8

    .line 873
    .local v9, "s":Landroid/content/pm/Signature;
    :try_start_28
    invoke-virtual {v9}, Landroid/content/pm/Signature;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v10

    aput-object v10, v5, v6
    :try_end_2e
    .catch Ljava/security/cert/CertificateException; {:try_start_28 .. :try_end_2e} :catch_35

    .line 877
    nop

    .line 878
    nop

    .end local v9    # "s":Landroid/content/pm/Signature;
    add-int/lit8 v6, v6, 0x1

    .line 871
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 874
    .restart local v9    # "s":Landroid/content/pm/Signature;
    :catch_35
    move-exception v7

    .line 875
    .local v7, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v7}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 876
    return-object v3

    .line 880
    .end local v7    # "e":Ljava/security/cert/CertificateException;
    .end local v9    # "s":Landroid/content/pm/Signature;
    :cond_3a
    return-object v5

    .line 856
    .end local v2    # "signInfo":Landroid/content/pm/SigningInfo;
    .end local v4    # "sigs":[Landroid/content/pm/Signature;
    .end local v5    # "pubKeys":[Ljava/security/PublicKey;
    .end local v6    # "i":I
    :catch_3b
    move-exception v2

    .line 857
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 858
    return-object v3
.end method

.method private declared-synchronized getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;
    .registers 2

    monitor-enter p0

    .line 740
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    if-nez v0, :cond_11

    .line 741
    const-string v0, "android.security.samsungattestation"

    .line 742
    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 741
    invoke-static {v0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;

    .line 744
    .end local p0    # "this":Lcom/samsung/android/security/keystore/AttestationUtils;
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mSamsungAttestationBinder:Landroid/security/samsungattestation/ISamsungAttestation;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    .line 739
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;)Ljava/lang/Object;
    .registers 7
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

    .line 727
    .local p1, "request":Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;, "Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest<TR;>;"
    const-string v0, ""

    const-string v1, "AttestationUtils"

    invoke-direct {p0}, Lcom/samsung/android/security/keystore/AttestationUtils;->getSamsungAttestationService()Landroid/security/samsungattestation/ISamsungAttestation;

    move-result-object v2

    .line 729
    .local v2, "service":Landroid/security/samsungattestation/ISamsungAttestation;
    :try_start_8
    invoke-interface {p1, v2}, Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;->execute(Landroid/security/samsungattestation/ISamsungAttestation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/ServiceSpecificException; {:try_start_8 .. :try_end_c} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v0

    .line 733
    :catch_d
    move-exception v3

    .line 734
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Cannot connect to SamsungKeystore daemon."

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    new-instance v1, Landroid/security/KeyStoreException;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 730
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1a
    move-exception v3

    .line 731
    .local v3, "e":Landroid/os/ServiceSpecificException;
    const-string v4, "KeyStore exception"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    new-instance v1, Landroid/security/KeyStoreException;

    iget v4, v3, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-direct {v1, v4, v0}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private isPrivateKeyEntry(Ljava/lang/String;)Z
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 835
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 840
    :try_start_6
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 841
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 842
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v1
    :try_end_14
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_14} :catch_15
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_14} :catch_15
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_14} :catch_15

    return v1

    .line 843
    .end local v0    # "keystore":Ljava/security/KeyStore;
    :catch_15
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 846
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$tryAttestation$0(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Landroid/security/samsungattestation/ISamsungAttestation;)[Landroid/hardware/security/keymint/Certificate;
    .registers 4
    .param p0, "descriptor"    # Landroid/system/keystore2/KeyDescriptor;
    .param p1, "args"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "service"    # Landroid/security/samsungattestation/ISamsungAttestation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 811
    invoke-interface {p2, p0, p1}, Landroid/security/samsungattestation/ISamsungAttestation;->attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object v0

    return-object v0
.end method

.method static makeBool(I)Landroid/hardware/security/keymint/KeyParameter;
    .registers 5
    .param p0, "tag"    # I

    .line 949
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    .line 950
    .local v0, "type":I
    const/high16 v1, 0x70000000

    if-ne v0, v1, :cond_17

    .line 953
    new-instance v1, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v1}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 954
    .local v1, "p":Landroid/hardware/security/keymint/KeyParameter;
    iput p0, v1, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 955
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/hardware/security/keymint/KeyParameterValue;->boolValue(Z)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v2

    iput-object v2, v1, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 956
    return-object v1

    .line 951
    .end local v1    # "p":Landroid/hardware/security/keymint/KeyParameter;
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a boolean tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static makeBytes(I[B)Landroid/hardware/security/keymint/KeyParameter;
    .registers 5
    .param p0, "tag"    # I
    .param p1, "b"    # [B

    .line 968
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getTagType(I)I

    move-result v0

    const/high16 v1, -0x70000000

    if-ne v0, v1, :cond_16

    .line 971
    new-instance v0, Landroid/hardware/security/keymint/KeyParameter;

    invoke-direct {v0}, Landroid/hardware/security/keymint/KeyParameter;-><init>()V

    .line 972
    .local v0, "p":Landroid/hardware/security/keymint/KeyParameter;
    iput p0, v0, Landroid/hardware/security/keymint/KeyParameter;->tag:I

    .line 973
    invoke-static {p1}, Landroid/hardware/security/keymint/KeyParameterValue;->blob([B)Landroid/hardware/security/keymint/KeyParameterValue;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/security/keymint/KeyParameter;->value:Landroid/hardware/security/keymint/KeyParameterValue;

    .line 974
    return-object v0

    .line 969
    .end local v0    # "p":Landroid/hardware/security/keymint/KeyParameter;
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a bytes tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;

    .line 932
    new-instance v0, Landroid/system/keystore2/KeyDescriptor;

    invoke-direct {v0}, Landroid/system/keystore2/KeyDescriptor;-><init>()V

    .line 933
    .local v0, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    const/4 v1, 0x0

    iput v1, v0, Landroid/system/keystore2/KeyDescriptor;->domain:I

    .line 934
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroid/system/keystore2/KeyDescriptor;->nspace:J

    .line 935
    iput-object p1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    .line 936
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->blob:[B

    .line 937
    return-object v0
.end method

.method private sha256(Ljava/lang/String;)[B
    .registers 7
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/security/ProviderException;
        }
    .end annotation

    .line 884
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 887
    const/4 v0, 0x0

    .line 889
    .local v0, "md":Ljava/security/MessageDigest;
    :try_start_7
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_1b

    move-object v0, v1

    .line 892
    nop

    .line 893
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 895
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    return-object v1

    .line 890
    :catch_1b
    move-exception v1

    .line 891
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NoSuchAlgorithmException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "msg == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;
    .registers 10
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # [Landroid/hardware/security/keymint/KeyParameter;
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
    .local v0, "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :try_start_5
    invoke-direct {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v1

    .line 810
    .local v1, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    new-instance v2, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/security/keystore/AttestationUtils$$ExternalSyntheticLambda0;-><init>(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/security/keystore/AttestationUtils;->handleRemoteExceptionSamsungAttestation(Lcom/samsung/android/security/keystore/AttestationUtils$checkedRemoteRequest;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/security/keymint/Certificate;

    .line 812
    .local v2, "result":[Landroid/hardware/security/keymint/Certificate;
    if-eqz v2, :cond_51

    .line 815
    array-length v3, v2

    const/4 v4, 0x0

    :goto_18
    if-ge v4, v3, :cond_25

    aget-object v5, v2, v4

    .line 816
    .local v5, "c":Landroid/hardware/security/keymint/Certificate;
    iget-object v6, v5, Landroid/hardware/security/keymint/Certificate;->encodedCertificate:[B

    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catch Landroid/security/KeyStoreException; {:try_start_5 .. :try_end_21} :catch_59

    .line 815
    nop

    .end local v5    # "c":Landroid/hardware/security/keymint/Certificate;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 826
    .end local v1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v2    # "result":[Landroid/hardware/security/keymint/Certificate;
    :cond_25
    nop

    .line 827
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2e

    .line 831
    return-object v0

    .line 828
    :cond_2e
    new-instance v1, Ljava/security/ProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attestation certificate chain contained "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 829
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " entries. At least three are required."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 813
    .restart local v1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .restart local v2    # "result":[Landroid/hardware/security/keymint/Certificate;
    :cond_51
    :try_start_51
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "chain == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .end local v0    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .end local p0    # "this":Lcom/samsung/android/security/keystore/AttestationUtils;
    .end local p1    # "alias":Ljava/lang/String;
    .end local p2    # "args":[Landroid/hardware/security/keymint/KeyParameter;
    throw v3
    :try_end_59
    .catch Landroid/security/KeyStoreException; {:try_start_51 .. :try_end_59} :catch_59

    .line 818
    .end local v1    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    .end local v2    # "result":[Landroid/hardware/security/keymint/Certificate;
    .restart local v0    # "chain":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .restart local p0    # "this":Lcom/samsung/android/security/keystore/AttestationUtils;
    .restart local p1    # "alias":Ljava/lang/String;
    .restart local p2    # "args":[Landroid/hardware/security/keymint/KeyParameter;
    :catch_59
    move-exception v1

    .line 819
    .local v1, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v2

    const/16 v3, -0x42

    if-ne v2, v3, :cond_72

    .line 820
    new-instance v2, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;

    .line 822
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    const-string v4, "Failed to generate attestation certificate chain with deviceId"

    invoke-direct {v2, v4, v3}, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 824
    :cond_72
    new-instance v2, Ljava/security/ProviderException;

    .line 825
    invoke-virtual {v1}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/security/keystore/AttestationUtils;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v3

    const-string v4, "Failed to generate attestation certificate chain"

    invoke-direct {v2, v4, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .registers 5
    .param p1, "spec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;
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

    .line 527
    if-eqz p1, :cond_21

    .line 531
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "alias":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 536
    invoke-direct {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 533
    :cond_19
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "attestDevice : alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 528
    .end local v0    # "alias":Ljava/lang/String;
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attestDevice : AttestParameterSpec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attestDevice(Ljava/lang/String;[B)Ljava/lang/Iterable;
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

    .line 499
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 500
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->setDeviceAttestation(Z)Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object v0

    .line 502
    .local v0, "spec":Lcom/samsung/android/security/keystore/AttestParameterSpec;
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v1

    return-object v1
.end method

.method public attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;
    .registers 7
    .param p1, "spec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;
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

    .line 441
    if-eqz p1, :cond_4a

    .line 445
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "alias":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 451
    :try_start_10
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 452
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v1

    return-object v1

    .line 454
    :cond_1b
    invoke-direct {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->constructAttestationArguments(Lcom/samsung/android/security/keystore/AttestParameterSpec;)[Landroid/hardware/security/keymint/KeyParameter;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/security/keystore/AttestationUtils;->tryAttestation(Ljava/lang/String;[Landroid/hardware/security/keymint/KeyParameter;)Ljava/util/Collection;

    move-result-object v1
    :try_end_23
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_10 .. :try_end_23} :catch_24

    return-object v1

    .line 455
    :catch_24
    move-exception v1

    .line 456
    .local v1, "e":Lcom/samsung/android/security/keystore/DeviceIdAttestationException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incompatible argument detected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/security/keystore/DeviceIdAttestationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    .end local v1    # "e":Lcom/samsung/android/security/keystore/DeviceIdAttestationException;
    :cond_42
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "attestKey : alias == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    .end local v0    # "alias":Ljava/lang/String;
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "attestKey : AttestParameterSpec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public attestKey(Ljava/lang/String;[B)Ljava/lang/Iterable;
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

    .line 417
    new-instance v0, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;-><init>(Ljava/lang/String;[B)V

    .line 418
    invoke-virtual {v0}, Lcom/samsung/android/security/keystore/AttestParameterSpec$Builder;->build()Lcom/samsung/android/security/keystore/AttestParameterSpec;

    move-result-object v0

    .line 419
    .local v0, "spec":Lcom/samsung/android/security/keystore/AttestParameterSpec;
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v1

    return-object v1
.end method

.method public deleteKey(Ljava/lang/String;)V
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 709
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 710
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 711
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_f

    .line 716
    .end local v0    # "keystore":Ljava/security/KeyStore;
    nop

    .line 717
    return-void

    .line 712
    :catch_f
    move-exception v0

    .line 714
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 715
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;
    .registers 8
    .param p1, "spec"    # Lcom/samsung/android/security/keystore/AttestParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/security/ProviderException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 624
    if-eqz p1, :cond_55

    .line 627
    const/4 v0, 0x0

    .line 628
    .local v0, "keyPair":Ljava/security/KeyPair;
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getKeyGenParameterSpec()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v1

    .line 629
    .local v1, "params":Landroid/security/keystore/KeyGenParameterSpec;
    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "alias":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4d

    .line 638
    :try_start_18
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AndroidKeyStore"

    invoke-static {v3, v4}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v3

    .line 639
    .local v3, "kpg":Ljava/security/KeyPairGenerator;
    invoke-virtual {v3, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 640
    invoke-virtual {v3}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v4

    move-object v0, v4

    .line 642
    invoke-virtual {p1}, Lcom/samsung/android/security/keystore/AttestParameterSpec;->isDeviceAttestation()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 643
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestDevice(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v4

    goto :goto_39

    .line 644
    :cond_35
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->attestKey(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/lang/Iterable;

    move-result-object v4

    :goto_39
    nop

    .line 646
    .local v4, "certChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-virtual {p0, v2, v4}, Lcom/samsung/android/security/keystore/AttestationUtils;->storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    :try_end_3d
    .catch Lcom/samsung/android/security/keystore/DeviceIdAttestationException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/KeyStoreException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_3d} :catch_3f
    .catch Ljava/security/NoSuchProviderException; {:try_start_18 .. :try_end_3d} :catch_3f

    .line 653
    .end local v3    # "kpg":Ljava/security/KeyPairGenerator;
    .end local v4    # "certChain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    nop

    .line 655
    return-object v0

    .line 647
    :catch_3f
    move-exception v3

    .line 651
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    new-instance v4, Ljava/security/ProviderException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 634
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4d
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Cannot generate key pair with empty alias or specified uid."

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 625
    .end local v0    # "keyPair":Ljava/security/KeyPair;
    .end local v1    # "params":Landroid/security/keystore/KeyGenParameterSpec;
    .end local v2    # "alias":Ljava/lang/String;
    :cond_55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AttestParameterSpec is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateKeyPair(Ljava/lang/String;[B)Ljava/security/KeyPair;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "challenge"    # [B
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

    move-result-object v0

    .line 605
    .local v0, "spec":Lcom/samsung/android/security/keystore/AttestParameterSpec;
    invoke-virtual {p0, v0}, Lcom/samsung/android/security/keystore/AttestationUtils;->generateKeyPair(Lcom/samsung/android/security/keystore/AttestParameterSpec;)Ljava/security/KeyPair;

    move-result-object v1

    return-object v1
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .param p1, "alias"    # Ljava/lang/String;

    .line 669
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 670
    .local v1, "keystore":Ljava/security/KeyStore;
    invoke-virtual {v1, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 671
    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_e} :catch_f

    return-object v0

    .line 672
    .end local v1    # "keystore":Ljava/security/KeyStore;
    :catch_f
    move-exception v1

    .line 674
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 677
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 691
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 692
    .local v0, "keystore":Ljava/security/KeyStore;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 693
    invoke-virtual {v0, p1, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1
    :try_end_e
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_f
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    .line 694
    .end local v0    # "keystore":Ljava/security/KeyStore;
    :catch_f
    move-exception v0

    .line 696
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 697
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public storeCertificateChain(Ljava/lang/String;Ljava/lang/Iterable;)V
    .registers 10
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

    .line 551
    .local p2, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->isPrivateKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 554
    if-eqz p2, :cond_5d

    .line 558
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 559
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 560
    const-string v1, "AttestationUtils"

    const-string v2, "there is no cert chain byte"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return-void

    .line 564
    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 565
    .local v1, "userCert":[B
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_27

    .line 566
    return-void

    .line 569
    :cond_27
    const/4 v2, 0x0

    .line 570
    .local v2, "caCert":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 571
    .local v3, "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 572
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [B

    .line 573
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2d

    .line 577
    :cond_40
    :try_start_40
    invoke-direct {p0, p1}, Lcom/samsung/android/security/keystore/AttestationUtils;->makeKeyDescriptor(Ljava/lang/String;)Landroid/system/keystore2/KeyDescriptor;

    move-result-object v4

    .line 578
    .local v4, "descriptor":Landroid/system/keystore2/KeyDescriptor;
    iget-object v5, p0, Lcom/samsung/android/security/keystore/AttestationUtils;->mKeyStore:Landroid/security/KeyStore2;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v4, v1, v6}, Landroid/security/KeyStore2;->updateSubcomponents(Landroid/system/keystore2/KeyDescriptor;[B[B)V
    :try_end_4d
    .catch Landroid/security/KeyStoreException; {:try_start_40 .. :try_end_4d} :catch_4f

    .line 582
    .end local v4    # "descriptor":Landroid/system/keystore2/KeyDescriptor;
    nop

    .line 584
    return-void

    .line 579
    :catch_4f
    move-exception v4

    .line 580
    .local v4, "e":Landroid/security/KeyStoreException;
    invoke-virtual {v4}, Landroid/security/KeyStoreException;->printStackTrace()V

    .line 581
    new-instance v5, Ljava/security/KeyStoreException;

    invoke-virtual {v4}, Landroid/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 555
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<[B>;"
    .end local v1    # "userCert":[B
    .end local v2    # "caCert":[B
    .end local v3    # "certificateConcatenationStream":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Landroid/security/KeyStoreException;
    :cond_5d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "iterable == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_65
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Entry exists and is not a trusted certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
