.class public Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;
.super Ljava/lang/Object;
.source "ActivationMonitor.java"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;
    }
.end annotation


# static fields
.field public static final BLOCK_KNOX_ANALYTICS:Z = false

.field public static final CHINA_COUNTRY_CODE:Ljava/lang/String; = "China"

.field public static final COUNTRY_CODE_PROPERTY:Ljava/lang/String; = "ro.csc.country_code"

.field public static final ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

.field public static final PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

.field public static final SETTINGS_KEY_KES_STATUS:Ljava/lang/String; = "is_kes_enabled"

.field public static final SETTINGS_KEY_KLM_ON_PREMISE_STATUS:Ljava/lang/String; = "onpremise_activated"

.field public static final SETTINGS_KEY_KLM_STATUS:Ljava/lang/String; = "klm_activated"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public mB2CListener:Lcom/samsung/android/knox/analytics/activation/B2CListener;

.field public mContext:Landroid/content/Context;

.field public mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

.field public mIsChinaDevice:Z

.field public mIsOnBootCheckings:Z

.field public mIsOnPremiseActivated:Z

.field public mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

.field public mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

.field public mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;",
            ">;"
        }
    .end annotation
.end field

.field public mTriggers:Ljava/util/BitSet;

.field public mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTriggers(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)Ljava/util/BitSet;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsOnBootCheckings(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckB2COnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2COnBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckConditionsToStart(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckDOOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkDOOnBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckELMOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELMOnBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckKLMOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLMOnBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckKesOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKesOnBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcheckPOOnBoot(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkPOOnBoot()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[KnoxAnalytics] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v0, "com.sec.android.app.shealth"

    .line 49
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    const-string v0, "com.samsung.knox.securefolder"

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 55
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    .line 105
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "constructor()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 107
    new-instance p1, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    return-void
.end method

.method public static filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ">;"
        }
    .end annotation

    .line 252
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "filterOutBlacklistedElm()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_14

    const-string p0, "filterOutBlacklistedElm(): empty LicenseInfo array"

    .line 255
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 258
    :cond_14
    array-length v0, p0

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v0, :cond_2a

    aget-object v3, p0, v2

    .line 259
    invoke-virtual {v3}, Lcom/samsung/android/knox/license/LicenseInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 260
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2a
    return-object v1
.end method

.method public static isPackageAllowedToRunAnalytics(Ljava/lang/String;)Z
    .registers 6

    .line 267
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageAllowedToRunAnalytics("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->PACKAGE_TRIGGER_BLACKLISTED:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_35

    aget-object v4, v0, v3

    .line 269
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 270
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v0, "isPackageAllowedToRunAnalytics(): Not allowed"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_35
    const/4 p0, 0x1

    return p0
.end method

.method public static isPackageBlacklisted(Ljava/lang/String;)Z
    .registers 6

    .line 278
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPackageBlacklisted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_1f

    return v0

    .line 282
    :cond_1f
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->ELM_PACKAGE_BLACKLIST:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_23
    if-ge v3, v2, :cond_39

    aget-object v4, v1, v3

    .line 283
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 284
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v0, "isPackageBlacklisted(): blacklisted"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_39
    return v0
.end method


# virtual methods
.method public final bootChecking()V
    .registers 3

    .line 162
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    if-eqz v0, :cond_c

    .line 163
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v0, "bootChecking() - Device country is china, returning ..."

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_c
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "bootChecking()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$1;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 194
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 516
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkB2C() - package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isActivation? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2d

    .line 518
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->addOrRemoveB2CFeature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 520
    :cond_2d
    sget-object p2, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->getB2CActivationStatus(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkB2COnBoot()V
    .registers 3

    .line 511
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkB2ConBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 512
    invoke-virtual {p0, v0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2C(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final checkB2COnlyAndApplyFeatureWhitelist()V
    .registers 3

    .line 524
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkB2COnlyAndApplyFeatureWhitelist()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 527
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isOnlyB2CTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 529
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->applyWhitelistForB2CFeatures(Landroid/content/Context;)V

    goto :goto_26

    .line 533
    :cond_1b
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V

    goto :goto_26

    .line 537
    :cond_21
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/util/B2CFeatures;->removeB2CFeaturesFromWhitelist(Landroid/content/Context;)V

    :goto_26
    return-void
.end method

.method public final checkChina()V
    .registers 4

    const-string/jumbo v0, "ro.csc.country_code"

    .line 335
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "China"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    .line 337
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkChina(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized checkConditionsToStart()V
    .registers 5

    monitor-enter p0

    .line 416
    :try_start_1
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkConditionsToStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    move-result-object v1

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkB2COnlyAndApplyFeatureWhitelist()V

    .line 421
    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v1, "checkConditionsToStart() - already in the correct state"

    .line 422
    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_45

    .line 423
    monitor-exit p0

    return-void

    .line 426
    :cond_1e
    :try_start_1e
    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mActivationStatus:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    .line 427
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$2;->$SwitchMap$com$samsung$android$knox$analytics$activation$model$ActivationInfo$ActivationStatus:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_33

    goto :goto_43

    .line 437
    :cond_33
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    goto :goto_43

    .line 434
    :cond_37
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsDeactivation(Z)V

    goto :goto_43

    .line 430
    :cond_3b
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    if-nez v0, :cond_40

    move v1, v2

    .line 431
    :cond_40
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyKnoxAnalyticsActivation(Z)V
    :try_end_43
    .catchall {:try_start_1e .. :try_end_43} :catchall_45

    .line 443
    :goto_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkDO(Ljava/lang/String;Z)V
    .registers 5

    .line 203
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkDO()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkDOOnBoot()V
    .registers 5

    .line 198
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkDOOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->DO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isDoActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkELM(Ljava/lang/String;Z)V
    .registers 5

    .line 229
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkELM()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->ELM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isElmActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkELMOnBoot()V
    .registers 3

    .line 224
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkELMOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 225
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    return-void
.end method

.method public checkKLM(Ljava/lang/String;Z)V
    .registers 5

    .line 304
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKLM()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkOnPremise()V

    .line 306
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KLM:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKlmActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkKLMOnBoot()V
    .registers 3

    .line 299
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKLMOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    return-void
.end method

.method public checkKes(Ljava/lang/String;Z)V
    .registers 5

    .line 346
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKes()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->KME:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isKesActive()Z

    move-result v1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final checkKesOnBoot()V
    .registers 3

    .line 341
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkKesOnBoot"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKes(Ljava/lang/String;Z)V

    return-void
.end method

.method public final checkNewStatus()Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .registers 4

    .line 446
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-eqz v0, :cond_7

    .line 448
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0

    .line 450
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-lez p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    .line 451
    :goto_12
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkNewStatus() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_31

    .line 454
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0

    .line 456
    :cond_31
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0
.end method

.method public final checkOnPremise()V
    .registers 6

    .line 320
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 321
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "onpremise_activated"

    const/4 v2, 0x0

    .line 320
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    move v2, v1

    .line 325
    :cond_12
    sget-object v1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOnPremise(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-ne v2, v0, :cond_32

    const-string p0, "checkOnPremise(): Didn\'t change, returning"

    .line 328
    invoke-static {v1, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 331
    :cond_32
    iput-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    return-void
.end method

.method public final checkPOOnBoot()V
    .registers 5

    .line 208
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "checkPOOnBoot()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public final getElmLicenseList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/license/LicenseInfo;",
            ">;"
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p0

    if-nez p0, :cond_f

    .line 245
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v0, "getElmLicenseList(): Error getting ELS"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 248
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getAllLicenseInfo()[Lcom/samsung/android/knox/license/LicenseInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->filterOutBlacklistedElm([Lcom/samsung/android/knox/license/LicenseInfo;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    .registers 2

    .line 292
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    if-nez v0, :cond_e

    const-string v0, "enterprise_license_policy"

    .line 293
    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iput-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 295
    :cond_e
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mLicenseService:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    return-object p0
.end method

.method public final isElmActive()Z
    .registers 4

    .line 234
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "isElmActive()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getElmLicenseList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 237
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    .line 238
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isElmActive(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public final isKesActive()Z
    .registers 4

    .line 351
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "is_kes_enabled"

    const/4 v1, 0x0

    .line 351
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_10

    const/4 v1, 0x1

    .line 356
    :cond_10
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isKesActive(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final isKlmActive()Z
    .registers 4

    .line 310
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "klm_activated"

    const/4 v1, 0x0

    .line 310
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_10

    const/4 v1, 0x1

    .line 315
    :cond_10
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKLM(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final isOnlyB2CTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/BitSet;

    .line 411
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->B2C:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->flip(I)V

    .line 412
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public final isTriggerSet(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;)Z
    .registers 2

    .line 406
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    return p0
.end method

.method public final notifyKnoxAnalyticsActivation(Z)V
    .registers 4

    .line 469
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "notifyKnoxAnalyticsActivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 471
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsActivation(Z)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public final notifyKnoxAnalyticsDeactivation(Z)V
    .registers 4

    .line 476
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string v1, "notifyKnoxAnalyticsDeactivation()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 478
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onKnoxAnalyticsDeactivation(Z)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public final notifyStatusChanged(IZLjava/lang/String;)V
    .registers 7

    .line 490
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyStatusChanged() pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 492
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onStatusChanged(IZLjava/lang/String;)V

    goto :goto_2c

    :cond_3c
    return-void
.end method

.method public final notifyTriggerChanged(IZLjava/lang/String;)V
    .registers 7

    .line 483
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyTriggerChanged() pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " trigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;

    .line 485
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;->onTriggerChanged(IZLjava/lang/String;)V

    goto :goto_2c

    :cond_3c
    return-void
.end method

.method public onBootPhase(I)V
    .registers 4

    .line 111
    iget-boolean v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsChinaDevice:Z

    if-eqz v0, :cond_d

    .line 112
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBootPhase() - Device country is china, returning ..."

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const/16 v0, 0x1e0

    if-eq p1, v0, :cond_3f

    const/16 v0, 0x1f4

    const-string/jumbo v1, "onBootPhase(PHASE_SYSTEM_SERVICES_READY)"

    if-eq p1, v0, :cond_39

    const/16 v0, 0x258

    if-eq p1, v0, :cond_2a

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_21

    goto :goto_47

    .line 135
    :cond_21
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBootPhase(PHASE_BOOT_COMPLETED)"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 129
    :cond_2a
    sget-object p1, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkChina()V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->bootChecking()V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->registerListenersObservers()V

    goto :goto_47

    .line 126
    :cond_39
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 123
    :cond_3f
    sget-object p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onBootPhase(PHASE_LOCK_SETTINGS_READY)"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method public onPoAdded(I)V
    .registers 5

    .line 213
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->getPoPackageName(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 215
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    :cond_14
    return-void
.end method

.method public onPoRemoved(Ljava/lang/String;)V
    .registers 5

    .line 220
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->PO:Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mUserManagerHelper:Lcom/samsung/android/knox/analytics/util/UserManagerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/util/UserManagerHelper;->isAnyPOActive()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V

    return-void
.end method

.method public onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5

    .line 505
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq v0, v1, :cond_15

    .line 506
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkELM(Ljava/lang/String;Z)V

    :cond_15
    return-void
.end method

.method public onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 5

    .line 498
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-eq v0, v1, :cond_15

    .line 499
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isActivation()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkKLM(Ljava/lang/String;Z)V

    :cond_15
    return-void
.end method

.method public final registerListenersObservers()V
    .registers 4

    .line 143
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListenersObservers()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mDevicePolicyListener:Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/DevicePolicyListener;->register()V

    .line 147
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/KESListener;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/KESListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mKESListener:Lcom/samsung/android/knox/analytics/activation/KESListener;

    .line 148
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/KESListener;->register()V

    .line 150
    new-instance v1, Lcom/samsung/android/knox/analytics/activation/B2CListener;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/knox/analytics/activation/B2CListener;-><init>(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mB2CListener:Lcom/samsung/android/knox/analytics/activation/B2CListener;

    .line 151
    invoke-virtual {v1}, Lcom/samsung/android/knox/analytics/activation/B2CListener;->register()V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->getLicenseService()Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 155
    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    goto :goto_3c

    :cond_36
    const-string/jumbo p0, "registerListenersObservers() - EnterpriseLicenseService is null, can\'t observe license"

    .line 157
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3c
    return-void
.end method

.method public registerObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)V
    .registers 4

    .line 460
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerObserver()"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final setTrigger(Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;ZLjava/lang/String;Z)V
    .registers 9

    .line 369
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    .line 372
    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageAllowedToRunAnalytics(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3e

    return-void

    .line 376
    :cond_3e
    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    if-nez v2, :cond_53

    iget-boolean v2, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-nez v2, :cond_53

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 378
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    move-result v2

    invoke-virtual {p0, v2, p4, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyStatusChanged(IZLjava/lang/String;)V

    :cond_53
    if-eqz p2, :cond_5f

    .line 383
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    invoke-virtual {p4, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_69

    .line 386
    :cond_5f
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p4, v2, v3}, Ljava/util/BitSet;->set(IZ)V

    .line 388
    :goto_69
    iget-object p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mTriggers:Ljava/util/BitSet;

    invoke-virtual {p4, v1}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_78

    const-string/jumbo p0, "setTrigger(): didn\'t change, returning"

    .line 389
    invoke-static {v0, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 394
    :cond_78
    iget-boolean p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnBootCheckings:Z

    if-nez p4, :cond_90

    .line 396
    iget-boolean p4, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mIsOnPremiseActivated:Z

    if-nez p4, :cond_8d

    invoke-static {p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->isPackageBlacklisted(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_8d

    .line 397
    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor$TRIGGERS;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->notifyTriggerChanged(IZLjava/lang/String;)V

    .line 401
    :cond_8d
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->checkConditionsToStart()V

    :cond_90
    return-void
.end method

.method public unregisterObserver(Lcom/samsung/android/knox/analytics/activation/model/IActivationObserver;)Z
    .registers 2

    .line 465
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/activation/ActivationMonitor;->mObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
