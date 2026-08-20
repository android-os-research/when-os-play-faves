.class synthetic Lcom/samsung/android/authenticator/HalService$1;
.super Ljava/lang/Object;
.source "HalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/authenticator/HalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic blacklist $SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppAssetType:[I

.field static final synthetic blacklist $SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 196
    invoke-static {}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->values()[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/authenticator/HalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppAssetType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_AUTHENTICATOR:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-virtual {v2}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/samsung/android/authenticator/HalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppAssetType:[I

    sget-object v3, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->PASS_ESE:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;

    invoke-virtual {v3}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppAssetType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    .line 184
    :goto_21
    invoke-static {}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->values()[Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/samsung/android/authenticator/HalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I

    :try_start_2a
    sget-object v3, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->FINGERPRINT_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v3}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_32} :catch_33

    goto :goto_34

    :catch_33
    move-exception v1

    :goto_34
    :try_start_34
    sget-object v1, Lcom/samsung/android/authenticator/HalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I

    sget-object v2, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->DEVICE_ROOT_KEY_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v2}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    move-exception v0

    :goto_40
    :try_start_40
    sget-object v0, Lcom/samsung/android/authenticator/HalService$1;->$SwitchMap$com$samsung$android$authenticator$SemTrustedApplicationExecutor$TrustedAppType:[I

    sget-object v1, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ASSET_DOWNLOADER_TRUSTED_APP:Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;

    invoke-virtual {v1}, Lcom/samsung/android/authenticator/SemTrustedApplicationExecutor$TrustedAppType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4c

    goto :goto_4d

    :catch_4c
    move-exception v0

    :goto_4d
    return-void
.end method
