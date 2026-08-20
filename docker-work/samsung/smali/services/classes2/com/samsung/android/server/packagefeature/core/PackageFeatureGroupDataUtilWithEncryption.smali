.class public Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;
.super Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;
.source "PackageFeatureGroupDataUtilWithEncryption.java"


# static fields
.field public static final DECRYPT_STR:Ljava/lang/String; = "decrypt"

.field public static final ENCRYPT_STR:Ljava/lang/String; = "encrypt"


# instance fields
.field public final mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;-><init>(Landroid/content/Context;Lcom/samsung/android/server/util/CoreLogger;Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;)V

    .line 62
    invoke-static {p1}, Lcom/samsung/android/server/util/CoreEncryptor;->getCoreEncryptor(Landroid/content/Context;)Lcom/samsung/android/server/util/CoreEncryptor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;

    return-void
.end method


# virtual methods
.method public loadFromFileInputStream(Ljava/io/FileInputStream;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 90
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5c

    .line 91
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/server/util/CoreEncryptor;->decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_52

    const-string v1, "decrypt"

    if-eqz p1, :cond_48

    .line 94
    :try_start_f
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p1, :cond_16

    .line 95
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logSucceeded(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_52

    .line 97
    :cond_16
    :try_start_16
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_46

    .line 99
    :try_start_1f
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_3c

    .line 100
    :try_start_24
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_32

    .line 101
    :try_start_28
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_3c

    :try_start_2b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_46

    .line 104
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_5c

    return-object v1

    :catchall_32
    move-exception v1

    .line 97
    :try_start_33
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception p1

    :try_start_38
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3b
    throw v1
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p1

    :try_start_3d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p0

    :try_start_42
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw p1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p0

    .line 102
    :try_start_47
    throw p0

    :cond_48
    const/4 p1, 0x0

    .line 92
    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_52
    .catchall {:try_start_47 .. :try_end_52} :catchall_52

    :catchall_52
    move-exception p0

    .line 90
    :try_start_53
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception p1

    :try_start_58
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5b
    throw p0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception p0

    .line 105
    throw p0
.end method

.method public saveToFileOutputStream(Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupData;Ljava/io/FileOutputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 68
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_5e

    .line 69
    :try_start_5
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_54

    .line 70
    :try_start_a
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_4a

    .line 72
    :try_start_10
    new-instance p1, Ljava/io/ByteArrayInputStream;

    .line 73
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_19
    .catchall {:try_start_10 .. :try_end_19} :catchall_48

    .line 74
    :try_start_19
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtilWithEncryption;->mEncryptor:Lcom/samsung/android/server/util/CoreEncryptor;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/server/util/CoreEncryptor;->encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result p2
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_3e

    const-string v2, "encrypt"

    if-eqz p2, :cond_34

    .line 77
    :try_start_23
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p2, :cond_2a

    .line 78
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logSucceeded(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_3e

    .line 80
    :cond_2a
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_48

    .line 83
    :try_start_2d
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_54

    :try_start_30
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_5e

    return-void

    :cond_34
    const/4 p2, 0x0

    .line 75
    :try_start_35
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/server/packagefeature/core/PackageFeatureGroupDataUtil;->logFailed(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

    .line 72
    :try_start_3f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    :try_start_44
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_47
    throw p0
    :try_end_48
    .catchall {:try_start_44 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception p0

    .line 81
    :try_start_49
    throw p0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4a

    :catchall_4a
    move-exception p0

    .line 68
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception p1

    :try_start_50
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_53
    throw p0
    :try_end_54
    .catchall {:try_start_50 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    :try_start_55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_59

    goto :goto_5d

    :catchall_59
    move-exception p1

    :try_start_5a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5d
    throw p0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p0

    .line 84
    throw p0
.end method
