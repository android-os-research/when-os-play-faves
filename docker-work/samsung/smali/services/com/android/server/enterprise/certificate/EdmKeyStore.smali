.class public Lcom/android/server/enterprise/certificate/EdmKeyStore;
.super Ljava/lang/Object;
.source "EdmKeyStore.java"


# static fields
.field public static final ALIAS_USERID_SEPARATOR:Ljava/lang/String; = "_"

.field public static final NATIVE_KEYSTORE_PATH:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "EdmKeyStore"

.field public static final TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field public static final TYPE_NATIVE:I = 0x2

.field public static final TYPE_TRUSTED:I = 0x0

.field public static final TYPE_UNTRUSTED:I = 0x3

.field public static final TYPE_USER:I = 0x1

.field public static final UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

.field public static final USER_KEYSTORE_PATH:Ljava/lang/String;

.field public static mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public static mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public static mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public static mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;


# instance fields
.field public mKeyStore:Ljava/security/KeyStore;

.field public mKeyStoreLock:Ljava/lang/Object;

.field public mPath:Ljava/lang/String;

.field public mType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enterprise_cacerts.bks"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enterprise_untrustedcerts.bks"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enterprise_usercerts.bks"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "enterprise_nativecerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    .line 158
    iput p2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mType:I

    .line 162
    monitor-enter v0

    const/4 p2, 0x0

    :try_start_10
    const-string v1, "BKS"

    .line 165
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_73

    .line 167
    :try_start_18
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_28
    .catchall {:try_start_18 .. :try_end_1d} :catchall_25

    .line 168
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v1, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_29
    .catchall {:try_start_1d .. :try_end_22} :catchall_23

    goto :goto_57

    :catchall_23
    move-exception p0

    goto :goto_62

    :catchall_25
    move-exception p0

    move-object v1, p2

    goto :goto_62

    :catch_28
    move-object v1, p2

    :catch_29
    if-eqz v1, :cond_2f

    .line 171
    :try_start_2b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    move-object v1, p2

    .line 176
    :cond_2f
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, p2, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 177
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2b .. :try_end_39} :catchall_23

    .line 178
    :try_start_39
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3, v2, p2}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 179
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_60

    .line 180
    :try_start_43
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0, v3, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_5c

    .line 184
    :try_start_48
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4f
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4c

    goto :goto_56

    :catchall_4c
    move-exception p0

    move-object p2, v3

    goto :goto_74

    :catch_4f
    :try_start_4f
    const-string p0, "EdmKeyStore"

    const-string p1, "fos close failed"

    .line 186
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    :goto_56
    move-object v1, v3

    .line 192
    :goto_57
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 195
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_7a

    return-void

    :catchall_5c
    move-exception p0

    move-object p2, v2

    move-object v1, v3

    goto :goto_62

    :catchall_60
    move-exception p0

    move-object p2, v2

    :goto_62
    if-eqz p2, :cond_6f

    .line 184
    :try_start_64
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68
    .catchall {:try_start_64 .. :try_end_67} :catchall_70

    goto :goto_6f

    :catch_68
    :try_start_68
    const-string p1, "EdmKeyStore"

    const-string p2, "fos close failed"

    .line 186
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_6f
    :goto_6f
    throw p0
    :try_end_70
    .catchall {:try_start_68 .. :try_end_70} :catchall_70

    :catchall_70
    move-exception p0

    move-object p2, v1

    goto :goto_74

    :catchall_73
    move-exception p0

    :goto_74
    if-eqz p2, :cond_79

    .line 192
    :try_start_76
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 194
    :cond_79
    throw p0

    :catchall_7a
    move-exception p0

    .line 195
    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_76 .. :try_end_7c} :catchall_7a

    throw p0
.end method

