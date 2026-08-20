.class public abstract Landroid/security/keystore/KeyProperties$KeyAlgorithm;
.super Ljava/lang/Object;
.source "KeyProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/KeyProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyAlgorithm"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;
    .registers 4
    .param p0, "keymasterAlgorithm"    # I

    .line 258
    packed-switch p0, :pswitch_data_22

    .line 264
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :pswitch_1c
    const-string v0, "EC"

    return-object v0

    .line 262
    :pswitch_1f
    const-string v0, "RSA"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method public static greylist-max-o fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    .registers 5
    .param p0, "keymasterAlgorithm"    # I
    .param p1, "keymasterDigest"    # I

    .line 286
    sparse-switch p0, :sswitch_data_52

    .line 308
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :sswitch_1c
    packed-switch p1, :pswitch_data_60

    .line 304
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported HMAC digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :pswitch_3c
    const-string v0, "HmacSHA512"

    return-object v0

    .line 300
    :pswitch_3f
    const-string v0, "HmacSHA384"

    return-object v0

    .line 298
    :pswitch_42
    const-string v0, "HmacSHA256"

    return-object v0

    .line 296
    :pswitch_45
    const-string v0, "HmacSHA224"

    return-object v0

    .line 294
    :pswitch_48
    const-string v0, "HmacSHA1"

    return-object v0

    .line 290
    :sswitch_4b
    const-string v0, "DESede"

    return-object v0

    .line 288
    :sswitch_4e
    const-string v0, "AES"

    return-object v0

    nop

    :sswitch_data_52
    .sparse-switch
        0x20 -> :sswitch_4e
        0x21 -> :sswitch_4b
        0x80 -> :sswitch_1c
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x2
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
    .end packed-switch
.end method

.method public static greylist-max-o toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 246
    const-string v0, "EC"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 247
    const/4 v0, 0x3

    return v0

    .line 248
    :cond_a
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 249
    const/4 v0, 0x1

    return v0

    .line 251
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o toKeymasterDigest(Ljava/lang/String;)I
    .registers 8
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 319
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "algorithmUpper":Ljava/lang/String;
    const-string v1, "HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_76

    .line 321
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "digestUpper":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v2, :sswitch_data_78

    :cond_21
    goto :goto_53

    :sswitch_22
    const-string v2, "SHA1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v3, 0x0

    goto :goto_53

    :sswitch_2c
    const-string v2, "SHA512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v3, v4

    goto :goto_53

    :sswitch_36
    const-string v2, "SHA384"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v3, v5

    goto :goto_53

    :sswitch_40
    const-string v2, "SHA256"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v3, v6

    goto :goto_53

    :sswitch_4a
    const-string v2, "SHA224"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v3, 0x1

    :goto_53
    packed-switch v3, :pswitch_data_8e

    .line 334
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported HMAC digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    :pswitch_6f
    const/4 v2, 0x6

    return v2

    .line 330
    :pswitch_71
    const/4 v2, 0x5

    return v2

    .line 328
    :pswitch_73
    return v4

    .line 326
    :pswitch_74
    return v5

    .line 324
    :pswitch_75
    return v6

    .line 338
    .end local v1    # "digestUpper":Ljava/lang/String;
    :cond_76
    return v3

    nop

    :sswitch_data_78
    .sparse-switch
        -0x6e48da18 -> :sswitch_4a
        -0x6e48d9b9 -> :sswitch_40
        -0x6e48d59d -> :sswitch_36
        -0x6e48cef6 -> :sswitch_2c
        0x26d125 -> :sswitch_22
    .end sparse-switch

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_71
        :pswitch_6f
    .end packed-switch
.end method

.method public static greylist-max-o toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 271
    const-string v0, "AES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 272
    const/16 v0, 0x20

    return v0

    .line 273
    :cond_b
    const-string v0, "DESede"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 274
    const/16 v0, 0x21

    return v0

    .line 275
    :cond_16
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 276
    const/16 v0, 0x80

    return v0

    .line 278
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported secret key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
