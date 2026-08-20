.class public Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
.super Ljava/lang/Object;
.source "MdfPolicy.java"


# static fields
.field public static final INTENT_DMA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final INTENT_USE_MULTI_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_MULTI_APP_FEATURE_SURVEY"

.field public static final MDF_DISABLED:I = 0x8

.field public static final MDF_EMPTY:I = 0x10

.field public static final MDF_ENABLED:I = 0x1

.field public static final MDF_ENFORCE_SECUREBOOT_OFF:I = 0x0

.field public static final MDF_ENFORCE_SECUREBOOT_ON:I = 0x1

.field public static final MDF_ERR_BORINGSSL_SELFTEST_FAIL:I = -0x14

.field public static final MDF_ERR_CCMODE_DISABLED:I = -0xb

.field public static final MDF_ERR_CCMODE_ELSE:I = -0xd

.field public static final MDF_ERR_CCMODE_EMPTY:I = -0xc

.field public static final MDF_ERR_CCMODE_NOT_SUPPORT_CCMODE:I = -0x10

.field public static final MDF_ERR_ENFORCE_SB_FLAG_FAIL:I = -0x18

.field public static final MDF_ERR_INVALID_INPUT:I = -0x1

.field public static final MDF_ERR_NULL_POINTER:I = -0x2

.field public static final MDF_ERR_SET_CCMODE_FLAG_FAIL:I = -0x1b

.field public static final MDF_ERR_SYSTEMPROPERTY_EXCEPTION:I = -0x3

.field public static final MDF_FEATURE_CC_MODE_ENABLED:Ljava/lang/String; = "MCME"

.field public static final MDF_FEATURE_POLICY_CERT_OCSP:Ljava/lang/String; = "MPCO"

.field public static final MDF_FEATURE_POLICY_CERT_REVOCATION:Ljava/lang/String; = "MPCR"

.field public static final MDF_FEATURE_POLICY_FACE_LOCK:Ljava/lang/String; = "MPFL"

.field public static final MDF_FEATURE_POLICY_KEYGUARD_SMART_LOCK:Ljava/lang/String; = "MPKS"

.field public static final MDF_FEATURE_POLICY_PASSWORD_ATTEMPTS:Ljava/lang/String; = "MPPA"

.field public static final MDF_FEATURE_POLICY_PASSWORD_QUALITY:Ljava/lang/String; = "MPPQ"

.field public static final MDF_FEATURE_POLICY_SCREEN_LOCK:Ljava/lang/String; = "MPSL"

.field public static final MDF_FEATURE_POLICY_SD_CARD_BLOCKING:Ljava/lang/String; = "MPSB"

.field public static final MDF_FEATURE_POLICY_SD_CARD_ENCRYPTION:Ljava/lang/String; = "MPSE"

.field public static final MDF_LOGGING_TRACKING_ID:Ljava/lang/String; = "4M1-399-979749"

.field public static final MDF_LOGGING_TYPE:Ljava/lang/String; = "ev"

.field public static final MDF_OK:I = 0x0

.field public static final MDF_POLICY_ERR_FACE_LOCK_ON:I = 0x4000

.field public static final MDF_POLICY_ERR_ODE_ENCRYPTED_EXTERNAL_FAST:I = 0x40

.field public static final MDF_POLICY_ERR_ODE_ENCRYPTED_INTERNAL:I = 0x80

.field public static final MDF_POLICY_ERR_OUT_OF_RANGE_OF_MAX_PW_COUNT:I = 0x2

.field public static final MDF_POLICY_ERR_PASSWORD_QUALITY:I = 0x2000

.field public static final MDF_POLICY_ERR_REVOCATION_CHECK_POLICY_SET:I = 0x20

.field public static final MDF_POLICY_ERR_SCREENLOCK_NOT_SET:I = 0x4

.field public static final MDF_POLICY_ERR_SMART_LOCK_ON:I = 0x8000

.field public static final MDF_READY:I = 0x4

.field public static final PROPERTY_MDF:Ljava/lang/String; = "security.mdf"

.field public static final PROPERTY_MDF_DISABLED:Ljava/lang/String; = "Disabled"

.field public static final PROPERTY_MDF_EMPTY:Ljava/lang/String; = "None"

.field public static final PROPERTY_MDF_ENABLED:Ljava/lang/String; = "Enabled"

