.class public Lcom/android/server/enterprise/threatdefense/MTDSignature;
.super Ljava/lang/Object;
.source "MTDSignature.java"


# static fields
.field public static final CERTIFICATE_PATH:Ljava/lang/String; = "/etc/mtdl.crt"

.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "SHA256withRSA/PSS"

.field public static final DEFAULT_SIGNATURE_LEN:I = 0x100

.field public static final TAG:Ljava/lang/String; = "MTDSignature"


# instance fields
.field public mData:[B

.field public mSignature:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    .line 38
    array-length v1, p1

    const/16 v2, 0x100

    if-le v1, v2, :cond_1f

    .line 39
    array-length v1, p1

    sub-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    .line 41
    array-length v0, p1

    sub-int/2addr v0, v2

    array-length v1, p1

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mSignature:[B

    return-void

    .line 44
    :cond_1f
    sget-object p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid SHA256. please encode the String as UTF_8"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getCertificate()Ljava/security/cert/Certificate;
    .registers 8

    const-string p0, "IOException"

    const/4 v0, 0x0

    .line 68
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/etc/mtdl.crt"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_a} :catch_72
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_a} :catch_50
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_a} :catch_2b
    .catchall {:try_start_3 .. :try_end_a} :catchall_26

    :try_start_a
    const-string v2, "X.509"

    .line 69
    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 70
    invoke-virtual {v2, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_14} :catch_24
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_14} :catch_22
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_14} :catch_20
    .catchall {:try_start_a .. :try_end_14} :catchall_81

    .line 82
    :try_start_14
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_19

    goto/16 :goto_80

    :catch_19
    move-exception v1

    .line 84
    sget-object v2, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_80

    :catch_20
    move-exception v2

    goto :goto_2d

    :catch_22
    move-exception v2

    goto :goto_52

    :catch_24
    move-exception v2

    goto :goto_74

    :catchall_26
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_82

    :catch_2b
    move-exception v2

    move-object v1, v0

    .line 77
    :goto_2d
    :try_start_2d
    sget-object v3, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CertificateException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_2d .. :try_end_4a} :catchall_81

    if-eqz v1, :cond_80

    .line 82
    :try_start_4c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_19

    goto :goto_80

    :catch_50
    move-exception v2

    move-object v1, v0

    .line 75
    :goto_52
    :try_start_52
    sget-object v3, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_52 .. :try_end_6c} :catchall_81

    if-eqz v1, :cond_80

    .line 82
    :try_start_6e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_19

    goto :goto_80

    :catch_72
    move-exception v2

    move-object v1, v0

    .line 73
    :goto_74
    :try_start_74
    sget-object v3, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    const-string v4, "SecurityException"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_81

    if-eqz v1, :cond_80

    .line 82
    :try_start_7d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_19

    :cond_80
    :goto_80
    return-object v0

    :catchall_81
    move-exception v0

    :goto_82
    if-eqz v1, :cond_8e

    :try_start_84
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_8e

    :catch_88
    move-exception v1

    .line 84
    sget-object v2, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :cond_8e
    :goto_8e
    throw v0
.end method

.method public final getPublicKey([B)Ljava/security/PublicKey;
    .registers 3

    const/4 p0, 0x0

    .line 113
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_6} :catch_25
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    :try_start_6
    const-string p1, "X.509"

    .line 114
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 116
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_16} :catch_1f
    .catchall {:try_start_6 .. :try_end_16} :catchall_35

    .line 122
    :try_start_16
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1e
    return-object p0

    :catch_1f
    move-exception p1

    goto :goto_27

    :catchall_21
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    goto :goto_36

    :catch_25
    move-exception p1

    move-object v0, p0

    .line 118
    :goto_27
    :try_start_27
    invoke-virtual {p1}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_35

    if-eqz v0, :cond_34

    .line 122
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    :catch_30
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_34
    :goto_34
    return-object p0

    :catchall_35
    move-exception p0

    :goto_36
    if-eqz v0, :cond_40

    .line 122
    :try_start_38
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    :cond_40
    :goto_40
    throw p0
.end method

.method public getVerifiedData()Ljava/lang/String;
    .registers 4

    .line 50
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->verify()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 51
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 52
    sget-boolean p0, Lcom/android/server/enterprise/threatdefense/ThreatDefenseService;->DEBUG:Z

    if-eqz p0, :cond_2a

    .line 53
    sget-object p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verified !!! data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 55
    :cond_2a
    sget-object p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    const-string v1, "Verified !!!"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_31
    return-object v0

    .line 59
    :cond_32
    sget-object p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->TAG:Ljava/lang/String;

    const-string v0, "Verification failed !!!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final verify()Z
    .registers 4

    const/4 v0, 0x0

    .line 93
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    if-eqz v1, :cond_2b

    const-string v2, "SHA256withRSA/PSS"

    .line 96
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 97
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/threatdefense/MTDSignature;->getPublicKey([B)Ljava/security/PublicKey;

    move-result-object v1

    if-nez v1, :cond_18

    return v0

    .line 99
    :cond_18
    invoke-virtual {v2, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mData:[B

    invoke-virtual {v2, v1}, Ljava/security/Signature;->update([B)V

    .line 101
    iget-object p0, p0, Lcom/android/server/enterprise/threatdefense/MTDSignature;->mSignature:[B

    invoke-virtual {v2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0
    :try_end_26
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_26} :catch_27
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_26} :catch_27

    return p0

    :catch_27
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    :cond_2b
    return v0
.end method
