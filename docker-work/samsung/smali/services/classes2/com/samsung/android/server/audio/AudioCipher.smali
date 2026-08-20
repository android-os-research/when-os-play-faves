.class public Lcom/samsung/android/server/audio/AudioCipher;
.super Ljava/lang/Object;
.source "AudioCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/AudioCipher$KeyStoreHolder;
    }
.end annotation


# static fields
.field public static final AES_CBC_PKCS_7_PADDING:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field public static final ANDROID_KEY_STORE:Ljava/lang/String; = "AndroidKeyStore"

.field public static final AUDIO_CIPHER_FORMAT:Ljava/lang/String; = "audio_cipher"

.field public static final IV_ENCRYPT_SEPARATOR:Ljava/lang/String; = "%%"

.field public static final KEY_SIZE:I = 0x100

.field public static final TAG:Ljava/lang/String; = "AS.AudioCipher"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 64
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/audio/AudioCipher;->getCipher()Ljava/util/Optional;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v1, "%%"

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 67
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    return-object p0

    .line 70
    :cond_15
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-static {v5, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 72
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher;

    invoke-static {}, Lcom/samsung/android/server/audio/AudioCipher$KeyStoreHolder;->-$$Nest$smgetKey()Ljavax/crypto/SecretKey;

    move-result-object v6

    invoke-virtual {v5, v3, v6, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 73
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    return-object v1

    :catch_47
    move-exception v0

    const-string v1, "AS.AudioCipher"

    const-string v2, "decrypt error"

    .line 77
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4f
    return-object p0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 48
    :try_start_0
    invoke-static {}, Lcom/samsung/android/server/audio/AudioCipher;->getCipher()Ljava/util/Optional;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 50
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-static {}, Lcom/samsung/android/server/audio/AudioCipher$KeyStoreHolder;->-$$Nest$smgetKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50

    return-object p0

    :catch_50
    move-exception v0

    const-string v1, "AS.AudioCipher"

    const-string v2, "encrypt error"

    .line 57
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_58
    return-object p0
.end method

.method public static getCipher()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljavax/crypto/Cipher;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "AES/CBC/PKCS7Padding"

    .line 84
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    const-string v1, "AS.AudioCipher"

    const-string v2, "getCipher() error"

    .line 86
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
