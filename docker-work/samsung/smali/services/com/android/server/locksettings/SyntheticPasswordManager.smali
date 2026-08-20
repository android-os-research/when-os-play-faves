.class public Lcom/android/server/locksettings/SyntheticPasswordManager;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$TokenType;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationSdpToken;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;,
        Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final DEFAULT_HANDLE:J = 0x0L

.field public static final DEFAULT_PASSWORD:[B

.field public static final DEFAULT_TOKEN:[B

.field public static final HEX_ARRAY:[B

.field public static final INVALID_WEAVER_SLOT:I = -0x1

.field public static final PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field public static final PASSWORD_METRICS_NAME:Ljava/lang/String; = "metrics"

.field public static final PASSWORD_SALT_LENGTH:I = 0x10

.field public static final PASSWORD_SCRYPT_N:I = 0xb

.field public static final PASSWORD_SCRYPT_P:I = 0x1

.field public static final PASSWORD_SCRYPT_R:I = 0x3

.field public static final PASSWORD_TOKEN_LENGTH:I = 0x20

.field public static final PERSONALISATION_CONTEXT:[B

.field public static final PERSONALISATION_SECDISCARDABLE:[B

.field public static final PERSONALISATION_WEAVER_KEY:[B

.field public static final PERSONALISATION_WEAVER_PASSWORD:[B

.field public static final PERSONALISATION_WEAVER_TOKEN:[B

.field public static final PERSONALIZATION_AUTHSECRET_KEY:[B

.field public static final PERSONALIZATION_E0:[B

.field public static final PERSONALIZATION_FBE_KEY:[B

.field public static final PERSONALIZATION_KEY_STORE_PASSWORD:[B

.field public static final PERSONALIZATION_PASSWORD_HASH:[B

.field public static final PERSONALIZATION_PASSWORD_METRICS:[B

.field public static final PERSONALIZATION_SDP_MASTER_KEY:[B

.field public static final PERSONALIZATION_SP_GK_AUTH:[B

.field public static final PERSONALIZATION_SP_SPLIT:[B

.field public static final PERSONALIZATION_USER_GK_AUTH:[B

.field public static final SECDISCARDABLE_LENGTH:I = 0x4000

.field public static final SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field public static final SECURITY_TOKEN_KEY:Ljava/lang/String; = "lockscreen.token"

.field public static final SECURITY_TOKEN_LENGTH:I = 0x5

.field public static final SECURITY_UNPACK:Z

.field public static final SP_BLOB_INFO_FILED_LENGTH:I = 0x3

.field public static final SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field public static final SP_BLOB_RESERVED_FILED_LENGTH:I = 0x10

.field public static final SP_BLOB_TOTAL_HEADER_LENGTH:I = 0x13

.field public static final SP_E0_NAME:Ljava/lang/String; = "e0"

.field public static final SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field public static final SP_P1_NAME:Ljava/lang/String; = "p1"

.field public static final SYNTHETIC_PASSWORD_LENGTH:B = 0x20t

.field public static final SYNTHETIC_PASSWORD_PASSWORD_BASED:B = 0x0t

.field public static final SYNTHETIC_PASSWORD_STRONG_TOKEN_BASED:B = 0x1t

.field public static final SYNTHETIC_PASSWORD_VERSION_LATEST:B = 0x3t

.field public static final SYNTHETIC_PASSWORD_VERSION_V1:B = 0x1t

.field public static final SYNTHETIC_PASSWORD_VERSION_V2:B = 0x2t

.field public static final SYNTHETIC_PASSWORD_VERSION_V3:B = 0x3t

.field public static final SYNTHETIC_PASSWORD_WEAK_TOKEN_BASED:B = 0x2t

.field public static final TAG:Ljava/lang/String; = "SyntheticPasswordManager"

.field public static final TAG_SDP:Ljava/lang/String; = "SyntheticPasswordManager.SDP"

.field public static final TARGET_ANDROID_KEYSTORE:B = 0x1t

.field public static final TOKEN_MATCH:I = 0x1

.field public static final TOKEN_NO_MATCH:I = 0x0

.field public static final TOKEN_TYPE_STRONG:I = 0x0

.field public static final TOKEN_TYPE_WEAK:I = 0x1

.field public static final TOKEN_UNKNOWN:I = -0x1

.field public static final WEAVER_ENROLL:I = 0x0

.field public static final WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field public static final WEAVER_VERIFY:I = 0x1

.field public static final WEAVER_VERSION:B = 0x1t


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public mIsWeaverSupported:Z

.field public final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

.field public mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

.field public mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

.field public final mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

.field public mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

.field public final mUserManager:Landroid/os/UserManager;

.field public mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

.field public mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

.field public final mWeaverDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

.field public tokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CICJTNNjetLSz__eYXWB6DfEdTM([I[Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$weaverVerify$1([I[Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mnwUiDbxXEV6M5iI1DQ4fN8QQvA(Lcom/android/server/locksettings/SyntheticPasswordManager;ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$initWeaverService$0(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmStorage(Lcom/android/server/locksettings/SyntheticPasswordManager;)Lcom/android/server/locksettings/LockSettingsStorage;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;)Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmWeaver(Lcom/android/server/locksettings/SyntheticPasswordManager;Landroid/hardware/weaver/V1_0/IWeaver;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateSyntheticPasswordBlob(Lcom/android/server/locksettings/SyntheticPasswordManager;JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetLockSettingsInternal(Lcom/android/server/locksettings/SyntheticPasswordManager;)Ljava/util/Optional;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getLockSettingsInternal()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mloadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mloadState(Lcom/android/server/locksettings/SyntheticPasswordManager;Ljava/lang/String;JI)[B
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaveState(Lcom/android/server/locksettings/SyntheticPasswordManager;Ljava/lang/String;[BJI)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munwrapSyntheticPasswordBlob(Lcom/android/server/locksettings/SyntheticPasswordManager;JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALISATION_CONTEXT()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_AUTHSECRET_KEY()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_E0()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_FBE_KEY()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_KEY_STORE_PASSWORD()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_PASSWORD_HASH()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_PASSWORD_METRICS()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_SDP_MASTER_KEY()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_SP_GK_AUTH()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPERSONALIZATION_SP_SPLIT()[B
    .registers 1

    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smbytesToHex([B)[B
    .registers 1

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->bytesToHex([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "default-password"

    .line 142
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    const-string v0, "This-byte-array-is-default-token"

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_TOKEN:[B

    .line 146
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    const-string/jumbo v0, "secdiscardable-transform"

    .line 169
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const-string/jumbo v0, "keystore-password"

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_KEY_STORE_PASSWORD:[B

    const-string/jumbo v0, "user-gk-authentication"

    .line 171
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const-string/jumbo v0, "sp-gk-authentication"

    .line 172
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_GK_AUTH:[B

    const-string v0, "fbe-key"

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_FBE_KEY:[B

    const-string v0, "authsecret-hal"

    .line 174
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_AUTHSECRET_KEY:[B

    const-string/jumbo v0, "sp-split"

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SP_SPLIT:[B

    const-string/jumbo v0, "pw-hash"

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_HASH:[B

    const-string v0, "e0-encryption"

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_E0:[B

    const-string/jumbo v0, "weaver-pwd"

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const-string/jumbo v0, "weaver-key"

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const-string/jumbo v0, "weaver-token"

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    const-string/jumbo v0, "password-metrics"

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_PASSWORD_METRICS:[B

    const-string v0, "android-synthetic-password-personalization-context"

    .line 183
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_CONTEXT:[B

    const-string/jumbo v0, "sdp-master-key"

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_SDP_MASTER_KEY:[B

    const-string/jumbo v0, "ro.build.type"

    .line 196
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "userdebug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_be

    .line 197
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    goto :goto_be

    :cond_bc
    const/4 v0, 0x0

    goto :goto_bf

    :cond_be
    :goto_be
    const/4 v0, 0x1

    :goto_bf
    sput-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    const-string v0, "0123456789ABCDEF"

    .line 2443
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V
    .registers 7

    .line 880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    .line 876
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    .line 889
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient-IA;)V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

    .line 1575
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 881
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 882
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    .line 883
    iput-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 884
    iput-object p4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 885
    new-instance p1, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    invoke-direct {p1, p0, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    return-void
.end method

.method public static bytesToHex([B)[B
    .registers 7

    if-nez p0, :cond_a

    const-string/jumbo p0, "null"

    .line 2446
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 2448
    :cond_a
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2449
    :goto_10
    array-length v2, p0

    if-ge v1, v2, :cond_2c

    .line 2450
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v1, 0x2

    .line 2451
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->HEX_ARRAY:[B

    ushr-int/lit8 v5, v2, 0x4

    aget-byte v5, v4, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 2452
    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2c
    return-object v0
.end method

.method public static fromByteArrayList(Ljava/util/ArrayList;)[B
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 2436
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2437
    :goto_7
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 2438
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1c
    return-object v0
.end method

.method public static generateHandle()J
    .registers 5

    .line 2369
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2372
    :cond_5
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    return-wide v1
.end method

.method public static getFrpCredentialType([B)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, -0x1

    return p0

    .line 1106
    :cond_4
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return p0
.end method

.method private synthetic lambda$initWeaverService$0(ILandroid/hardware/weaver/V1_0/WeaverConfig;)V
    .registers 5

    if-nez p1, :cond_9

    .line 952
    iget v0, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-lez v0, :cond_9

    .line 953
    iput-object p2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    goto :goto_2c

    .line 955
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get weaver config, status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " slots: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 957
    iput-object p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    :goto_2c
    return-void
.end method

.method public static synthetic lambda$weaverVerify$1([I[Lcom/android/internal/widget/VerifyCredentialResponse;IILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .registers 7

    const/4 v0, 0x0

    .line 1034
    aput p3, p0, v0

    if-eqz p3, :cond_a5

    const/4 p0, 0x1

    const-string v1, "SyntheticPasswordManager"

    if-eq p3, p0, :cond_8b

    const/4 p0, 0x2

    if-eq p3, p0, :cond_51

    const/4 p0, 0x3

    if-eq p3, p0, :cond_33

    .line 1061
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object p0, p1, v0

    .line 1062
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "weaver read unknown status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ba

    .line 1041
    :cond_33
    iget p0, p4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    .line 1042
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    aput-object p0, p1, v0

    .line 1043
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "weaver read failed (THROTTLE), slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1046
    :cond_51
    iget p0, p4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    if-nez p0, :cond_6f

    .line 1047
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object p0, p1, v0

    .line 1048
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "weaver read failed (INCORRECT_KEY), slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1051
    :cond_6f
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    aput-object p0, p1, v0

    .line 1052
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "weaver read failed (INCORRECT_KEY/THROTTLE), slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1057
    :cond_8b
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object p0, p1, v0

    .line 1058
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "weaver read failed (FAILED), slot: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 1037
    :cond_a5
    new-instance p0, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    iget-object p2, p4, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    .line 1038
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fromByteArrayList(Ljava/util/ArrayList;)[B

    move-result-object p2

    .line 1037
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object p0

    .line 1038
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    aput-object p0, p1, v0

    :goto_ba
    return-void
.end method

.method public static secureRandom(I)[B
    .registers 2

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 2383
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object p0
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception p0

    .line 2385
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static toByteArrayList([B)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 2428
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 2429
    :goto_7
    array-length v2, p0

    if-ge v1, v2, :cond_16

    .line 2430
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_16
    return-object v0
.end method


# virtual methods
.method public activateTokenBasedSyntheticPassword(JLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 16

    .line 1708
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 1711
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    if-nez v0, :cond_27

    return v1

    .line 1724
    :cond_27
    invoke-virtual {p0, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v2

    const-string v3, "SyntheticPasswordManager"

    if-nez v2, :cond_35

    const-string p0, "User is not escrowable"

    .line 1725
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1729
    :cond_35
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1730
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v2

    .line 1731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Weaver enroll token to slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    invoke-static {v1, v2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    const/4 v4, 0x0

    .line 1733
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v4

    if-nez v4, :cond_81

    const-string p0, "Failed to enroll weaver secret when activating token"

    .line 1734
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to enroll token for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    return v1

    .line 1738
    :cond_81
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1739
    invoke-virtual {p0, v2, p1, p2, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1740
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1, v2}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1742
    :cond_8c
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    .line 1752
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getTokenBasedBlobType(I)B

    move-result v5

    iget-object v7, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-object v6, p3

    move v10, p4

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 1755
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    iget-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    if-eqz p0, :cond_bc

    .line 1757
    invoke-interface {p0, p1, p2, p4}, Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;->onEscrowTokenActivated(JI)V

    :cond_bc
    const/4 p0, 0x1

    return p0
.end method

.method public final byteToHexString([B)Ljava/lang/String;
    .registers 5

    const-string p0, ""

    if-nez p1, :cond_c

    const-string p1, "SyntheticPasswordManager"

    const-string v0, "byteToHexString ary is null!"

    .line 2683
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_c
    const/4 v0, 0x0

    .line 2688
    :goto_d
    array-length v1, p1

    if-ge v0, v1, :cond_48

    const/4 v1, 0x5

    if-ge v0, v1, :cond_48

    .line 2689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p1, v0

    shr-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0xf

    const-string v2, "0123456789ABCDEF"

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte p0, p1, v0

    and-int/lit8 p0, p0, 0xf

    invoke-virtual {v2, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_48
    return-object p0
.end method

.method public checkWeaverStatus()V
    .registers 6

    const/4 v0, 0x0

    .line 315
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    move-exception v1

    const-string v2, "Unexpected exception while check weaver availability"

    .line 317
    invoke-static {v2, v1}, Lcom/android/server/knox/dar/sdp/SDPLog;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    move v1, v0

    .line 319
    :goto_d
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverSupported()Z

    move-result v2

    if-nez v2, :cond_1b

    const-string p0, "SyntheticPasswordManager.SDP"

    const-string v0, "Device does not support weaver"

    .line 320
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Weaver is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2b

    const-string/jumbo v3, "now"

    goto :goto_2d

    :cond_2b
    const-string v3, "NOT"

    :goto_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 325
    sget-boolean v3, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEBUG:Z

    if-eqz v3, :cond_6b

    if-eqz v1, :cond_6b

    .line 326
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    .line 328
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v4, v4, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget p0, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const-string p0, " with slots(%d), kSize(%d) and vSize(%d)"

    .line 326
    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6d

    :cond_6b
    const-string p0, "!"

    .line 330
    :goto_6d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    return-void
.end method

.method public clearSidForUser(I)V
    .registers 5

    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    .line 1185
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public final computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B
    .registers 10

    .line 2395
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->isNone()Z

    move-result v0

    if-nez v0, :cond_10

    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    if-eqz v0, :cond_b

    goto :goto_10

    :cond_b
    invoke-virtual {p1}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p1

    goto :goto_12

    :cond_10
    :goto_10
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_PASSWORD:[B

    :goto_12
    move-object v1, p1

    .line 2401
    iget-object v2, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v0, 0x1

    shl-int v3, v0, p1

    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    shl-int v4, v0, p1

    iget-byte p1, p2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    shl-int v5, v0, p1

    const/16 v6, 0x20

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->scrypt([B[BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public createPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)J
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p4

    .line 1346
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v11

    .line 1349
    iget-object v2, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    invoke-static {v2, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->-$$Nest$mgetSecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)I

    .line 1350
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1356
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v2

    move-object/from16 v7, p2

    .line 1358
    invoke-virtual {v0, v7, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v3

    .line 1363
    invoke-virtual {v0, v3, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setToken([BI)V

    .line 1364
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", new salt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 1365
    invoke-static {v6}, Lcom/android/server/locksettings/LockSettingsServiceLog;->gethashStr([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x1

    .line 1364
    invoke-virtual {v4, v13, v5}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1366
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v5, Lcom/android/server/locksettings/LockSettingsServiceLog;->SECURITY_LOG_VERSION:Ljava/lang/String;

    const-string/jumbo v6, "lockscreen.token.ver"

    invoke-virtual {v4, v6, v5, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1367
    iget-object v4, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v6, "lockscreen.pwdata.ver"

    invoke-virtual {v4, v6, v5, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1370
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPasswordBasedSyntheticPassword : user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SyntheticPasswordManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    const/4 v6, 0x0

    const/4 v8, 0x0

    if-eqz v4, :cond_106

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getNextAvailableWeaverSlot()I

    move-result v1

    .line 1374
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Weaver enroll password to slot "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " for user "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-static {v8, v1, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1376
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v4

    invoke-virtual {v0, v1, v4, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    move-result-object v4

    .line 1378
    invoke-static/range {p4 .. p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1381
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "password slot log  = "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    .line 1382
    invoke-virtual {v14}, Lcom/android/server/locksettings/PasswordSlotManager;->getDebugString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1381
    invoke-virtual {v5, v8, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    if-eqz v4, :cond_db

    .line 1393
    invoke-virtual {v0, v1, v11, v12, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveWeaverSlot(IJI)V

    .line 1394
    iget-object v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v5, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotInUse(I)V

    .line 1396
    invoke-virtual {v0, v2, v8, v10, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    .line 1398
    iput-object v6, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const-wide/16 v5, 0x0

    .line 1400
    invoke-virtual {v0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v1

    move-object v8, v1

    move-wide v14, v5

    goto :goto_13c

    .line 1386
    :cond_db
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Weaver enroll failed : user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 1390
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to enroll user password under weaver "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1405
    :cond_106
    :try_start_106
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_10d
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_10d} :catch_10e

    goto :goto_113

    :catch_10e
    const-string v4, "Failed to clear SID from gatekeeper"

    .line 1407
    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :goto_113
    :try_start_113
    invoke-virtual {v0, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v4

    .line 1421
    invoke-virtual {v0, v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v5

    .line 1420
    invoke-interface {v1, v4, v6, v6, v5}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_113 .. :try_end_11f} :catch_192

    .line 1426
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_163

    .line 1433
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1434
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v4

    .line 1442
    invoke-virtual {v0, v11, v12, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSecdiscardable(JI)[B

    move-result-object v1

    .line 1441
    invoke-virtual {v0, v3, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v1

    .line 1445
    invoke-virtual {v0, v2, v8, v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    move-object v8, v1

    move-wide v14, v4

    .line 1447
    :goto_13c
    invoke-virtual {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    const-string/jumbo v2, "pwd"

    move-object/from16 v1, p0

    move-wide v4, v11

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1448
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    const/4 v4, 0x0

    move-wide v2, v11

    move-object/from16 v5, p3

    move-object v6, v8

    move-wide v7, v14

    move/from16 v9, p4

    .line 1458
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    .line 1462
    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0, v13, v10}, Lcom/android/server/locksettings/LockSettingsStorage;->addPWFilelist(II)V

    return-wide v11

    .line 1428
    :cond_163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GateKeeper enroll failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v11, v12, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 1430
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to enroll user password when creating SP for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_192
    move-exception v0

    .line 1424
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to enroll password for new SP blob"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createSPBlob(Ljava/lang/String;[B[BJ)[B
    .registers 6

    .line 2361
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->createBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object p0

    return-object p0
.end method

.method public final createSecdiscardable(JI)[B
    .registers 5

    const/16 v0, 0x4000

    .line 2265
    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v0

    .line 2266
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSecdiscardable(J[BI)V

    return-object v0
.end method

.method public createStrongTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 5

    const/4 v0, 0x0

    .line 1583
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V
    .registers 18

    move v0, p3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    if-ne v0, v1, :cond_8

    goto :goto_d

    .line 1769
    :cond_8
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getSyntheticPassword()[B

    move-result-object v2

    goto :goto_11

    .line 1767
    :cond_d
    :goto_d
    invoke-virtual {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->getEscrowSecret()[B

    move-result-object v2

    :goto_11
    move-object v5, v2

    .line 1771
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    move-object v6, p5

    move-wide v7, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSPBlob(Ljava/lang/String;[B[BJ)[B

    move-result-object v2

    .line 1777
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-$$Nest$fgetmVersion(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_25

    move v1, v4

    .line 1780
    :cond_25
    invoke-static {v1, p3, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->create(BB[B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 1781
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->toByte()[B

    move-result-object v3

    const-string/jumbo v2, "spblob"

    move-object v1, p0

    move-wide v4, p1

    move/from16 v6, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 10

    .line 1603
    sget-boolean v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->SECURITY_UNPACK:Z

    if-eqz v0, :cond_6

    .line 1604
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordManager;->DEFAULT_TOKEN:[B

    .line 1606
    :cond_6
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager;->generateHandle()J

    move-result-wide v0

    .line 1607
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1608
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    :cond_24
    new-instance v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    invoke-direct {v2}, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;-><init>()V

    .line 1611
    iput p2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mType:I

    const/16 p2, 0x4000

    .line 1612
    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p2

    .line 1613
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 1614
    iget-object v3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v3, v3, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1615
    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v3, v4, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    goto :goto_4f

    .line 1618
    :cond_4a
    iput-object p2, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->secdiscardableOnDisk:[B

    const/4 v3, 0x0

    .line 1619
    iput-object v3, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->weaverSecret:[B

    .line 1621
    :goto_4f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    .line 1622
    iput-object p4, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->mCallback:Lcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;

    const-string p1, "Not Sdp Mdfpp Mode. keyingMaterial null"

    .line 1635
    invoke-static {p1}, Lcom/android/server/knox/dar/sdp/SDPLog;->i(Ljava/lang/String;)V

    .line 1636
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->km:Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1640
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-wide v0
.end method

.method public createWeakTokenBasedSyntheticPassword([BILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J
    .registers 5

    const/4 v0, 0x1

    .line 1593
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createTokenBasedSyntheticPassword([BIILcom/android/internal/widget/LockPatternUtils$EscrowTokenStateChangeCallback;)J

    move-result-wide p0

    return-wide p0
.end method

.method public decryptSPBlob(Ljava/lang/String;[B[B)[B
    .registers 4

    .line 2357
    invoke-static {p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlob(Ljava/lang/String;[B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public deleteInvalidSyntheticPasswordHandleLocked(IJ)V
    .registers 9

    .line 2632
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "pwd"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2633
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5a

    .line 2634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ deleteInvalidSyntheticPasswordHandleLocked   validHandle ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyntheticPasswordManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2635
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 2636
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-eqz v3, :cond_2a

    .line 2637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@ deleteInvalidSyntheticPasswordHandleLocked delete ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    goto :goto_2a

    :cond_5a
    return-void
.end method

.method public destroyAllWeakTokenBasedSyntheticPasswords(I)V
    .registers 7

    .line 2209
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "secdis"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 2211
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string/jumbo v3, "spblob"

    .line 2213
    invoke-virtual {p0, v3, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v3

    if-nez v3, :cond_27

    goto :goto_d

    .line 2217
    :cond_27
    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v3

    .line 2218
    iget-byte v3, v3, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    .line 2219
    invoke-virtual {p0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyTokenBasedSyntheticPassword(JI)V

    goto :goto_d

    :cond_34
    return-void
.end method

.method public destroyEscrowData(I)V
    .registers 5

    const-string v0, "e0"

    const-wide/16 v1, 0x0

    .line 1226
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const-string/jumbo v0, "p1"

    .line 1227
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public destroyPasswordBasedSyntheticPassword(JI)V
    .registers 5

    .line 2232
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    const-string/jumbo v0, "secdis"

    .line 2233
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const-string/jumbo v0, "pwd"

    .line 2234
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const-string/jumbo v0, "metrics"

    .line 2235
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    return-void
.end method

.method public destroySPBlobKey(Ljava/lang/String;)V
    .registers 2

    .line 2365
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->destroyBlobKey(Ljava/lang/String;)V

    return-void
.end method

.method public final destroyState(Ljava/lang/String;JI)V
    .registers 7

    const-string/jumbo v0, "spblob"

    .line 2345
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p4, p2, p3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 2348
    :cond_1d
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->deleteSyntheticPasswordState(IJLjava/lang/String;)V

    return-void
.end method

.method public final destroySyntheticPassword(JI)V
    .registers 5

    const-string/jumbo v0, "spblob"

    .line 2239
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 2240
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    const-string/jumbo v0, "weaver"

    .line 2241
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2242
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    :cond_19
    return-void
.end method

.method public destroyTokenBasedSyntheticPassword(JI)V
    .registers 6

    const-string/jumbo v0, "spblob"

    .line 2198
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 2200
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySyntheticPassword(JI)V

    const-string/jumbo v1, "secdis"

    .line 2201
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    .line 2202
    iget-byte v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1c

    .line 2203
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->notifyWeakEscrowTokenRemovedListeners(JI)V

    :cond_1c
    return-void
.end method

.method public final destroyWeaverSlot(JI)V
    .registers 7

    .line 1254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    const-string/jumbo v1, "weaver"

    .line 1255
    invoke-virtual {p0, v1, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    const/4 p1, -0x1

    if-eq v0, p1, :cond_8a

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object p1

    .line 1258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroy weaver slot [ sl : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", u : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 1259
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, " for user "

    const-string v1, "SyntheticPasswordManager"

    if-nez p1, :cond_6b

    .line 1260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroy weaver slot "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1261
    invoke-static {p1, v0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    const/4 p1, 0x0

    .line 1262
    invoke-virtual {p0, v0, p1, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverEnroll(I[B[B)[B

    .line 1263
    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1264
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {p0, v0}, Lcom/android/server/locksettings/PasswordSlotManager;->markSlotDeleted(I)V

    goto :goto_8a

    .line 1266
    :cond_6b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Skip destroying reused weaver slot "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Destroying skipped!"

    .line 1267
    invoke-static {p0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    :cond_8a
    :goto_8a
    return-void
.end method

.method public existsBlobKey(IJ)Z
    .registers 11

    .line 2520
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->-$$Nest$misSdpMdfppMode(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpSyntheticPasswordManager:Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;

    invoke-static {v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;->-$$Nest$misSpecificProcessRequired(Lcom/android/server/locksettings/SyntheticPasswordManager$SdpSyntheticPasswordManager;I)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1e

    .line 2538
    :cond_13
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->existsBlobKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_74

    return v2

    :cond_1e
    :goto_1e
    const-string/jumbo v0, "spblob"

    .line 2521
    invoke-virtual {p0, v0, p2, p3, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    const-string v3, "SyntheticPasswordManager"

    if-nez v0, :cond_2f

    const-string p0, "existsBlobKey blob is null!!"

    .line 2523
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2526
    :cond_2f
    aget-byte v4, v0, v2

    const/4 v5, 0x2

    .line 2527
    aget-byte v0, v0, v5

    .line 2528
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ existsBlobKey userId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  spHandle="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "  version="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  keystore type="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ge v4, v1, :cond_65

    const/4 p1, 0x3

    if-gt v4, p1, :cond_74

    :cond_65
    if-eq v4, v1, :cond_69

    if-ne v0, v1, :cond_74

    .line 2532
    :cond_69
    invoke-virtual {p0, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->existsBlobKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_74

    return v2

    :cond_74
    return v1
.end method

.method public existsHandle(JI)Z
    .registers 5

    const-string/jumbo v0, "spblob"

    .line 2193
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public final fakeUid(I)I
    .registers 2

    const p0, 0x186a0

    add-int/2addr p1, p0

    return p1
.end method

.method public getActiveTokenForDualDar(IJ[B)[B
    .registers 5

    .line 1685
    invoke-static {p4}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp;->deriveResetTokenForDualDAR([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getCredentialType(JI)I
    .registers 5

    const-string/jumbo v0, "pwd"

    .line 1094
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    if-nez p0, :cond_21

    .line 1096
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getCredentialType: encountered empty password data for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1099
    :cond_21
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    return p0
.end method

.method public final getKeyName(J)Ljava/lang/String;
    .registers 5

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v1, "synthetic_password_"

    aput-object v1, p0, v0

    .line 2391
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    const-string p1, "%s%x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLockSettingsInternal()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/internal/widget/LockSettingsInternal;",
            ">;"
        }
    .end annotation

    .line 3118
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    if-nez v0, :cond_e

    .line 3119
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    .line 3121
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mLockSettingsInternal:Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public final getNextAvailableWeaverSlot()I
    .registers 4

    .line 1320
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v0

    .line 1321
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {v1}, Lcom/android/server/locksettings/PasswordSlotManager;->getUsedSlots()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    .line 1322
    :goto_e
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge v1, v2, :cond_22

    .line 1323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1327
    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Run out of weaver slots."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPasswordMetrics(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Landroid/app/admin/PasswordMetrics;
    .registers 6

    const-string/jumbo v0, "metrics"

    .line 2296
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_b

    return-object p2

    .line 2298
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [B

    invoke-static {p1, p3, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0

    if-nez p0, :cond_19

    return-object p2

    .line 2301
    :cond_19
    invoke-static {p0}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->deserialize([B)Lcom/android/server/locksettings/VersionedPasswordMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->getMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getPendingTokenForDualDar(IJ)[B
    .registers 6

    .line 1646
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 1650
    :cond_e
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    iget-object v0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    .line 1651
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$TokenData;->aggregatedSecret:[B

    array-length p0, p0

    .line 1650
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public getPendingTokensForUser(I)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1692
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1693
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1695
    :cond_11
    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getSdpManager()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/server/knox/dar/sdp/SdpManagerImpl;",
            ">;"
        }
    .end annotation

    .line 3106
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    if-nez v0, :cond_1c

    .line 3107
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    if-nez v0, :cond_12

    const-string v0, "dar"

    .line 3108
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 3110
    :cond_12
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    if-eqz v0, :cond_1c

    .line 3111
    invoke-virtual {v0}, Lcom/android/server/knox/dar/DarManagerService;->getSdpManager()Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    .line 3114
    :cond_1c
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mSdpManager:Lcom/android/server/knox/dar/sdp/SdpManagerImpl;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public getSecureMode(JI)I
    .registers 5

    const-string/jumbo v0, "pwd"

    .line 3097
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    if-nez p0, :cond_22

    .line 3099
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "getSecureMode: encountered empty password data for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager.SDP"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 3102
    :cond_22
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->-$$Nest$fgetsecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)I

    move-result p0

    return p0
.end method

.method public final getTokenBasedBlobType(I)B
    .registers 2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public final getUsedWeaverSlots()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1283
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "weaver"

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1285
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1286
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1287
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1288
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 1289
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v4

    .line 1308
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_57
    return-object v1
.end method

.method public getValidSyntheticPasswordHandleLocked(IJ)J
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_13

    .line 2546
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasSidForUser(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 2547
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsBlobKey(IJ)Z

    move-result p0

    if-nez p0, :cond_13

    return-wide v0

    :cond_13
    return-wide p2
.end method

.method public getValidSyntheticPasswordHandleLocked(IJLjava/lang/String;Z)J
    .registers 23

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-wide/from16 v1, p2

    .line 2555
    iget-object v3, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v9, 0x0

    const-string/jumbo v4, "handle"

    invoke-virtual {v3, v8, v9, v10, v4}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2556
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    if-eqz p5, :cond_21

    .line 2557
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_21

    move v12, v4

    goto :goto_22

    :cond_21
    const/4 v12, 0x0

    .line 2558
    :goto_22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ getValidSyntheticPasswordHandleLocked userId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "  isSecure="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v13, "SyntheticPasswordManager"

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2560
    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v7, "pwd"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 2561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@ passwordFileList ="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "  size="

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    const/4 v15, -0x1

    if-le v6, v4, :cond_b8

    .line 2563
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_79
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_fa

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Ljava/lang/Long;

    move-object/from16 p5, v6

    .line 2564
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v7, v5, v6, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v5

    if-nez v5, :cond_9c

    :cond_97
    :goto_97
    move-object/from16 v6, p5

    const-wide/16 v9, 0x0

    goto :goto_79

    :cond_9c
    if-eqz v12, :cond_b0

    .line 2569
    iget v5, v5, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-eq v5, v15, :cond_97

    .line 2570
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->existsBlobKey(IJ)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 2571
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2575
    :cond_b0
    iget v5, v5, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-ne v5, v15, :cond_97

    .line 2576
    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_97

    .line 2580
    :cond_b8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_1c7

    const/4 v5, 0x0

    .line 2581
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v7, v5, v6, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v5

    if-nez v5, :cond_db

    const-string v0, "!@ getValidSyntheticPasswordHandleLocked pwd data is null"

    .line 2583
    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_db
    if-eqz v12, :cond_ec

    .line 2587
    iget v5, v5, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-eq v5, v15, :cond_fa

    const/4 v6, 0x0

    .line 2588
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_fa

    :cond_ec
    const/4 v6, 0x0

    .line 2591
    iget v5, v5, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    if-ne v5, v15, :cond_fa

    .line 2592
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2599
    :cond_fa
    :goto_fa
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@ getValidSyntheticPasswordHandleLocked validPwdHandleList="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_133

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_133

    .line 2602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ getValidSyntheticPasswordHandleLocked init validPwdHandle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    .line 2607
    :cond_133
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_166

    if-eqz v12, :cond_178

    .line 2609
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v6, 0x0

    const-string/jumbo v3, "pwd"

    move/from16 v2, p1

    move-object v4, v11

    move-object/from16 v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsStorage;->getValidSyntheticPasswordHandleLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_161

    .line 2611
    iget-object v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v6, 0x0

    const-string/jumbo v3, "pwd"

    const-string v5, ""

    move/from16 v2, p1

    move-object v4, v11

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/LockSettingsStorage;->getValidSyntheticPasswordHandleLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    :cond_161
    move-wide v9, v1

    .line 2613
    invoke-interface {v14}, Ljava/util/List;->clear()V

    goto :goto_17a

    .line 2615
    :cond_166
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_178

    const/4 v1, 0x0

    .line 2616
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    goto :goto_17a

    :cond_178
    const-wide/16 v9, 0x0

    .line 2619
    :goto_17a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@ getValidSyntheticPasswordHandleLocked validPwdHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v14, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2621
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_199
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 2622
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@  getValidSyntheticPasswordHandleLocked delete="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyPasswordBasedSyntheticPassword(JI)V

    goto :goto_199

    :cond_1c1
    if-nez v12, :cond_1c6

    .line 2626
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    :cond_1c6
    return-wide v9

    :cond_1c7
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "ro.boot.revision"

    .line 911
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_31

    const-string/jumbo v0, "ro.product.device"

    .line 912
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "a25x"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "ro.boot.em.status"

    .line 913
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "0x1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    move v0, v2

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    const-string v3, "SyntheticPasswordManager"

    if-eqz v0, :cond_40

    :try_start_36
    const-string v0, "NVM is not loaded"

    .line 920
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-static {v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    goto :goto_44

    .line 923
    :cond_40
    invoke-static {v2}, Landroid/hardware/weaver/V1_0/IWeaver;->getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0
    :try_end_44
    .catch Ljava/util/NoSuchElementException; {:try_start_36 .. :try_end_44} :catch_58
    .catchall {:try_start_36 .. :try_end_44} :catchall_56

    :goto_44
    if-eqz v0, :cond_53

    .line 928
    :try_start_46
    iget-object v4, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverDeathRecipient:Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverDeathRecipient;

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v5, v6}, Landroid/hardware/weaver/V1_0/IWeaver;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_4d} :catch_4e
    .catch Ljava/util/NoSuchElementException; {:try_start_46 .. :try_end_4d} :catch_58
    .catchall {:try_start_46 .. :try_end_4d} :catchall_56

    goto :goto_53

    :catch_4e
    :try_start_4e
    const-string v4, "Cannot register a death recipient"

    .line 930
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/util/NoSuchElementException; {:try_start_4e .. :try_end_53} :catch_58
    .catchall {:try_start_4e .. :try_end_53} :catchall_56

    .line 939
    :cond_53
    :goto_53
    iput-boolean v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    return-object v0

    :catchall_56
    move-exception v0

    goto :goto_61

    :catch_58
    :try_start_58
    const-string v0, "Device does not support weaver"

    .line 935
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_56

    const/4 v0, 0x0

    .line 939
    iput-boolean v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    return-object v0

    :goto_61
    iput-boolean v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    .line 940
    throw v0
.end method

.method public hasEscrowData(I)Z
    .registers 5

    const-string v0, "e0"

    const-wide/16 v1, 0x0

    .line 1221
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "p1"

    .line 1222
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public final hasPasswordMetrics(JI)Z
    .registers 5

    const-string/jumbo v0, "metrics"

    .line 2313
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public hasSidForUser(I)Z
    .registers 5

    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    .line 1189
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasState(Ljava/lang/String;JI)Z

    move-result p0

    return p0
.end method

.method public final hasState(Ljava/lang/String;JI)Z
    .registers 5

    .line 2317
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public declared-synchronized initWeaverService()V
    .registers 4

    monitor-enter p0

    .line 944
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2e

    if-eqz v0, :cond_7

    .line 945
    monitor-exit p0

    return-void

    :cond_7
    const/4 v0, 0x0

    .line 948
    :try_start_8
    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    .line 949
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getWeaverService()Landroid/hardware/weaver/V1_0/IWeaver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_2c

    .line 951
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/locksettings/SyntheticPasswordManager;)V

    invoke-interface {v0, v1}, Landroid/hardware/weaver/V1_0/IWeaver;->getConfig(Landroid/hardware/weaver/V1_0/IWeaver$getConfigCallback;)V

    .line 960
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_23} :catch_24
    .catchall {:try_start_8 .. :try_end_23} :catchall_2e

    goto :goto_2c

    :catch_24
    move-exception v0

    :try_start_25
    const-string v1, "SyntheticPasswordManager"

    const-string v2, "Failed to get weaver service"

    .line 963
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2e

    .line 965
    :cond_2c
    :goto_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLockPasswordValid(I)Z
    .registers 3

    .line 2503
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "pwd"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    .line 2504
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    return p1
.end method

.method public final isTokenMatch([BI)I
    .registers 5

    .line 2700
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->byteToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 2701
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v0, "lockscreen.token"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 2703
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_30

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_30

    .line 2704
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p2, v0, :cond_26

    goto :goto_30

    .line 2707
    :cond_26
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0

    :cond_30
    :goto_30
    const/4 p0, -0x1

    return p0
.end method

.method public final declared-synchronized isWeaverAvailable()Z
    .registers 2

    monitor-enter p0

    .line 968
    :try_start_1
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-nez v0, :cond_8

    .line 970
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->initWeaverService()V

    .line 972
    :cond_8
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_17

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    monitor-exit p0

    return v0

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWeaverSupported()Z
    .registers 1

    .line 308
    iget-boolean p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mIsWeaverSupported:Z

    return p0
.end method

.method public final loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z
    .registers 7

    const-string v0, "e0"

    const-wide/16 v1, 0x0

    .line 1204
    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    const-string/jumbo v3, "p1"

    .line 1205
    invoke-virtual {p0, v3, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    .line 1206
    invoke-virtual {p1, v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->setEscrowData([B[B)V

    if-eqz v0, :cond_18

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final loadSecdiscardable(JI)[B
    .registers 5

    const-string/jumbo v0, "secdis"

    .line 2275
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    return-object p0
.end method

.method public final loadState(Ljava/lang/String;JI)[B
    .registers 5

    .line 2329
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p4, p2, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->readSyntheticPasswordState(IJLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public final loadSyntheticPasswordHandle(I)[B
    .registers 5

    const-string/jumbo v0, "handle"

    const-wide/16 v1, 0x0

    .line 1196
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    return-object p0
.end method

.method public final loadWeaverSlot(JI)I
    .registers 7

    const-string/jumbo v0, "weaver"

    .line 1232
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object p0

    const/4 p3, -0x1

    if-eqz p0, :cond_3e

    .line 1233
    array-length v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_f

    goto :goto_3e

    .line 1236
    :cond_f
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 1237
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1238
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1239
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_39

    .line 1240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid weaver slot version of handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    .line 1243
    :cond_39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    return p0

    :cond_3e
    :goto_3e
    return p3
.end method

.method public final makeSpmLog(IJLjava/lang/String;)V
    .registers 8

    .line 2658
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SyntheticPasswordManager state file event "

    .line 2659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Contents : "

    .line 2660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Time : "

    .line 2661
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeTime()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "User id : "

    .line 2662
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "User handle : "

    .line 2663
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, ", %x"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Callers : \n"

    .line 2664
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    const-string p2, "    "

    invoke-static {p1, p2}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2666
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    return-void
.end method

.method public final makeTime()Ljava/lang/String;
    .registers 7

    .line 2670
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 2671
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2672
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    .line 2673
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    const/4 v3, 0x5

    .line 2674
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/16 v4, 0xb

    .line 2675
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/16 v2, 0xc

    .line 2676
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const/16 v2, 0xd

    .line 2677
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const/16 v2, 0xe

    .line 2678
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "%02d-%02d %02d:%02d:%02d.%03d "

    .line 2672
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public migrateFrpPasswordLocked(JLandroid/content/pm/UserInfo;I)V
    .registers 8

    .line 1532
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    .line 1533
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1534
    iget v0, p3, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "pwd"

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1536
    iget v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_35

    .line 1537
    iget v1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result p1

    if-eq p1, v2, :cond_30

    .line 1539
    iget p2, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p4, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V

    goto :goto_35

    .line 1541
    :cond_30
    iget p1, p3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v0, p4, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    :cond_35
    :goto_35
    return-void
.end method

.method public migrateKeyNamespace()Z
    .registers 6

    .line 2462
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    .line 2463
    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForAllUsers(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 2464
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2465
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2466
    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->migrateLockSettingsKey(Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_22

    :cond_3c
    return v1
.end method

.method public final mitigateSlotConflict(JI)V
    .registers 7

    .line 369
    invoke-static {p3}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 371
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Mitigate slot conflict on %x.weaver for virtual user %d"

    .line 370
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_45

    const-string/jumbo v0, "weaver"

    .line 373
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyState(Ljava/lang/String;JI)V

    goto :goto_45

    .line 376
    :cond_2f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Do not handle conflict for normal user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SyntheticPasswordManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :goto_45
    return-void
.end method

.method public final mitigateSlotConflicts(Ljava/util/Map;Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 349
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 350
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 351
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 352
    invoke-static {v1}, Landroid/os/UserManager;->isVirtualUserId(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 353
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 354
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v3

    .line 355
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Slot conflict at slot #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " with user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/knox/dar/sdp/SDPLog;->d(Ljava/lang/String;)V

    .line 357
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 358
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;

    .line 359
    iget-wide v5, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->handle:J

    iget v4, v4, Lcom/android/server/locksettings/SyntheticPasswordManager$ConflictInfo;->userId:I

    invoke-virtual {p0, v5, v6, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->mitigateSlotConflict(JI)V

    goto :goto_86

    :cond_9a
    return-void
.end method

.method public native nativeSidFromPasswordHandle([B)J
.end method

.method public newSidForUser(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 5

    .line 1172
    :try_start_0
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p3, v0, v0, p2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_3a

    .line 1176
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result p2

    if-nez p2, :cond_17

    .line 1180
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    return-void

    .line 1177
    :cond_17
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fail to create new SID for user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " response: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3a
    move-exception p0

    .line 1174
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to create new SID for user"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public newSyntheticPasswordAndSid(Landroid/service/gatekeeper/IGateKeeperService;[BLcom/android/internal/widget/LockscreenCredential;I)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 7

    .line 1141
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->create()Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v0

    if-eqz p2, :cond_43

    .line 1146
    :try_start_6
    invoke-virtual {p3}, Lcom/android/internal/widget/LockscreenCredential;->getCredential()[B

    move-result-object p3

    .line 1147
    invoke-virtual {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v1

    .line 1146
    invoke-interface {p1, p4, p2, p3, v1}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_3a

    .line 1151
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result p2

    if-eqz p2, :cond_32

    .line 1152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to migrate SID, assuming no SID, user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SyntheticPasswordManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    goto :goto_46

    .line 1155
    :cond_32
    invoke-virtual {p1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object p1

    invoke-virtual {p0, p1, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    goto :goto_46

    :catch_3a
    move-exception p0

    .line 1149
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Failed to enroll credential duing SP init"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1158
    :cond_43
    invoke-virtual {p0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->clearSidForUser(I)V

    .line 1160
    :goto_46
    invoke-virtual {p0, v0, p4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V

    return-object v0
.end method

.method public final notifyWeakEscrowTokenRemovedListeners(JI)V
    .registers 8

    .line 2485
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    if-lez v0, :cond_27

    add-int/lit8 v0, v0, -0x1

    .line 2490
    :try_start_a
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;->onWeakEscrowTokenRemoved(JI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_6

    :catchall_16
    move-exception p1

    goto :goto_21

    :catch_18
    move-exception v1

    :try_start_19
    const-string v2, "SyntheticPasswordManager"

    const-string v3, "Exception while notifying WeakEscrowTokenRemovedListener."

    .line 2492
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    goto :goto_6

    .line 2497
    :goto_21
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2498
    throw p1

    .line 2497
    :cond_27
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final passwordTokenToGkInput([B)[B
    .registers 4

    .line 2406
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALIZATION_USER_GK_AUTH:[B

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    return-object p0
.end method

.method public final passwordTokenToWeaverKey([B)[B
    .registers 5

    .line 2410
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_KEY:[B

    const/4 v1, 0x1

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p1

    .line 2411
    array-length v0, p1

    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget p0, p0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-lt v0, p0, :cond_18

    .line 2414
    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    .line 2412
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "weaver key length too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public refreshActiveSlots()V
    .registers 2

    .line 334
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mPasswordSlotManager:Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getUsedWeaverSlots()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/locksettings/PasswordSlotManager;->refreshActiveSlots(Ljava/util/Set;)V

    return-void
.end method

.method public registerWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 2

    .line 2475
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public removePendingToken(JI)Z
    .registers 6

    .line 1700
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return v1

    .line 1703
    :cond_e
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->tokenMap:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_25

    const/4 v1, 0x1

    :cond_25
    return v1
.end method

.method public removeUser(Landroid/service/gatekeeper/IGateKeeperService;I)V
    .registers 6

    .line 1075
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string/jumbo v1, "spblob"

    invoke-virtual {v0, v1, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->listSyntheticPasswordHandlesForUser(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1076
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroyWeaverSlot(JI)V

    .line 1077
    invoke-virtual {p0, v1, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->destroySPBlobKey(Ljava/lang/String;)V

    goto :goto_d

    .line 1082
    :cond_28
    :try_start_28
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    const-string p0, "SyntheticPasswordManager"

    const-string p1, "Failed to clear SID from gatekeeper"

    .line 1084
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method

.method public final saveEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)V
    .registers 14

    .line 1211
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-$$Nest$fgetmEncryptedEscrowSplit0(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v2

    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1212
    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->-$$Nest$fgetmEscrowSplit1(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;)[B

    move-result-object v7

    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public saveEscrowData([B[BI)V
    .registers 15

    const-string v1, "e0"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p3

    .line 2719
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    const-string/jumbo v6, "p1"

    const-wide/16 v8, 0x0

    move-object v5, p0

    move-object v7, p2

    move v10, p3

    .line 2720
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public final savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V
    .registers 13

    .line 2306
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveMetricsKey()[B

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [B

    new-instance v1, Lcom/android/server/locksettings/VersionedPasswordMetrics;

    invoke-direct {v1, p1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;-><init>(Lcom/android/internal/widget/LockscreenCredential;)V

    .line 2308
    invoke-virtual {v1}, Lcom/android/server/locksettings/VersionedPasswordMetrics;->serialize()[B

    move-result-object p1

    .line 2306
    invoke-static {p2, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v3

    const-string/jumbo v2, "metrics"

    move-object v1, p0

    move-wide v4, p3

    move v6, p5

    .line 2309
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public final saveSecdiscardable(J[BI)V
    .registers 11

    const-string/jumbo v1, "secdis"

    move-object v0, p0

    move-object v2, p3

    move-wide v3, p1

    move v5, p4

    .line 2271
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public final saveState(Ljava/lang/String;[BJI)V
    .registers 13

    const-string/jumbo v0, "spblob"

    .line 2333
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveState() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p5, p3, p4, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->makeSpmLog(IJLjava/lang/String;)V

    .line 2336
    :cond_1e
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    move v2, p5

    move-wide v3, p3

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/LockSettingsStorage;->writeSyntheticPasswordState(IJLjava/lang/String;[B)V

    return-void
.end method

.method public final saveSyntheticPasswordHandle([BI)V
    .registers 9

    const-string/jumbo v1, "handle"

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p2

    .line 1200
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public final saveWeaverSlot(IJI)V
    .registers 13

    const/4 v0, 0x5

    .line 1247
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    .line 1248
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 1249
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1250
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    const-string/jumbo v3, "weaver"

    move-object v2, p0

    move-wide v5, p2

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    return-void
.end method

.method public scrypt([B[BIIII)[B
    .registers 14

    .line 2422
    new-instance v0, Landroid/security/Scrypt;

    invoke-direct {v0}, Landroid/security/Scrypt;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/security/Scrypt;->scrypt([B[BIIII)[B

    move-result-object p0

    return-object p0
.end method

.method public final setToken([BI)V
    .registers 4

    .line 2696
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->byteToHexString([B)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "lockscreen.token"

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public sidFromPasswordHandle([B)J
    .registers 2

    .line 2418
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->nativeSidFromPasswordHandle([B)J

    move-result-wide p0

    return-wide p0
.end method

.method public final synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V
    .registers 6

    .line 1549
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 1551
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 1550
    invoke-static {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1552
    iget v0, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 1553
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 v0, 0x1

    .line 1554
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p1

    .line 1553
    invoke-virtual {p0, v0, p3, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 1556
    :cond_26
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p3, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final synchronizeWeaverFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;III)V
    .registers 7

    .line 1563
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStorage;->getPersistentDataBlockManager()Lcom/android/server/PersistentDataBlockManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mUserManager:Landroid/os/UserManager;

    .line 1565
    invoke-virtual {v1, p3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    .line 1564
    invoke-static {v0, p3}, Lcom/android/internal/widget/LockPatternUtils;->userOwnsFrpCredential(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z

    move-result p3

    if-eqz p3, :cond_2d

    .line 1566
    iget p3, p1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/4 v0, -0x1

    if-eq p3, v0, :cond_26

    .line 1567
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p3, 0x2

    .line 1568
    invoke-virtual {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object p1

    .line 1567
    invoke-virtual {p0, p3, p4, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    goto :goto_2d

    .line 1570
    :cond_26
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const/4 p1, 0x0

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p2, p2, p1}, Lcom/android/server/locksettings/LockSettingsStorage;->writePersistentDataBlock(III[B)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final transformUnderSecdiscardable([B[B)[B
    .registers 5

    .line 2256
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_SECDISCARDABLE:[B

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 2258
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 2259
    array-length v0, p1

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2260
    array-length p1, p1

    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public final transformUnderWeaverSecret([B[B)[B
    .registers 5

    .line 2247
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_PASSWORD:[B

    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 2249
    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    new-array p2, p2, [B

    .line 2250
    array-length v0, p1

    invoke-static {p1, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2251
    array-length p1, p1

    array-length v0, p0

    invoke-static {p0, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2
.end method

.method public unregisterWeakEscrowTokenRemovedListener(Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;)Z
    .registers 2

    .line 2481
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method public unwrapPasswordBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;JLcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 29

    move-object/from16 v9, p0

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@ unwrapPasswordBasedSyntheticPassword : userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SyntheticPasswordManager"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    new-instance v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v14}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    const-string/jumbo v0, "pwd"

    .line 1794
    invoke-virtual {v9, v0, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v8

    const/4 v15, 0x1

    if-nez v8, :cond_55

    .line 1798
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pwd data reading failed!!  userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1800
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v14

    .line 1805
    :cond_55
    iget v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    invoke-virtual {v12, v0}, Lcom/android/internal/widget/LockscreenCredential;->checkAgainstStoredType(I)Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_81

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1806
    iget v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v15

    const-string v1, "Credential type mismatch: expected %d actual %d"

    .line 1806
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v14

    .line 1812
    :cond_81
    invoke-virtual {v9, v12, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object v4

    .line 1813
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    .line 1816
    invoke-virtual {v9, v4, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isTokenMatch([BI)I

    move-result v5

    .line 1820
    invoke-virtual {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v0

    const/4 v1, -0x1

    const-string v2, ", request salt : "

    const-string v3, ", timeout = "

    if-eq v0, v1, :cond_151

    .line 1823
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v1

    if-nez v1, :cond_bd

    const-string v0, "No weaver service to unwrap password based SP"

    .line 1824
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1827
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No weaver service to unwrap password based SP!  userid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    return-object v14

    .line 1832
    :cond_bd
    invoke-static {v15, v0, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    .line 1833
    invoke-virtual {v9, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1834
    invoke-static/range {p5 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@ unwrapPasswordBasedSyntheticPassword : weaver result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_13c

    .line 1838
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v0

    const-string v1, "Weaver failed!! User "

    if-nez v0, :cond_115

    if-ne v5, v15, :cond_115

    .line 1840
    iget-object v0, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", weaver error!"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v15, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    goto :goto_13b

    .line 1843
    :cond_115
    iget-object v4, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 1845
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->gethashStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1843
    invoke-virtual {v4, v15, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    :goto_13b
    return-object v14

    :cond_13c
    const-wide/16 v0, 0x0

    .line 1851
    iget-object v2, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1852
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v2

    .line 1851
    invoke-virtual {v9, v4, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderWeaverSecret([B[B)[B

    move-result-object v2

    move-wide/from16 v18, v0

    move-object v15, v4

    move v12, v5

    move-object/from16 v16, v14

    :goto_14e
    move-object v5, v2

    goto/16 :goto_204

    .line 1863
    :cond_151
    invoke-virtual {v9, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v0

    .line 1876
    :try_start_155
    invoke-virtual {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v17

    const-wide/16 v18, 0x0

    iget-object v1, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    move-object/from16 v16, p1

    move-object/from16 v20, v1

    move-object/from16 v21, v0

    invoke-interface/range {v16 .. v21}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_167
    .catch Landroid/os/RemoteException; {:try_start_155 .. :try_end_167} :catch_330

    .line 1883
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v6

    .line 1884
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "!@ unwrapPasswordBasedSyntheticPassword : gk result = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_2bc

    .line 1886
    sget-object v2, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v2, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1887
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v1

    if-eqz v1, :cond_1ed

    .line 1890
    :try_start_18d
    invoke-virtual {v9, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v1

    iget-object v2, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B
    :try_end_193
    .catch Landroid/os/RemoteException; {:try_start_18d .. :try_end_193} :catch_19c

    move-object/from16 v15, p1

    :try_start_195
    invoke-interface {v15, v1, v2, v0, v0}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v0
    :try_end_199
    .catch Landroid/os/RemoteException; {:try_start_195 .. :try_end_199} :catch_19a

    goto :goto_1a6

    :catch_19a
    move-exception v0

    goto :goto_19f

    :catch_19c
    move-exception v0

    move-object/from16 v15, p1

    :goto_19f
    const-string v1, "Fail to invoke gatekeeper.enroll"

    .line 1893
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1894
    sget-object v0, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 1897
    :goto_1a6
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1d3

    .line 1898
    invoke-virtual {v0}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1901
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/widget/LockscreenCredential;->getType()I

    move-result v0

    iput v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 1902
    invoke-virtual {v8}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->toBytes()[B

    move-result-object v3

    const-string/jumbo v2, "pwd"

    move-object/from16 v1, p0

    move v12, v5

    move-object/from16 v6, v18

    move-wide/from16 v4, p2

    move-object v15, v6

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveState(Ljava/lang/String;[BJI)V

    .line 1903
    invoke-virtual {v9, v8, v14, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->synchronizeFrpPassword(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;II)V

    goto :goto_1f2

    :cond_1d3
    move v12, v5

    move-object/from16 v16, v14

    move-object/from16 v15, v18

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to re-enroll user password for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f2

    :cond_1ed
    move v12, v5

    move-object/from16 v16, v14

    move-object/from16 v15, v18

    .line 1929
    :goto_1f2
    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v9, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->sidFromPasswordHandle([B)J

    move-result-wide v0

    .line 1937
    invoke-virtual {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v2

    .line 1936
    invoke-virtual {v9, v15, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v2

    move-wide/from16 v18, v0

    goto/16 :goto_14e

    :goto_204
    if-eqz p6, :cond_212

    .line 1944
    :try_start_206
    invoke-interface/range {p6 .. p6}, Lcom/android/internal/widget/ICheckCredentialProgressCallback;->onCredentialVerified()V
    :try_end_209
    .catch Landroid/os/RemoteException; {:try_start_206 .. :try_end_209} :catch_20a

    goto :goto_212

    :catch_20a
    move-exception v0

    move-object v1, v0

    const-string/jumbo v0, "progressCallback throws exception"

    .line 1946
    invoke-static {v7, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_212
    :goto_212
    const-string/jumbo v0, "lockscreen.token.ver"

    const/4 v1, 0x1

    if-eq v12, v1, :cond_24d

    .line 1951
    invoke-virtual {v9, v15, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->setToken([BI)V

    .line 1952
    iget-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success!! userid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", updated salt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 1954
    invoke-static {v3}, Lcom/android/server/locksettings/LockSettingsServiceLog;->gethashStr([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", but it does not match with last token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1952
    invoke-virtual {v1, v3, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1956
    iget-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    sget-object v2, Lcom/android/server/locksettings/LockSettingsServiceLog;->SECURITY_LOG_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, v13}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_287

    .line 1958
    :cond_24d
    iget-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-string v2, ""

    invoke-virtual {v1, v0, v2, v13}, Lcom/android/server/locksettings/LockSettingsStorage;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1959
    sget-object v2, Lcom/android/server/locksettings/LockSettingsServiceLog;->SECURITY_LOG_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_287

    .line 1960
    iget-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ver updated!, updated salt : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 1961
    invoke-static {v4}, Lcom/android/server/locksettings/LockSettingsServiceLog;->gethashStr([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 1960
    invoke-virtual {v1, v4, v3}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    .line 1962
    iget-object v1, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {v1, v0, v2, v13}, Lcom/android/server/locksettings/LockSettingsStorage;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_287
    :goto_287
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p2

    move-wide/from16 v6, v18

    move/from16 v8, p5

    .line 1976
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v3

    move-object/from16 v14, v16

    iput-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    const-wide/16 v4, 0x0

    move-object/from16 v2, p1

    move/from16 v6, p5

    .line 1981
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1985
    iget-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v0, :cond_2bb

    invoke-virtual {v9, v10, v11, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager;->hasPasswordMetrics(JI)Z

    move-result v0

    if-nez v0, :cond_2bb

    .line 1986
    iget-object v3, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-wide/from16 v4, p2

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->savePasswordMetrics(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)V

    :cond_2bb
    return-object v14

    :cond_2bc
    move v12, v5

    const-string v0, "gatekeeper failed!! User "

    const/4 v4, 0x1

    if-ne v6, v4, :cond_2f8

    .line 1910
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v4

    iput-object v4, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1913
    iget-object v4, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1914
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 1915
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->gethashStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    .line 1913
    invoke-virtual {v4, v5, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    return-object v14

    :cond_2f8
    move v5, v4

    .line 1919
    sget-object v4, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v4, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-ne v12, v5, :cond_32f

    .line 1922
    iget-object v4, v9, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1923
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 1924
    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->gethashStr([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", gatekeeper error!"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1922
    invoke-virtual {v4, v1, v0}, Lcom/android/server/locksettings/LockSettingsStorage;->addLog(ILjava/lang/String;)V

    :cond_32f
    return-object v14

    :catch_330
    move-exception v0

    const-string v1, "gatekeeper verify failed"

    .line 1879
    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1880
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v14, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v14
.end method

.method public unwrapStrongTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 13

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move v6, p5

    .line 2011
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public final unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;
    .registers 22

    move-object v0, p0

    move/from16 v3, p3

    move-object/from16 v5, p4

    move/from16 v8, p7

    const-string/jumbo v1, "spblob"

    move-wide v6, p1

    .line 2089
    invoke-virtual {p0, v1, v6, v7, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    return-object v2

    .line 2093
    :cond_13
    invoke-static {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v1

    .line 2094
    iget-byte v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v4, v9, :cond_2b

    if-eq v4, v10, :cond_2b

    if-ne v4, v11, :cond_23

    goto :goto_2b

    .line 2097
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown blob version"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2099
    :cond_2b
    :goto_2b
    iget-byte v9, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    if-ne v9, v3, :cond_bc

    if-ne v4, v11, :cond_3c

    .line 2104
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    invoke-static {v4, v9, v5}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decryptBlobV1(Ljava/lang/String;[B[B)[B

    move-result-object v4

    goto :goto_46

    .line 2107
    :cond_3c
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->getKeyName(J)Ljava/lang/String;

    move-result-object v4

    iget-object v9, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mContent:[B

    invoke-virtual {p0, v4, v9, v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->decryptSPBlob(Ljava/lang/String;[B[B)[B

    move-result-object v4

    :goto_46
    const-string v9, "SyntheticPasswordManager"

    if-nez v4, :cond_5f

    .line 2110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to decrypt SP for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 2113
    :cond_5f
    new-instance v12, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    iget-byte v13, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    invoke-direct {v12, v13}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;-><init>(B)V

    if-eq v3, v11, :cond_6f

    if-ne v3, v10, :cond_6b

    goto :goto_6f

    .line 2122
    :cond_6b
    invoke-virtual {v12, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateDirectly([B)V

    goto :goto_8d

    .line 2116
    :cond_6f
    :goto_6f
    invoke-virtual {p0, v12, v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadEscrowData(Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;I)Z

    move-result v10

    if-nez v10, :cond_8a

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User is not escrowable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 2120
    :cond_8a
    invoke-virtual {v12, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->recreateFromEscrow([B)V

    .line 2124
    :goto_8d
    iget-byte v1, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mVersion:B

    if-ne v1, v11, :cond_bb

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Upgrade v1 SP blob for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    .line 2126
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/locksettings/SyntheticPasswordManager;->createSyntheticPasswordBlob(JBLcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;[BJI)V

    :cond_bb
    return-object v12

    .line 2100
    :cond_bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blob type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unwrapTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 14

    const-string/jumbo v0, "spblob"

    .line 1999
    invoke-virtual {p0, v0, p2, p3, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadState(Ljava/lang/String;JI)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;

    move-result-object v0

    .line 2000
    iget-byte v5, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$SyntheticPasswordBlob;->mType:B

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public final unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 18

    move-object v8, p0

    move-wide v1, p2

    move/from16 v9, p6

    .line 2028
    new-instance v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    invoke-direct {v10}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;-><init>()V

    .line 2029
    invoke-virtual {p0, p2, p3, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSecdiscardable(JI)[B

    move-result-object v0

    .line 2030
    invoke-virtual {p0, p2, p3, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadWeaverSlot(JI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_54

    .line 2032
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result v4

    const-string v5, "SyntheticPasswordManager"

    if-nez v4, :cond_26

    const-string v0, "No weaver service to unwrap token based SP"

    .line 2033
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v10

    :cond_26
    const/4 v4, 0x1

    .line 2037
    invoke-static {v4, v3, v9}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->begin(III)V

    const/4 v4, 0x0

    .line 2038
    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .line 2039
    invoke-static/range {p6 .. p6}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finish(I)V

    .line 2040
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_4a

    .line 2041
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v4

    if-nez v4, :cond_3f

    goto :goto_4a

    .line 2046
    :cond_3f
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object v3

    sget-object v4, Lcom/android/server/locksettings/SyntheticPasswordManager;->PERSONALISATION_WEAVER_TOKEN:[B

    invoke-static {v3, v4, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    goto :goto_54

    :cond_4a
    :goto_4a
    const-string v0, "Failed to retrieve weaver secret when unwrapping token"

    .line 2042
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object v10

    .line 2051
    :cond_54
    :goto_54
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;->getNull()Lcom/android/server/locksettings/SyntheticPasswordMdfpp$KeyingMaterial;

    move-object/from16 v3, p5

    .line 2061
    invoke-virtual {p0, v3, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->transformUnderSecdiscardable([B[B)[B

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-wide v1, p2

    move v3, p4

    move/from16 v7, p6

    .line 2072
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapSyntheticPasswordBlob(JB[BJI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    move-result-object v2

    iput-object v2, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->authToken:Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;

    if-eqz v2, :cond_7f

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v5, p6

    .line 2075
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    if-nez v0, :cond_83

    .line 2079
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_83

    .line 2082
    :cond_7f
    sget-object v0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    iput-object v0, v10, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;->gkResponse:Lcom/android/internal/widget/VerifyCredentialResponse;

    :cond_83
    :goto_83
    return-object v10
.end method

.method public unwrapWeakTokenBasedSyntheticPassword(Landroid/service/gatekeeper/IGateKeeperService;J[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;
    .registers 13

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move v6, p5

    .line 2022
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/locksettings/SyntheticPasswordManager;->unwrapTokenBasedSyntheticPasswordInternal(Landroid/service/gatekeeper/IGateKeeperService;JB[BI)Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationResult;

    move-result-object p0

    return-object p0
.end method

.method public updateHandleFile(I)V
    .registers 5

    .line 2511
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "handle"

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/locksettings/LockSettingsStorage;->getSynthenticPasswordStateFilePathForUser(IJLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2512
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2513
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_17

    return-void

    .line 2516
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    return-void
.end method

.method public verifyChallenge(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12

    .line 2141
    invoke-virtual {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager$AuthenticationToken;->deriveGkPassword()[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0
.end method

.method public verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 14

    const-string v0, "SyntheticPasswordManager"

    .line 2147
    invoke-virtual {p0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->loadSyntheticPasswordHandle(I)[B

    move-result-object v7

    if-nez v7, :cond_a

    const/4 p0, 0x0

    return-object p0

    :cond_a
    move-object v1, p1

    move v2, p5

    move-wide v3, p3

    move-object v5, v7

    move-object v6, p2

    .line 2155
    :try_start_f
    invoke-interface/range {v1 .. v6}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_73

    .line 2161
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_64

    .line 2163
    new-instance v2, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    invoke-direct {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;-><init>()V

    .line 2164
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->setGatekeeperHAT([B)Lcom/android/internal/widget/VerifyCredentialResponse$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse$Builder;->build()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2165
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 2167
    :try_start_30
    invoke-interface {p1, p5, v7, v7, p2}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v1
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_34} :catch_35

    goto :goto_3d

    :catch_35
    move-exception v1

    const-string v3, "Failed to invoke gatekeeper.enroll"

    .line 2170
    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2171
    sget-object v1, Landroid/service/gatekeeper/GateKeeperResponse;->ERROR:Landroid/service/gatekeeper/GateKeeperResponse;

    .line 2173
    :goto_3d
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_4f

    .line 2174
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v0

    .line 2175
    invoke-virtual {p0, v0, p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->saveSyntheticPasswordHandle([BI)V

    .line 2177
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/locksettings/SyntheticPasswordManager;->verifyChallengeInternal(Landroid/service/gatekeeper/IGateKeeperService;[BJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 2181
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Fail to re-enroll SP handle for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_63
    return-object v2

    :cond_64
    const/4 p0, 0x1

    if-ne v2, p0, :cond_70

    .line 2186
    invoke-virtual {v1}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromTimeout(I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 2188
    :cond_70
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :catch_73
    move-exception p0

    .line 2158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fail to verify with gatekeeper "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2159
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public verifyFrpCredential(Landroid/service/gatekeeper/IGateKeeperService;Lcom/android/internal/widget/LockscreenCredential;Lcom/android/internal/widget/ICheckCredentialProgressCallback;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 12

    .line 1470
    iget-object p3, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    invoke-virtual {p3}, Lcom/android/server/locksettings/LockSettingsStorage;->readPersistentDataBlock()Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;

    move-result-object p3

    .line 1471
    iget v0, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    const-string v1, "SyntheticPasswordManager"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_38

    .line 1472
    iget-object v0, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object v0

    .line 1473
    invoke-virtual {p0, p2, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object p2

    .line 1494
    :try_start_17
    iget p3, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->fakeUid(I)I

    move-result v3

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 1495
    invoke-virtual {p0, p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToGkInput([B)[B

    move-result-object v7

    move-object v2, p1

    .line 1494
    invoke-interface/range {v2 .. v7}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object p0
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_2a} :catch_2f

    .line 1500
    invoke-static {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->fromGateKeeperResponse(Landroid/service/gatekeeper/GateKeeperResponse;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    :catch_2f
    move-exception p0

    const-string p1, "FRP verifyChallenge failed"

    .line 1497
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1498
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    :cond_38
    const/4 p1, 0x2

    if-ne v0, p1, :cond_62

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->isWeaverAvailable()Z

    move-result p1

    if-nez p1, :cond_49

    const-string p0, "No weaver service to verify SP-based FRP credential"

    .line 1503
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0

    .line 1506
    :cond_49
    iget-object p1, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->payload:[B

    invoke-static {p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p1

    .line 1507
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->computePasswordToken(Lcom/android/internal/widget/LockscreenCredential;Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)[B

    move-result-object p1

    .line 1508
    iget p2, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->userId:I

    .line 1521
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->passwordTokenToWeaverKey([B)[B

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->stripPayload()Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    return-object p0

    .line 1524
    :cond_62
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "persistentData.type must be TYPE_SP or TYPE_SP_WEAVER, but is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcom/android/server/locksettings/LockSettingsStorage$PersistentData;->type:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    sget-object p0, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    return-object p0
.end method

.method public final weaverEnroll(I[B[B)[B
    .registers 9

    const-string/jumbo v0, "weaver write failed"

    const-string v1, "SyntheticPasswordManager"

    const/4 v2, -0x1

    if-eq p1, v2, :cond_6e

    .line 983
    iget-object v2, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v3, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v3, :cond_6e

    if-nez p2, :cond_15

    .line 988
    iget p2, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, p2, [B

    goto :goto_1a

    .line 989
    :cond_15
    array-length v3, p2

    iget v4, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v3, v4, :cond_63

    :goto_1a
    if-nez p3, :cond_22

    .line 994
    iget p3, v2, Landroid/hardware/weaver/V1_0/WeaverConfig;->valueSize:I

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p3

    :cond_22
    const/4 v2, 0x0

    .line 997
    :try_start_23
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {p0, p1, p2, v3}, Landroid/hardware/weaver/V1_0/IWeaver;->write(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    .line 998
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->update(II)V

    if-eqz p0, :cond_57

    .line 1000
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "weaver write failed, slot: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " status: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_56} :catch_58

    return-object v2

    :cond_57
    return-object p3

    :catch_58
    move-exception p0

    .line 1005
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string/jumbo p0, "weaver write failed with Exception"

    .line 1006
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    return-object v2

    :cond_63
    const-string p0, "Invalid key size for weaver"

    .line 990
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 991
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6e
    const-string p0, "Invalid slot for weaver"

    .line 984
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 985
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final weaverVerify(I[B)Lcom/android/internal/widget/VerifyCredentialResponse;
    .registers 8

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@ weaverVerify : slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyntheticPasswordManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_71

    .line 1019
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaverConfig:Landroid/hardware/weaver/V1_0/WeaverConfig;

    iget v2, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->slots:I

    if-ge p1, v2, :cond_71

    if-nez p2, :cond_26

    .line 1024
    iget p2, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    new-array p2, p2, [B

    goto :goto_2b

    .line 1025
    :cond_26
    array-length v2, p2

    iget v0, v0, Landroid/hardware/weaver/V1_0/WeaverConfig;->keySize:I

    if-ne v2, v0, :cond_66

    :goto_2b
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, -0x3e7

    const/4 v4, 0x0

    aput v3, v2, v4

    new-array v0, v0, [Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1032
    :try_start_35
    iget-object p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager;->mWeaver:Landroid/hardware/weaver/V1_0/IWeaver;

    invoke-static {p2}, Lcom/android/server/locksettings/SyntheticPasswordManager;->toByteArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v3, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$$ExternalSyntheticLambda1;-><init>([I[Lcom/android/internal/widget/VerifyCredentialResponse;I)V

    invoke-interface {p0, p1, p2, v3}, Landroid/hardware/weaver/V1_0/IWeaver;->read(ILjava/util/ArrayList;Landroid/hardware/weaver/V1_0/IWeaver$readCallback;)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_43} :catch_44

    goto :goto_5e

    :catch_44
    move-exception p0

    .line 1067
    sget-object p2, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    aput-object p2, v0, v4

    .line 1068
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weaver read failed, slot: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5e
    aget p0, v2, v4

    .line 1070
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->update(II)V

    aget-object p0, v0, v4

    return-object p0

    :cond_66
    const-string p0, "Invalid key size for weaver"

    .line 1026
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 1027
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_71
    const-string p0, "Invalid slot for weaver"

    .line 1020
    invoke-static {p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$WeaverResult;->finishOff(ILjava/lang/String;)V

    .line 1021
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