.method public static areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    .line 503
    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p0

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0
    :try_end_11
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_11} :catch_11

    :catch_11
    :cond_11
    return v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;
    .registers 5

    const-class v0, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_24

    .line 111
    :try_start_6
    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_22

    if-nez v2, :cond_1e

    .line 113
    :try_start_a
    new-instance v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14
    .catchall {:try_start_a .. :try_end_13} :catchall_22

    goto :goto_1e

    :catch_14
    move-exception p0

    :try_start_15
    const-string v2, "EdmKeyStore"

    const-string v3, "Should not happen! "

    .line 115
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 119
    :cond_1e
    :goto_1e
    sget-object p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceTrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_22

    monitor-exit v0

    return-object p0

    :catchall_22
    move-exception p0

    goto :goto_81

    :cond_24
    const/4 v2, 0x1

    if-ne p0, v2, :cond_43

    .line 121
    :try_start_27
    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_22

    if-nez v2, :cond_3f

    .line 123
    :try_start_2b
    new-instance v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->USER_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_34} :catch_35
    .catchall {:try_start_2b .. :try_end_34} :catchall_22

    goto :goto_3f

    :catch_35
    move-exception p0

    :try_start_36
    const-string v2, "EdmKeyStore"

    const-string v3, "Should not happen! "

    .line 125
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 129
    :cond_3f
    :goto_3f
    sget-object p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUser:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_22

    monitor-exit v0

    return-object p0

    :cond_43
    const/4 v2, 0x2

    if-ne p0, v2, :cond_62

    .line 131
    :try_start_46
    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_22

    if-nez v2, :cond_5e

    .line 133
    :try_start_4a
    new-instance v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->NATIVE_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_53} :catch_54
    .catchall {:try_start_4a .. :try_end_53} :catchall_22

    goto :goto_5e

    :catch_54
    move-exception p0

    :try_start_55
    const-string v2, "EdmKeyStore"

    const-string v3, "Should not happen! "

    .line 135
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 139
    :cond_5e
    :goto_5e
    sget-object p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceNative:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_22

    monitor-exit v0

    return-object p0

    :cond_62
    const/4 v2, 0x3

    if-ne p0, v2, :cond_83

    .line 141
    :try_start_65
    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_67
    .catchall {:try_start_65 .. :try_end_67} :catchall_22

    if-nez v2, :cond_7d

    .line 143
    :try_start_69
    new-instance v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;

    sget-object v3, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v2, v3, p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_72} :catch_73
    .catchall {:try_start_69 .. :try_end_72} :catchall_22

    goto :goto_7d

    :catch_73
    move-exception p0

    :try_start_74
    const-string v2, "EdmKeyStore"

    const-string v3, "Should not happen! "

    .line 145
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    sput-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 149
    :cond_7d
    :goto_7d
    sget-object p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mInstanceUntrusted:Lcom/android/server/enterprise/certificate/EdmKeyStore;
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_22

    monitor-exit v0

    return-object p0

    :goto_81
    monitor-exit v0

    throw p0

    .line 151
    :cond_83
    monitor-exit v0

    return-object v1
.end method

.method public static isCa(Ljava/security/cert/X509Certificate;)Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "2.5.29.19"

    .line 487
    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p0

    if-nez p0, :cond_a

    return v0

    .line 490
    :cond_a
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 491
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object p0

    .line 492
    new-instance v1, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v1, p0}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    .line 493
    check-cast p0, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result p0
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    return v0
.end method