.field public static final PROPERTY_MDF_READY:Ljava/lang/String; = "Ready"

.field public static final PROPERTY_MDF_RESULT:Ljava/lang/String; = "security.mdf.result"

.field public static final PROPERTY_MDF_UX:Ljava/lang/String; = "ro.security.mdf.ux"

.field public static final SERVICE_VERSION:Ljava/lang/String; = "v3.21.0"

.field public static final TAG:Ljava/lang/String; = "MdfService"

.field public static sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;


# instance fields
.field public mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mIsExternalSDRemovable:Z

.field public mIsFaceLockDisabled:Z

.field public mIsOcspCheckEnabled:Z

.field public mIsPasswordEnabled:Z

.field public mIsRevocationCheckEnabled:Z

.field public mIsSDEnabled:Z

.field public mIsSDEncrypted:Z

.field public mIsSmartLockDisabled:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaximumFailedPasswordsForWipe:I

.field public mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

.field public mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

.field public mPasswordQuality:I

.field public mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

.field public mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->printVersion()V

    .line 124
    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 126
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getCertificatePolicy()Lcom/samsung/android/knox/keystore/CertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    .line 128
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    const-string/jumbo v0, "user"

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    .line 132
    new-instance p1, Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-direct {p1}, Lcom/samsung/android/security/mdf/MdfUtils;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    .registers 3

    const-class v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    monitor-enter v0

    .line 136
    :try_start_3
    sget-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    if-nez v1, :cond_e

    .line 137
    new-instance v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    invoke-direct {v1, p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;

    .line 140
    :cond_e
    sget-object p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->sInstance:Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final checkCCModeOnDevice()I
    .registers 4

    .line 399
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result p0

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p0, v2, :cond_e

    move v0, v2

    goto :goto_17

    :cond_e
    if-ne p0, v1, :cond_12

    move v0, v1

    goto :goto_17

    :cond_12
    if-ne p0, v0, :cond_15

    goto :goto_17

    :cond_15
    const/16 v0, 0x10

    :goto_17
    return v0
.end method

.method public final checkDevicePolicy()I
    .registers 9

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getMaximumFailedPasswordsForWipe()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMaximumFailedPasswordsForWipe:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x5

    if-lez v0, :cond_19

    const/16 v6, 0x1e

    if-le v0, v6, :cond_12

    goto :goto_19

    :cond_12
    const-string v0, "Password attempts : OK"

    .line 425
    invoke-virtual {p0, v5, v4, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    move v0, v1

    goto :goto_34

    .line 421
    :cond_19
    :goto_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Password attempts : setMaximumFailedPasswordsForWipe() should be set between 1 and 30. Current value = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMaximumFailedPasswordsForWipe:I

    .line 422
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    invoke-virtual {p0, v3, v2, v0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/4 v0, 0x2

    .line 428
    :goto_34
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->getPasswordQuality()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordQuality:I

    const/high16 v7, 0x50000

    if-lt v6, v7, :cond_49

    const/high16 v7, 0x60000

    if-le v6, v7, :cond_43

    goto :goto_49

    :cond_43
    const-string v6, "Password quality : OK"

    .line 433
    invoke-virtual {p0, v5, v4, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_50

    :cond_49
    :goto_49
    const-string v6, "Password quality : setPasswordQuality() should be set between alphanumeric and complex."

    .line 430
    invoke-virtual {p0, v3, v2, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x2000

    .line 436
    :goto_50
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isPasswordEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsPasswordEnabled:Z

    if-nez v6, :cond_60

    const-string v6, "Screen lock : Screen lock should be set to Password above alphanumeric.(Biometric lock is avaliable)"

    .line 438
    invoke-virtual {p0, v3, v2, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x4

    goto :goto_65

    :cond_60
    const-string v6, "Screen lock : OK"

    .line 441
    invoke-virtual {p0, v5, v4, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 444
    :goto_65
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isRevocationCheckEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isOcspCheckEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsOcspCheckEnabled:Z

    if-eqz v6, :cond_79

    const-string v6, "Certificate revocation : OK(OCSP/CRL)"

    .line 447
    invoke-virtual {p0, v5, v4, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_8a

    .line 448
    :cond_79
    iget-boolean v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    if-eqz v6, :cond_83

    const-string v6, "Certificate revocation : OK(CRL)"

    .line 449
    invoke-virtual {p0, v5, v4, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_8a

    :cond_83
    const-string v6, "Certificate revocation : enableOcspCheck() or enableRevocationCheck() should be set on all packages."

    .line 451
    invoke-virtual {p0, v3, v2, v6}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x20

    .line 456
    :goto_8a
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isExternalSDRemovable()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsExternalSDRemovable:Z

    if-eqz v6, :cond_ca

    .line 458
    iget-object v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mRestrictionPolicy:Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    invoke-virtual {v6}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v6

    if-eqz v6, :cond_a5

    iget-object v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mUserManager:Landroid/os/UserManager;

    const-string v7, "no_physical_media"

    invoke-virtual {v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a5

    move v1, v3

    :cond_a5
    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    .line 459
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEncrypted:Z

    .line 460
    iget-boolean v6, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    if-nez v6, :cond_ba

    const-string v1, "SD card status : OK(Blocked)"

    .line 461
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_cf

    :cond_ba
    if-eqz v1, :cond_c2

    const-string v1, "SD card status : OK(Encrypted)"

    .line 463
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_cf

    :cond_c2
    const-string v1, "SD card status : setRequireStorageCardEncryption() should be set to true, setSdCardState() should be set to false, or DISALLOW_MOUNT_PHYSICAL_MEDIA should be set to addUserRestriction()."

    .line 465
    invoke-virtual {p0, v5, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x80

    goto :goto_cf

    :cond_ca
    const-string v1, "SD card status : OK(No slot)"

    .line 472
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    .line 477
    :goto_cf
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isFaceLockDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsFaceLockDisabled:Z

    if-eqz v1, :cond_dd

    const-string v1, "Face lock : OK"

    .line 479
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_e4

    :cond_dd
    const-string v1, "Face lock : BIOMETRIC_AUTHENTICATION_FACE should be set to false in the setBiometricAuthenticationEnabled()or KEYGUARD_DISABLE_FACE should be set to setKeyguardDisabledFeatures()."

    .line 481
    invoke-virtual {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    or-int/lit16 v0, v0, 0x4000

    .line 489
    :goto_e4
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isSmartLockDisabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSmartLockDisabled:Z

    if-eqz v1, :cond_f2

    const-string v1, "Smart lock : OK"

    .line 491
    invoke-virtual {p0, v5, v4, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    goto :goto_fb

    :cond_f2
    const-string v1, "Smart lock : KEYGUARD_DISABLE_TRUST_AGENTS should be set to setKeyguardDisabledFeatures()."

    .line 493
    invoke-virtual {p0, v3, v2, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const p0, 0x8000

    or-int/2addr v0, p0

    :goto_fb
    return v0
.end method

.method public final checkFipsSelftest()I
    .registers 4

    .line 502
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0}, Lcom/samsung/android/security/mdf/MdfUtils;->FIPS_Openssl_SelfTest()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    const/4 v1, 0x6

    const-string v2, "FIPS self-test : FAILED"

    .line 503
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/16 p0, -0x14

    return p0

    :cond_12
    const/4 v0, 0x5

    const/4 v1, 0x4

    const-string v2, "FIPS self-test : OK"

    .line 507
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAuditAndLogcat(IILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final checkSystemUid()V
    .registers 2

    .line 739
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    .line 742
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Security Exception Occurred. Only SYSTEM can use the MdfService."

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 743
    throw p0
.end method

.method public enableCCMode(Z)I
    .registers 18

    move-object/from16 v0, p0

    const-string/jumbo v1, "security.mdf.result"

    const-string v2, "None"

    .line 274
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isCCModeSupport()Z

    move-result v2

    const-string v3, "MdfService"

    if-nez v2, :cond_21

    const-string v0, "This model does not support CC mode."

    .line 278
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x10

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 286
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v2

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the current mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0xd

    const/16 v5, -0xc

    const/16 v6, -0xb

    const v7, 0x1040734

    const v8, 0x1040736

    const v9, 0x1040735

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/16 v12, 0x8

    const/16 v13, 0x10

    const-string v14, "Failed. setCCMode. res = "

    const/4 v15, 0x0

    if-eqz p1, :cond_191

    if-ne v2, v11, :cond_60

    const-string v0, "CCMode is already enabled."

    .line 291
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_60
    if-ne v2, v10, :cond_11d

    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v2

    .line 295
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_87

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_87
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkFipsSelftest()I

    move-result v2

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_e3

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed. check fips self test. res = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v0, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v4

    if-eqz v4, :cond_ca

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 307
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_265

    .line 310
    :cond_ca
    iget-object v1, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_265

    .line 314
    :cond_e3
    invoke-virtual {v0, v11}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v4

    if-eqz v4, :cond_101

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_265

    .line 319
    :cond_101
    iget-object v1, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 320
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040724

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 319
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_265

    :cond_11d
    if-ne v2, v13, :cond_145

    .line 325
    invoke-virtual {v0, v13}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_13b

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_13b
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_142
    move v4, v5

    goto/16 :goto_265

    :cond_145
    if-ne v2, v12, :cond_16c

    .line 333
    invoke-virtual {v0, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_163

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_163
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_219

    .line 341
    :cond_16c
    invoke-virtual {v0, v13}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_188

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_188
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_265

    :cond_191
    if-ne v2, v11, :cond_1d4

    .line 352
    invoke-virtual {v0, v10}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v4

    if-eqz v4, :cond_1b1

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_265

    .line 356
    :cond_1b1
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x1040726

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_265

    :cond_1d4
    if-ne v2, v10, :cond_1dc

    const-string v0, "CCMode is already ready."

    .line 362
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_1dc
    if-ne v2, v12, :cond_21b

    .line 365
    invoke-virtual {v0, v12}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v4

    if-eqz v4, :cond_1fb

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_265

    .line 370
    :cond_1fb
    iget-object v2, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 371
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_219
    move v4, v6

    goto :goto_265

    :cond_21b
    if-ne v2, v13, :cond_242

    .line 376
    invoke-virtual {v0, v13}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_239

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_239
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_142

    .line 384
    :cond_242
    invoke-virtual {v0, v13}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_25e

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_25e
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_265
    return v4
.end method

.method public final enforceSB(Z)I
    .registers 6

    const-string v0, "Failed. SBFlag has yet to set. current flag = "

    const/16 v1, -0x18

    const-string v2, "MdfService"

    if-eqz p1, :cond_49

    .line 517
    iget-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {p1}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOn()I

    move-result p1

    if-eqz p1, :cond_29

    .line 519
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed. setSBFlagOn() res = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 522
    :cond_29
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result p0

    const/4 v3, 0x1

    if-eq p0, v3, :cond_89

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 524
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 529
    :cond_49
    iget-object p1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {p1}, Lcom/samsung/android/security/mdf/MdfUtils;->setSBFlagOff()I

    move-result p1

    if-eqz p1, :cond_6a

    .line 531
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed. setSBFlagOff() res = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 534
    :cond_6a
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfUtils;->getSBFlag()I

    move-result p0

    if-eqz p0, :cond_89

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 536
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_89
    return p1
.end method

.method public final getMaximumFailedPasswordsForWipe()I
    .registers 2

    .line 644
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 645
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result p0

    return p0

    :cond_a
    const-string p0, "MdfService"

    const-string v0, "DevicePolicyManager is null"

    .line 647
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method public final getPasswordQuality()I
    .registers 2

    .line 666
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 667
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result p0

    return p0

    :cond_a
    const-string p0, "MdfService"

    const-string v0, "DevicePolicyManager is null"

    .line 669
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method public initCCMode()I
    .registers 7

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkSystemUid()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_140

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MdfService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const/16 v3, 0x8

    const-string v4, "Failed. setCCMode. res = "

    if-ne v0, v1, :cond_a1

    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkFipsSelftest()I

    move-result v0

    if-eqz v0, :cond_81

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed. check fips self test. res = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040736

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    .line 226
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1040734

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_123

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_123

    .line 233
    :cond_81
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkDevicePolicy()I

    move-result v0

    if-eqz v0, :cond_123

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prerequisite policies have yet to set. res = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_123

    :cond_a1
    const/4 v1, 0x4

    if-ne v0, v1, :cond_c1

    .line 240
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_123

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    :cond_c1
    if-ne v0, v3, :cond_e2

    .line 245
    invoke-virtual {p0, v3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_df

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_df
    const/16 v0, -0xb

    goto :goto_123

    :cond_e2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_105

    .line 251
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_102

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_102
    const/16 v0, -0xc

    goto :goto_123

    .line 257
    :cond_105
    invoke-virtual {p0, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCMode(I)I

    move-result v0

    if-eqz v0, :cond_121

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_121
    const/16 v0, -0xd

    .line 264
    :cond_123
    :goto_123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AE CommonCriteriaMode is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->isAECommonCriteriaModeEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_140
    move-exception p0

    .line 213
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 214
    throw p0
.end method

.method public final isAECommonCriteriaModeEnabled()Z
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :cond_a
    const-string p0, "MdfService"

    const-string v0, "Failed isCommonCriteriaMode(). mDevicePolicyManager is null"

    .line 200
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isCCModeSupport()Z
    .registers 2

    const-string/jumbo p0, "ro.security.mdf.ux"

    .line 187
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Enabled"

    .line 189
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public final isExternalSDRemovable()Z
    .registers 2

    .line 693
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result p0

    const-string v0, "MdfService"

    if-eqz p0, :cond_f

    const-string p0, "SDCARD SLOT Support"

    .line 694
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_f
    const-string p0, "SDCARD SLOT None"

    .line 697
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isFaceLockDisabled()Z
    .registers 5

    .line 704
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "MdfService"

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    const/4 v3, 0x0

    .line 705
    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/4 v3, 0x1

    if-eqz v0, :cond_13

    move v0, v3

    goto :goto_14

    :cond_13
    move v0, v2

    .line 713
    :goto_14
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordPolicy:Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    if-eqz p0, :cond_24

    const/4 v1, 0x4

    .line 714
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isBiometricAuthenticationEnabled(I)Z

    move-result p0

    xor-int/2addr p0, v3

    if-nez v0, :cond_22

    if-eqz p0, :cond_23

    :cond_22
    move v2, v3

    :cond_23
    return v2

    :cond_24
    const-string p0, "PasswordPolicy is null"

    .line 717
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2a
    const-string p0, "DevicePolicyManager is null"

    .line 708
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isOcspCheckEnabled()Z
    .registers 2

    .line 684
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz p0, :cond_b

    const-string v0, "*"

    .line 685
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isOcspCheckEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const-string p0, "MdfService"

    const-string v0, "CertificatePolicy is null"

    .line 687
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isPasswordEnabled()Z
    .registers 3

    .line 653
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x0

    if-eqz p0, :cond_18

    .line 654
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    const/high16 v1, 0x40000

    if-lt p0, v1, :cond_17

    const/high16 v1, 0x60000

    if-gt p0, v1, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v0

    :cond_18
    const-string p0, "MdfService"

    const-string v1, "LockPatternUtils is null"

    .line 660
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isRevocationCheckEnabled()Z
    .registers 2

    .line 675
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mCertificatePolicy:Lcom/samsung/android/knox/keystore/CertificatePolicy;

    if-eqz p0, :cond_b

    const-string v0, "*"

    .line 676
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/keystore/CertificatePolicy;->isRevocationCheckEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_b
    const-string p0, "MdfService"

    const-string v0, "CertificatePolicy is null"

    .line 678
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isSmartLockDisabled()Z
    .registers 3

    .line 725
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    const/4 v1, 0x0

    .line 726
    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    :cond_10
    const-string p0, "MdfService"

    const-string v1, "DevicePolicyManager is null"

    .line 729
    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final logForAudit(ILjava/lang/String;)V
    .registers 9

    .line 176
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const-string v4, "MdfStatus"

    move v1, p1

    move-object v5, p2

    .line 172
    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logForAuditAndLogcat(IILjava/lang/String;)V
    .registers 4

    .line 182
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V

    const-string p0, "MdfService"

    .line 183
    invoke-static {p2, p0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final printVersion()V
    .registers 2

    const-string p0, "MdfService"

    const-string/jumbo v0, "v3.21.0"

    .line 735
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendSamsungAnalyticsMultiLog()V
    .registers 6

    .line 752
    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->checkCCModeOnDevice()I

    move-result v0

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MdfService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    return-void

    .line 759
    :cond_22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "MCME"

    .line 763
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "Enabled"

    .line 764
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "MPPA"

    .line 767
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    iget v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMaximumFailedPasswordsForWipe:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "MPPQ"

    .line 771
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    iget v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mPasswordQuality:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "MPSL"

    .line 775
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsPasswordEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "MPCR"

    .line 779
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsRevocationCheckEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "MPCO"

    .line 783
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsOcspCheckEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 786
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsExternalSDRemovable:Z

    if-eqz v3, :cond_9d

    const-string v3, "MPSE"

    .line 788
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 789
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEncrypted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "MPSB"

    .line 792
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 793
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSDEnabled:Z

    xor-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9d
    const-string v3, "MPFL"

    .line 798
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 799
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsFaceLockDisabled:Z

    xor-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "MPKS"

    .line 803
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    iget-boolean v3, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mIsSmartLockDisabled:Z

    xor-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "tracking_id"

    const-string v4, "4M1-399-979749"

    .line 807
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v3, "feature"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 809
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "extra"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    const-string v2, "ev"

    .line 810
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.diagmonagent.intent.USE_MULTI_APP_FEATURE_SURVEY"

    .line 813
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 814
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "com.sec.android.diagmonagent"

    .line 815
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 817
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_10b

    .line 818
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_10b
    return-void
.end method

.method public final setCCMode(I)I
    .registers 10

    const-string/jumbo v0, "security.mdf"

    const-string v1, "None"

    const/16 v2, 0x10

    const/16 v3, 0x8

    const/4 v4, 0x4

    const-string v5, "MdfService"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq p1, v7, :cond_3a

    if-eq p1, v4, :cond_36

    if-eq p1, v3, :cond_31

    if-eq p1, v2, :cond_3e

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCCMode default... status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    goto :goto_3e

    :cond_31
    const-string v1, "Disabled"

    move v2, v3

    move v6, v7

    goto :goto_3e

    :cond_36
    const-string v1, "Ready"

    move v2, v4

    goto :goto_3e

    :cond_3a
    const-string v1, "Enabled"

    move v2, v7

    move v6, v2

    .line 623
    :cond_3e
    :goto_3e
    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setFlags(ZI)I

    move-result p1

    if-eqz p1, :cond_45

    return p1

    :cond_45
    const/4 v2, -0x3

    .line 627
    :try_start_46
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 628
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_53
    const/4 v3, 0x5

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CC Mode status : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->logForAudit(ILjava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_68} :catch_88
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_68} :catch_82

    .line 638
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "security.mdf : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :catch_82
    const-string p0, "SystemProperties Exception Occurs"

    .line 634
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_88
    const-string p0, "SystemProperties RuntimeException Occurs"

    .line 631
    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final setCCModeFlags(I)I
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/security/mdf/MdfUtils;->setCCModeFlag(I)I

    move-result v0

    const/16 v1, -0x1b

    const-string v2, "MdfService"

    if-eqz v0, :cond_25

    .line 550
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed. setCCModeFlag() res = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 553
    :cond_25
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mMdfUtils:Lcom/samsung/android/security/mdf/MdfUtils;

    invoke-virtual {p0}, Lcom/samsung/android/security/mdf/MdfUtils;->getCCModeFlag()I

    move-result p0

    if-eq p0, p1, :cond_46

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed. CCMode Flag has yet to set. current flag = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 555
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_46
    return v0
.end method

.method public final setFlags(ZI)I
    .registers 6

    .line 567
    invoke-virtual {p0, p1}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->enforceSB(Z)I

    move-result v0

    const-string v1, ", result = "

    const-string v2, "MdfService"

    if-eqz v0, :cond_29

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed. enforceSB : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 569
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 574
    :cond_29
    invoke-virtual {p0, p2}, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->setCCModeFlags(I)I

    move-result p0

    if-eqz p0, :cond_51

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed. setCCModeFlag : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 576
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return p0
.end method

.method public final setNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "MdfService"

    const-string v1, "Notice for applying security policy"

    .line 144
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_19

    const-string p0, "NotificationManager is null"

    .line 148
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_19
    const/4 v0, 0x4

    .line 155
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "mdf_channel_id"

    const-string v4, "Mdf Channel"

    invoke-direct {v2, v3, v4, v0}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v0, 0x1

    .line 156
    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v0, 0x2

    new-array v3, v0, [J

    .line 157
    fill-array-data v3, :array_64

    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 160
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 162
    invoke-virtual {v3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const p1, 0x1080027

    .line 163
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 164
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const/4 p1, 0x0

    .line 165
    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 166
    invoke-virtual {v2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 168
    iget-object p0, p0, Lcom/samsung/android/security/mdf/MdfService/MdfPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :array_64
    .array-data 8
        0x0
        0x1f4
    .end array-data
.end method
