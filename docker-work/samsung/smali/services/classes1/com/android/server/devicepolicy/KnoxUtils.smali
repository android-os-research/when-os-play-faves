.class public Lcom/android/server/devicepolicy/KnoxUtils;
.super Ljava/lang/Object;
.source "KnoxUtils.java"


# static fields
.field public static final CSC_IMS_MDM_TYPE:Ljava/lang/String;

.field public static final ENTERPRISE_CONTAINER_LICENCE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_APP_MGMT"

.field public static final KNOX_CONTAINER_LICENCE_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager::KnoxUtils"


# direct methods
.method public static synthetic $r8$lambda$dHf7FhZjHFK00fETtpcbTOmDmZ4(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/devicepolicy/KnoxUtils;->lambda$installLegacyKnoxApps$0(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 50
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/KnoxUtils;->CSC_IMS_MDM_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableComponent(Landroid/content/ComponentName;I)V
    .registers 4

    const-string/jumbo v0, "package"

    .line 217
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 216
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/devicepolicy/KnoxUtils;->setComponentEnabledSetting(Landroid/content/pm/IPackageManager;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public static disableContactsComponent(I)V
    .registers 4

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disabling Managed Profile Simple Sharing Component for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManager::KnoxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/server/devicepolicy/KnoxUtils;->getContactsPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.contacts.picker.CloudShareRedirectActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static disableDialerComponent(I)V
    .registers 5

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting Managed Profile Dialer Component for user:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManager::KnoxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.dialer.DialtactsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    .line 198
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.samsung.contacts"

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    .line 200
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.android.contacts.activities.DialtactsActivity"

    invoke-direct {v0, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    .line 202
    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/server/devicepolicy/KnoxUtils;->getContactsPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    .line 204
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.contacts"

    const-string v2, "com.android.contacts.NonPhoneActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static disableDocumentsUIComponent(I)V
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disabling google\'s documentsui launcher component for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManager::KnoxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.documentsui"

    const-string v2, "com.android.documentsui.LauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.documentsui"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/KnoxUtils;->disableComponent(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static getContactsPackageName()Ljava/lang/String;
    .registers 3

    .line 266
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v2, "com.android.contacts"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-string v1, ""

    .line 274
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return-object v0

    :cond_1b
    return-object v2

    :cond_1c
    return-object v0
.end method

.method public static getProfileFlags(Ljava/util/List;Landroid/content/Context;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;",
            "Landroid/content/Context;",
            ")I"
        }
    .end annotation

    .line 288
    invoke-static {}, Lcom/android/server/devicepolicy/KnoxUtils;->isSpfKnoxSupported()Z

    move-result p0

    if-nez p0, :cond_9

    const/16 p0, 0x40

    return p0

    :cond_9
    const p0, 0x10000060

    const-string/jumbo v0, "persona"

    .line 293
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 294
    invoke-static {p1}, Lcom/android/server/knox/dar/ddar/DDCache;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDCache;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 297
    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getDualDARProfile()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_22

    :cond_21
    move-object v0, v1

    :goto_22
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_40

    const-string v1, "IS_DUAL_DAR_INTENT_PROVISIONING"

    .line 299
    invoke-virtual {p1, v3, v1}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    const-string v4, "TRUE"

    .line 300
    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    move v1, v2

    goto :goto_39

    :cond_38
    move v1, v3

    :goto_39
    const-string v4, "IS_DUAL_DAR_CREATION_CRYPTO_TYPE"

    .line 301
    invoke-virtual {p1, v3, v4}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_42

    :cond_40
    move-object p1, v1

    move v1, v3

    :goto_42
    if-nez v1, :cond_46

    if-eqz v0, :cond_7f

    :cond_46
    if-eqz v1, :cond_55

    if-eqz p1, :cond_53

    const-string v0, "CRYPTO_TYPE_NATIVE"

    .line 307
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_53

    goto :goto_61

    :cond_53
    move v2, v3

    goto :goto_61

    :cond_55
    const-string p1, "dualdar-config-client-package"

    .line 309
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_61
    if-eqz v2, :cond_66

    const/16 p1, 0x2000

    goto :goto_68

    :cond_66
    const/16 p1, 0x4000

    .line 312
    :goto_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add DAR Flag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManager::KnoxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    or-int/2addr p0, p1

    :cond_7f
    return p0
.end method

.method public static getProvisioningType()Ljava/lang/String;
    .registers 3

    .line 60
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getProvisioningState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string/jumbo v2, "type"

    .line 63
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_e
    return-object v1
.end method

.method public static hasBasicPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_e

    if-eqz p0, :cond_e

    const-string v0, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    .line 122
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static hasKnoxPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_e

    if-eqz p0, :cond_e

    const-string v0, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    .line 108
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static installExistingApps(Landroid/content/Context;ILjava/util/Set;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, ":"

    const-string v1, "["

    .line 245
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p2, :cond_b0

    .line 246
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_b0

    .line 250
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apps to install SIZE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DevicePolicyManager::KnoxUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    :try_start_3c
    invoke-virtual {p0, v2, p1}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] trying to install package profileId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_68} :catch_92
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_68} :catch_69

    goto :goto_30

    :catch_69
    move-exception v4

    .line 258
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 259
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] failed "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 256
    :catch_92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] pakcage not found on the device. give up"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    :cond_b0
    :goto_b0
    return-void
.end method

.method public static installLegacyKnoxApps(Landroid/content/Context;I)V
    .registers 8

    .line 155
    invoke-static {}, Lcom/android/server/devicepolicy/KnoxUtils;->isCLTypeProvisioning()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 156
    invoke-static {}, Lcom/android/server/devicepolicy/KnoxUtils;->getProvisioningType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypeByName(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 158
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 163
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 164
    invoke-static {p0}, Lcom/android/server/devicepolicy/KnoxUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string v0, "com.samsung.android.dialer"

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 165
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 167
    :cond_2c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    const/16 v3, 0x80

    .line 168
    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 170
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 172
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_40

    .line 175
    :cond_52
    invoke-virtual {v0, v3, p1}, Landroid/content/pm/PackageManager;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 176
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 177
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 178
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5f

    .line 180
    :cond_71
    new-instance v0, Lcom/android/server/devicepolicy/KnoxUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, v4, v2}, Lcom/android/server/devicepolicy/KnoxUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    const-string v0, "Default apps"

    .line 182
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/devicepolicy/KnoxUtils;->installExistingApps(Landroid/content/Context;ILjava/util/Set;Ljava/lang/String;)V

    :cond_7e
    return-void
.end method

.method public static isCLTypeProvisioning()Z
    .registers 3

    .line 55
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getProvisioningState()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    const-string/jumbo v2, "isCLType"

    .line 56
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_e
    return v1
.end method

.method public static isSpfKnoxSupported()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .registers 2

    const-string/jumbo v0, "phone"

    .line 147
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 148
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p0

    if-nez p0, :cond_1c

    sget-object p0, Lcom/android/server/devicepolicy/KnoxUtils;->CSC_IMS_MDM_TYPE:Ljava/lang/String;

    const-string v0, "Softphone"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$installLegacyKnoxApps$0(Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)Z
    .registers 3

    .line 180
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static setComponentEnabledSetting(Landroid/content/pm/IPackageManager;Landroid/content/ComponentName;II)V
    .registers 6

    const-string v0, "DevicePolicyManager::KnoxUtils"

    const/4 v1, 0x1

    .line 233
    :try_start_3
    invoke-interface {p0, p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_6} :catch_20
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_35

    .line 239
    :catch_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Component not found, not changing enabled setting: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 239
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    :catch_20
    move-exception p0

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This should not happen."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_35
    return-void
.end method

.method public static setKnoxWorkChallengeRequiredComponent(Landroid/content/Context;II)V
    .registers 7

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKnoxWorkChallengeRequiredComponent profileUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManager::KnoxUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "knox_screen_off_timeout"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 332
    :try_start_22
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v0

    .line 333
    new-instance v2, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    const/4 p1, 0x1

    .line 335
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z

    const/4 p2, 0x4

    .line 336
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->setBiometricAuthenticationEnabled(IZ)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set default kcm biometric password policy "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    throw p0
.end method

.method public static setNonRequiredApps(Ljava/util/Set;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-static {}, Lcom/android/server/devicepolicy/KnoxUtils;->isCLTypeProvisioning()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 71
    invoke-static {}, Lcom/android/server/devicepolicy/KnoxUtils;->getProvisioningType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getConfigurationTypeByName(Ljava/lang/String;)Lcom/samsung/android/knox/container/KnoxConfigurationType;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 74
    invoke-interface {p0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 75
    instance-of v0, v0, Lcom/samsung/android/knox/container/ContainerModeConfigurationType;

    if-eqz v0, :cond_26

    invoke-static {p1}, Lcom/android/server/devicepolicy/KnoxUtils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "com.samsung.android.dialer"

    .line 76
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_26
    return-void
.end method

.method public static setPremiumFlag(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 92
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/KnoxUtils;->hasBasicPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 93
    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/KnoxUtils;->hasKnoxPermission(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/high16 p0, 0x10000000

    .line 95
    invoke-static {p2, p0}, Lcom/samsung/android/knox/SemPersonaManager;->setAttributes(II)Z

    :cond_15
    const-string p0, "containerId"

    .line 98
    invoke-static {p0, p2}, Lcom/android/server/devicepolicy/KnoxUtils;->updateManagedProvisioningState(Ljava/lang/String;I)V

    return-void
.end method

.method public static updateManagedProvisioningState(Ljava/lang/String;I)V
    .registers 6

    .line 131
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getProvisioningState()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "state"

    const/4 v2, -0x1

    .line 132
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    if-ne v2, p1, :cond_15

    return-void

    .line 139
    :cond_15
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const/4 v1, 0x1

    if-ge v2, v1, :cond_1f

    return-void

    .line 142
    :cond_1f
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    invoke-static {v0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->updateProvisioningState(Landroid/os/Bundle;)Z

    return-void
.end method
