.class public abstract Landroid/security/keystore2/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# static fields
.field private static blacklist mIsSupportTagRSAOAEPMGFDigest:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Landroid/security/keystore2/KeymasterUtils;->mIsSupportTagRSAOAEPMGFDigest:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .registers 9
    .param p0, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p1, "keymasterAlgorithm"    # I
    .param p2, "keymasterBlockModes"    # [I
    .param p3, "keymasterDigests"    # [I

    .line 102
    const v0, 0x30000008

    sparse-switch p1, :sswitch_data_66

    goto :goto_64

    .line 116
    :sswitch_7
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_37

    .line 122
    const/4 v1, 0x0

    aget v1, p3, v1

    .line 123
    .local v1, "keymasterDigest":I
    invoke-static {v1}, Landroid/security/keystore2/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v2

    .line 124
    .local v2, "digestOutputSizeBits":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 129
    int-to-long v3, v2

    invoke-virtual {p0, v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_64

    .line 125
    :cond_1a
    new-instance v0, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 127
    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    .end local v1    # "keymasterDigest":I
    .end local v2    # "digestOutputSizeBits":I
    :cond_37
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Exactly one digest must be authorized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :sswitch_57
    const/16 v1, 0x20

    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 107
    const-wide/16 v1, 0x60

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 132
    :cond_64
    :goto_64
    return-void

    nop

    :sswitch_data_66
    .sparse-switch
        0x20 -> :sswitch_57
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method static blacklist getDigestOutputSizeBits(I)I
    .registers 4
    .param p0, "keymasterDigest"    # I

    .line 43
    packed-switch p0, :pswitch_data_30

    .line 59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_1c
    const/16 v0, 0x200

    return v0

    .line 55
    :pswitch_1f
    const/16 v0, 0x180

    return v0

    .line 53
    :pswitch_22
    const/16 v0, 0x100

    return v0

    .line 51
    :pswitch_25
    const/16 v0, 0xe0

    return v0

    .line 49
    :pswitch_28
    const/16 v0, 0xa0

    return v0

    .line 47
    :pswitch_2b
    const/16 v0, 0x80

    return v0

    .line 45
    :pswitch_2e
    const/4 v0, -0x1

    return v0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
    .end packed-switch
.end method

.method static blacklist hasKeymintFeatureForRSAOAEPMGFDigest(I)Z
    .registers 5
    .param p0, "securityLevel"    # I

    .line 147
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_3a

    .line 162
    return v0

    .line 149
    :pswitch_5
    :try_start_5
    sget-boolean v1, Landroid/security/keystore2/KeymasterUtils;->mIsSupportTagRSAOAEPMGFDigest:Z

    if-nez v1, :cond_31

    .line 150
    const-string/jumbo v1, "ro.product.first_api_level"

    const-string v2, "0"

    .line 151
    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1f

    if-lt v1, v2, :cond_2e

    .line 153
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.strongbox_keystore"

    const/16 v3, 0x64

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    move v1, v0

    :goto_2f
    sput-boolean v1, Landroid/security/keystore2/KeymasterUtils;->mIsSupportTagRSAOAEPMGFDigest:Z

    .line 157
    :cond_31
    sget-boolean v0, Landroid/security/keystore2/KeymasterUtils;->mIsSupportTagRSAOAEPMGFDigest:Z
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    return v0

    .line 164
    :catch_34
    move-exception v1

    .line 165
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .end local v1    # "e":Ljava/lang/Exception;
    return v0

    nop

    :pswitch_data_3a
    .packed-switch 0x2
        :pswitch_5
    .end packed-switch
.end method

.method static blacklist isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .registers 4
    .param p0, "keymasterBlockMode"    # I

    .line 66
    sparse-switch p0, :sswitch_data_20

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :sswitch_1c
    const/4 v0, 0x1

    return v0

    .line 68
    :sswitch_1e
    const/4 v0, 0x0

    return v0

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_1c
        0x20 -> :sswitch_1c
    .end sparse-switch
.end method

.method static blacklist isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .registers 4
    .param p0, "keymasterPadding"    # I

    .line 81
    packed-switch p0, :pswitch_data_20

    .line 88
    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_1c
    const/4 v0, 0x1

    return v0

    .line 83
    :pswitch_1e
    const/4 v0, 0x0

    return v0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1c
        :pswitch_3
        :pswitch_1c
    .end packed-switch
.end method

.method public static blacklist isSupportTagRSAOAEPMGFDigest(II)Z
    .registers 4
    .param p0, "algorithm"    # I
    .param p1, "securityLevel"    # I

    .line 141
    const/4 v0, 0x1

    if-ne v0, p0, :cond_a

    .line 142
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->hasKeymintFeatureForRSAOAEPMGFDigest(I)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 141
    :goto_b
    return v0
.end method

.method public static blacklist isSupportTagRSAOAEPMGFDigest(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "securityLevel"    # I

    .line 136
    const-string v0, "RSA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    invoke-static {p1}, Landroid/security/keystore2/KeymasterUtils;->hasKeymintFeatureForRSAOAEPMGFDigest(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 136
    :goto_11
    return v0
.end method
