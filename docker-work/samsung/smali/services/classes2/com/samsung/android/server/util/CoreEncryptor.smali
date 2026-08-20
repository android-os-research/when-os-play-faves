.class public Lcom/samsung/android/server/util/CoreEncryptor;
.super Ljava/lang/Object;
.source "CoreEncryptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;
    }
.end annotation


# static fields
.field public static final AES_CBC_PKCS_7_PADDING:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final APP_ID:Ljava/lang/String; = "android_CoreEncryptorKey"

.field public static final BUFFER_SIZE:I = 0x2000

.field public static final KEY_SIZE:I = 0x100

.field public static final SCSPCIPHER_FORMAT:Ljava/lang/String; = "%s_scspcipher_%s"

.field public static final sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/server/util/CoreEncryptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static decodeBase64String(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_d

    .line 173
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_f

    :cond_d
    const-string v0, ""

    :goto_f
    return-object v0
.end method

.method public static getCoreEncryptor(Landroid/content/Context;)Lcom/samsung/android/server/util/CoreEncryptor;
    .registers 3

    .line 55
    sget-object v0, Lcom/samsung/android/server/util/CoreEncryptor;->sCoreEncryptor:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/util/CoreEncryptor;

    if-nez v1, :cond_12

    .line 57
    new-instance v1, Lcom/samsung/android/server/util/CoreEncryptor;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/util/CoreEncryptor;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-object v1
.end method


# virtual methods
.method public decrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 107
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/16 v2, 0x2000

    new-array v2, v2, [B

    .line 111
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 112
    new-array v4, v3, [B

    .line 113
    invoke-virtual {p1, v4, v0, v3}, Ljava/io/InputStream;->read([BII)I

    const/4 v3, 0x2

    .line 114
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    const-string v5, "android_CoreEncryptorKey"

    invoke-static {p0, v5}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v3, p0, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 116
    :goto_25
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 v3, -0x1

    if-eq p0, v3, :cond_34

    .line 117
    invoke-virtual {v1, v2, v0, p0}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_25

    .line 119
    :cond_34
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    const/4 p0, 0x1

    return p0

    :catchall_3d
    move-exception p0

    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public encrypt(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AES/CBC/PKCS7Padding"

    .line 76
    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 77
    iget-object p0, p0, Lcom/samsung/android/server/util/CoreEncryptor;->mContext:Landroid/content/Context;

    const-string v2, "android_CoreEncryptorKey"

    invoke-static {p0, v2}, Lcom/samsung/android/server/util/CoreEncryptor$KeyStoreHolder;->-$$Nest$smgetKey(Landroid/content/Context;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 78
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p0

    .line 79
    array-length v3, p0

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write(I)V

    .line 80
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V

    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 84
    :goto_22
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_31

    .line 85
    invoke-virtual {v1, p0, v0, v3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_22

    .line 88
    :cond_31
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_39

    return v2

    :catchall_39
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