.method public static isSelfSigned(Ljava/security/cert/X509Certificate;)Z
    .registers 3

    .line 470
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 473
    :try_start_e
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 474
    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_15
    .catch Ljava/security/SignatureException; {:try_start_e .. :try_end_15} :catch_17
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_15} :catch_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_15} :catch_17
    .catch Ljava/security/NoSuchProviderException; {:try_start_e .. :try_end_15} :catch_17
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_15} :catch_17

    const/4 p0, 0x1

    return p0

    :catch_17
    move-exception p0

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Verifying self-signed certificate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EdmKeyStore"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 553
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final changeAlias(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 634
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 635
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0, p2, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_12
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_2a

    :catch_13
    move-exception p0

    .line 637
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception with keystore "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdmKeyStore"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public cleanUid(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 657
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 658
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliases()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 660
    :try_start_19
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_3d

    .line 661
    :try_start_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 662
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v2}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 664
    :cond_38
    monitor-exit v3

    goto :goto_d

    :catchall_3a
    move-exception v2

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw v2
    :try_end_3d
    .catch Ljava/security/KeyStoreException; {:try_start_3c .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v2

    const-string v3, "EdmKeyStore"

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with keystore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 669
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v0
.end method

.method public containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z
    .registers 13

    if-eqz p3, :cond_3c

    .line 379
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v1, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    sget-object v2, Lcom/android/server/enterprise/certificate/EdmKeyStore;->UNTRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 382
    :cond_16
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->findCertificateOrIssuer(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x1

    return p0

    .line 388
    :cond_1e
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-static {p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 390
    invoke-static {p1, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_3c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 393
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    move-result p0

    return p0

    :cond_3c
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 675
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Certificate aliases {"

    .line 676
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    :try_start_d
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    .line 680
    :cond_13
    :goto_13
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_3b

    .line 681
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p2

    if-eqz p2, :cond_13

    const-string p2, ", "

    .line 685
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2d
    .catch Ljava/security/KeyStoreException; {:try_start_d .. :try_end_2d} :catch_2e

    goto :goto_13

    :catch_2e
    move-exception p0

    const-string p2, "Could not dump alias from keystore "

    .line 689
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3b
    const-string/jumbo p0, "}"

    .line 692
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public final findCertificateOrIssuer(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Ljava/security/cert/X509Certificate;
    .registers 8

    .line 412
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;

    move-result-object v0

    .line 414
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 415
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_c

    .line 416
    invoke-static {v1, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_c

    return-object v1

    .line 422
    :cond_29
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;

    move-result-object v0

    .line 424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 425
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_35

    .line 426
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_35

    return-object v1

    .line 432
    :cond_52
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;II)Ljava/util/List;

    move-result-object p1

    .line 433
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 434
    iget-object p4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p4, p3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object p3

    check-cast p3, Ljava/security/cert/X509Certificate;

    if-eqz p3, :cond_5a

    .line 435
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result p4

    if-nez p4, :cond_7c

    invoke-static {p3, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->areEqual(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

    move-result p4
    :try_end_7a
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_7a} :catch_7d

    if-eqz p4, :cond_5a

    :cond_7c
    return-object p3

    :catch_7d
    move-exception p0

    .line 442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get error"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdmKeyStore"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    const/4 p0, 0x0

    return-object p0
.end method

.method public generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;
    .registers 2

    .line 313
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateAlias(Ljava/security/cert/X509Certificate;I)Ljava/lang/String;
    .registers 3

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .registers 5

    const-string p0, "SHA1"

    .line 321
    :try_start_2
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 323
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x0

    const/4 v1, 0x2

    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    const/16 v2, 0x8

    shl-int/2addr p1, v2

    or-int/2addr p1, v0

    const/4 v0, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p1, v1

    aget-byte p0, p0, v0
    :try_end_29
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_29} :catch_33

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    .line 328
    invoke-static {p0, v2}, Lcom/android/server/enterprise/utils/Utils;->intToHexString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_33
    move-exception p0

    .line 326
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public final generateAllAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;Ljavax/security/auth/x500/X500Principal;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificateCache;",
            "Ljavax/security/auth/x500/X500Principal;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 337
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object p2

    .line 340
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 343
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 344
    invoke-virtual {p0, p2, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_29
    if-eqz p3, :cond_32

    .line 348
    invoke-virtual {p0, p2, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_32
    return-object v0
.end method

.method public getAliases()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 646
    :try_start_5
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object p0

    .line 647
    :goto_b
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 648
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_1a} :catch_1b

    goto :goto_b

    :catch_1b
    move-exception p0

    .line 651
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception with keystore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EdmKeyStore"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-object v0
.end method

.method public final getAliasesForUser(Lcom/android/server/enterprise/certificate/CertificateCache;II)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/enterprise/certificate/CertificateCache;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "_"

    .line 512
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 514
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result v2

    .line 517
    :try_start_f
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v3}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .line 518
    :cond_15
    :goto_15
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 519
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 520
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    if-eqz v2, :cond_47

    .line 524
    invoke-virtual {p0, p1, v4, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 525
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 528
    :cond_47
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 530
    :cond_4b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-eqz p2, :cond_15

    .line 532
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/security/KeyStoreException; {:try_start_f .. :try_end_69} :catch_6a

    goto :goto_15

    :catch_6a
    move-exception p0

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception with keystore "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdmKeyStore"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    return-object v1
.end method

.method public getCertificates(Ljava/util/List;I)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 271
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 273
    :try_start_15
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_2e

    .line 274
    :try_start_18
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 275
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_29

    .line 277
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    :cond_29
    monitor-exit v2

    goto :goto_9

    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_18 .. :try_end_2d} :catchall_2b

    :try_start_2d
    throw v1
    :try_end_2e
    .catch Ljava/security/KeyStoreException; {:try_start_2d .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v1

    const-string v2, "EdmKeyStore"

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_46
    return-object v0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    return-object p0
.end method

.method public final getPersonaManagerAdapter()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .registers 1

    .line 354
    const-class p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {p0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    return-object p0
.end method

.method public installCertificates(Ljava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/X509Certificate;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 207
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljava/security/cert/X509Certificate;I)Ljava/lang/String;

    move-result-object v2

    .line 209
    :try_start_19
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_35

    .line 210
    :try_start_1c
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v2, v1}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 211
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 212
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeUserIdFromAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_30
    monitor-exit v3

    goto :goto_9

    :catchall_32
    move-exception v1

    monitor-exit v3
    :try_end_34
    .catchall {:try_start_1c .. :try_end_34} :catchall_32

    :try_start_34
    throw v1
    :try_end_35
    .catch Ljava/security/KeyStoreException; {:try_start_34 .. :try_end_35} :catch_35

    :catch_35
    move-exception v1

    const-string v2, "EdmKeyStore"

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 219
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v0
.end method

.method public installCertificates(Ljava/util/Map;I)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/security/cert/X509Certificate;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 228
    :try_start_19
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catch Ljava/security/KeyStoreException; {:try_start_19 .. :try_end_1c} :catch_47

    .line 229
    :try_start_1c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 230
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/Certificate;

    invoke-virtual {v4, v3, v5}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 231
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 232
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_42
    monitor-exit v2

    goto :goto_d

    :catchall_44
    move-exception v1

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_44

    :try_start_46
    throw v1
    :try_end_47
    .catch Ljava/security/KeyStoreException; {:try_start_46 .. :try_end_47} :catch_47

    :catch_47
    move-exception v1

    const-string v2, "EdmKeyStore"

    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 239
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 4

    const/4 v0, 0x1

    .line 360
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getKeyStore()Ljava/security/KeyStore;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/KeyStore;->size()I

    move-result p0
    :try_end_9
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_9} :catch_f

    if-nez p0, :cond_c

    goto :goto_27

    :cond_c
    const/4 p0, 0x0

    move v0, p0

    goto :goto_27

    :catch_f
    move-exception p0

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "EdmKeyStore"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_27
    return v0
.end method

.method public final isFromContainerOwner(Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/lang/String;I)Z
    .registers 4

    const/4 p0, 0x0

    .line 542
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->isInAdminList(ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final matchPublicKey(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z
    .registers 3

    const/4 p0, 0x0

    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    .line 457
    :try_start_5
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    const/4 p0, 0x1

    :catch_d
    :cond_d
    return p0
.end method

.method public performKeystoreUpgrade()V
    .registers 6

    .line 605
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliases()Ljava/util/List;

    move-result-object v0

    .line 606
    iget v1, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mType:I

    if-eqz v1, :cond_48

    const/4 v2, 0x1

    if-eq v1, v2, :cond_48

    const/4 v3, 0x2

    if-eq v1, v3, :cond_12

    const/4 v2, 0x3

    if-eq v1, v2, :cond_48

    goto :goto_75

    .line 619
    :cond_12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 620
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v2, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1010_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 623
    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 611
    :cond_48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_"

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c

    .line 628
    :cond_75
    :goto_75
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-void
.end method

.method public performKeystoreUpgrade_old(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getAliases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_"

    .line 572
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 573
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 574
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 575
    invoke-virtual {p0, v1, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_46
    const/4 v3, 0x0

    .line 586
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 589
    :try_start_4f
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->changeAlias(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_67} :catch_68

    goto :goto_8

    .line 593
    :catch_68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performKeystoreMigration NumberFormatException userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EdmKeyStore"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 597
    :cond_80
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-void
.end method

.method public removeCertificates(Ljava/util/List;I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 251
    :try_start_15
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catch Ljava/security/KeyStoreException; {:try_start_15 .. :try_end_18} :catch_31

    .line 252
    :try_start_18
    invoke-virtual {p0, v1, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 253
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v4, v3}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 255
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    :cond_2c
    monitor-exit v2

    goto :goto_9

    :catchall_2e
    move-exception v1

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    :try_start_30
    throw v1
    :try_end_31
    .catch Ljava/security/KeyStoreException; {:try_start_30 .. :try_end_31} :catch_31

    :catch_31
    move-exception v1

    const-string v2, "EdmKeyStore"

    .line 259
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception with keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 262
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    return-object v0
.end method

.method public final removeUserIdFromAlias(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string p0, "_"

    .line 546
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    return-object p1

    .line 549
    :cond_a
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final saveKeyStore()V
    .registers 6

    .line 289
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 292
    :try_start_4
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_24
    .catchall {:try_start_4 .. :try_end_b} :catchall_22

    .line 293
    :try_start_b
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {p0, v2, v1}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1f
    .catchall {:try_start_b .. :try_end_10} :catchall_1c

    .line 299
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_14
    .catchall {:try_start_10 .. :try_end_13} :catchall_57

    goto :goto_47

    :catch_14
    :try_start_14
    const-string p0, "EdmKeyStore"

    const-string v1, "fos close failed"

    .line 301
    :goto_18
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_57

    goto :goto_47

    :catchall_1c
    move-exception p0

    move-object v1, v2

    goto :goto_49

    :catch_1f
    move-exception p0

    move-object v1, v2

    goto :goto_25

    :catchall_22
    move-exception p0

    goto :goto_49

    :catch_24
    move-exception p0

    :goto_25
    :try_start_25
    const-string v2, "EdmKeyStore"

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_22

    if-eqz v1, :cond_47

    .line 299
    :try_start_3e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42
    .catchall {:try_start_3e .. :try_end_41} :catchall_57

    goto :goto_47

    :catch_42
    :try_start_42
    const-string p0, "EdmKeyStore"

    const-string v1, "fos close failed"

    goto :goto_18

    .line 305
    :cond_47
    :goto_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_57

    return-void

    :goto_49
    if-eqz v1, :cond_56

    .line 299
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f
    .catchall {:try_start_4b .. :try_end_4e} :catchall_57

    goto :goto_56

    :catch_4f
    :try_start_4f
    const-string v1, "EdmKeyStore"

    const-string v2, "fos close failed"

    .line 301
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_56
    :goto_56
    throw p0

    :catchall_57
    move-exception p0

    .line 305
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_4f .. :try_end_59} :catchall_57

    throw p0
.end method
