.class public Lcom/android/server/asks/ASKSManagerService;
.super Landroid/content/pm/IASKSManager$Stub;
.source "ASKSManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/asks/ASKSManagerService$UnknownAppsStore;,
        Lcom/android/server/asks/ASKSManagerService$Deletable;,
        Lcom/android/server/asks/ASKSManagerService$Restrict;,
        Lcom/android/server/asks/ASKSManagerService$ASKSSession;,
        Lcom/android/server/asks/ASKSManagerService$ASKSState;
    }
.end annotation


# static fields
.field public static final ADD_INSTALLED_LIST:I = 0x1

.field public static final ASKS_UNKNOWN_EXECUTEBLOCK:Ljava/lang/String; = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_EXECUTEBLOCK.xml"

.field public static final ASKS_UNKNOWN_INSTALLED_INFO_LIST:Ljava/lang/String; = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

.field public static final ASKS_UNKNOWN_INSTALLED_LIST:Ljava/lang/String; = "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_LIST.xml"

.field public static final ASKS_VERSION:Ljava/lang/String; = "6.9"

.field public static final REMOVE_INSTALLED_LIST:I = 0x3

.field public static final REPLACE_INSTALLED_LIST:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ASKSManager"

.field public static final UNKNOWN_LIST_PATH:Ljava/lang/String; = "/data/system/UnknownSourceAppList.xml"

.field public static mASKSPolicyVersion:Ljava/lang/String; = "00000000"


# instance fields
.field public final AASA_CASE:I

.field public final ADP_CASE:I

.field public final ADP_POLICY_VERSION:Ljava/lang/String;

.field public final ADP_VERSION:Ljava/lang/String;

.field public final ASKS_BLACK:I

.field public final ASKS_CASE:I

.field public final ASKS_CERTSTORE:I

.field public final ASKS_CRL:I

.field public final ASKS_FILE:Ljava/lang/String;

.field public final ASKS_HALFBLACK:I

.field public final ASKS_KNOWN:I

.field public final ASKS_SCPM_FILE:Ljava/lang/String;

.field public final ASKS_TRUSTEDSTORE:I

.field public final ASKS_UNKNOWN_3RDPARTY_INSTALLER:I

.field public final ASKS_UNKNOWN_CERTTARGETDEVICE:I

.field public final ASKS_UNKNOWN_INSTALLER:Ljava/lang/String;

.field public final ASKS_UNKNOWN_INSTALLER_ZIP:Ljava/lang/String;

.field public final ASKS_UNKNOWN_PEMLIST:I

.field public final ASKS_UNKNOWN_PEMLIST_ZIP:I

.field public final ASKS_UNKNOWN_POLICYLIST:I

.field public final ASKS_UNKNOWN_PRE_INSTALLER:I

.field public final ASKS_UNKNOWN_SA_REPORTED:Ljava/lang/String;

.field public final ASKS_UNKNOWN_TARGETDEVICE:I

.field public final ASKS_UNKNOWN_TOTALLIST:I

.field public final ASKS_UNKNOWN_TOTALLIST_A11Y:I

.field public final ASKS_UNKNOWN_TOTALLIST_WEB:I

.field public final ASKS_UNKNOWN_TOTALLIST_ZIP:I

.field public final ASKS_UNKNOWN_TRUSTEDSTORE:I

.field public final ASKS_UNKNOWN_ZIPCERTTARGETDEVICE:I

.field public final ASKS_UNKNOWN_ZIPTARGETDEVICE:I

.field public CA_CERT_PATH:Ljava/lang/String;

.field public CA_CERT_SYSTEM_PATH:Ljava/lang/String;

.field public final DEBUG_MODE:Z

.field public DEBUG_MODE_FOR_DEVELOPMENT:Z

.field public EE_CERT_FILE:Ljava/lang/String;

.field public final EM_SUPPORT_PACKAGE_FILE:Ljava/lang/String;

.field public final PROPERTY_ADP_POLICY_VERSION:Ljava/lang/String;

.field public final PROPERTY_ADP_VERSION:Ljava/lang/String;

.field public final PROPERTY_ASKS_EXPIRATION_DATE:Ljava/lang/String;

.field public final PROPERTY_ASKS_POLICY_VERSION:Ljava/lang/String;

.field public final PROPERTY_ASKS_RUFS_ENABLE:Ljava/lang/String;

.field public final PROPERTY_ASKS_TIME_VALUE:Ljava/lang/String;

.field public final PROPERTY_ASKS_VERSION:Ljava/lang/String;

.field public final PROTECTION_LIST:I

.field public final RESTRICTED_FROM_POLICY:Ljava/lang/String;

.field public final RESTRICTED_FROM_TOKEN:Ljava/lang/String;

.field public ROOT_CERT_FILE:Ljava/lang/String;

.field public final SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

.field public final SECURE_TIME_FILE:Ljava/lang/String;

.field public final TAG_AASA:Ljava/lang/String;

.field public final TAG_ADP:Ljava/lang/String;

.field public final TAG_DELETABLE:Ljava/lang/String;

.field public final TAG_EM:Ljava/lang/String;

.field public final TAG_RESTRICTED:Ljava/lang/String;

.field public final TAG_RUFS:Ljava/lang/String;

.field public final TAG_SECURETIME:Ljava/lang/String;

.field public final TAG_UNKNOWN:Ljava/lang/String;

.field public TYPE_MOBILE:I

.field public TYPE_NOT_CONNECTED:I

.field public TYPE_WIFI:I

.field public installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

.field public isFirstTime:Z

.field public final mASKSStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSState;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mFile:Landroid/util/AtomicFile;

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ">;"
        }
    .end annotation
.end field

.field public volatile mSystemReady:Z

.field public final mUserVaultName:Ljava/lang/String;

.field public mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 13

    .line 259
    invoke-direct {p0}, Landroid/content/pm/IASKSManager$Stub;-><init>()V

    const-string v0, "3.1"

    .line 134
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_VERSION:Ljava/lang/String;

    const-string v1, "20230510"

    .line 135
    iput-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_POLICY_VERSION:Ljava/lang/String;

    .line 140
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    .line 141
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 143
    iput-boolean v2, p0, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    const-string v3, "AASA_ASKSManager"

    .line 152
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_AASA:Ljava/lang/String;

    const-string v3, "AASA_ASKSManager_ADP"

    .line 153
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_ADP:Ljava/lang/String;

    const-string v3, "AASA_ASKSManager_DELETABLE"

    .line 154
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_DELETABLE:Ljava/lang/String;

    const-string v3, "AASA_ASKSManager_EM"

    .line 155
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_EM:Ljava/lang/String;

    const-string v3, "AASA_ASKSManager_RESTRICTED"

    .line 156
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_RESTRICTED:Ljava/lang/String;

    const-string v3, "AASA_ASKSManager_RUFS"

    .line 157
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_RUFS:Ljava/lang/String;

    const-string v3, "AASA_ASKSManager_SECURETIME"

    .line 158
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_SECURETIME:Ljava/lang/String;

    const-string v3, "PackageInformation"

    .line 159
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->TAG_UNKNOWN:Ljava/lang/String;

    const-string v3, "AASA"

    .line 161
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mUserVaultName:Ljava/lang/String;

    const/16 v3, 0x9

    .line 167
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_BLACK:I

    const/16 v3, 0xa

    .line 168
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_KNOWN:I

    const/16 v3, 0xc

    .line 170
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_TRUSTEDSTORE:I

    const/16 v3, 0xe

    .line 171
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CRL:I

    const/16 v3, 0xf

    .line 172
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CERTSTORE:I

    const/16 v3, 0x12

    .line 175
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_HALFBLACK:I

    const/16 v3, 0x13

    .line 176
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->PROTECTION_LIST:I

    const/16 v3, 0x16

    .line 180
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_PRE_INSTALLER:I

    const/16 v3, 0x17

    .line 181
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_TARGETDEVICE:I

    const/16 v3, 0x18

    .line 182
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_CERTTARGETDEVICE:I

    const/16 v3, 0x19

    .line 183
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_ZIPTARGETDEVICE:I

    const/16 v3, 0x1a

    .line 184
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_ZIPCERTTARGETDEVICE:I

    const/16 v3, 0x1b

    .line 188
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_TOTALLIST:I

    const/16 v3, 0x1c

    .line 189
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_TOTALLIST_ZIP:I

    const/16 v3, 0x1d

    .line 191
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_PEMLIST_ZIP:I

    const/16 v3, 0x1e

    .line 192
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_PEMLIST:I

    const/16 v3, 0x1f

    .line 193
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_POLICYLIST:I

    const/16 v3, 0x20

    .line 194
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_3RDPARTY_INSTALLER:I

    const/16 v3, 0x21

    .line 195
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_TOTALLIST_A11Y:I

    const/16 v3, 0x22

    .line 196
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_TOTALLIST_WEB:I

    const/16 v3, 0x23

    .line 198
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_TRUSTEDSTORE:I

    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLER_NEW.xml"

    .line 200
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_INSTALLER:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLER_ZIP_NEW.xml"

    .line 201
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_INSTALLER_ZIP:Ljava/lang/String;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_SA_REPORTED_NEW.xml"

    .line 202
    iput-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_UNKNOWN_SA_REPORTED:Ljava/lang/String;

    const/4 v3, 0x0

    .line 208
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->AASA_CASE:I

    .line 209
    iput v2, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_CASE:I

    const/4 v4, 0x2

    .line 210
    iput v4, p0, Lcom/android/server/asks/ASKSManagerService;->ADP_CASE:I

    const-string v5, "/system/etc/ASKS_ROOT_1.crt"

    .line 212
    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_INTER_"

    .line 213
    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    const-string v5, "/system/etc/ASKS_INTER_"

    .line 214
    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    const-string v5, "/system/etc/ASKS_EDGE_1.crt"

    .line 215
    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    const-string v5, "/data/system/.aasa/asks.xml"

    .line 217
    iput-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_FILE:Ljava/lang/String;

    const-string v6, "/data/system/.aasa/EMSupportPackages.xml"

    .line 218
    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->EM_SUPPORT_PACKAGE_FILE:Ljava/lang/String;

    const-string v6, "/data/system/.aasa/trustedTime"

    .line 219
    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->SECURE_TIME_FILE:Ljava/lang/String;

    const-string v6, "/data/system/.aasa/SamsungAnalyticsLog"

    .line 220
    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->SAMSUNG_ANALYTICS_LOG_FILE:Ljava/lang/String;

    const-string v6, "/data/system/.aasa/ASKS.zip"

    .line 221
    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->ASKS_SCPM_FILE:Ljava/lang/String;

    .line 223
    iput v2, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    .line 224
    iput v4, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    .line 225
    iput v3, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    const-string/jumbo v4, "security.ASKS.version"

    .line 227
    iput-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_VERSION:Ljava/lang/String;

    const-string/jumbo v6, "security.ASKS.time_value"

    .line 228
    iput-object v6, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_TIME_VALUE:Ljava/lang/String;

    const-string/jumbo v7, "security.ASKS.policy_version"

    .line 229
    iput-object v7, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_POLICY_VERSION:Ljava/lang/String;

    const-string/jumbo v8, "security.ADP.version"

    .line 230
    iput-object v8, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ADP_VERSION:Ljava/lang/String;

    const-string/jumbo v9, "security.ADP.policy_version"

    .line 231
    iput-object v9, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ADP_POLICY_VERSION:Ljava/lang/String;

    const-string/jumbo v10, "security.ASKS.rufs_enable"

    .line 232
    iput-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_RUFS_ENABLE:Ljava/lang/String;

    const-string/jumbo v10, "security.ASKS.expiration_date"

    .line 233
    iput-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->PROPERTY_ASKS_EXPIRATION_DATE:Ljava/lang/String;

    const-string v10, "Token"

    .line 235
    iput-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->RESTRICTED_FROM_TOKEN:Ljava/lang/String;

    const-string v10, "Policy"

    .line 236
    iput-object v10, p0, Lcom/android/server/asks/ASKSManagerService;->RESTRICTED_FROM_POLICY:Ljava/lang/String;

    .line 240
    iput-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE:Z

    .line 241
    iput-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    .line 261
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string p1, "6.9"

    .line 263
    invoke-static {v4, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "00000000"

    .line 264
    invoke-static {v6, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object p1, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v7, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {v8, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {v9, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_155

    .line 277
    :try_start_123
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13a

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_13a

    .line 278
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 281
    :cond_13a
    new-instance v0, Lcom/android/server/asks/PolicyConvert;

    invoke-direct {v0}, Lcom/android/server/asks/PolicyConvert;-><init>()V

    .line 282
    sget-object v1, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/asks/PolicyConvert;->convert(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_155

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_14a} :catch_14c

    move v3, v2

    goto :goto_155

    :catch_14c
    move-exception p0

    .line 289
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "cannot create the file even it does not exist"

    invoke-direct {p1, v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 293
    :cond_155
    :goto_155
    new-instance v0, Landroid/util/AtomicFile;

    const-string v1, "asks"

    invoke-direct {v0, p1, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    .line 294
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->readState()V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->copyASKSpolicyFromSystem()Z

    move-result p1

    if-eqz p1, :cond_16c

    const/4 p1, 0x0

    .line 297
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    goto :goto_16d

    :cond_16c
    move v2, v3

    :goto_16d
    if-eqz v2, :cond_172

    .line 302
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 306
    :cond_172
    :try_start_172
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkExistUnknownAppList()V
    :try_end_175
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_172 .. :try_end_175} :catch_176
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_176

    goto :goto_17a

    :catch_176
    move-exception p1

    .line 308
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    :goto_17a
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    return-void
.end method

.method public static main(Landroid/content/Context;)Lcom/android/server/asks/ASKSManagerService;
    .registers 3

    const-string v0, "ASKSManager"

    const-string/jumbo v1, "main starts"

    .line 249
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v1, Lcom/android/server/asks/ASKSManagerService;

    invoke-direct {v1, p0}, Lcom/android/server/asks/ASKSManagerService;-><init>(Landroid/content/Context;)V

    const-string p0, "asks"

    .line 252
    invoke-static {p0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo p0, "main ends"

    .line 254
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public final ComparisonBeforeSetData(Lcom/android/server/asks/InstalledAppInfo;Ljava/lang/String;)V
    .registers 6

    const-string v0, "PackageInformation"

    if-eqz p1, :cond_4f

    if-eqz p2, :cond_4f

    .line 586
    iget-object v1, p1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const/4 v1, 0x0

    const-string/jumbo v2, "isInstalledList"

    .line 587
    invoke-virtual {p0, v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 589
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 590
    :cond_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is registered to info_list"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 591
    invoke-virtual {p0, p2, p1}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 592
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->clearInstalledAppInfoToStore()V

    goto :goto_54

    .line 595
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " are different in info_list"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    :cond_4f
    const-string p0, "PackageInfo in info_list"

    .line 598
    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    return-void
.end method

.method public final RemovedAbnormalApps()V
    .registers 13

    const-string/jumbo v0, "isInstalledList"

    const/4 v1, 0x0

    .line 2907
    invoke-virtual {p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2908
    new-instance v9, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v9}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    if-eqz v0, :cond_59

    .line 2909
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_59

    const/4 v1, 0x0

    move v10, v1

    .line 2910
    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_59

    .line 2911
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, v11

    .line 2912
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2914
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x8000000

    invoke-virtual {v1, v11, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_3a} :catch_3b

    goto :goto_56

    :catch_3b
    move-exception v1

    .line 2916
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR:: Abnormal App : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageInformation"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .line 2917
    invoke-virtual {p0, v1, v9}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    :goto_56
    add-int/lit8 v10, v10, 0x1

    goto :goto_17

    :cond_59
    return-void
.end method

.method public final addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZ)V
    .registers 16

    .line 2925
    :try_start_0
    new-instance v8, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v8}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    const/4 v0, 0x0

    .line 2926
    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v2

    iget p2, p3, Lcom/android/server/asks/RETVALUE;->isExecute:I
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_e} :catch_3d

    const/16 p3, 0x1f9

    const-string v0, "allow"

    const-string v1, "block"

    if-ne p2, p3, :cond_18

    move-object v3, v0

    goto :goto_19

    :cond_18
    move-object v3, v1

    :goto_19
    :try_start_19
    const-string p2, "except"

    .line 2927
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_19 .. :try_end_1f} :catch_3d

    if-eqz p2, :cond_23

    move-object v4, v0

    goto :goto_24

    :cond_23
    move-object v4, v1

    :goto_24
    const-string/jumbo p2, "true"

    const-string p3, "false"

    if-eqz p5, :cond_2d

    move-object v5, p2

    goto :goto_2e

    :cond_2d
    move-object v5, p3

    :goto_2e
    if-eqz p6, :cond_32

    move-object v7, p2

    goto :goto_33

    :cond_32
    move-object v7, p3

    :goto_33
    move-object v0, v8

    move-object v1, p1

    move-object v6, p4

    .line 2926
    :try_start_36
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    invoke-virtual {p0, v8}, Lcom/android/server/asks/ASKSManagerService;->setInstalledAppInfoToStore(Lcom/android/server/asks/InstalledAppInfo;)V
    :try_end_3c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_36 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p0

    .line 2930
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public final applyExecutePolicy()V
    .registers 11

    .line 1235
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8d

    const-string v0, "blockExecute"

    const/4 v1, 0x0

    .line 1236
    invoke-virtual {p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "allowExecute"

    .line 1237
    invoke-virtual {p0, v2, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "PackageInformation"

    const/4 v3, 0x0

    if-eqz v0, :cond_51

    .line 1239
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_51

    .line 1240
    new-instance v4, Lcom/android/server/pm/UnknownSourceAppManager$Helper;

    invoke-direct {v4}, Lcom/android/server/pm/UnknownSourceAppManager$Helper;-><init>()V

    .line 1241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    move v7, v3

    :goto_28
    if-ge v7, v5, :cond_4b

    .line 1244
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 1245
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "B::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_28

    .line 1247
    :cond_4b
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v6, v5}, Lcom/android/server/pm/UnknownSourceAppManager$Helper;->suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V

    :cond_51
    if-eqz v1, :cond_8d

    .line 1249
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1250
    new-instance v0, Lcom/android/server/pm/UnknownSourceAppManager$Helper;

    invoke-direct {v0}, Lcom/android/server/pm/UnknownSourceAppManager$Helper;-><init>()V

    .line 1251
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    move v6, v3

    :goto_65
    if-ge v6, v4, :cond_88

    .line 1254
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 1255
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A::"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 1257
    :cond_88
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v5, v3}, Lcom/android/server/pm/UnknownSourceAppManager$Helper;->suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V

    :cond_8d
    return-void
.end method

.method public final applyScpmPolicy(Ljava/lang/String;)Z
    .registers 8

    .line 1302
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_76

    .line 1304
    new-instance v0, Lcom/android/server/asks/RUFSContainer;

    invoke-direct {v0}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    .line 1305
    new-instance v2, Lcom/android/server/asks/RuleUpdateForSecurity;

    invoke-direct {v2, v0}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    .line 1307
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getScpmPolicyVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/asks/RUFSContainer;->setPolicyVersion(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 1308
    invoke-virtual {v0, v3}, Lcom/android/server/asks/RUFSContainer;->setHasRUFSToken(Z)V

    const-string/jumbo v4, "security.ASKS.policy_version"

    .line 1311
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 1313
    invoke-virtual {v2, p1, v1}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 1314
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy update from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AASA_ASKSManager_RUFS"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {v0}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 1317
    invoke-static {v4, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "policy update to   "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->postUpdatePolicy(Lcom/android/server/asks/RuleUpdateForSecurity;)V

    move v1, v3

    goto :goto_7d

    :cond_76
    const-string p0, "PackageInformation"

    const-string p1, "SCPM file does not exist"

    .line 1326
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    :goto_7d
    return v1
.end method

.method public applyScpmPolicyFromApp()V
    .registers 3

    const-string v0, "Only the system can claim applyScpmPolicyFromApp"

    .line 1265
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string v0, "/data/system/.aasa/ASKS.zip"

    .line 1267
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->applyScpmPolicy(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "PackageInformation"

    const-string/jumbo v1, "success to apply Scpm Policy."

    .line 1268
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 1271
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    :cond_1b
    return-void
.end method

.method public final checkASKSFileIntegrity()V
    .registers 6

    :try_start_0
    const-string v0, "/data/system/.aasa/asks.xml"

    .line 6122
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_8

    :catch_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "failed to get file hash"

    const-string v2, "AASA_ASKSManager"

    if-eqz v0, :cond_62

    .line 6128
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 6130
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->read(I)[B

    move-result-object v3

    .line 6131
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getErrorCode()I

    move-result v4

    if-nez v4, :cond_55

    .line 6134
    invoke-static {v0, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_65

    .line 6137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get file hash "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6139
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->writeASKSFileIntegrity([B)V

    goto :goto_65

    .line 6144
    :cond_55
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6146
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->writeASKSFileIntegrity([B)V

    goto :goto_65

    :cond_5c
    const-string p0, "failed to get vault service"

    .line 6151
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 6156
    :cond_62
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    :goto_65
    return-void
.end method

.method public checkASKSTarget(I)[Ljava/lang/String;
    .registers 11

    .line 879
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_151

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkASKSTarget type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AASA_ASKSManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 882
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 884
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManagerInternal;->getPackageMap()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v3

    const/16 v4, 0x9

    .line 886
    invoke-virtual {p0, v4, v2}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 888
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_3b

    return-object v1

    :cond_3b
    if-eqz v3, :cond_151

    .line 895
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_45
    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_114

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    if-eqz v4, :cond_45

    .line 901
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_60

    move v6, v5

    goto :goto_61

    :cond_60
    move v6, v7

    .line 904
    :goto_61
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_6c

    goto :goto_6d

    :cond_6c
    move v5, v6

    .line 907
    :goto_6d
    invoke-static {v4}, Lcom/android/server/pm/parsing/pkg/AndroidPackageUtils;->generateAppInfoWithoutState(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v6

    if-eqz v6, :cond_91

    .line 909
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUpdatedSystemApp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_92

    :cond_91
    move v7, v5

    :goto_92
    if-eqz v7, :cond_45

    .line 914
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_45

    .line 918
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 920
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 922
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDevice Target app :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ::"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 925
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 927
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is in Blist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-interface {v4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_45

    .line 938
    :cond_114
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-eqz p0, :cond_151

    .line 940
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 942
    :goto_120
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v5, v1, :cond_150

    .line 943
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, p0, v5

    .line 944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return value["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_120

    :cond_150
    return-object p0

    :cond_151
    return-object v1
.end method

.method public final checkAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    .line 3137
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b3

    const-string v2, "execute"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b3

    const-string/jumbo v3, "overlay"

    .line 3138
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b3

    const-string/jumbo v4, "requestInstallerZip"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b3

    const-string/jumbo v5, "initType"

    .line 3139
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2f

    goto/16 :goto_b3

    .line 3143
    :cond_2f
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3145
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "block"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    const-string v2, "blockExecute"

    .line 3146
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_56

    .line 3147
    :cond_45
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "allow"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string v2, "allowExecute"

    .line 3148
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3151
    :cond_56
    :goto_56
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 3152
    invoke-virtual {p0, v3, v1, p2}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3154
    :cond_63
    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 3155
    invoke-virtual {p0, v4, v1, p2}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3157
    :cond_73
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    const-string/jumbo v2, "isInstalledList"

    .line 3158
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 3160
    :cond_7f
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a4

    .line 3161
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v5, v2, p2}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_a4
    const-string v2, "accessibility"

    .line 3164
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b3

    .line 3165
    invoke-virtual {p0, v2, v1, p2}, Lcom/android/server/asks/ASKSManagerService;->putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public final checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B
    .registers 11

    const-string v0, ".crt"

    const-string v1, "22"

    const-string v2, "AASA_ASKSManager"

    .line 4813
    iget-boolean v3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v3, :cond_b

    return-object p2

    :cond_b
    :try_start_b
    const-string/jumbo v3, "x.509"

    .line 4820
    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12} :catch_f4

    .line 4823
    :try_start_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCAKeyIndex()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4824
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4825
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_35} :catch_36

    goto :goto_6f

    :catch_36
    move-exception v4

    .line 4827
    :try_start_37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Look at system File. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/asks/ASKSManagerService;->CA_CERT_SYSTEM_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCAKeyIndex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4829
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4830
    invoke-virtual {v3, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_6f} :catch_f4

    .line 4833
    :goto_6f
    :try_start_6f
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo p1, "signerCert is verificated!"

    .line 4834
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7c} :catch_da

    .line 4843
    :try_start_7c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 4847
    new-instance p1, Ljava/io/FileInputStream;

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->ROOT_CERT_FILE:Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_f4

    .line 4850
    :try_start_86
    invoke-virtual {v3, p1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 4851
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string p1, "CAcert is verificated!"

    .line 4852
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_98} :catch_c0

    .line 4860
    :try_start_98
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const-string/jumbo p0, "rootCert is verificated!"

    .line 4861
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a5} :catch_a6

    return-object p2

    :catch_a6
    move-exception p0

    .line 4864
    :try_start_a7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR: rootCert is not verified "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4865
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :catch_c0
    move-exception p0

    .line 4854
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR: CACert is not verified by RootCert "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4855
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :catch_da
    move-exception p0

    .line 4836
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ERROR: SignerCert is not verified by CACert "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4838
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_f3} :catch_f4

    return-object p0

    :catch_f4
    const-string p0, "Token is NOT verificated in CheckCRL!"

    .line 4868
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4869
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public checkDeletableListForASKS()V
    .registers 14

    .line 820
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot()Z

    move-result v0

    const-string v1, "AASA_ASKSManager_DELETABLE"

    if-eqz v0, :cond_cc

    .line 822
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v0

    .line 824
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 825
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 828
    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    if-eqz v6, :cond_1c

    .line 830
    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getDateLimit()Ljava/lang/String;

    move-result-object v6

    if-eqz v0, :cond_1c

    if-eqz v6, :cond_1c

    .line 834
    :try_start_44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v7, v6, :cond_1c

    .line 836
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    const/4 v7, 0x0

    .line 838
    invoke-virtual {v5, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    if-eqz v6, :cond_a6

    .line 839
    invoke-interface {v6}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getBaseApkPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5
    :try_end_6c
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_6c} :catch_c5

    if-eqz v5, :cond_a6

    const/4 v5, 0x4

    .line 842
    :try_start_6f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "a app deleted by the restricted policy. the date is expired ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 843
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x0

    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_a5} :catch_c0
    .catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_a5} :catch_c5

    goto :goto_c0

    .line 848
    :cond_a6
    :try_start_a6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "does not found delete target - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :catch_c0
    :goto_c0
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V
    :try_end_c3
    .catch Ljava/lang/NumberFormatException; {:try_start_a6 .. :try_end_c3} :catch_c5

    goto/16 :goto_1c

    :catch_c5
    const-string v4, "NumberFormatException ::"

    .line 853
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_cc
    const-string p0, "ERROR::: Unknown caller"

    .line 859
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    return-void
.end method

.method public final checkExistUnknownAppList()V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 2947
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2948
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a2

    const-string v2, "PackageInformation"

    const-string/jumbo v0, "info_list not exists"

    .line 2949
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_LIST.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2951
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "Installed Unknown app list : "

    const/4 v6, 0x0

    if-eqz v4, :cond_b6

    .line 2952
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2953
    invoke-virtual {v1, v3, v4}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2955
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2956
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v6

    .line 2957
    :goto_3e
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_84

    .line 2958
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Ljava/lang/String;

    .line 2964
    new-instance v9, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v9}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 2966
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_81

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_81

    .line 2967
    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ljava/lang/String;

    const-string v13, "allow"

    const-string v14, "block"

    const-string v15, "false"

    const-string/jumbo v16, "warning"

    const-string v17, "false"

    move-object v10, v9

    invoke-virtual/range {v10 .. v17}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_81
    add-int/lit8 v8, v8, 0x1

    goto :goto_3e

    .line 2971
    :cond_84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2972
    invoke-virtual {v1, v7}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    .line 2973
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 2975
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_ae

    const-string/jumbo v0, "installed_list File is deleted"

    .line 2976
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a2

    :cond_ae
    const-string/jumbo v0, "installed_list File is not deleted"

    .line 2978
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a2

    .line 2981
    :cond_b6
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/system/UnknownSourceAppList.xml"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2982
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2983
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_19a

    .line 2984
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 2985
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 2988
    :try_start_d1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d6} :catch_ed
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_e9

    .line 2989
    :try_start_d6
    invoke-interface {v4, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2990
    invoke-virtual {v1, v4}, Lcom/android/server/asks/ASKSManagerService;->parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object v3
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_dd} :catch_e7
    .catchall {:try_start_d6 .. :try_end_dd} :catchall_18b

    .line 2996
    :try_start_dd
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_f7

    :catch_e1
    move-exception v0

    move-object v4, v0

    .line 2999
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f7

    :catch_e7
    move-exception v0

    goto :goto_ef

    :catchall_e9
    move-exception v0

    move-object v1, v0

    goto/16 :goto_18e

    :catch_ed
    move-exception v0

    move-object v8, v7

    .line 2992
    :goto_ef
    :try_start_ef
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_18b

    if-eqz v8, :cond_f7

    .line 2996
    :try_start_f4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_e1

    .line 3004
    :cond_f7
    :goto_f7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_182

    move v7, v6

    .line 3006
    :goto_ff
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_165

    .line 3007
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3009
    :try_start_10b
    iget-object v8, v1, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/high16 v9, 0x8000000

    invoke-virtual {v8, v0, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 3010
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {v8}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object v8

    const-string v9, ""

    if-eqz v8, :cond_12d

    .line 3013
    array-length v10, v8

    const/4 v11, 0x1

    if-lt v10, v11, :cond_12d

    .line 3014
    aget-object v8, v8, v6

    invoke-virtual {v1, v8}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    goto :goto_12e

    :cond_12d
    move-object v10, v9

    :goto_12e
    const-string v11, "allow"

    const-string v12, "block"

    const-string v13, "false"

    const-string/jumbo v14, "warning"

    const-string v15, "false"

    .line 3021
    new-instance v9, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v9}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    move-object v8, v9

    move-object v6, v9

    move-object v9, v0

    .line 3022
    invoke-virtual/range {v8 .. v15}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3023
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_147
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10b .. :try_end_147} :catch_14d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_10b .. :try_end_147} :catch_148

    goto :goto_161

    :catch_148
    move-exception v0

    .line 3027
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_161

    .line 3025
    :catch_14d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NameNotFoundException packageName : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_161
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_ff

    .line 3031
    :cond_165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    invoke-virtual {v1, v4}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    .line 3033
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    goto :goto_1a2

    .line 3035
    :cond_182
    invoke-virtual {v1, v7}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    const-string v0, "Create file info_list"

    .line 3036
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a2

    :catchall_18b
    move-exception v0

    move-object v1, v0

    move-object v7, v8

    :goto_18e
    if-eqz v7, :cond_199

    .line 2996
    :try_start_190
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_193
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_193} :catch_194

    goto :goto_199

    :catch_194
    move-exception v0

    move-object v2, v0

    .line 2999
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3001
    :cond_199
    :goto_199
    throw v1

    .line 3040
    :cond_19a
    invoke-virtual {v1, v7}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V

    const-string v0, "Unknown app does not exist but create file info_list "

    .line 3041
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a2
    :goto_1a2
    return-void
.end method

.method public checkFollowingLegitimateWay(Ljava/lang/String;I)Z
    .registers 3

    const-string p2, "Only the system can claim checkFollowingLegitimateWay"

    .line 803
    invoke-virtual {p0, p2}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 805
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    .line 809
    :cond_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has not followed legitimate way"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ASKSManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B)[B
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "AASA_ASKSManager"

    .line 4618
    array-length v5, v3

    const-string v6, "22"

    const/16 v7, 0x200

    if-ge v5, v7, :cond_16

    .line 4619
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v5, 0x0

    :try_start_17
    new-array v8, v7, [B

    const/4 v9, 0x0

    .line 4624
    invoke-static {v3, v9, v8, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4626
    invoke-virtual {v0, v3, v7}, Lcom/android/server/asks/ASKSManagerService;->getTokenContents([BI)[B

    move-result-object v3

    if-eqz v3, :cond_10e

    .line 4627
    array-length v7, v3

    const/4 v10, 0x1

    if-ne v7, v10, :cond_29

    goto/16 :goto_10e

    :cond_29
    const-string v7, "SHA256WithRSAEncryption"

    .line 4630
    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v7

    const-string/jumbo v11, "x.509"

    .line 4631
    invoke-static {v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v11

    const/4 v12, 0x2

    if-eq v2, v10, :cond_6a

    if-eq v2, v12, :cond_3d

    move-object v13, v5

    goto :goto_90

    .line 4666
    :cond_3d
    new-instance v13, Ljava/io/File;

    iget-object v14, v0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_69

    .line 4668
    new-instance v13, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    iget-object v15, v0, Lcom/android/server/asks/ASKSManagerService;->EE_CERT_FILE:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_56} :catch_112
    .catchall {:try_start_17 .. :try_end_56} :catchall_10f

    .line 4672
    :try_start_56
    invoke-virtual {v0, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v14
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_5a} :catch_66
    .catchall {:try_start_56 .. :try_end_5a} :catchall_137

    if-eqz v14, :cond_60

    .line 4711
    :try_start_5c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_5f

    :catch_5f
    return-object v14

    :cond_60
    move-object/from16 v16, v13

    move-object v13, v5

    move-object/from16 v5, v16

    goto :goto_90

    :catch_66
    move-exception v0

    goto/16 :goto_114

    :cond_69
    return-object v5

    .line 4642
    :cond_6a
    :try_start_6a
    new-instance v13, Landroid/util/jar/StrictJarFile;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCodePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14, v9, v10}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_73} :catch_112
    .catchall {:try_start_6a .. :try_end_73} :catchall_10f

    .line 4645
    :try_start_73
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCertName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v14

    if-eqz v14, :cond_fc

    .line 4647
    invoke-virtual {v13, v14}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 4657
    invoke-virtual {v0, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B

    move-result-object v14
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_85} :catch_f5
    .catchall {:try_start_73 .. :try_end_85} :catchall_ee

    if-eqz v14, :cond_90

    .line 4709
    :try_start_87
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    if-eqz v5, :cond_8f

    .line 4711
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8f} :catch_8f

    :catch_8f
    :cond_8f
    return-object v14

    .line 4679
    :cond_90
    :goto_90
    :try_start_90
    invoke-virtual {v11, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    if-eqz v13, :cond_9b

    .line 4682
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_9b
    if-eqz v5, :cond_a0

    .line 4684
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 4686
    :cond_a0
    invoke-virtual {v7, v11}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 4687
    array-length v14, v3

    invoke-virtual {v7, v3, v9, v14}, Ljava/security/Signature;->update([BII)V

    .line 4689
    invoke-virtual {v7, v8}, Ljava/security/Signature;->verify([B)Z

    move-result v7

    if-nez v7, :cond_c6

    iget-boolean v7, v0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz v7, :cond_b2

    goto :goto_c6

    :cond_b2
    const-string v0, "Token is NOT verificated in checkIntegrity!"

    .line 4700
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_bb} :catch_f5
    .catchall {:try_start_90 .. :try_end_bb} :catchall_ee

    if-eqz v13, :cond_c0

    .line 4709
    :try_start_bd
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_c0
    if-eqz v5, :cond_c5

    .line 4711
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c5} :catch_c5

    :catch_c5
    :cond_c5
    return-object v0

    :cond_c6
    :goto_c6
    if-eq v2, v10, :cond_df

    if-eq v2, v12, :cond_df

    if-eqz v13, :cond_cf

    .line 4709
    :try_start_cc
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_cf
    if-eqz v5, :cond_d4

    .line 4711
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_d4} :catch_d4

    :catch_d4
    :cond_d4
    const-string/jumbo v0, "this is not on the way to check integrity"

    .line 4715
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4716
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 4697
    :cond_df
    :try_start_df
    invoke-virtual {v0, v1, v3, v11}, Lcom/android/server/asks/ASKSManagerService;->checkCertificateChaining(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[BLjava/security/cert/X509Certificate;)[B

    move-result-object v0
    :try_end_e3
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e3} :catch_f5
    .catchall {:try_start_df .. :try_end_e3} :catchall_ee

    if-eqz v13, :cond_e8

    .line 4709
    :try_start_e5
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_e8
    if-eqz v5, :cond_ed

    .line 4711
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_ed
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ed} :catch_ed

    :catch_ed
    :cond_ed
    return-object v0

    :catchall_ee
    move-exception v0

    move-object/from16 v16, v13

    move-object v13, v5

    move-object/from16 v5, v16

    goto :goto_138

    :catch_f5
    move-exception v0

    move-object/from16 v16, v13

    move-object v13, v5

    move-object/from16 v5, v16

    goto :goto_114

    :cond_fc
    :try_start_fc
    const-string v0, "Token Cert does not exist!"

    .line 4649
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4652
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V

    const-string v0, "21"

    .line 4654
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_10a} :catch_f5
    .catchall {:try_start_fc .. :try_end_10a} :catchall_ee

    .line 4709
    :try_start_10a
    invoke-virtual {v13}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_10d

    :catch_10d
    return-object v0

    :cond_10e
    :goto_10e
    return-object v3

    :catchall_10f
    move-exception v0

    move-object v13, v5

    goto :goto_138

    :catch_112
    move-exception v0

    move-object v13, v5

    .line 4704
    :goto_114
    :try_start_114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: checkIntegrity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4705
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_12c
    .catchall {:try_start_114 .. :try_end_12c} :catchall_137

    if-eqz v5, :cond_131

    .line 4709
    :try_start_12e
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_131
    if-eqz v13, :cond_136

    .line 4711
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_136
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_136} :catch_136

    :catch_136
    :cond_136
    return-object v0

    :catchall_137
    move-exception v0

    :goto_138
    if-eqz v5, :cond_13d

    .line 4709
    :try_start_13a
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_13d
    if-eqz v13, :cond_142

    .line 4711
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_142
    .catch Ljava/io/IOException; {:try_start_13a .. :try_end_142} :catch_142

    .line 4714
    :catch_142
    :cond_142
    throw v0
.end method

.method public final checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 3791
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3792
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3794
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 3795
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz p0, :cond_41

    if-nez p3, :cond_18

    goto :goto_42

    .line 3799
    :cond_18
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_2a

    .line 3800
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 3801
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    :cond_2a
    const/16 p2, 0x9

    if-eq p1, p2, :cond_36

    const/16 p2, 0x12

    if-eq p1, p2, :cond_36

    const/16 p2, 0x13

    if-ne p1, p2, :cond_41

    :cond_36
    if-eqz p0, :cond_41

    const-string p1, "ALL"

    .line 3804
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    move v1, v2

    :goto_42
    return v1
.end method

.method public final checkNetworkConnection(Landroid/content/Context;)I
    .registers 4

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string v1, "checkNetworkConnection : "

    .line 5807
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_11

    const-string p1, "context is null. "

    .line 5809
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5810
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    return p0

    :cond_11
    const-string v0, "connectivity"

    .line 5812
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 5814
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 5816
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_29

    .line 5817
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_WIFI:I

    return p0

    .line 5819
    :cond_29
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_32

    .line 5820
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_MOBILE:I

    return p0

    .line 5822
    :cond_32
    iget p0, p0, Lcom/android/server/asks/ASKSManagerService;->TYPE_NOT_CONNECTED:I

    return p0
.end method

.method public checkRestrictedPermission(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 691
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return v0

    .line 695
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object p1

    if-eqz p1, :cond_39

    .line 699
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v1

    .line 700
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_39

    if-eqz v1, :cond_39

    .line 704
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-le p0, v1, :cond_39

    .line 706
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 v0, 0x4

    :cond_39
    return v0
.end method

.method public checkTarget(Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;IZ[Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/asks/RETVALUE;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/UnknownStore;",
            ">;",
            "Ljava/lang/String;",
            "IZ[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/asks/RETVALUE;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 2083
    new-instance v15, Lcom/android/server/asks/RETVALUE;

    invoke-direct {v15}, Lcom/android/server/asks/RETVALUE;-><init>()V

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v0, 0x0

    move-object v9, v15

    move-object v8, v15

    move v15, v0

    .line 2084
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/asks/RETVALUE;->set(IIIIII)V

    .line 2086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " checkTarget sign BEFORE status:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/android/server/asks/RETVALUE;->status:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " SA:"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "PackageInformation"

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "null"

    const/4 v12, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_9d

    move v15, v13

    .line 2092
    :goto_4f
    array-length v0, v2

    if-ge v15, v0, :cond_9d

    .line 2095
    :try_start_52
    aget-object v0, v2, v15

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0
    :try_end_58
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_52 .. :try_end_58} :catch_59

    goto :goto_5e

    :catch_59
    move-exception v0

    .line 2097
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_5e
    if-eqz v0, :cond_9a

    .line 2101
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9a

    .line 2105
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/asks/UnknownStore;

    .line 2106
    invoke-virtual {v2, v10, v8}, Lcom/android/server/asks/UnknownStore;->checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    .line 2109
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne v0, v14, :cond_8c

    .line 2112
    :try_start_74
    invoke-virtual {v1, v4}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8c

    .line 2113
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_8c

    .line 2114
    invoke-virtual {v2, v10, v0, v8}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_87} :catch_88

    goto :goto_8c

    :catch_88
    move-exception v0

    .line 2120
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2124
    :cond_8c
    :goto_8c
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne v0, v12, :cond_93

    .line 2125
    invoke-virtual {v2, v7, v5, v6, v8}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V

    .line 2127
    :cond_93
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v0, :cond_98

    return-object v8

    :cond_98
    move v13, v14

    goto :goto_9d

    :cond_9a
    add-int/lit8 v15, v15, 0x1

    goto :goto_4f

    :cond_9d
    :goto_9d
    if-nez v13, :cond_f2

    const-string v0, "ALL"

    .line 2137
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 2138
    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/asks/UnknownStore;

    .line 2140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check domain...:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p8

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    invoke-virtual {v2, v3, v8}, Lcom/android/server/asks/UnknownStore;->checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    .line 2143
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-nez v0, :cond_cc

    return-object v8

    .line 2147
    :cond_cc
    invoke-virtual {v2, v10, v8}, Lcom/android/server/asks/UnknownStore;->checkPolicy(Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V

    .line 2149
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne v0, v14, :cond_eb

    .line 2152
    :try_start_d3
    invoke-virtual {v1, v4}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_eb

    .line 2153
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_eb

    .line 2154
    invoke-virtual {v2, v10, v0, v8}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithAppHash(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/asks/RETVALUE;)V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_e6} :catch_e7

    goto :goto_eb

    :catch_e7
    move-exception v0

    .line 2160
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2164
    :cond_eb
    :goto_eb
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->status:I

    if-ne v0, v12, :cond_f2

    .line 2165
    invoke-virtual {v2, v7, v5, v6, v8}, Lcom/android/server/asks/UnknownStore;->checkPolicyWithPEM([Ljava/lang/String;IZLcom/android/server/asks/RETVALUE;)V

    :cond_f2
    return-object v8
.end method

.method public final checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/4 p0, 0x0

    if-eqz p1, :cond_113

    if-nez p2, :cond_7

    goto/16 :goto_113

    :cond_7
    const-string v0, ","

    .line 4937
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4938
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "ro.product.model"

    const-string v1, "Unknown"

    .line 4940
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.csc.sales_code"

    .line 4941
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4945
    aget-object v2, p1, p0

    const-string v3, "ALL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_b1

    .line 4946
    array-length v2, p1

    if-ne v2, v4, :cond_66

    .line 4947
    aget-object p1, p2, p0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 4948
    array-length p1, p2

    if-ne p1, v4, :cond_3d

    :cond_3a
    :goto_3a
    move p0, v4

    goto/16 :goto_112

    :cond_3d
    move p1, v4

    .line 4952
    :goto_3e
    array-length v0, p2

    if-ge p1, v0, :cond_3a

    .line 4953
    aget-object v0, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_112

    :cond_4b
    add-int/lit8 p1, p1, 0x1

    goto :goto_3e

    .line 4959
    :cond_4e
    aget-object p1, p2, p0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_112

    move p1, p0

    .line 4960
    :goto_57
    array-length v0, p2

    if-ge p1, v0, :cond_112

    .line 4961
    aget-object v0, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    goto :goto_3a

    :cond_63
    add-int/lit8 p1, p1, 0x1

    goto :goto_57

    :cond_66
    move v2, v4

    .line 4971
    :goto_67
    array-length v5, p1

    if-ge v2, v5, :cond_77

    .line 4972
    aget-object v5, p1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    move p1, p0

    goto :goto_78

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_67

    :cond_77
    move p1, v4

    :goto_78
    if-ne p1, v4, :cond_ae

    .line 4979
    aget-object v0, p2, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 4980
    array-length v0, p2

    if-ne v0, v4, :cond_86

    goto :goto_3a

    .line 4983
    :cond_86
    :goto_86
    array-length v0, p2

    if-ge v4, v0, :cond_ae

    .line 4984
    aget-object v0, p2, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    goto/16 :goto_112

    :cond_93
    add-int/lit8 v4, v4, 0x1

    goto :goto_86

    .line 4990
    :cond_96
    aget-object v0, p2, p0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    move p1, p0

    .line 4992
    :goto_9f
    array-length v0, p2

    if-ge p1, v0, :cond_112

    .line 4993
    aget-object v0, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    goto :goto_3a

    :cond_ab
    add-int/lit8 p1, p1, 0x1

    goto :goto_9f

    :cond_ae
    move p0, p1

    goto/16 :goto_112

    .line 5001
    :cond_b1
    aget-object v2, p1, p0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_112

    move v2, p0

    .line 5004
    :goto_ba
    array-length v5, p1

    if-ge v2, v5, :cond_ca

    .line 5005
    aget-object v5, p1, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c7

    move v2, v4

    goto :goto_cb

    :cond_c7
    add-int/lit8 v2, v2, 0x1

    goto :goto_ba

    :cond_ca
    move v2, p0

    :goto_cb
    if-ne v2, v4, :cond_111

    .line 5012
    aget-object v5, p2, p0

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f8

    .line 5013
    array-length v3, p2

    if-ne v3, v4, :cond_e9

    move p2, p0

    .line 5015
    :goto_d9
    array-length v1, p1

    if-ge p2, v1, :cond_112

    .line 5016
    aget-object v1, p1, p2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    goto/16 :goto_3a

    :cond_e6
    add-int/lit8 p2, p2, 0x1

    goto :goto_d9

    .line 5022
    :cond_e9
    :goto_e9
    array-length p1, p2

    if-ge v4, p1, :cond_111

    .line 5023
    aget-object p1, p2, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    goto :goto_112

    :cond_f5
    add-int/lit8 v4, v4, 0x1

    goto :goto_e9

    .line 5029
    :cond_f8
    aget-object p1, p2, p0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_111

    move p1, p0

    .line 5031
    :goto_101
    array-length v0, p2

    if-ge p1, v0, :cond_112

    .line 5032
    aget-object v0, p2, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    goto/16 :goto_3a

    :cond_10e
    add-int/lit8 p1, p1, 0x1

    goto :goto_101

    :cond_111
    move p0, v2

    :cond_112
    :goto_112
    return p0

    :cond_113
    :goto_113
    const-string p1, "AASA_ASKSManager"

    const-string p2, "ERROR: checkTokenTarget input is null"

    .line 4934
    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I
    .registers 43

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v1, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p6

    move-object/from16 v9, p7

    move/from16 v6, p9

    move-object/from16 v8, p10

    move-object/from16 v0, p11

    const-string v2, "Only the system can claim checkUnknownSourcePackage"

    .line 2384
    invoke-virtual {v10, v2}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string/jumbo v2, "ro.boot.em.status"

    .line 2385
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string v7, "PackageInformation"

    if-eqz v14, :cond_689

    if-eqz v15, :cond_689

    .line 2393
    invoke-virtual {v10, v11, v14}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v17, 0x0

    if-eq v2, v3, :cond_4c

    .line 2395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEM SIGNED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    .line 2400
    :cond_4c
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELF UPDATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :cond_67
    const-string/jumbo v2, "ro.product.model"

    const-string v3, "Unknown"

    .line 2407
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2408
    invoke-virtual {v10, v2}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_82

    const-string v4, "MALFORMED"

    .line 2410
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    move/from16 v18, v5

    goto :goto_84

    :cond_82
    move/from16 v18, v17

    .line 2414
    :goto_84
    invoke-virtual {v10, v9}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9b

    .line 2415
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "CERT"

    .line 2416
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2417
    invoke-virtual {v10, v9}, Lcom/android/server/asks/ASKSManagerService;->get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9b
    if-eqz v3, :cond_682

    .line 2419
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_682

    if-eqz v8, :cond_c6

    const-string v4, "WEB"

    .line 2430
    invoke-virtual {v8, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 2432
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v3

    const-string v3, "This is Web case:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v5

    goto :goto_ca

    :cond_c6
    move-object/from16 v19, v3

    move/from16 v20, v17

    :goto_ca
    const-string/jumbo v3, "requestInstallerZip"

    if-eqz v8, :cond_f0

    const-string v4, "ZIP"

    .line 2435
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f0

    .line 2438
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    const-string v2, "This is zip case:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    const/4 v2, 0x0

    goto :goto_109

    :cond_f0
    move-object/from16 v22, v2

    const/4 v2, 0x0

    .line 2441
    invoke-virtual {v10, v3, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_107

    .line 2443
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_107

    const-string/jumbo v4, "hit from zip"

    .line 2444
    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_109

    :cond_107
    move/from16 v4, v17

    :goto_109
    const-string v5, "accessibility"

    move/from16 v23, v4

    .line 2451
    invoke-virtual {v10, v5, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_121

    .line 2452
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_121

    const-string/jumbo v2, "hit from A11Y installer"

    .line 2455
    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x1

    :cond_121
    if-eqz v1, :cond_142

    move/from16 v2, v17

    .line 2460
    :goto_125
    array-length v4, v1

    if-ge v2, v4, :cond_142

    .line 2461
    aget-object v4, v1, v2

    move-object/from16 v24, v5

    const-string v5, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13d

    const-string/jumbo v2, "hit from A11Y"

    .line 2463
    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    goto :goto_146

    :cond_13d
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v24

    goto :goto_125

    :cond_142
    move-object/from16 v24, v5

    move/from16 v25, v17

    :goto_146
    if-eqz v0, :cond_15b

    .line 2476
    invoke-virtual {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2477
    invoke-virtual {v10, v2}, Lcom/android/server/asks/ASKSManagerService;->isIPaddress(Ljava/lang/String;)Z

    move-result v4

    .line 2478
    invoke-virtual {v10, v2}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v26, v0

    move-object/from16 v28, v3

    const/16 v27, 0x1

    goto :goto_167

    :cond_15b
    const-string v2, "NA"

    move-object/from16 v26, v2

    move-object/from16 v28, v3

    move/from16 v4, v17

    move/from16 v27, v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 2482
    :goto_167
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " From "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- initiatingPackageName :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- sdkVersion :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASKS Version : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v27, :cond_21e

    .line 2489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- download Url :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- Domain :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- IP :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- DH :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21e
    const-string/jumbo v5, "isInstalledList"

    if-eqz v16, :cond_414

    .line 2496
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-- referral Url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/data/system/.aasa/ASKS.zip"

    .line 2499
    invoke-virtual {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->applyScpmPolicy(Ljava/lang/String;)Z

    .line 2500
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 2501
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    move/from16 v1, v17

    .line 2503
    :goto_244
    array-length v0, v14

    const-string v3, "DEBUG pkg:"

    if-ge v1, v0, :cond_280

    .line 2506
    :try_start_249
    aget-object v0, v14, v1

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0
    :try_end_24f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_249 .. :try_end_24f} :catch_252

    move-object/from16 v29, v2

    goto :goto_259

    :catch_252
    move-exception v0

    .line 2508
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object/from16 v29, v2

    const/4 v0, 0x0

    .line 2511
    :goto_259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sig ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v29

    goto :goto_244

    :cond_280
    move-object/from16 v29, v2

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " pkgNameHash::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :try_start_2a0
    invoke-virtual {v10, v13}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2b3

    const-string/jumbo v1, "null"

    .line 2517
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d2

    .line 2518
    :cond_2b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " apkFileHash::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2a0 .. :try_end_2cd} :catch_2ce

    goto :goto_2d2

    :catch_2ce
    move-exception v0

    .line 2521
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 2523
    :cond_2d2
    :goto_2d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " api::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v0, v17

    .line 2524
    :goto_2ee
    array-length v1, v12

    if-ge v0, v1, :cond_30a

    .line 2525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG pem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v12, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2ee

    :cond_30a
    move-object/from16 v1, p3

    if-eqz v1, :cond_32c

    move/from16 v0, v17

    .line 2529
    :goto_310
    array-length v2, v1

    if-ge v0, v2, :cond_32c

    .line 2530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEBUG servicePem:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_310

    :cond_32c
    const/4 v1, 0x0

    .line 2534
    invoke-virtual {v10, v5, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_34b

    .line 2536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG isInstalledList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34b
    move-object/from16 v1, v28

    const/4 v2, 0x0

    .line 2538
    invoke-virtual {v10, v1, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_36c

    .line 2540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG requestInstallerZip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36c
    const-string/jumbo v0, "overlay"

    const/4 v1, 0x0

    .line 2542
    invoke-virtual {v10, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_38e

    .line 2544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG overlay "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38e
    const-string v0, "blockExecute"

    const/4 v1, 0x0

    .line 2546
    invoke-virtual {v10, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3af

    .line 2548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG blockExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3af
    const-string v0, "allowExecute"

    const/4 v1, 0x0

    .line 2550
    invoke-virtual {v10, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3d0

    .line 2552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG allowExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d0
    const-string/jumbo v0, "initType"

    const/4 v1, 0x0

    .line 2554
    invoke-virtual {v10, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3f2

    .line 2556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG initType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f2
    move-object/from16 v1, v24

    const/4 v3, 0x0

    .line 2558
    invoke-virtual {v10, v1, v3}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_417

    .line 2560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG accessibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_417

    :cond_414
    move-object/from16 v29, v2

    const/4 v3, 0x0

    :cond_417
    :goto_417
    const/16 v2, 0x1b

    const-string v3, "ALL"

    const/16 v0, 0x1a

    if-eqz v23, :cond_438

    .line 2565
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2567
    invoke-virtual {v10, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 2569
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_435

    move-object/from16 v3, v22

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46c

    :cond_435
    const/16 v0, 0x1c

    goto :goto_46d

    :cond_438
    move-object/from16 v1, v22

    if-eqz v25, :cond_453

    .line 2574
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2575
    invoke-virtual {v10, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 2577
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_450

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46c

    :cond_450
    const/16 v0, 0x21

    goto :goto_46d

    :cond_453
    if-eqz v4, :cond_46c

    .line 2582
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2583
    invoke-virtual {v10, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 2585
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_469

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46c

    :cond_469
    const/16 v0, 0x22

    goto :goto_46d

    :cond_46c
    move v0, v2

    :goto_46d
    if-ne v2, v0, :cond_472

    const-string v1, "TOTALLIST"

    goto :goto_482

    :cond_472
    const/16 v1, 0x1c

    if-ne v1, v0, :cond_479

    const-string v1, "TOTALLIST_ZIP"

    goto :goto_482

    :cond_479
    const/16 v1, 0x21

    if-ne v1, v0, :cond_480

    const-string v1, "TOTALLIST_A11Y"

    goto :goto_482

    :cond_480
    const-string v1, "TOTALLIST_WEB"

    .line 2602
    :goto_482
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " total list["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v19

    .line 2603
    invoke-virtual {v10, v0, v3}, Lcom/android/server/asks/ASKSManagerService;->getUnknownAppsDataFromXML(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_682

    .line 2605
    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_682

    move-object/from16 v1, p0

    move-object/from16 v19, v29

    move-object/from16 v2, p1

    const/16 v21, 0x0

    move-object/from16 v3, p5

    move-object/from16 v12, v21

    move-object v13, v5

    move-object/from16 v30, v26

    move-object/from16 v5, p4

    move/from16 v6, p9

    move-object v12, v7

    move/from16 v7, v27

    move-object v15, v8

    move-object/from16 v8, p2

    move-object/from16 v9, v19

    .line 2606
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/asks/ASKSManagerService;->checkTarget(Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/util/HashMap;Ljava/lang/String;IZ[Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/asks/RETVALUE;

    move-result-object v8

    if-eqz v8, :cond_681

    .line 2616
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->convertItoS(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v16, :cond_52d

    .line 2618
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " policy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/asks/RETVALUE;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " SA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isExecute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/asks/RETVALUE;->isExecute:I

    .line 2619
    invoke-static {v1}, Lcom/android/server/asks/UnknownStore;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " policyTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/asks/RETVALUE;->policyTarget:I

    .line 2620
    invoke-static {v1}, Lcom/android/server/asks/UnknownStore;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reportTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v8, Lcom/android/server/asks/RETVALUE;->reportedTarget:I

    invoke-static {v1}, Lcom/android/server/asks/UnknownStore;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2618
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2625
    :cond_52d
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    if-eqz v0, :cond_552

    iget v0, v8, Lcom/android/server/asks/RETVALUE;->reportedTarget:I

    const/16 v1, 0x1f5

    if-eq v0, v1, :cond_543

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_53d

    if-nez v27, :cond_543

    :cond_53d
    const/16 v1, 0x1f6

    if-ne v0, v1, :cond_552

    if-nez v27, :cond_552

    :cond_543
    const/4 v1, 0x0

    .line 2629
    invoke-virtual {v10, v13, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_550

    .line 2630
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_552

    :cond_550
    const/4 v1, 0x1

    goto :goto_554

    :cond_552
    move/from16 v1, v17

    .line 2636
    :goto_554
    array-length v0, v14

    if-lez v0, :cond_562

    .line 2638
    :try_start_557
    aget-object v0, v14, v17

    invoke-virtual {v10, v0}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v0
    :try_end_55d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_557 .. :try_end_55d} :catch_55e

    goto :goto_564

    :catch_55e
    move-exception v0

    .line 2640
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_562
    const-string v0, "NO"

    :goto_564
    const-string v2, "^"

    if-eqz v1, :cond_5fa

    .line 2645
    iget v1, v8, Lcom/android/server/asks/RETVALUE;->SA:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v20, :cond_590

    if-eqz v15, :cond_590

    const-string v3, "_"

    .line 2648
    invoke-virtual {v15, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_590

    .line 2649
    array-length v4, v3

    const/4 v6, 0x1

    if-le v4, v6, :cond_591

    .line 2650
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v3, v6

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_591

    :cond_590
    const/4 v6, 0x1

    :cond_591
    :goto_591
    move-object/from16 v3, p7

    if-eqz v3, :cond_5aa

    .line 2656
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v7, p6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_5bd

    :cond_5aa
    move-object/from16 v7, p6

    .line 2658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^NA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2661
    :goto_5bd
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2662
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xc8

    if-lt v4, v7, :cond_5f4

    .line 2663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "^NA^NA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5f4
    move-object/from16 v4, v30

    .line 2667
    invoke-virtual {v10, v1, v3, v4}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5fd

    :cond_5fa
    move-object/from16 v4, v30

    const/4 v6, 0x1

    :goto_5fd
    const-string/jumbo v1, "warning"

    .line 2670
    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_660

    if-eqz v18, :cond_628

    move-object/from16 v1, p4

    .line 2674
    invoke-virtual {v10, v1}, Lcom/android/server/asks/ASKSManagerService;->isValidZipFormat(Ljava/lang/String;)Z

    move-result v1

    if-eq v1, v6, :cond_628

    .line 2676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3050"

    invoke-virtual {v10, v1, v0, v4}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_628
    if-eqz v23, :cond_64f

    move-object/from16 v1, p2

    move/from16 v0, v17

    .line 2682
    :goto_62e
    array-length v2, v1

    if-ge v0, v2, :cond_64f

    .line 2683
    aget-object v2, v1, v0

    const-string v3, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64c

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v8

    move/from16 v6, v23

    move/from16 v7, v25

    .line 2684
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZ)V

    .line 2688
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    return v0

    :cond_64c
    add-int/lit8 v0, v0, 0x1

    goto :goto_62e

    :cond_64f
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v8

    move/from16 v6, v23

    move/from16 v7, v25

    .line 2692
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZ)V

    .line 2696
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    return v0

    :cond_660
    const-string v0, "block"

    .line 2698
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66b

    .line 2701
    iget v0, v8, Lcom/android/server/asks/RETVALUE;->policy:I

    return v0

    :cond_66b
    const-string v0, "except"

    .line 2702
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_681

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object v4, v8

    move/from16 v6, v23

    move/from16 v7, v25

    .line 2703
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/asks/ASKSManagerService;->addUnknownAppList(Ljava/lang/String;[Landroid/content/pm/Signature;Lcom/android/server/asks/RETVALUE;Ljava/lang/String;ZZ)V

    :cond_681
    return v17

    :cond_682
    move-object v12, v7

    const-string v0, "CHECK TAGET DEVICE-1"

    .line 2715
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v17

    :cond_689
    move-object v12, v7

    const-string v0, "CHECK TAGET DEVICE-2"

    .line 2721
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    return v0
.end method

.method public clearASKSruleForRemovedPackage(Ljava/lang/String;)V
    .registers 11

    const-string v0, "Only the system can claim clearASKSruleForRemovedPackage"

    .line 664
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v0, :cond_16

    .line 670
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1c

    .line 675
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 677
    :cond_1c
    new-instance v0, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v0}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 678
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 679
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    return-void
.end method

.method public final clearInstalledAppInfoToStore()V
    .registers 2

    const/4 v0, 0x0

    .line 2943
    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    return-void
.end method

.method public final clearPackageFromFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 604
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 606
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e6

    .line 607
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p0

    .line 611
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPackageFromFile() : count:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PackageInformation"

    invoke-static {v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x64

    if-gt p0, p2, :cond_e6

    .line 615
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    if-eqz p2, :cond_e6

    .line 619
    :try_start_39
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_48} :catch_e2

    const-string v2, "ASKSManager"

    if-eqz p1, :cond_52

    :try_start_4c
    const-string p1, "File is deleted"

    .line 623
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    :cond_52
    const-string p1, "File is not deleted"

    .line 625
    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_57
    :goto_57
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 630
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 633
    :cond_62
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 634
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 635
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_d7

    .line 638
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d7

    const-string/jumbo v4, "noCert"

    .line 639
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_8e} :catch_e2

    const-string v5, "clearPackageFromFile() : adding  :: pkg ="

    if-eqz v4, :cond_a8

    .line 640
    :try_start_92
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d7

    .line 643
    :cond_a8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    :goto_d7
    add-int/lit8 p0, p0, -0x1

    if-nez p0, :cond_62

    .line 650
    :cond_db
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 651
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_e1} :catch_e2

    goto :goto_e6

    :catch_e2
    move-exception p0

    .line 654
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e6
    :goto_e6
    return-void
.end method

.method public final closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 6376
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    .line 6378
    :cond_5
    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 6379
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    return-void
.end method

.method public compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V
    .registers 12

    const-string v0, "PackageInformation"

    if-eqz p2, :cond_10a

    .line 2792
    invoke-virtual {p1}, Lcom/android/server/asks/UnknownStore;->getExceptList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2793
    iget-object v2, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_103

    .line 2794
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_103

    const/4 v0, 0x2

    const-string v3, "block"

    const-string v4, "allow"

    if-eqz v1, :cond_31

    .line 2795
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2796
    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2797
    iput-object v4, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 2798
    invoke-virtual {p0, v0, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    goto :goto_3e

    .line 2801
    :cond_31
    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2802
    iput-object v3, p2, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    .line 2803
    invoke-virtual {p0, v0, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 2807
    :cond_3e
    :goto_3e
    invoke-virtual {p1}, Lcom/android/server/asks/UnknownStore;->getExcuteBlockList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2808
    iget-object v5, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    const-string v6, "NA"

    const-string v7, "^"

    const-string v8, "ALL"

    if-eqz v5, :cond_52

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    :cond_52
    iget-object v5, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-nez v5, :cond_98

    :cond_56
    if-eqz v1, :cond_10f

    .line 2809
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10f

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 2810
    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 2811
    iput-object v3, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 2812
    invoke-virtual {p0, v0, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 2814
    iget-object p1, p1, Lcom/android/server/asks/UnknownStore;->defaultCertPolicy:Lcom/android/server/asks/PKGINFO;

    if-eqz p1, :cond_10f

    .line 2815
    invoke-virtual {p1}, Lcom/android/server/asks/PKGINFO;->getSA()I

    move-result p1

    .line 2816
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_10f

    :cond_98
    if-eqz v1, :cond_f5

    .line 2820
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f5

    .line 2821
    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 2822
    iput-object v3, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 2823
    invoke-virtual {p0, v0, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    .line 2825
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    if-eqz v0, :cond_10f

    .line 2826
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 2827
    iget-object v0, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 2828
    iget-object p1, p1, Lcom/android/server/asks/UnknownStore;->certPolicies:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/asks/PKGINFO;

    invoke-virtual {p1}, Lcom/android/server/asks/PKGINFO;->getSA()I

    move-result p1

    .line 2829
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/asks/ASKSManagerService;->setSamsungAnalyticsLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10f

    .line 2835
    :cond_f5
    iget-object p1, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 2836
    iput-object v4, p2, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    .line 2837
    invoke-virtual {p0, v0, p2}, Lcom/android/server/asks/ASKSManagerService;->setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V

    goto :goto_10f

    :cond_103
    const-string/jumbo p0, "pkgNameHash is NULL!!"

    .line 2841
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10f

    :cond_10a
    const-string p0, "appInfo is NULL!!"

    .line 2844
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10f
    :goto_10f
    return-void
.end method

.method public final convertItoS(I)Ljava/lang/String;
    .registers 3

    const-string p0, "except"

    if-eqz p1, :cond_3d

    const/16 v0, 0x64

    if-eq p1, v0, :cond_3a

    const/16 v0, 0x65

    if-eq p1, v0, :cond_36

    packed-switch p1, :pswitch_data_3e

    packed-switch p1, :pswitch_data_4c

    goto :goto_3d

    :pswitch_13
    const-string p0, "block4"

    goto :goto_3d

    :pswitch_16
    const-string p0, "block3"

    goto :goto_3d

    :pswitch_19
    const-string p0, "block2"

    goto :goto_3d

    :pswitch_1c
    const-string p0, "block1"

    goto :goto_3d

    :pswitch_1f
    const-string p0, "block"

    goto :goto_3d

    :pswitch_22
    const-string/jumbo p0, "warning4"

    goto :goto_3d

    :pswitch_26
    const-string/jumbo p0, "warning3"

    goto :goto_3d

    :pswitch_2a
    const-string/jumbo p0, "warning2"

    goto :goto_3d

    :pswitch_2e
    const-string/jumbo p0, "warning1"

    goto :goto_3d

    :pswitch_32
    const-string/jumbo p0, "warning0"

    goto :goto_3d

    :cond_36
    const-string/jumbo p0, "warning_dev"

    goto :goto_3d

    :cond_3a
    const-string/jumbo p0, "warning"

    :cond_3d
    :goto_3d
    return-object p0

    :pswitch_data_3e
    .packed-switch 0x6e
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x78
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
    .end packed-switch
.end method

.method public final convertMillsToString(J)Ljava/lang/String;
    .registers 4

    .line 6032
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6034
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6035
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6036
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertStoI(Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_d8

    const/4 v0, -0x1

    .line 1594
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_da

    goto/16 :goto_b1

    :sswitch_d
    const-string/jumbo v1, "warning"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_b1

    :cond_18
    const/16 v0, 0xc

    goto/16 :goto_b1

    :sswitch_1c
    const-string/jumbo v1, "warning4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_27

    goto/16 :goto_b1

    :cond_27
    const/16 v0, 0xb

    goto/16 :goto_b1

    :sswitch_2b
    const-string/jumbo v1, "warning3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto/16 :goto_b1

    :cond_36
    const/16 v0, 0xa

    goto/16 :goto_b1

    :sswitch_3a
    const-string/jumbo v1, "warning2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    goto/16 :goto_b1

    :cond_45
    const/16 v0, 0x9

    goto/16 :goto_b1

    :sswitch_49
    const-string/jumbo v1, "warning1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto/16 :goto_b1

    :cond_54
    const/16 v0, 0x8

    goto/16 :goto_b1

    :sswitch_58
    const-string/jumbo v1, "warning0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_62

    goto :goto_b1

    :cond_62
    const/4 v0, 0x7

    goto :goto_b1

    :sswitch_64
    const-string v1, "block"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6d

    goto :goto_b1

    :cond_6d
    const/4 v0, 0x6

    goto :goto_b1

    :sswitch_6f
    const-string/jumbo v1, "warning_dev"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_79

    goto :goto_b1

    :cond_79
    const/4 v0, 0x5

    goto :goto_b1

    :sswitch_7b
    const-string v1, "except"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_84

    goto :goto_b1

    :cond_84
    const/4 v0, 0x4

    goto :goto_b1

    :sswitch_86
    const-string v1, "block4"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8f

    goto :goto_b1

    :cond_8f
    const/4 v0, 0x3

    goto :goto_b1

    :sswitch_91
    const-string v1, "block3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9a

    goto :goto_b1

    :cond_9a
    const/4 v0, 0x2

    goto :goto_b1

    :sswitch_9c
    const-string v1, "block2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a5

    goto :goto_b1

    :cond_a5
    const/4 v0, 0x1

    goto :goto_b1

    :sswitch_a7
    const-string v1, "block1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b0

    goto :goto_b1

    :cond_b0
    move v0, p0

    :goto_b1
    packed-switch v0, :pswitch_data_110

    goto :goto_d8

    :pswitch_b5
    const/16 p0, 0x64

    goto :goto_d8

    :pswitch_b8
    const/16 p0, 0x72

    goto :goto_d8

    :pswitch_bb
    const/16 p0, 0x71

    goto :goto_d8

    :pswitch_be
    const/16 p0, 0x70

    goto :goto_d8

    :pswitch_c1
    const/16 p0, 0x6f

    goto :goto_d8

    :pswitch_c4
    const/16 p0, 0x6e

    goto :goto_d8

    :pswitch_c7
    const/16 p0, 0x78

    goto :goto_d8

    :pswitch_ca
    const/16 p0, 0x65

    goto :goto_d8

    :pswitch_cd
    const/16 p0, 0x7c

    goto :goto_d8

    :pswitch_d0
    const/16 p0, 0x7b

    goto :goto_d8

    :pswitch_d3
    const/16 p0, 0x7a

    goto :goto_d8

    :pswitch_d6
    const/16 p0, 0x79

    :cond_d8
    :goto_d8
    :pswitch_d8
    return p0

    nop

    :sswitch_data_da
    .sparse-switch
        -0x529f32bc -> :sswitch_a7
        -0x529f32bb -> :sswitch_9c
        -0x529f32ba -> :sswitch_91
        -0x529f32b9 -> :sswitch_86
        -0x4cdcfae7 -> :sswitch_7b
        -0x1ca6cb0e -> :sswitch_6f
        0x597c48d -> :sswitch_64
        0x1db04414 -> :sswitch_58
        0x1db04415 -> :sswitch_49
        0x1db04416 -> :sswitch_3a
        0x1db04417 -> :sswitch_2b
        0x1db04418 -> :sswitch_1c
        0x4305af9c -> :sswitch_d
    .end sparse-switch

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_d8
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_be
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
    .end packed-switch
.end method

.method public final convertStringToMills(Ljava/lang/String;)J
    .registers 3

    .line 6041
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyyMMdd"

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6044
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 6045
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0
    :try_end_10
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_10} :catch_11

    goto :goto_17

    :catch_11
    move-exception p0

    .line 6047
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    const-wide/16 p0, -0x1

    :goto_17
    return-wide p0
.end method

.method public final convertToHex([B)Ljava/lang/String;
    .registers 10

    .line 5258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_b

    const-string/jumbo p0, "null"

    return-object p0

    .line 5263
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_34

    aget-byte v3, p1, v2

    ushr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    move v5, v1

    :goto_17
    if-ltz v4, :cond_20

    const/16 v6, 0x9

    if-gt v4, v6, :cond_20

    add-int/lit8 v4, v4, 0x30

    goto :goto_24

    :cond_20
    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v4, v4, 0x61

    :goto_24
    int-to-char v4, v4

    .line 5269
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v3, 0xf

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x1

    if-lt v5, v7, :cond_32

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_32
    move v5, v6

    goto :goto_17

    .line 5274
    :cond_34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final copyASKSpolicyFromSystem()Z
    .registers 18

    move-object/from16 v1, p0

    .line 3373
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3374
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$1;

    invoke-direct {v3, v1}, Lcom/android/server/asks/ASKSManagerService$1;-><init>(Lcom/android/server/asks/ASKSManagerService;)V

    .line 3380
    invoke-virtual {v0, v3}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "AASA_ASKSManager"

    if-nez v3, :cond_1d

    const-string v0, "There are no target file in /system/etc/"

    .line 3383
    invoke-static {v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3390
    :cond_1d
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/system/.aasa/AASApolicy/"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3391
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2d

    .line 3392
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 3396
    :cond_2d
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system/.aasa/asks.xml"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string v0, "ASKS file exists."

    .line 3397
    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ASKS_FILE"

    .line 3398
    invoke-virtual {v1, v0, v7}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 3399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mASKSPolicyVersion = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_5e
    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 3404
    array-length v7, v3

    move-object v8, v0

    move v9, v4

    :goto_63
    if-ge v9, v7, :cond_1d1

    aget-object v10, v3, v9

    .line 3405
    new-instance v0, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3412
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1b6

    .line 3414
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ASKS_RULE_FILE"

    invoke-virtual {v1, v13, v12}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3416
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_10b

    .line 3418
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "There are already exist xml files in /.aasa/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Lcom/android/server/asks/ASKSManagerService;->getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3420
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-ge v14, v15, :cond_da

    .line 3421
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "20"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3424
    :cond_da
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-le v14, v15, :cond_10b

    .line 3425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip, Current "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " rule is latest version."

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move v11, v4

    if-le v0, v10, :cond_1cc

    move-object v8, v13

    goto/16 :goto_1cc

    :cond_10b
    const/16 v13, 0x800

    new-array v14, v13, [B

    .line 3437
    :try_start_10f
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_114
    .catch Ljava/io/FileNotFoundException; {:try_start_10f .. :try_end_114} :catch_163
    .catch Ljava/io/IOException; {:try_start_10f .. :try_end_114} :catch_14b
    .catchall {:try_start_10f .. :try_end_114} :catchall_145

    .line 3438
    :try_start_114
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_119
    .catch Ljava/io/FileNotFoundException; {:try_start_114 .. :try_end_119} :catch_142
    .catch Ljava/io/IOException; {:try_start_114 .. :try_end_119} :catch_13f
    .catchall {:try_start_114 .. :try_end_119} :catchall_13c

    :goto_119
    const/4 v11, 0x0

    .line 3440
    :try_start_11a
    invoke-virtual {v15, v14, v11, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    const/4 v13, -0x1

    if-eq v0, v13, :cond_127

    .line 3441
    invoke-virtual {v4, v14, v11, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_124
    .catch Ljava/io/FileNotFoundException; {:try_start_11a .. :try_end_124} :catch_138
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_124} :catch_134
    .catchall {:try_start_11a .. :try_end_124} :catchall_12e

    const/16 v13, 0x800

    goto :goto_119

    .line 3452
    :cond_127
    :try_start_127
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 3454
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_127 .. :try_end_12d} :catch_176

    goto :goto_181

    :catchall_12e
    move-exception v0

    move-object v1, v0

    move-object/from16 v16, v4

    goto/16 :goto_1a4

    :catch_134
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_150

    :catch_138
    move-exception v0

    move-object/from16 v16, v4

    goto :goto_168

    :catchall_13c
    move-exception v0

    move-object v1, v0

    goto :goto_148

    :catch_13f
    move-exception v0

    const/4 v11, 0x0

    goto :goto_14e

    :catch_142
    move-exception v0

    const/4 v11, 0x0

    goto :goto_166

    :catchall_145
    move-exception v0

    move-object v1, v0

    const/4 v15, 0x0

    :goto_148
    const/16 v16, 0x0

    goto :goto_1a4

    :catch_14b
    move-exception v0

    move v11, v4

    const/4 v15, 0x0

    :goto_14e
    const/16 v16, 0x0

    :goto_150
    :try_start_150
    const-string v4, "IOException"

    .line 3447
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3448
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_158
    .catchall {:try_start_150 .. :try_end_158} :catchall_1a2

    if-eqz v15, :cond_15d

    .line 3452
    :try_start_15a
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    :cond_15d
    if-eqz v16, :cond_181

    .line 3454
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_162
    .catch Ljava/io/IOException; {:try_start_15a .. :try_end_162} :catch_176

    goto :goto_181

    :catch_163
    move-exception v0

    move v11, v4

    const/4 v15, 0x0

    :goto_166
    const/16 v16, 0x0

    :goto_168
    :try_start_168
    const-string v4, "FileNotFoundException"

    .line 3444
    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_170
    .catchall {:try_start_168 .. :try_end_170} :catchall_1a2

    if-eqz v15, :cond_178

    .line 3452
    :try_start_172
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto :goto_178

    :catch_176
    move-exception v0

    goto :goto_17e

    :cond_178
    :goto_178
    if-eqz v16, :cond_181

    .line 3454
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_17d
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_17d} :catch_176

    goto :goto_181

    .line 3456
    :goto_17e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3460
    :cond_181
    :goto_181
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v0, v4, :cond_18c

    move-object v8, v12

    .line 3464
    :cond_18c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "there is xml file /system/etc/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1cc

    :catchall_1a2
    move-exception v0

    move-object v1, v0

    :goto_1a4
    if-eqz v15, :cond_1ac

    .line 3452
    :try_start_1a6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    goto :goto_1ac

    :catch_1aa
    move-exception v0

    goto :goto_1b2

    :cond_1ac
    :goto_1ac
    if-eqz v16, :cond_1b5

    .line 3454
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b1
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1b1} :catch_1aa

    goto :goto_1b5

    .line 3456
    :goto_1b2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 3458
    :cond_1b5
    :goto_1b5
    throw v1

    :cond_1b6
    move v11, v4

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "there is no xml file /system/etc/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1cc
    :goto_1cc
    add-int/lit8 v9, v9, 0x1

    move v4, v11

    goto/16 :goto_63

    :cond_1d1
    move v11, v4

    .line 3470
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_1e2

    .line 3471
    sput-object v8, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const/4 v4, 0x1

    goto :goto_1e3

    :cond_1e2
    move v4, v11

    .line 3475
    :goto_1e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ASKS_UNKNOWN_ALLOWLIST.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ASKS_UNKNOWN_BLOCKLIST.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 3477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ASKS_UNKNOWN_DANLIST.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 3478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ASKS_UNKNOWN_DANEXCEPTPKG.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 3479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ASKS_UNKNOWN_DANBLOCKPKG.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    .line 3480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ASKS_UNKNOWN_PRE_INSTALLER.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    return v4
.end method

.method public final deleteFile(Ljava/lang/String;)V
    .registers 4

    .line 1171
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1172
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v0, "PackageInformation"

    if-eqz p1, :cond_4d

    .line 1173
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p1

    const-string v1, "delete File : "

    if-eqz p1, :cond_31

    .line 1174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " success"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1176
    :cond_31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " fail"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 1179
    :cond_4d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is does not exist"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_65
    return-void
.end method

.method public final enforceSystemOrRoot(Ljava/lang/String;)V
    .registers 4

    .line 316
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 317
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 319
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_2f

    if-eqz p0, :cond_2f

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_15

    goto :goto_2f

    .line 321
    :cond_15
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final enforceSystemOrRoot()Z
    .registers 3

    .line 326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 329
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_16

    if-eqz p0, :cond_16

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0
.end method

.method public final findCertificateIndex(Lcom/android/server/asks/ASKSManagerService$ASKSSession;[B)[B
    .registers 12

    const-string v0, ""

    const-string v1, " "

    const-string v2, "21"

    const-string v3, "AASA_ASKSManager"

    .line 4758
    :try_start_8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 4759
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 4760
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p2, 0x0

    invoke-interface {v4, v5, p2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4761
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1e} :catch_e2

    :try_start_1e
    const-string v5, "INDEX"

    .line 4767
    invoke-virtual {p0, v4, v5}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_c6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_24} :catch_e2

    .line 4774
    :try_start_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "0.0"

    .line 4775
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    const-string p0, "ENG Cert Index"

    .line 4777
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c5

    :cond_48
    const-string v5, "\\."

    .line 4779
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4782
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[^0-9]"

    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 4783
    aget-object v7, v4, v6

    invoke-virtual {p1, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCAKeyIndex(Ljava/lang/String;)V

    .line 4784
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mTokenName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " SignerVersion : "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_87

    const-string v5, "1"

    :cond_87
    const/4 p1, 0x1

    .line 4790
    aget-object v0, v4, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9a

    const-string p0, "Signer Cert File is not matched with index!"

    .line 4791
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4792
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_9a
    const-string v0, "SIGNER"

    .line 4794
    aget-object p1, v4, p1

    const/16 v5, 0xe

    invoke-virtual {p0, v5, v0, p1}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_b1

    const-string p0, "SIGNER is in CRL"

    .line 4795
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_b1
    const-string p1, "INTER"

    .line 4798
    aget-object v4, v4, v6

    invoke-virtual {p0, v5, p1, v4}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eq p0, v0, :cond_c5

    const-string p0, "INTER is in CRL"

    .line 4799
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    :cond_c5
    :goto_c5
    return-object p2

    :catch_c6
    move-exception p0

    .line 4770
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0
    :try_end_e1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_24 .. :try_end_e1} :catch_e2

    return-object p0

    :catch_e2
    move-exception p0

    .line 4805
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public final get3rdTargetNodeName(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1649
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_3RDPARTY_INSTALLER.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1651
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1652
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1653
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1656
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2f

    return-object v2

    .line 1663
    :cond_2f
    :try_start_2f
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_34} :catch_ac

    .line 1674
    :try_start_34
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    .line 1676
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 1677
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1680
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    move-object v4, v2

    :goto_44
    if-eq v3, v1, :cond_98

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4a

    goto :goto_93

    .line 1686
    :cond_4a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_4e} :catch_a4
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4e} :catch_9c

    const-string/jumbo v5, "name"

    if-eqz v3, :cond_61

    :try_start_53
    const-string/jumbo v6, "package"

    .line 1687
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_61

    .line 1688
    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_93

    :cond_61
    if-eqz v3, :cond_93

    const-string/jumbo v6, "policy"

    .line 1689
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_93

    if-eqz v4, :cond_92

    .line 1690
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1691
    invoke-interface {p0, v2, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInformation"

    .line 1693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3rdtargetPolicy:: : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V

    return-object p0

    :cond_92
    move-object v4, v2

    .line 1704
    :cond_93
    :goto_93
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_44

    .line 1706
    :cond_98
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_9b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_9b} :catch_a4
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_9b} :catch_9c

    return-object v2

    :catch_9c
    move-exception p0

    .line 1716
    :try_start_9d
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a0

    .line 1719
    :catch_a0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v2

    :catch_a4
    move-exception p0

    .line 1709
    :try_start_a5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_a8} :catch_a8

    .line 1712
    :catch_a8
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-object v2

    :catch_ac
    move-exception p0

    .line 1665
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v2
.end method

.method public final getADPDataFromXML(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ADPContainer;",
            ">;)V"
        }
    .end annotation

    .line 5626
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/AASApolicy/ADP.xml"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5628
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_27

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    .line 5629
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 5630
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 5632
    :cond_27
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v4, "AASA_ASKSManager_ADP"

    if-nez v1, :cond_43

    .line 5634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file does not exist - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5637
    :cond_43
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1ad

    const/4 v0, 0x0

    .line 5641
    :try_start_4a
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4f} :catch_51

    move-object v0, v1

    goto :goto_55

    :catch_51
    move-exception p0

    .line 5644
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 5648
    :goto_55
    :try_start_55
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    .line 5649
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 5652
    :goto_60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6a

    if-eq v1, v2, :cond_6a

    goto :goto_60

    .line 5657
    :cond_6a
    new-instance v1, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    invoke-direct {v1}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;-><init>()V

    .line 5658
    new-instance v5, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    invoke-direct {v5}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;-><init>()V

    .line 5660
    :cond_74
    :goto_74
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_78
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_55 .. :try_end_78} :catch_193
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_78} :catch_189
    .catchall {:try_start_55 .. :try_end_78} :catchall_187

    if-eq v6, v2, :cond_181

    const/4 v7, 0x3

    const-string/jumbo v8, "pattern"

    const-string v9, "HASHVALUE"

    if-eq v6, v7, :cond_110

    const/4 v7, 0x4

    if-ne v6, v7, :cond_87

    goto/16 :goto_110

    .line 5693
    :cond_87
    :try_start_87
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5694
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 5695
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->set_pkgName(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    goto :goto_74

    :cond_99
    const-string/jumbo v7, "versionType"

    .line 5697
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_a0} :catch_193
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_a0} :catch_189
    .catchall {:try_start_87 .. :try_end_a0} :catchall_187

    if-eqz v7, :cond_b8

    .line 5699
    :try_start_a2
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_versionType(I)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_a2 .. :try_end_b1} :catch_b2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a2 .. :try_end_b1} :catch_193
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_b1} :catch_189
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_187

    goto :goto_74

    :catch_b2
    :try_start_b2
    const-string v6, "ERROR: does not match versionType"

    .line 5701
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 5704
    :cond_b8
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 5705
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_pattern(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    goto :goto_74

    :cond_c6
    const-string/jumbo v7, "hashCode"

    .line 5707
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 5708
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_hashCode(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    goto :goto_74

    :cond_d7
    const-string/jumbo v7, "sep"

    .line 5710
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 5713
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6
    :try_end_e4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b2 .. :try_end_e4} :catch_193
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_e4} :catch_189
    .catchall {:try_start_b2 .. :try_end_e4} :catchall_187

    .line 5715
    :try_start_e4
    sget v7, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_ee
    .catch Ljava/lang/NumberFormatException; {:try_start_e4 .. :try_end_ee} :catch_f2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e4 .. :try_end_ee} :catch_193
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_ee} :catch_189
    .catchall {:try_start_e4 .. :try_end_ee} :catchall_187

    if-lt v7, v6, :cond_f7

    move v6, v3

    goto :goto_f8

    :catch_f2
    :try_start_f2
    const-string v6, "NumberFormatExceptionn"

    .line 5719
    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    move v6, v2

    :goto_f8
    if-eqz v6, :cond_74

    .line 5722
    invoke-virtual {v5}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->flush()V

    goto/16 :goto_74

    :cond_ff
    const-string v7, "format"

    .line 5724
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 5725
    invoke-interface {p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->set_format(Ljava/lang/String;)Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;

    goto/16 :goto_74

    .line 5663
    :cond_110
    :goto_110
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_146

    .line 5666
    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->createADPContainer()Lcom/android/server/asks/ADPContainer;

    move-result-object v6

    if-nez v6, :cond_13a

    .line 5670
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not make ADP object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 5673
    :cond_13a
    invoke-virtual {v6}, Lcom/android/server/asks/ADPContainer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5674
    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->flush()V

    goto/16 :goto_74

    .line 5676
    :cond_146
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 5678
    invoke-virtual {v5}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->createADPPolicy()Lcom/android/server/asks/ADPContainer$ADPPolicy;

    move-result-object v6

    if-nez v6, :cond_170

    .line 5680
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not make ADPPolicy object"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 5683
    :cond_170
    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->get_ADPPolicy()Ljava/util/ArrayList;

    move-result-object v7

    if-nez v7, :cond_179

    .line 5684
    invoke-virtual {v1}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->set_ADPPolicy()Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    .line 5686
    :cond_179
    invoke-virtual {v1, v6}, Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;->add_ADPPolicy(Lcom/android/server/asks/ADPContainer$ADPPolicy;)Lcom/android/server/asks/ADPContainer$ADPContainerBuilder;

    .line 5687
    invoke-virtual {v5}, Lcom/android/server/asks/ADPContainer$ADPPolicyBuilder;->flush()V
    :try_end_17f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f2 .. :try_end_17f} :catch_193
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_17f} :catch_189
    .catchall {:try_start_f2 .. :try_end_17f} :catchall_187

    goto/16 :goto_74

    :cond_181
    if-eqz v0, :cond_1ad

    .line 5735
    :try_start_183
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_19d

    goto :goto_1ad

    :catchall_187
    move-exception p0

    goto :goto_1a2

    :catch_189
    move-exception p0

    .line 5731
    :try_start_18a
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_18d
    .catchall {:try_start_18a .. :try_end_18d} :catchall_187

    if-eqz v0, :cond_1ad

    .line 5735
    :try_start_18f
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_192} :catch_19d

    goto :goto_1ad

    :catch_193
    move-exception p0

    .line 5729
    :try_start_194
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_197
    .catchall {:try_start_194 .. :try_end_197} :catchall_187

    if-eqz v0, :cond_1ad

    .line 5735
    :try_start_199
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_19c
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19c} :catch_19d

    goto :goto_1ad

    :catch_19d
    move-exception p0

    .line 5737
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1ad

    :goto_1a2
    if-eqz v0, :cond_1ac

    .line 5735
    :try_start_1a4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_1a7
    .catch Ljava/io/IOException; {:try_start_1a4 .. :try_end_1a7} :catch_1a8

    goto :goto_1ac

    :catch_1a8
    move-exception p1

    .line 5737
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 5739
    :cond_1ac
    :goto_1ac
    throw p0

    :cond_1ad
    :goto_1ad
    return-void
.end method

.method public final getASKSDataFromXML(ILjava/util/HashMap;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 3815
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "PEMLIST"

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PEMLIST.xml"

    const-string v2, "TARGET"

    const-string v3, "DUMMY"

    const-string v4, "STORE"

    const-string v5, "HASH"

    const-string v6, "CERT"

    const-string v7, "HASHVALUE"

    const-string v8, "DEVICE"

    const-string v9, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TARGETDEVICE.xml"

    const-string/jumbo v10, "package"

    packed-switch p1, :pswitch_data_18a

    :pswitch_1f
    return-void

    .line 3931
    :pswitch_20
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3932
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TRUSTEDSTORE.xml"

    goto/16 :goto_dd

    .line 3901
    :pswitch_2a
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "policy"

    .line 3902
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_3RDPARTY_INSTALLER.xml"

    goto/16 :goto_dd

    .line 3922
    :pswitch_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/data/system/.aasa/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/ASKS_UNKNOWN_POLICYLIST.xml"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "ONEUI"

    .line 3923
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "POLICY"

    .line 3924
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_dd

    .line 3915
    :pswitch_5b
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3916
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_dd

    :pswitch_63
    const-string p1, "TARGETZIP"

    .line 3908
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3909
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_dd

    :pswitch_6d
    const-string p1, "ZIPCERTTARGET"

    .line 3887
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3888
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    :pswitch_76
    const-string p1, "ZIPTARGET"

    .line 3880
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3881
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    :pswitch_7f
    const-string p1, "CERTTARGET"

    .line 3873
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3874
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8e

    .line 3866
    :pswitch_88
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3867
    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8e
    move-object v1, v9

    goto :goto_dd

    .line 3894
    :pswitch_90
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3895
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_PRE_INSTALLER_H.xml"

    goto :goto_dd

    .line 3859
    :pswitch_99
    invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "digest"

    .line 3860
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/protection_list.xml"

    goto :goto_dd

    .line 3852
    :pswitch_a4
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3853
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKSHB.xml"

    goto :goto_dd

    .line 3846
    :pswitch_ad
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3847
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    goto :goto_dd

    .line 3822
    :pswitch_b6
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "NUM"

    .line 3823
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    goto :goto_dd

    .line 3840
    :pswitch_c1
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3841
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKSTS.xml"

    goto :goto_dd

    .line 3834
    :pswitch_ca
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "UID"

    .line 3835
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKSP.xml"

    goto :goto_dd

    .line 3828
    :pswitch_d5
    invoke-virtual {p0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3829
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/data/system/.aasa/AASApolicy/ASKSB.xml"

    .line 3941
    :goto_dd
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3943
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_102

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_102

    .line 3944
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 3945
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3947
    :cond_102
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_109

    return-void

    .line 3955
    :cond_109
    :try_start_109
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_10e
    .catch Ljava/io/FileNotFoundException; {:try_start_109 .. :try_end_10e} :catch_185

    .line 3963
    :try_start_10e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    .line 3964
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const-string v3, ""

    const/4 v4, 0x0

    .line 3973
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    :goto_11c
    if-eq v5, v1, :cond_171

    .line 3975
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    if-eq v5, v7, :cond_13b

    const/4 v7, 0x3

    if-eq v5, v7, :cond_129

    goto :goto_16c

    .line 4014
    :cond_129
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16c

    if-eqz p2, :cond_16c

    .line 4021
    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16c

    .line 3978
    :cond_13b
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_157

    .line 3982
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_151

    .line 3983
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 3986
    :cond_151
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_16c

    .line 3987
    :cond_157
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 3996
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16c

    if-eqz v4, :cond_16c

    .line 3998
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4027
    :cond_16c
    :goto_16c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_11c

    .line 4029
    :cond_171
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_174
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10e .. :try_end_174} :catch_17d
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_174} :catch_175

    return-void

    :catch_175
    move-exception p0

    .line 4042
    :try_start_176
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_176 .. :try_end_179} :catch_179

    .line 4046
    :catch_179
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void

    :catch_17d
    move-exception p0

    .line 4033
    :try_start_17e
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17e .. :try_end_181} :catch_181

    .line 4037
    :catch_181
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-void

    :catch_185
    move-exception p0

    .line 3958
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void

    :pswitch_data_18a
    .packed-switch 0x9
        :pswitch_d5
        :pswitch_ca
        :pswitch_1f
        :pswitch_c1
        :pswitch_1f
        :pswitch_b6
        :pswitch_ad
        :pswitch_1f
        :pswitch_1f
        :pswitch_a4
        :pswitch_99
        :pswitch_1f
        :pswitch_1f
        :pswitch_90
        :pswitch_88
        :pswitch_7f
        :pswitch_76
        :pswitch_6d
        :pswitch_1f
        :pswitch_1f
        :pswitch_63
        :pswitch_5b
        :pswitch_37
        :pswitch_2a
        :pswitch_1f
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method

.method public final getASKSPolicyVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p0, "00000000"

    .line 3338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "<asks version=\""

    const-string v2, "\""

    .line 3339
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASKS_FILE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "<VERSION value=\""

    const-string v2, "\"/>"

    .line 3340
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "ASKS_RULE_FILE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3343
    :try_start_21
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p2, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p2

    invoke-static {p2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object p2

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>([B)V

    .line 3347
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    aget-object p2, p2, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3349
    array-length v1, p2

    const/4 v3, 0x1

    if-le v1, v3, :cond_52

    .line 3351
    aget-object p2, p2, v3

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 3353
    aget-object p0, p1, v2
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_51} :catch_53

    goto :goto_57

    :cond_52
    return-object p0

    :catch_53
    move-exception p1

    .line 3360
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_57
    return-object p0
.end method

.method public getAccessibilityService()V
    .registers 3

    .line 2176
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "enabled_accessibility_services"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccessibilityService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PackageInformation"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "AASA_ASKSManager"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "SHA-1"

    .line 5160
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_f

    :catch_a
    move-exception v2

    .line 5162
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v2, v1

    .line 5166
    :goto_f
    :try_start_f
    new-instance v3, Landroid/util/jar/StrictJarFile;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5, v4}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_16} :catch_fb
    .catchall {:try_start_f .. :try_end_16} :catchall_f9

    .line 5169
    :try_start_16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5171
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5173
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_24
    move v7, v5

    .line 5176
    :cond_25
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    add-int/lit8 v7, v7, 0x1

    .line 5179
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/zip/ZipEntry;

    .line 5180
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "META-INF/"

    .line 5181
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_40

    goto :goto_25

    :cond_40
    const-string v10, "SEC-INF/"

    .line 5183
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_49

    goto :goto_25

    :cond_49
    const-string/jumbo v10, "token/"

    .line 5185
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_53

    goto :goto_25

    .line 5187
    :cond_53
    invoke-virtual {p0, v3, v8, v2}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    .line 5188
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v8, 0xc350

    if-lt v7, v8, :cond_25

    .line 5191
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/LinkedHashMap;

    .line 5192
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5193
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_24

    :cond_73
    if-eqz v7, :cond_81

    .line 5198
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 5199
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5200
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->clear()V

    .line 5204
    :cond_81
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_84} :catch_f7
    .catchall {:try_start_16 .. :try_end_84} :catchall_11c

    :try_start_84
    const-string v2, "SHA-256"

    .line 5208
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2
    :try_end_8a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_84 .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_8a} :catch_f7
    .catchall {:try_start_84 .. :try_end_8a} :catchall_11c

    goto :goto_90

    :catch_8b
    move-exception v2

    .line 5210
    :try_start_8c
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    move-object v2, v1

    :goto_90
    move v4, v5

    .line 5213
    :goto_91
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_d2

    .line 5214
    new-instance v6, Ljava/util/TreeMap;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct {v6, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 5215
    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 5218
    :goto_aa
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_cf

    .line 5219
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 5220
    invoke-virtual {v6, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_bc} :catch_f7
    .catchall {:try_start_8c .. :try_end_bc} :catchall_11c

    :try_start_bc
    const-string v9, "ISO-8859-1"

    .line 5223
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v2, v9, v5, v8}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_c9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_bc .. :try_end_c9} :catch_ca
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_c9} :catch_f7
    .catchall {:try_start_bc .. :try_end_c9} :catchall_11c

    goto :goto_aa

    :catch_ca
    move-exception v8

    .line 5225
    :try_start_cb
    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_aa

    :cond_cf
    add-int/lit8 v4, v4, 0x1

    goto :goto_91

    .line 5229
    :cond_d2
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    .line 5230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " advanced hash::"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ee} :catch_f7
    .catchall {:try_start_cb .. :try_end_ee} :catchall_11c

    .line 5241
    :try_start_ee
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_f2

    goto :goto_f6

    :catch_f2
    move-exception p1

    .line 5244
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_f6
    return-object p0

    :catch_f7
    move-exception p0

    goto :goto_fd

    :catchall_f9
    move-exception p0

    goto :goto_11e

    :catch_fb
    move-exception p0

    move-object v3, v1

    .line 5236
    :goto_fd
    :try_start_fd
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_111
    .catchall {:try_start_fd .. :try_end_111} :catchall_11c

    if-eqz v3, :cond_11b

    .line 5241
    :try_start_113
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_113 .. :try_end_116} :catch_117

    goto :goto_11b

    :catch_117
    move-exception p0

    .line 5244
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_11b
    :goto_11b
    return-object v1

    :catchall_11c
    move-exception p0

    move-object v1, v3

    :goto_11e
    if-eqz v1, :cond_128

    .line 5241
    :try_start_120
    invoke-virtual {v1}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_123
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_123} :catch_124

    goto :goto_128

    :catch_124
    move-exception p1

    .line 5244
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 5246
    :cond_128
    :goto_128
    throw p0
.end method

.method public final getApkFileHash(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    .line 5145
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_11

    .line 5147
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_10} :catch_11

    move-object v0, p0

    :catch_11
    :cond_11
    return-object v0
.end method

.method public final getApkFileHashBytes(Ljava/lang/String;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    :try_start_1
    const-string v0, "SHA-256"

    .line 5106
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_7} :catch_5d

    .line 5112
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_5c

    .line 5113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_5c

    const/16 p1, 0x1000

    :try_start_16
    new-array p1, p1, [B

    .line 5117
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_37
    .catchall {:try_start_16 .. :try_end_1d} :catchall_33

    .line 5119
    :goto_1d
    :try_start_1d
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_29

    const/4 v3, 0x0

    .line 5120
    invoke-virtual {v0, p1, v3, v1}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1d

    .line 5122
    :cond_29
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2d} :catch_31
    .catchall {:try_start_1d .. :try_end_2d} :catchall_55

    .line 5131
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_5c

    goto :goto_5c

    :catch_31
    move-exception p1

    goto :goto_39

    :catchall_33
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_56

    :catch_37
    move-exception p1

    move-object v2, p0

    :goto_39
    :try_start_39
    const-string v0, "AASA_ASKSManager"

    .line 5126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ERROR: getApkFileHash:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_39 .. :try_end_4f} :catchall_55

    if-eqz v2, :cond_54

    .line 5131
    :try_start_51
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_54

    :catch_54
    :cond_54
    return-object p0

    :catchall_55
    move-exception p0

    :goto_56
    if-eqz v2, :cond_5b

    :try_start_58
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5b

    .line 5134
    :catch_5b
    :cond_5b
    throw p0

    :catch_5c
    :cond_5c
    :goto_5c
    return-object p0

    :catch_5d
    move-exception p1

    .line 5108
    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    return-object p0
.end method

.method public final getDataByDevice(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 961
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_b7
    .catchall {:try_start_1 .. :try_end_a} :catchall_b2

    const-string v2, "APKFromUnknownSource"

    if-eqz v1, :cond_98

    .line 963
    :try_start_e
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-gez v1, :cond_84

    .line 964
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 966
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " :"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_43} :catch_b7
    .catchall {:try_start_e .. :try_end_43} :catchall_b2

    .line 970
    :cond_43
    :goto_43
    :try_start_43
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7d

    const-string v0, ","

    .line 971
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_43

    .line 974
    array-length v0, p0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_59

    const-string/jumbo v0, "noCert"

    goto :goto_5f

    .line 977
    :cond_59
    array-length v0, p0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_78

    .line 979
    aget-object v0, p0, v2

    :goto_5f
    if-eqz p2, :cond_43

    const/4 v2, 0x0

    .line 987
    aget-object v3, p0, v2

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 988
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 989
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    aget-object p0, p0, v2

    invoke-virtual {p2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    :cond_78
    if-eqz p2, :cond_7d

    .line 983
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 994
    :cond_7d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_80} :catch_82
    .catchall {:try_start_43 .. :try_end_80} :catchall_c4

    move-object p0, p1

    goto :goto_ac

    :catch_82
    move-exception p0

    goto :goto_bb

    .line 998
    :cond_84
    :try_start_84
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p1
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_88} :catch_b7
    .catchall {:try_start_84 .. :try_end_88} :catchall_b2

    const-string p2, "ASKSManager"

    if-eqz p1, :cond_92

    :try_start_8c
    const-string p1, "BigSize File is deleted"

    .line 999
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :cond_92
    const-string p1, "BigSize file is not deleted"

    .line 1001
    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 1006
    :cond_98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_ac} :catch_b7
    .catchall {:try_start_8c .. :try_end_ac} :catchall_b2

    :goto_ac
    if-eqz p0, :cond_c3

    .line 1014
    :try_start_ae
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_c3

    goto :goto_c3

    :catchall_b2
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_c5

    :catch_b7
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    .line 1010
    :goto_bb
    :try_start_bb
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_be
    .catchall {:try_start_bb .. :try_end_be} :catchall_c4

    if-eqz p1, :cond_c3

    .line 1014
    :try_start_c0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c3

    :catch_c3
    :cond_c3
    :goto_c3
    return-void

    :catchall_c4
    move-exception p0

    :goto_c5
    if-eqz p1, :cond_ca

    :try_start_c7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_ca

    .line 1017
    :catch_ca
    :cond_ca
    throw p0
.end method

.method public final getDomainName(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    const-string v0, "HTTPS"

    .line 1498
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "www"

    const/4 v2, 0x4

    const-string/jumbo v3, "http"

    if-eqz v0, :cond_28

    const/4 v0, 0x5

    .line 1500
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8e

    :cond_28
    const-string v0, "HTTP"

    .line 1503
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1505
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8e

    :cond_44
    const-string/jumbo v0, "http://www"

    .line 1508
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v4, "http://"

    if-eqz v0, :cond_66

    const/16 v0, 0xb

    .line 1509
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8e

    .line 1511
    :cond_66
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1512
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 1513
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1515
    :cond_7f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1521
    :cond_8e
    :goto_8e
    :try_start_8e
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/net/URISyntaxException; {:try_start_8e .. :try_end_93} :catch_94

    goto :goto_99

    :catch_94
    move-exception p1

    .line 1524
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V

    move-object v0, p0

    :goto_99
    if-eqz v0, :cond_ac

    .line 1529
    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ac

    .line 1531
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_ab

    .line 1532
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_ab
    return-object p1

    :cond_ac
    return-object p0
.end method

.method public getIMEIList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 768
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_50

    .line 772
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const-string v3, "ASKSManager"

    if-lez v2, :cond_36

    const/4 v4, 0x0

    :goto_1b
    if-ge v4, v2, :cond_50

    .line 778
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_33

    .line 779
    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    .line 780
    invoke-virtual {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "ASKSI added list"

    .line 781
    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 786
    :cond_36
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44

    .line 788
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_44

    const-string v2, "INVALID_IMEI"

    :cond_44
    const-string v0, "ASKSI added list 2"

    .line 793
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_50
    return-object v1
.end method

.method public final getInstalledAppInfoToStore()Lcom/android/server/asks/InstalledAppInfo;
    .registers 1

    .line 2939
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    return-object p0
.end method

.method public final getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/InstalledAppInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string/jumbo v1, "name"

    .line 3048
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3049
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3051
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3053
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_36

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_36

    .line 3054
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 3055
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3057
    :cond_36
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    const/4 v7, 0x0

    if-nez v5, :cond_3e

    return-object v7

    .line 3066
    :cond_3e
    :try_start_3e
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3e .. :try_end_43} :catch_d2
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_d2

    .line 3069
    :try_start_43
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 3070
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 3071
    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 3073
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v8

    :goto_52
    if-eq v8, v6, :cond_bf

    const/4 v9, 0x2

    if-eq v8, v9, :cond_5c

    :cond_57
    move-object/from16 v8, p0

    :goto_59
    move-object/from16 v10, p2

    goto :goto_b8

    .line 3078
    :cond_5c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    if-eqz v0, :cond_73

    if-eqz v8, :cond_57

    const-string/jumbo v9, "package"

    .line 3080
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_57

    move-object/from16 v8, p0

    .line 3081
    invoke-virtual {v8, v4, v2}, Lcom/android/server/asks/ASKSManagerService;->checkAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_59

    :cond_73
    move-object/from16 v8, p0

    .line 3084
    new-instance v15, Lcom/android/server/asks/InstalledAppInfo;

    invoke-direct {v15}, Lcom/android/server/asks/InstalledAppInfo;-><init>()V

    .line 3085
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v9, "signature"

    .line 3086
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v9, "execute"

    .line 3087
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v9, "overlay"

    .line 3088
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v9, "requestInstallerZip"

    .line 3089
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v9, "initType"

    .line 3090
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v9, "accessibility"

    .line 3091
    invoke-interface {v4, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v9, v15

    move-object v6, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    .line 3085
    invoke-virtual/range {v9 .. v16}, Lcom/android/server/asks/InstalledAppInfo;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    invoke-interface {v4, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p2

    invoke-virtual {v10, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3100
    :goto_b8
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v8, v6

    const/4 v6, 0x1

    goto :goto_52

    .line 3102
    :cond_bf
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43 .. :try_end_c2} :catch_d0
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_c2} :catch_d0

    .line 3118
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cf

    .line 3119
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    :cond_cf
    return-object v3

    :catch_d0
    move-exception v0

    goto :goto_d4

    :catch_d2
    move-exception v0

    move-object v5, v7

    .line 3106
    :goto_d4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v5, :cond_e2

    .line 3109
    :try_start_d9
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_dd

    goto :goto_e2

    :catch_dd
    move-exception v0

    move-object v1, v0

    .line 3112
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_e2
    :goto_e2
    return-object v7
.end method

.method public final getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 339
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 341
    :cond_e
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public final getRestrictDataFromXML(Ljava/util/HashMap;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/ASKSManagerService$Restrict;",
            ">;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5452
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/AASApolicy/ASKSRNEW.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5455
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "AASA_ASKSManager_RESTRICTED"

    if-nez v2, :cond_17

    const-string v0, "There is no restict rule in system."

    .line 5456
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5465
    :cond_17
    :try_start_17
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 5466
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 5468
    invoke-interface {v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 5471
    :goto_27
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v4, :cond_32

    if-eq v1, v5, :cond_32

    goto :goto_27

    .line 5478
    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "VERSION"

    .line 5482
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_41
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_41} :catch_116
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_41} :catch_10f

    const-string/jumbo v6, "value"

    const/4 v7, 0x0

    if-eqz v4, :cond_4d

    .line 5483
    :try_start_47
    invoke-interface {v2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v8, v7

    goto :goto_4f

    :cond_4d
    move-object v4, v7

    move-object v8, v4

    :goto_4f
    move-object v14, v8

    .line 5486
    :cond_50
    :goto_50
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_54
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_47 .. :try_end_54} :catch_116
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_54} :catch_10f

    if-eq v9, v5, :cond_10c

    const/4 v10, 0x3

    const-string v11, "PACKAGE"

    if-ne v9, v10, :cond_c0

    .line 5489
    :try_start_5b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bb

    if-eqz v14, :cond_b0

    .line 5490
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_b0

    move-object/from16 v15, p2

    .line 5497
    invoke-virtual {v0, v14, v1, v15}, Lcom/android/server/asks/ASKSManagerService;->isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result v9

    if-eqz v9, :cond_aa

    if-nez v8, :cond_89

    .line 5501
    new-instance v16, Lcom/android/server/asks/ASKSManagerService$Restrict;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, "Policy"

    const/4 v13, 0x0

    move-object/from16 v8, v16

    move-object v9, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5b .. :try_end_84} :catch_116
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_84} :catch_10f

    move-object/from16 v10, p1

    move-object/from16 v8, v16

    goto :goto_8b

    :cond_89
    move-object/from16 v10, p1

    .line 5503
    :goto_8b
    :try_start_8b
    invoke-virtual {v10, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5505
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/asks/ASKSManagerService$Restrict;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :cond_aa
    move-object/from16 v10, p1

    .line 5509
    :goto_ac
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_b9

    :cond_b0
    move-object/from16 v10, p1

    move-object/from16 v15, p2

    const-string v8, "The package information is wrong."

    .line 5491
    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b9
    move-object v8, v7

    goto :goto_50

    :cond_bb
    move-object/from16 v10, p1

    move-object/from16 v15, p2

    goto :goto_c8

    :cond_c0
    move-object/from16 v10, p1

    move-object/from16 v15, p2

    const/4 v12, 0x4

    if-ne v9, v12, :cond_c8

    goto :goto_50

    .line 5518
    :cond_c8
    :goto_c8
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 5520
    invoke-virtual {v11, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_dc

    const-string/jumbo v9, "name"

    .line 5521
    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v14, v9

    goto/16 :goto_50

    :cond_dc
    const-string v11, "CERT"

    .line 5522
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ed

    .line 5523
    invoke-interface {v2, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_50

    :cond_ed
    const-string v9, "RESTRICT"

    .line 5524
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_50

    .line 5525
    new-instance v8, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v8}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    const-string v9, "Policy"

    .line 5526
    invoke-virtual {v8, v9}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    .line 5527
    invoke-virtual {v0, v2, v8, v4}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    :try_end_106
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_106} :catch_10a
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_106} :catch_108

    goto/16 :goto_50

    :catch_108
    move-exception v0

    goto :goto_112

    :catch_10a
    move-exception v0

    goto :goto_119

    :cond_10c
    move-object/from16 v10, p1

    goto :goto_11c

    :catch_10f
    move-exception v0

    move-object/from16 v10, p1

    .line 5537
    :goto_112
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11c

    :catch_116
    move-exception v0

    move-object/from16 v10, p1

    .line 5535
    :goto_119
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 5540
    :goto_11c
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    return-void
.end method

.method public getSEInfo(Ljava/lang/String;)[B
    .registers 7

    const-string v0, "Only the system can claim getSEInfo"

    .line 719
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string v0, "aasa_blocked"

    .line 721
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 722
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    const/4 v2, 0x0

    if-eqz p1, :cond_60

    if-nez v1, :cond_19

    goto :goto_60

    .line 727
    :cond_19
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object p1

    .line 728
    invoke-virtual {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v1

    if-eqz p1, :cond_46

    .line 731
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DENY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 733
    invoke-virtual {p1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object p1

    .line 734
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_46

    if-eqz p1, :cond_46

    .line 737
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le v3, p1, :cond_46

    return-object v0

    :cond_46
    const/4 p1, -0x1

    if-eq v1, p1, :cond_60

    .line 746
    new-instance p1, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    .line 748
    invoke-virtual {p1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result p0

    if-nez p0, :cond_57

    return-object v0

    .line 752
    :cond_57
    invoke-virtual {p1, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_5f

    return-object v2

    :cond_5f
    return-object v0

    :cond_60
    :goto_60
    return-object v2
.end method

.method public final getSHA256(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 5251
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const-string v1, "ISO-8859-1"

    .line 5252
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Ljava/security/MessageDigest;->update([BII)V

    .line 5253
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 5254
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 5094
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "AASAASKS"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getSHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_15} :catch_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_18

    :catch_16
    const-string p0, ""

    :goto_18
    return-object p0
.end method

.method public final getScpmPolicyVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p0, "00000000"

    const/4 v0, 0x0

    .line 1140
    :try_start_3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_72
    .catchall {:try_start_3 .. :try_end_8} :catchall_6f

    .line 1141
    :try_start_8
    new-instance p1, Ljava/util/zip/ZipInputStream;

    invoke-direct {p1, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_69
    .catchall {:try_start_8 .. :try_end_d} :catchall_66

    .line 1144
    :goto_d
    :try_start_d
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_55

    .line 1145
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "version.txt"

    .line 1146
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/16 v0, 0x8

    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 1148
    invoke-virtual {p1, v2, v3, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    .line 1149
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_36} :catch_61
    .catchall {:try_start_d .. :try_end_36} :catchall_8d

    :try_start_36
    const-string p0, "AASA_ASKSManager_RUFS"

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scpm policy version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_4f
    .catchall {:try_start_36 .. :try_end_4d} :catchall_8d

    move-object p0, v0

    goto :goto_51

    :catch_4f
    move-exception p0

    goto :goto_77

    .line 1152
    :cond_51
    :goto_51
    :try_start_51
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_61
    .catchall {:try_start_51 .. :try_end_54} :catchall_8d

    goto :goto_d

    .line 1159
    :cond_55
    :try_start_55
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1161
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5b} :catch_5c

    goto :goto_8c

    :catch_5c
    move-exception p1

    .line 1163
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8c

    :catch_61
    move-exception v0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_77

    :catchall_66
    move-exception p0

    move-object p1, v0

    goto :goto_8e

    :catch_69
    move-exception p1

    move-object v4, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v4

    goto :goto_77

    :catchall_6f
    move-exception p0

    move-object p1, v0

    goto :goto_8f

    :catch_72
    move-exception p1

    move-object v1, v0

    move-object v0, p0

    move-object p0, p1

    move-object p1, v1

    .line 1155
    :goto_77
    :try_start_77
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_8d

    if-eqz v1, :cond_82

    .line 1159
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_82

    :catch_80
    move-exception p0

    goto :goto_88

    :cond_82
    :goto_82
    if-eqz p1, :cond_8b

    .line 1161
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_87} :catch_80

    goto :goto_8b

    .line 1163
    :goto_88
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8b
    :goto_8b
    move-object p0, v0

    :goto_8c
    return-object p0

    :catchall_8d
    move-exception p0

    :goto_8e
    move-object v0, v1

    :goto_8f
    if-eqz v0, :cond_97

    .line 1159
    :try_start_91
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_97

    :catch_95
    move-exception p1

    goto :goto_9d

    :cond_97
    :goto_97
    if-eqz p1, :cond_a0

    .line 1161
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_9c} :catch_95

    goto :goto_a0

    .line 1163
    :goto_9d
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1165
    :cond_a0
    :goto_a0
    throw p0
.end method

.method public final getSigByPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string v0, "PackageInformation"

    const/4 v1, 0x0

    .line 2250
    :try_start_3
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 2251
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x8000000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 2253
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p1, :cond_5a

    .line 2254
    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 2256
    array-length v2, p1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_5a

    const/4 v2, 0x0

    .line 2257
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v1
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_2e} :catch_45
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_2e} :catch_2f

    goto :goto_5a

    :catch_2f
    move-exception p0

    .line 2267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Abnormal case : NoSuchAlgorithmException "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    :catch_45
    move-exception p0

    .line 2264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Abnormal case : initiatingPackageName can not be modified "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5a
    :goto_5a
    return-object v1
.end method

.method public final getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string v0, "SHA-256"

    .line 1102
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 1103
    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 1104
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertToHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1727
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TARGETDEVICE.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1731
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 1732
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1733
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1736
    :cond_2c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_34

    return-object v3

    .line 1743
    :cond_34
    :try_start_34
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_39} :catch_bc

    .line 1753
    :try_start_39
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 1755
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1756
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1759
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_48
    if-eq v4, v2, :cond_a8

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4e

    goto :goto_a3

    .line 1765
    :cond_4e
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DEVICE"

    .line 1766
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    const-string v5, "LIST"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    const-string v5, "TARGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    const-string v5, "CERTTARGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    const-string v5, "ZIPTARGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    const-string v5, "ZIPCERTTARGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    goto :goto_a3

    :cond_83
    const-string/jumbo v5, "value"

    .line 1769
    invoke-interface {v0, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a3

    .line 1771
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9a

    const-string v6, "ALL"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 1772
    :cond_9a
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a3

    .line 1773
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1782
    :cond_a3
    :goto_a3
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    goto :goto_48

    .line 1784
    :cond_a8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_ab
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_ab} :catch_b4
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_ab} :catch_ac

    return-object p0

    :catch_ac
    move-exception p0

    .line 1794
    :try_start_ad
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_b0

    .line 1797
    :catch_b0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-object v3

    :catch_b4
    move-exception p0

    .line 1787
    :try_start_b5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b8

    .line 1790
    :catch_b8
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-object v3

    :catch_bc
    move-exception p0

    .line 1745
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v3
.end method

.method public final getTokenContents([BI)[B
    .registers 9

    const/4 p0, 0x7

    new-array p0, p0, [B

    const/4 v0, 0x0

    move v1, p2

    move v2, v0

    .line 4726
    :goto_6
    aget-byte v3, p1, v1

    const/16 v4, 0x2c

    const/4 v5, 0x1

    if-eq v3, v4, :cond_19

    const/4 v4, 0x5

    if-lt v2, v4, :cond_12

    move v1, v5

    goto :goto_1a

    .line 4734
    :cond_12
    aput-byte v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_19
    move v1, v0

    :goto_1a
    if-ne v1, v5, :cond_23

    const-string p0, "22"

    .line 4738
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0

    .line 4741
    :cond_23
    new-array v1, v2, [B

    .line 4742
    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4745
    :try_start_28
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_31} :catch_32

    goto :goto_37

    :catch_32
    move-exception p0

    .line 4747
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    move p0, v0

    .line 4749
    :goto_37
    new-array v1, p0, [B

    add-int/2addr p2, v2

    add-int/2addr p2, v5

    .line 4750
    invoke-static {p1, p2, v1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final getTrustedFile()[Ljava/lang/String;
    .registers 7

    const-string p0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v0, "getTrustedFile : "

    .line 5923
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    const/4 v0, 0x0

    .line 5929
    :try_start_a
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/data/system/.aasa/trustedTime"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 5931
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_16} :catch_33
    .catchall {:try_start_a .. :try_end_16} :catchall_31

    move-object v3, v0

    .line 5934
    :cond_17
    :try_start_17
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    const-string v5, ","

    .line 5935
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 5936
    array-length v4, v3

    if-ne v4, p0, :cond_17

    .line 5939
    :cond_28
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_2b} :catch_2f
    .catchall {:try_start_17 .. :try_end_2b} :catchall_43

    .line 5947
    :goto_2b
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_3c

    goto :goto_3c

    :catch_2f
    move-exception v1

    goto :goto_36

    :catchall_31
    move-exception p0

    goto :goto_45

    :catch_33
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    .line 5943
    :goto_36
    :try_start_36
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_43

    if-eqz v2, :cond_3c

    goto :goto_2b

    :catch_3c
    :cond_3c
    :goto_3c
    if-eqz v3, :cond_42

    .line 5952
    array-length v1, v3

    if-ne v1, p0, :cond_42

    return-object v3

    :cond_42
    return-object v0

    :catchall_43
    move-exception p0

    move-object v0, v2

    :goto_45
    if-eqz v0, :cond_4a

    .line 5947
    :try_start_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4a

    .line 5950
    :catch_4a
    :cond_4a
    throw p0
.end method

.method public final getTrustedToday()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "security.ASKS.time_value"

    const-string v1, "00000000"

    .line 5965
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 5967
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5968
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedTodayInner()Ljava/lang/String;

    move-result-object v0

    :cond_15
    return-object v0
.end method

.method public final getTrustedTodayInner()Ljava/lang/String;
    .registers 6

    .line 5975
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-nez v0, :cond_f

    .line 5977
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5979
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 5981
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    goto :goto_49

    :cond_1a
    const/4 v1, 0x1

    .line 5985
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x2

    .line 5986
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 5988
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 5990
    invoke-virtual {p0, v1, v2}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object p0

    .line 5991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getElapsedToday : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AASA_ASKSManager_SECURETIME"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 5983
    :cond_49
    :goto_49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUNvalueForASKS()Ljava/lang/String;
    .registers 3

    const-string v0, "Only the system can claim getUNvalueForASKS"

    .line 865
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 867
    iget-boolean p0, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    return-object v0

    :cond_b
    const-string/jumbo p0, "ro.boot.em.status"

    .line 869
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0x1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string/jumbo p0, "ro.serialno"

    const-string/jumbo v0, "none"

    .line 870
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_25
    return-object v0
.end method

.method public getUnknownAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "Only the system can claim isUnknownApps"

    .line 2728
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const-string/jumbo v0, "overlay"

    const/4 v1, 0x0

    .line 2730
    invoke-virtual {p0, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object p0

    const-string v0, "PackageInformation"

    if-eqz p0, :cond_32

    .line 2732
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_32

    .line 2736
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getUnknownAppList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_32
    :goto_32
    const-string/jumbo p0, "getUnknownAppList : installedUnknownList is null"

    .line 2733
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public final getUnknownAppsDataFromXML(ILjava/util/ArrayList;)Ljava/util/HashMap;
    .registers 46
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/asks/UnknownStore;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    .line 1807
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v4, 0x0

    if-nez v2, :cond_f

    return-object v4

    :cond_f
    const/16 v5, 0x1b

    if-eq v0, v5, :cond_29

    const/16 v5, 0x1c

    if-eq v0, v5, :cond_26

    const/16 v5, 0x21

    if-eq v0, v5, :cond_23

    const/16 v5, 0x22

    if-eq v0, v5, :cond_20

    return-object v4

    :cond_20
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_WEB.xml"

    goto :goto_2b

    :cond_23
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_A11Y.xml"

    goto :goto_2b

    :cond_26
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST_ZIP.xml"

    goto :goto_2b

    :cond_29
    const-string v0, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_TOTALLIST.xml"

    .line 1829
    :goto_2b
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1831
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_50

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_50

    .line 1832
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1833
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1836
    :cond_50
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_57

    return-object v4

    .line 1843
    :cond_57
    :try_start_57
    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_57 .. :try_end_5c} :catch_33b

    .line 1853
    :try_start_5c
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0
    :try_end_60
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c .. :try_end_60} :catch_330
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_60} :catch_325

    .line 1855
    :try_start_60
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1856
    invoke-interface {v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1877
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_6b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_60 .. :try_end_6b} :catch_320
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_6b} :catch_325

    const-string v10, ""

    move-object v14, v4

    move-object v15, v14

    move-object/from16 v21, v15

    move v11, v7

    move v12, v11

    move/from16 v17, v12

    move/from16 v18, v17

    move/from16 v22, v18

    move/from16 v23, v22

    move/from16 v24, v23

    const/16 v16, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    :goto_83
    if-eq v0, v6, :cond_313

    const/4 v13, 0x2

    const-string/jumbo v6, "package"

    if-eq v0, v13, :cond_102

    const/4 v13, 0x3

    if-eq v0, v13, :cond_d8

    const/4 v13, 0x4

    if-eq v0, v13, :cond_95

    move-object v6, v14

    move-object v0, v15

    goto/16 :goto_f9

    :cond_95
    if-eqz v11, :cond_cc

    if-eqz v12, :cond_cc

    if-eqz v10, :cond_cc

    if-eqz v21, :cond_cc

    .line 2026
    :try_start_9d
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 2027
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_cc

    if-eqz v0, :cond_cc

    .line 2028
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_cc

    move-object v13, v15

    move-object v6, v14

    move-object/from16 v14, v21

    move-object v11, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v0

    .line 2029
    invoke-virtual/range {v13 .. v20}, Lcom/android/server/asks/UnknownStore;->addCertPolicy(Ljava/lang/String;IIILjava/lang/String;II)V

    move/from16 v17, v7

    move/from16 v18, v17

    const/16 v16, -0x1

    const/16 v19, -0x1

    const/16 v20, -0x1

    goto :goto_ce

    :cond_cc
    move-object v6, v14

    move-object v11, v15

    :goto_ce
    move-object v4, v1

    move-object/from16 v32, v3

    move-object v14, v6

    move-object/from16 v33, v8

    move-object v15, v11

    move v11, v7

    goto/16 :goto_303

    :cond_d8
    move-object v6, v14

    move-object v0, v15

    .line 2043
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 2044
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f9

    if-eqz v0, :cond_f9

    .line 2046
    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9d .. :try_end_e9} :catch_330
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_e9} :catch_325

    move-object v15, v0

    move-object/from16 v32, v3

    move-object v14, v4

    move v12, v7

    move/from16 v22, v12

    move/from16 v23, v22

    move/from16 v24, v23

    move-object/from16 v33, v8

    move-object v4, v1

    goto/16 :goto_303

    :cond_f9
    :goto_f9
    move-object v15, v0

    move-object v4, v1

    move-object/from16 v32, v3

    move-object v14, v6

    move-object/from16 v33, v8

    goto/16 :goto_303

    :cond_102
    move-object v10, v14

    move-object v0, v15

    .line 1882
    :try_start_104
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13
    :try_end_108
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_104 .. :try_end_108} :catch_320
    .catch Ljava/io/IOException; {:try_start_104 .. :try_end_108} :catch_325

    const-string v14, "PackageInformation"

    const-string/jumbo v15, "reported"

    const-string v7, "applyPolicy"

    const-string v9, "SA"

    const/16 v25, 0x1f7

    const/16 v26, 0x1f6

    const-string v4, "URL"

    const/16 v27, 0x1f5

    move-object/from16 v28, v10

    const-string/jumbo v10, "nonURL"

    move/from16 v29, v11

    const-string v11, "ALL"

    const/16 v30, 0x1f4

    if-eqz v13, :cond_1ea

    .line 1884
    :try_start_126
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1ea

    const-string/jumbo v12, "value"
    :try_end_12f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_126 .. :try_end_12f} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_126 .. :try_end_12f} :catch_325

    const/4 v2, 0x0

    .line 1886
    :try_start_130
    invoke-interface {v5, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_134
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_130 .. :try_end_134} :catch_1df
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_134} :catch_325

    if-eqz v12, :cond_148

    .line 1889
    :try_start_136
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 1890
    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/UnknownStore;

    goto :goto_148

    .line 1892
    :cond_143
    new-instance v0, Lcom/android/server/asks/UnknownStore;

    invoke-direct {v0}, Lcom/android/server/asks/UnknownStore;-><init>()V

    :cond_148
    :goto_148
    move-object v2, v0

    if-eqz v2, :cond_14e

    .line 1898
    invoke-virtual {v2, v12}, Lcom/android/server/asks/UnknownStore;->setKey(Ljava/lang/String;)V
    :try_end_14e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_136 .. :try_end_14e} :catch_1e5
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_14e} :catch_325

    :cond_14e
    move-object/from16 v28, v2

    const/4 v2, 0x0

    .line 1900
    :try_start_151
    invoke-interface {v5, v2, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v31, v12

    const-string v12, "MIN"

    .line 1901
    invoke-interface {v5, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v32, v3

    const-string v3, "MAX"

    .line 1902
    invoke-interface {v5, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_165
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_151 .. :try_end_165} :catch_1df
    .catch Ljava/io/IOException; {:try_start_151 .. :try_end_165} :catch_325

    if-eqz v0, :cond_1db

    if-eqz v12, :cond_1db

    if-eqz v3, :cond_1db

    move-object/from16 v33, v8

    .line 1906
    :try_start_16d
    invoke-interface {v5, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1907
    invoke-interface {v5, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_175
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16d .. :try_end_175} :catch_1d9
    .catch Ljava/io/IOException; {:try_start_16d .. :try_end_175} :catch_31b

    if-eqz v8, :cond_192

    .line 1909
    :try_start_177
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    move/from16 v19, v27

    goto :goto_194

    .line 1911
    :cond_180
    invoke-virtual {v10, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_189

    move/from16 v19, v26

    goto :goto_194

    .line 1913
    :cond_189
    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_192

    move/from16 v19, v25

    goto :goto_194

    :cond_192
    move/from16 v19, v30

    :goto_194
    if-eqz v1, :cond_1b1

    .line 1923
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19f

    move/from16 v20, v27

    goto :goto_1b3

    .line 1925
    :cond_19f
    invoke-virtual {v10, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a8

    move/from16 v20, v26

    goto :goto_1b3

    .line 1927
    :cond_1a8
    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_1ac
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_177 .. :try_end_1ac} :catch_31d
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_1ac} :catch_31b

    if-eqz v1, :cond_1b1

    move/from16 v20, v25

    goto :goto_1b3

    :cond_1b1
    move/from16 v20, v30

    .line 1937
    :goto_1b3
    :try_start_1b3
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1938
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1939
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1bf
    .catch Ljava/lang/NumberFormatException; {:try_start_1b3 .. :try_end_1bf} :catch_1c2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b3 .. :try_end_1bf} :catch_31d
    .catch Ljava/io/IOException; {:try_start_1b3 .. :try_end_1bf} :catch_31b

    move/from16 v24, v0

    goto :goto_1dd

    :catch_1c2
    move-exception v0

    .line 1942
    :try_start_1c3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numberformat exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c3 .. :try_end_1d8} :catch_31d
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1d8} :catch_31b

    goto :goto_1dd

    :catch_1d9
    move-exception v0

    goto :goto_1e2

    :cond_1db
    move-object/from16 v33, v8

    :goto_1dd
    const/4 v12, 0x1

    goto :goto_1f2

    :catch_1df
    move-exception v0

    move-object/from16 v33, v8

    :goto_1e2
    move-object v1, v2

    goto/16 :goto_334

    :catch_1e5
    move-exception v0

    move-object/from16 v33, v8

    goto/16 :goto_31e

    :cond_1ea
    move-object/from16 v32, v3

    move-object/from16 v33, v8

    move-object/from16 v31, v28

    move-object/from16 v28, v0

    :goto_1f2
    const-string v1, "block"

    const-string/jumbo v2, "policy"

    const-string/jumbo v3, "name"

    if-eqz v12, :cond_2a6

    if-eqz v13, :cond_2a6

    .line 1947
    :try_start_1fe
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_202
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1fe .. :try_end_202} :catch_31d
    .catch Ljava/io/IOException; {:try_start_1fe .. :try_end_202} :catch_31b

    if-eqz v0, :cond_2a6

    const/4 v6, 0x0

    .line 1948
    :try_start_205
    invoke-interface {v5, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1949
    invoke-interface {v5, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1950
    invoke-interface {v5, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1951
    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1952
    invoke-interface {v5, v6, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_219
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_205 .. :try_end_219} :catch_2a2
    .catch Ljava/io/IOException; {:try_start_205 .. :try_end_219} :catch_31b

    if-eqz v7, :cond_236

    .line 1954
    :try_start_21b
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_224

    move/from16 v6, v27

    goto :goto_238

    .line 1956
    :cond_224
    invoke-virtual {v10, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_22d

    move/from16 v6, v26

    goto :goto_238

    .line 1958
    :cond_22d
    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_236

    move/from16 v6, v25

    goto :goto_238

    :cond_236
    move/from16 v6, v30

    :goto_238
    if-eqz v15, :cond_253

    .line 1968
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_243

    move/from16 v25, v27

    goto :goto_255

    .line 1970
    :cond_243
    invoke-virtual {v10, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24c

    move/from16 v25, v26

    goto :goto_255

    .line 1972
    :cond_24c
    invoke-virtual {v4, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_253

    goto :goto_255

    :cond_253
    move/from16 v25, v30

    :goto_255
    if-eqz v0, :cond_25e

    move-object/from16 v4, p0

    .line 1981
    invoke-virtual {v4, v0}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v18
    :try_end_25d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21b .. :try_end_25d} :catch_31d
    .catch Ljava/io/IOException; {:try_start_21b .. :try_end_25d} :catch_31b

    goto :goto_260

    :cond_25e
    move-object/from16 v4, p0

    :goto_260
    if-eqz v9, :cond_27e

    .line 1984
    :try_start_262
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17
    :try_end_266
    .catch Ljava/lang/NumberFormatException; {:try_start_262 .. :try_end_266} :catch_267
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_262 .. :try_end_266} :catch_31d
    .catch Ljava/io/IOException; {:try_start_262 .. :try_end_266} :catch_31b

    goto :goto_280

    :catch_267
    move-exception v0

    move-object v7, v0

    .line 1986
    :try_start_269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PKG SA numberformat exception"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_280

    :cond_27e
    move/from16 v17, v30

    :goto_280
    const-string v0, "execute"
    :try_end_282
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_269 .. :try_end_282} :catch_31d
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_282} :catch_31b

    const/4 v7, 0x0

    .line 1992
    :try_start_283
    invoke-interface {v5, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_287
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_283 .. :try_end_287} :catch_29e
    .catch Ljava/io/IOException; {:try_start_283 .. :try_end_287} :catch_31b

    if-eqz v0, :cond_294

    .line 1994
    :try_start_289
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_292

    const/16 v30, 0x1f8

    goto :goto_294

    :cond_292
    const/16 v30, 0x1f9

    :cond_294
    :goto_294
    move/from16 v19, v6

    move-object/from16 v21, v8

    move/from16 v20, v25

    move/from16 v16, v30

    const/4 v11, 0x1

    goto :goto_2aa

    :catch_29e
    move-exception v0

    move-object v1, v7

    goto/16 :goto_334

    :catch_2a2
    move-exception v0

    move-object v1, v6

    goto/16 :goto_334

    :cond_2a6
    move-object/from16 v4, p0

    move/from16 v11, v29

    :goto_2aa
    if-eqz v12, :cond_2fe

    if-eqz v13, :cond_2fe

    const-string/jumbo v0, "pem"

    .line 2004
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_289 .. :try_end_2b5} :catch_31d
    .catch Ljava/io/IOException; {:try_start_289 .. :try_end_2b5} :catch_31b

    if-eqz v0, :cond_2fe

    const/4 v6, 0x0

    .line 2005
    :try_start_2b8
    invoke-interface {v5, v6, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2006
    invoke-interface {v5, v6, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2c0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b8 .. :try_end_2c0} :catch_2a2
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2c0} :catch_31b

    if-eqz v0, :cond_2f7

    .line 2010
    :try_start_2c2
    invoke-virtual {v4, v0}, Lcom/android/server/asks/ASKSManagerService;->convertStoI(Ljava/lang/String;)I

    move-result v40

    .line 2011
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e2

    if-eqz v28, :cond_2f7

    const/16 v36, 0x1

    move-object/from16 v34, v28

    move-object/from16 v35, v21

    move/from16 v37, v24

    move/from16 v38, v22

    move/from16 v39, v23

    move/from16 v41, v19

    move/from16 v42, v20

    .line 2013
    invoke-virtual/range {v34 .. v42}, Lcom/android/server/asks/UnknownStore;->addPermission(Ljava/lang/String;ZIIIIII)V

    goto :goto_2f7

    :cond_2e2
    if-eqz v28, :cond_2f7

    const/16 v36, 0x0

    move-object/from16 v34, v28

    move-object/from16 v35, v21

    move/from16 v37, v24

    move/from16 v38, v22

    move/from16 v39, v23

    move/from16 v41, v19

    move/from16 v42, v20

    .line 2017
    invoke-virtual/range {v34 .. v42}, Lcom/android/server/asks/UnknownStore;->addPermission(Ljava/lang/String;ZIIIIII)V

    :cond_2f7
    :goto_2f7
    move-object v10, v13

    move-object/from16 v15, v28

    move-object/from16 v14, v31

    const/4 v11, 0x1

    goto :goto_303

    :cond_2fe
    move-object v10, v13

    move-object/from16 v15, v28

    move-object/from16 v14, v31

    .line 2056
    :goto_303
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move-object/from16 v2, p2

    move-object v1, v4

    move-object/from16 v3, v32

    move-object/from16 v8, v33

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_83

    :cond_313
    move-object/from16 v32, v3

    move-object/from16 v33, v8

    .line 2058
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileReader;->close()V
    :try_end_31a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c2 .. :try_end_31a} :catch_31d
    .catch Ljava/io/IOException; {:try_start_2c2 .. :try_end_31a} :catch_31b

    return-object v32

    :catch_31b
    move-exception v0

    goto :goto_328

    :catch_31d
    move-exception v0

    :goto_31e
    const/4 v1, 0x0

    goto :goto_334

    :catch_320
    move-exception v0

    move-object/from16 v33, v8

    move-object v1, v4

    goto :goto_334

    :catch_325
    move-exception v0

    move-object/from16 v33, v8

    .line 2069
    :goto_328
    :try_start_328
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileReader;->close()V
    :try_end_32b
    .catch Ljava/io/IOException; {:try_start_328 .. :try_end_32b} :catch_32b

    .line 2072
    :catch_32b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1

    :catch_330
    move-exception v0

    move-object v1, v4

    move-object/from16 v33, v8

    .line 2062
    :goto_334
    :try_start_334
    invoke-virtual/range {v33 .. v33}, Ljava/io/FileReader;->close()V
    :try_end_337
    .catch Ljava/io/IOException; {:try_start_334 .. :try_end_337} :catch_337

    .line 2065
    :catch_337
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    return-object v1

    :catch_33b
    move-exception v0

    move-object v1, v4

    .line 1845
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-object v1
.end method

.method public final getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;
    .registers 2

    .line 346
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    if-nez v0, :cond_c

    const-string v0, "AASA"

    .line 347
    invoke-static {v0}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->getInstance(Ljava/lang/String;)Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    .line 349
    :cond_c
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mVkm:Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    return-object p0
.end method

.method public final hasTrustedTime()Z
    .registers 2

    .line 5915
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/trustedTime"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public final isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "META-INF"

    const-string v0, " ERROR: AASA_ASKSIsToken "

    const-string v1, "AASA_ASKSManager"

    const-string v2, "SEC-INF"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4058
    :try_start_a
    new-instance v5, Landroid/util/jar/StrictJarFile;

    const/4 v6, 0x1

    invoke-direct {v5, p2, v3, v6}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_ae
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_10} :catch_98
    .catchall {:try_start_a .. :try_end_10} :catchall_96

    .line 4061
    :try_start_10
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 4062
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    .line 4064
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/zip/ZipEntry;

    .line 4065
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4066
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_28} :catch_93
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_28} :catch_90
    .catchall {:try_start_10 .. :try_end_28} :catchall_8d

    const-string v9, "buildConfirm.crt"

    const-string v10, "buildinfo"

    if-eqz v8, :cond_53

    :try_start_2e
    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 4068
    invoke-virtual {p1, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCodePath(Ljava/lang/String;)V

    .line 4069
    invoke-virtual {p1, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setTokenName(Ljava/lang/String;)V

    .line 4070
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCertName(Ljava/lang/String;)V

    :goto_51
    move v3, v6

    goto :goto_89

    .line 4073
    :cond_53
    invoke-virtual {v7, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v7, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 4075
    invoke-virtual {p1, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCodePath(Ljava/lang/String;)V

    .line 4076
    invoke-virtual {p1, v7}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setTokenName(Ljava/lang/String;)V

    .line 4077
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setCertName(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_88} :catch_93
    .catch Ljava/lang/SecurityException; {:try_start_2e .. :try_end_88} :catch_90
    .catchall {:try_start_2e .. :try_end_88} :catchall_8d

    goto :goto_51

    .line 4097
    :cond_89
    :goto_89
    invoke-virtual {v5}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_c6

    :catchall_8d
    move-exception p0

    move-object v4, v5

    goto :goto_c7

    :catch_90
    move-exception p0

    move-object v4, v5

    goto :goto_99

    :catch_93
    move-exception p0

    move-object v4, v5

    goto :goto_af

    :catchall_96
    move-exception p0

    goto :goto_c7

    :catch_98
    move-exception p0

    .line 4092
    :goto_99
    :try_start_99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_c6

    goto :goto_c3

    :catch_ae
    move-exception p0

    .line 4088
    :goto_af
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_99 .. :try_end_c1} :catchall_96

    if-eqz v4, :cond_c6

    .line 4097
    :goto_c3
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_c6
    :goto_c6
    return v3

    :goto_c7
    if-eqz v4, :cond_cc

    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V

    .line 4098
    :cond_cc
    throw p0
.end method

.method public final isAutoTimeEnabled(Landroid/content/Context;)Z
    .registers 4

    const-string p0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v0, "isAutoTimeEnabled : "

    .line 5826
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_11

    const-string p1, "context is null. "

    .line 5828
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 5833
    :cond_11
    :try_start_11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "auto_time"

    invoke-static {p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_26

    const-string/jumbo p1, "isAutoTimeEnabled : ON"

    .line 5834
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_31

    :cond_26
    const-string/jumbo p1, "isAutoTimeEnabled : OFF"

    .line 5837
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_11 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p0

    .line 5842
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_31
    return v0
.end method

.method public final isIPaddress(Ljava/lang/String;)Z
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_36

    const-string v0, "(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])\\.(\\d{1,2}|1\\d\\d|2[0-4]\\d|25[0-5])"

    .line 1480
    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    const-string v0, "PackageInformation"

    if-eqz p0, :cond_22

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 1488
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not IP:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_36
    return p0
.end method

.method public final isInteger(Ljava/lang/String;)Z
    .registers 2

    .line 5045
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 p0, 0x1

    return p0

    :catch_5
    const/4 p0, 0x0

    return p0
.end method

.method public final isPlatformSigned([Landroid/content/pm/Signature;)Z
    .registers 3

    .line 3524
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const-string v0, "android"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_15

    const-string p0, "AASA_ASKSManager"

    const-string p1, "cannot find android pkg"

    .line 3526
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 3530
    :cond_15
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageManagerServiceUtils;->compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I

    move-result p0

    if-nez p0, :cond_24

    const/4 v0, 0x1

    :cond_24
    return v0
.end method

.method public final isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I
    .registers 13

    .line 3535
    iget-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    const/16 v1, 0xa

    if-eqz v0, :cond_9

    const/16 v2, 0xb

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "308204d4308203bca003020102020900d20995a79c0daad6300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c986384a3e1f2fb206670e78ef232215c0d26f45a22728db99a44da11c35ac33a71fe071c4a2d6825a9b4c88b333ed96f3c5e6c666d60f3ee94c490885abcf8dc660f707aabc77ead3e2d0d8aee8108c15cd260f2e85042c28d2f292daa3c6da0c7bf2391db7841aade8fdf0c9d0defcf77124e6d2de0a9e0d2da746c3670e4ffcdc85b701bb4744861b96ff7311da3603c5a10336e55ffa34b4353eedc85f51015e1518c67e309e39f87639ff178107f109cd18411a6077f26964b6e63f8a70b9619db04306a323c1a1d23af867e19f14f570ffe573d0e3a0c2b30632aaec3173380994be1e341e3a90bd2e4b615481f46db39ea83816448ec35feb1735c1f3020103a382010b30820107301d0603551d0e04160414932c3af70b627a0c7610b5a0e7427d6cfaea3f1e3081d70603551d230481cf3081cc8014932c3af70b627a0c7610b5a0e7427d6cfaea3f1ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900d20995a79c0daad6300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100329601fe40e036a4a86cc5d49dd8c1b5415998e72637538b0d430369ac51530f63aace8c019a1a66616a2f1bb2c5fabd6f313261f380e3471623f053d9e3c53f5fd6d1965d7b000e4dc244c1b27e2fe9a323ff077f52c4675e86247aa801187137e30c9bbf01c567a4299db4bf0b25b7d7107a7b81ee102f72ff47950164e26752e114c42f8b9d2a42e7308897ec640ea1924ed13abbe9d120912b62f4926493a86db94c0b46f44c6161d58c2f648164890c512dfb28d42c855bf470dbee2dab6960cad04e81f71525ded46cdd0f359f99c460db9f007d96ce83b4b218ac2d82c48f12608d469733f05a3375594669ccbf8a495544d6c5701e9369c08c810158"

    const/4 v5, 0x0

    .line 3538
    aput-object v4, v3, v5

    const-string v4, "308204d4308203bca003020102020900e5eff0a8f66d92b3300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531335a170d3338313130373132323531335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e9f1edb42423201dce62e68f2159ed8ea766b43a43d348754841b72e9678ce6b03d06d31532d88f2ef2d5ba39a028de0857983cd321f5b7786c2d3699df4c0b40c8d856f147c5dc54b9d1d671d1a51b5c5364da36fc5b0fe825afb513ec7a2db862c48a6046c43c3b71a1e275155f6c30aed2a68326ac327f60160d427cf55b617230907a84edbff21cc256c628a16f15d55d49138cdf2606504e1591196ed0bdc25b7cc4f67b33fb29ec4dbb13dbe6f3467a0871a49e620067755e6f095c3bd84f8b7d1e66a8c6d1e5150f7fa9d95475dc7061a321aaf9c686b09be23ccc59b35011c6823ffd5874d8fa2a1e5d276ee5aa381187e26112c7d5562703b36210b020103a382010b30820107301d0603551d0e041604145b115b23db35655f9f77f78756961006eebe3a9e3081d70603551d230481cf3081cc80145b115b23db35655f9f77f78756961006eebe3a9ea181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e5eff0a8f66d92b3300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010039c91877eb09c2c84445443673c77a1219c5c02e6552fa2fbad0d736bc5ab6ebaf0375e520fe9799403ecb71659b23afda1475a34ef4b2e1ffcba8d7ff385c21cb6482540bce3837e6234fd4f7dd576d7fcfe9cfa925509f772c494e1569fe44e6fcd4122e483c2caa2c639566dbcfe85ed7818d5431e73154ad453289fb56b607643919cf534fbeefbdc2009c7fcb5f9b1fa97490462363fa4bedc5e0b9d157e448e6d0e7cfa31f1a2faa9378d03c8d1163d3803bc69bf24ec77ce7d559abcaf8d345494abf0e3276f0ebd2aa08e4f4f6f5aaea4bc523d8cc8e2c9200ba551dd3d4e15d5921303ca9333f42f992ddb70c2958e776c12d7e3b7bd74222eb5c7a"

    const/4 v6, 0x1

    .line 3539
    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v6, "308204d4308203bca003020102020900f3a752a8cbb7ac6a300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303732373132323632335a170d3338313231323132323632335a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100bd20d27f5127981cf0855e43e64d8018b92401ff0b4b241eeb54c4fb0e84dcf94cf8da888e34c1c370bc437f77880819f3a9894019f05d5514bc3d20d17e968167d85990fa1a44b9e79aa1da9681dc8d2c39b98b3b257918748c6f5bb9126330d72fdc26065e717f1a5c27c8b075f1a8d7325f7eb2d57ee34d93d76a5c529d2e0789392793c68c8f5090c4d2d093190b3279943550e2f5c864118e84d6c6c6bc67815148db8752e4bf69a9ca729ca4704d966e8dd591506dfc9dd9c8c33bdc7bf58660df6be3b45753983a092c3a4ae899d1f2253017ba606a5b1dda2f5511fcf530ea43c7dc05ff1621d305f12a37148e72078aaf644dadc98f3b6789cb6655020103a382010b30820107301d0603551d0e041604142fa3167aab7de1f13b4edef062fa715c0609f0bf3081d70603551d230481cf3081cc80142fa3167aab7de1f13b4edef062fa715c0609f0bfa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900f3a752a8cbb7ac6a300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100498ed96cbc503fb1b72402dcb8ba364d8aa11dc5b9a7e191d200af4051272519b3099eba16e538044f086a1e36710abf2980efb437b6a9bebfab93417c068ea18cbfdeb8570fca73951684c674eb33c4240e236928ba1197d6b385c40454c3980f6f764131149dbba80756b7b18c5951a8630a6692fdb30227b431175f793a6e39479e8ad8b4b4beca6faabf9fc243b9be47447229524487f5f04cf6661ec818a3756221360bfeee3ccaec9a6dc67694b791a80957b28f11f15fd81eaeb361e4c9f907d3ceb4176f9947b513f8cd89d77044adae7c7f631f27a2e40a8d655a9c73515c796b17a39d0e9de675d62bf785c1e0d65a937c65aadacf788b2dfc14e2"

    .line 3540
    aput-object v6, v3, v4

    const/4 v4, 0x3

    const-string v6, "308204d4308203bca003020102020900b830e7f5ede090a8300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009a280ff8cebd5954fbac141d450be91a980a6597b379cb64a19bc4ab39aecb5f06fe2599d3767bb0c27e3e8ac3846cf0b80c09817f8d22be8a55418a068c6983958ffc233a99cd793bc468b0bda139b87ff1550e5ce184647214a1fa4fe2121a0ecdbb1cd33c644c06e7b70455ff097a4f8c51eca2ebefb4602b5d8bb6ed811ec959c1e99e8f353667703563c3c3277bbbd872fe7fa84bd8041efa98d32bb35c44d9c55aa8e766da065176722103fdb63677392c94bd20f5a5ac5c780046bc729a2eec3575a05ddb39836235c8c939f95493aa8f32dd7e7016392716219f0c5fe48874f283af0c217b4c08536b5df7bc302c9e2af08db61ecb49a198c7c4bd2b020103a382010b30820107301d0603551d0e041604144d2270829d5cf4a65bf55a756224bea659c2dfda3081d70603551d230481cf3081cc80144d2270829d5cf4a65bf55a756224bea659c2dfdaa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b830e7f5ede090a8300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100751ea54edeb751de01436db8009352bee64209020fe40641ac09d0016c807fd89258aca374299520e30bc79e77a161c98ddb8ccfc9c8184969114e4478d1b1b374a97e52e07e056dd6b6de5b063c12203e55e284d1de58af2fc6e43c198857b87ac9a472633b8a1cd7e6ebc4e2d675b680d1844d86ab7569129d24e2bcf10cddb2e66c85c1335a3d6479749152058a27135440b795bf509d78009fbda18a6c0cb31b741f79a4ac189d44fd04f65887bb9d950cc2b6f43275e71900fba03b06a9ab9ecd58af0f8c2e0b3569197b043da0601563b0af26a0f52c4b7e834c7ccf5dec4d330d8fd0a049360cd3d9ef0bff09b9812c9ba406c8a6650688b0919a040b"

    .line 3541
    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "30820411308202f9a003020102020900fd222d6fc87acde0300d06092a864886f70d010105050030819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d3020170d3133303132343035323231305a180f32313132313233313035323231305a30819e310b3009060355040613024b523113301106035504080c0a536f7574684b6f7265613112301006035504070c095375776f6e43697479311b3019060355040a0c1253616d73756e67436f72706f726174696f6e310c300a060355040b0c03444d433114301206035504030c0b53616d73756e67436572743125302306092a864886f70d01090116166d2e73656375726974794073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100a2c51f56a1c8bf64ada0af152ced2344ac070b447efc85f1b69ce90fbc2b7a71257240c215eedbf7445c474fe34d62bc3035d79ba110859118f1200ecc9ae48b56400e187591272d59734e456d9dfd5a1f3227a30b9448bda84c2901b501295445e204ddb6f9f9e36b2560998f1764e446176fe5d83987220f8ed15106dc7c8ecb6798de45f5fbae54efe2b35a379631f545f84c98243aa4d92ef339330f954ad32e4e97aff69cbf68928484b03a8fa8eafdc8ff2a9801f249302d467b05f99a1680e4fb5b11624d5e53d67f09e86b82dd7305e3e483b12e3720fcccc2bc8857f13b6e1d60512074004f67d86241940eaba34afda2af3904b04913fa50f499f7020103a350304e301d0603551d0e04160414eef0f8211dccf6e442f3388889c9a3ea3ce0236c301f0603551d23041830168014eef0f8211dccf6e442f3388889c9a3ea3ce0236c300c0603551d13040530030101ff300d06092a864886f70d01010505000382010100395c7e7900c471e03fa9850905c6ab1edc5a8b7d43a16689d9bb1ec1a06513c4ea8f7471c6e474244174261cc151ae8d1a61019e0ed81fffee8afa1d01d85a32de796f4b46d0d5ddfcca7d1f90d523b54751f505a4e3b059569f24ba2564d72fbc4081533840f618c2993d935134d3c987605e032f6a12889af3190af1714a90f2a3476b8e0016ab45564bf10e611899babd86af33149ca6838b0a885c752ffe879f37997f262e819c62cf59caa794cfaaf8e3c462f5092a34264f0634316b13a67a644e104dc4070e8b6628a46f41da7e3c741f6edc21152f9f947dde6fe14b58f34e4d9e7abd103cb1ca9e09eb4fa5b553baa413329bd3919caca2d52e6d4b"

    .line 3542
    aput-object v6, v3, v4

    const/4 v4, 0x5

    const-string v6, "308204d4308203bca003020102020900b161f3869153be27300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3131303632323132323531325a170d3338313130373132323531325a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100e93d8694c493d50a6224a473d70ddcecd84a2f40ac48bb8206c83a09a94f2db98aaa34f9fcc343b91a87c61254c3a43b0caed03cd839a63037253ea77d949a284dd0b44ebfbabbc2cea838213609d9a5813e88863210ee62c0c0e415611aa7f938ad2bc627c147ac6cf558002028d2e38b1d31aba794867717ddcfcadbeeac6bd345a7bf6433e52cfc93a2157cb048298bd33bf30c143b777e3f074897bcf3b5b181316b678256fd3accf64e88160b0781efd90711ef4acae86848d87e1c10a1747e780c48bcb378a7b437e0405ec54ed7e22c4dbc39f8b03ab1d5eeb7cf4804455fbcab35afb775d79e8f4c4fa4da00b2ce48c991fd94020f7ad089fba13003020103a382010b30820107301d0603551d0e04160414b58d96dcf0127466098625e3ffb03a4f8d0654743081d70603551d230481cf3081cc8014b58d96dcf0127466098625e3ffb03a4f8d065474a181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900b161f3869153be27300c0603551d13040530030101ff300d06092a864886f70d0101050500038201010091327721aa614451a785e200349ce2f402049371943001266827c29abdf975dc7b3e6eaa02c41a07b445bb9de0bc43ce25c3c98928a94ff67ad81eec822cbd083ae686cd7126860655adb8d6a6228cf1f7a4a196699669c05b506efa1fca2cad1a150cabd01380e56bb1842651b4ff33bcb619b3c6e65a10cfd99350ea777c3866135523c1bece17f59fba76a2eb429453f7a2a9e6a6cc9e62e5f4b56706ba4c74cb86975aa865bead2209787b33261b9fa222a7117b1724ea3217ad680fd0408c5634278fbdfca0e32b16dc1a6cc245e931cbe84fc7cccdaa7778459e3003a082662ac6d84d485dd368e0eb4c2c9019420c82d1cd0fbd6fcc097353b059baea"

    .line 3543
    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string v6, "308204d4308203bca003020102020900e49d6da353f759af300d06092a864886f70d01010505003081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d301e170d3039303630393135353934365a170d3336313032353135353934365a3081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009ba004179d8018ab0fa3ab3c804899c2ecb6d66784225ae99936b71fd7f059969bb2076b8f2b9d7a5c20d0622e0a766de9602e3e8d60d9d335bdeab78100188f734b4678c7369c2e764913c8f43eede582827b8d1dc679c8fd0f0d0605fc6b87d331e2544bf11790b2a55c3a13463ec4cd35a931ad40dc687f116f1d6ba79eb63a01f96d107b1b166ddacb6d2fe8ac618217dabe6b69d4d9e692ab1970bb4346fd4860586e8387ef7682b07a428bc8036db143079bc37c8830e5a8c3d690f6b0cef5596ed80a9830f2e61c055894be1c2a7b3048602ef6df0e51073e06f0d55177f6aeb96b91b3b4c66b8b6e5b32bbe2afe46f45b0f48300a6ac9f9de1c500b7020103a382010b30820107301d0603551d0e041604149b6890fb4274c2e32d6c5daea2fac4dd0756529a3081d70603551d230481cf3081cc80149b6890fb4274c2e32d6c5daea2fac4dd0756529aa181a8a481a53081a2310b3009060355040613024b52311430120603550408130b536f757468204b6f726561311330110603550407130a5375776f6e2043697479311c301a060355040a131353616d73756e6720436f72706f726174696f6e310c300a060355040b1303444d43311530130603550403130c53616d73756e6720436572743125302306092a864886f70d0109011616616e64726f69642e6f734073616d73756e672e636f6d820900e49d6da353f759af300c0603551d13040530030101ff300d06092a864886f70d010105050003820101001a76d67e729785f9f22015d9eb9d1998f2d8ce5bc147f65060d58f2f29004a592dd065b651e8d746cf050f3389b1632970d1334e9bce20b43a77a18b6226be0da0a4ab4420dd734dcdd0e049c4f07cf45f3faee8ac90332c14b1f7c4e4f55866a8e3aa71ad1814b5c591e07085dadbe15544ef9bc9591b2c75b373ca9214f8a49acd18ccf061b484c3cd1448bb2af149694d58a53d4c6878b8e06c12e214e2847117ef95348eca3acaa3fffecd7924cb1dd67251eaee14b01870cae92a4238cecac4cda5ba2a2640055303e98e62121a9e49ac0dfcde32b28606f3fc613709fe5ab8aefea4ed53a310c4c9dac7f90242d55697b5690ade195f5253da947f2eaa"

    .line 3544
    aput-object v6, v3, v4

    const/4 v4, 0x7

    const-string v6, "3082041e30820306a003020102020601670c2687f3300d06092a864886f70d01010505003081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313833315a180f32313138313131323135303030305a3081c4310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313430320603550403132b53616d73756e6720506c6174666f726d204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100f7049ae9aa6c64c27ebcf799f32bd9118c2870a54b4c9cd200aa33d2f332903b2a6430c608aac3038b65f644d7a82127ec187099beb680c71d3593d2522f94c894c018fb8fb08d3282bea8feafe902ce1a11da806d63366f514b97c6e286221537f758ece2bcb0b2278c4ae9217ff1c078ddb9401ce490f07557b50f6ddbbe43aacae52849a5e465010af4bdf13eae532771f6c8dc370fe715988d615e67dff7870bd4393490d17ab71584dbe7eb549df5b402fb7f0b4db5cc86e4a818601a183fe94a4a2bafd29367507f131490ac3e4e38c61f9f86c82cf2b583656b95139ce4e46c3ce04d9a9587316a47062ced72e186d546bcc39896491ad3242bb658b70203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101003347014ea4d8c43a387b28331fd3ba02a4aee7b9ecd340bce8e517c21ee6cc0e295d999ac5e68352ca59f30b82aa2c0736715cc20710338c34beacec99ba7a153cead3ec03640f6b764dcfa0fabfa4df5972b7abbecf532238ae1a1e2b404379f065c4ea8d148f60eb6f51c783b82b28bc97cc4486bfb08f9bba956323044b67d4fefb560c44fa18aeb397c0d87841295de021be9599396a0e734d2ec69dde9b70545db7aa106901437f07dc6d26f99d97b83380bad7b42536a47742935fe143684d8f31f07df44a7c274eaa33ba51863dbe57a1bc66cb988a97ed17f0f86e596c03a511391ec72dc4c79c039657d8b4b4ddd8a2910fa4872a3935d93a6947ad"

    .line 3545
    aput-object v6, v3, v4

    const/16 v4, 0x8

    const-string v6, "3082041830820300a003020102020601670c27ef2d300d06092a864886f70d01010505003081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038323030325a180f32313138313131323135303030305a3081c1310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e6573733131302f0603550403132853616d73756e67204d65646961204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a0282010100bb60b4487c7c006073d54adf1e85ee3352f323e7ed751880b7ff99313fa6e4d94236cbc474aad528bfdc5a1a2ba33bdbd17996439ab3746b8bfd243852429c2c036a0d634e2ee2774ae92dede65430698e77368be3fbe640d842a445fe57118111e479ed018142157095b17dd146e689e049e5182931347113c38391c3cec258ca6b675f5bdb4158de58a64c0f37fb86e0f4517d879eb265fc44ee33aca2f1185b74f23e4a48c8a7eb8941055d374c485ca0ae5adb04607e9aedf43d3ae7e15f3e0ef6f05a922c3925fa11488371f94a3847f7cefbbf5fbcf18416f21171b946c6be5acbbe9e55bf610fa333b4d1e6d0c0278bba1817cd70aa1beefb73756fb90203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d0101050500038201010057f1b2b239f9551f4de9fb5afd88b0b7bc67d37bf9bfe8748583d35d14c9291355322e896bbb66d0d56c9708215fad9c40e9398620ea3b1e4641a5883a88472f852cc36afa88b695d5a7af408d5eb583bd4cec9452d0f901b6c38e1f97b55325b596e742fade940391b44d8f19352e8a543fe1c89ad600a8ba32373b1d84fb1b8d34e7541337254fdc9716b2adcfed7105f713ec4fc98c4eee56f7ffa2d2355e16161e2f276a075eda15cc2cdba93c6a49907ad01463cc752708051b8d87001028a6869187589425d3a8992cb9044a7c4d5e3e74a270f6bd1ebf57fd3afb82ab74399a40db820103ea361f7e87b172302ce14b29527bde67c01f4b71832c8665"

    .line 3546
    aput-object v6, v3, v4

    const/16 v4, 0x9

    const-string v6, "3082041a30820302a003020102020601670c278709300d06092a864886f70d01010505003081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c61787920646576696365733020170d3138313131333038313933365a180f32313138313131323135303030305a3081c2310b3009060355040613024b52311a30180603550408131152657075626c6963206f66204b6f726561311330110603550407130a5375776f6e204369747931253023060355040a131c53616d73756e6720456c656374726f6e69637320436f2e204c74642e31273025060355040b131e4d6f62696c6520436f6d6d756e69636174696f6e7320427573696e657373313230300603550403132953616d73756e6720536861726564204b657920666f72206e6f6e2d47616c617879206465766963657330820122300d06092a864886f70d01010105000382010f003082010a02820101009fce256105db13cb1ec14f133d799cf889bf7c29cb8a1a8e8ba1d618a03e01b6705901e7fe2d012b3ad2cfdcad80a2718b4fb09f2d0ef0142cea5fd17afbddb4a1e7d2c99f2a1650ca17faedae9cbc5c13561e723b9ae120f55109aa992d57d2ba7e3c495620e5957c7c75c2ade6d03c5b204ceb460754ccdcd5791267f46283f37923ce3d828ee78a8702770a6356824086c956e403048059d8d07797b1b3d2671f8134b97bcdc009ce0fde7f9fda53d9175440309920838bb7dd129189322cd47851f2be587d288a38af2c32bf1024d9b7e265009db694d6d24d40576eb777b0b3713ac24cbbf1cf0534e565ce5030503c842e43438ca27557b209f475337d0203010001a3123010300e0603551d0f0101ff0404030205a0300d06092a864886f70d010105050003820101009bddfa8de87f1d9e7467e0251ca54441f6a68f4f3fc84b0fe273ffd7f01598df91b61b5bd61b14d1ecaa633d20c96b950797432e85f144d2cc04b59770e7ec912ffd59573dcc79d438ef04ed81ea98f09c8b4a2f1e7701dcac789ab33c2a2b39d026b72f3bcff9c29bdfbe34edd6be30ac6b050c10e259d4ed99b6efb4c9d0c32020f842e74984fd00bc59bb32e28ca5f32e052e19fa30859da473a402539bf58d87140edc935792f5e2da4a017e71304fbc3a20f25129a19f7f3ff3e6e1c75a6c1cf489d13e80d8a86fc8b6dd879088c4272d4bbd069b4a43bb61210b066c5280293aa580751337b24fda13553d7294b5916433e730a021520330236639e89c"

    .line 3547
    aput-object v6, v3, v4

    if-eqz v0, :cond_46

    const-string v0, "308204a830820390a003020102020900b3998086d056cffa300d06092a864886f70d0101040500308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d301e170d3038303431353232343035305a170d3335303930313232343035305a308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d30820120300d06092a864886f70d01010105000382010d003082010802820101009c780592ac0d5d381cdeaa65ecc8a6006e36480c6d7207b12011be50863aabe2b55d009adf7146d6f2202280c7cd4d7bdb26243b8a806c26b34b137523a49268224904dc01493e7c0acf1a05c874f69b037b60309d9074d24280e16bad2a8734361951eaf72a482d09b204b1875e12ac98c1aa773d6800b9eafde56d58bed8e8da16f9a360099c37a834a6dfedb7b6b44a049e07a269fccf2c5496f2cf36d64df90a3b8d8f34a3baab4cf53371ab27719b3ba58754ad0c53fc14e1db45d51e234fbbe93c9ba4edf9ce54261350ec535607bf69a2ff4aa07db5f7ea200d09a6c1b49e21402f89ed1190893aab5a9180f152e82f85a45753cf5fc19071c5eec827020103a381fc3081f9301d0603551d0e041604144fe4a0b3dd9cba29f71d7287c4e7c38f2086c2993081c90603551d230481c13081be80144fe4a0b3dd9cba29f71d7287c4e7c38f2086c299a1819aa48197308194310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e20566965773110300e060355040a1307416e64726f69643110300e060355040b1307416e64726f69643110300e06035504031307416e64726f69643122302006092a864886f70d0109011613616e64726f696440616e64726f69642e636f6d820900b3998086d056cffa300c0603551d13040530030101ff300d06092a864886f70d01010405000382010100572551b8d93a1f73de0f6d469f86dad6701400293c88a0cd7cd778b73dafcc197fab76e6212e56c1c761cfc42fd733de52c50ae08814cefc0a3b5a1a4346054d829f1d82b42b2048bf88b5d14929ef85f60edd12d72d55657e22e3e85d04c831d613d19938bb8982247fa321256ba12d1d6a8f92ea1db1c373317ba0c037f0d1aff645aef224979fba6e7a14bc025c71b98138cef3ddfc059617cf24845cf7b40d6382f7275ed738495ab6e5931b9421765c491b72fb68e080dbdb58c2029d347c8b328ce43ef6a8b15533edfbe989bd6a48dd4b202eda94c6ab8dd5b8399203daae2ed446232e4fe9bd961394c6300e5138e3cfd285e6e4e483538cb8b1b357"

    .line 3551
    aput-object v0, v3, v1

    :cond_46
    const/4 v0, -0x1

    move v6, v0

    if-eqz p2, :cond_6f

    move v4, v5

    .line 3556
    :goto_4b
    array-length v7, p2

    if-ge v4, v7, :cond_6f

    .line 3558
    aget-object v7, p2, v4

    if-eqz v7, :cond_6c

    move v7, v5

    :goto_53
    if-ge v7, v2, :cond_6c

    .line 3562
    aget-object v8, v3, v7

    aget-object v9, p2, v4

    invoke-virtual {v9}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_69

    move v6, v7

    goto :goto_6c

    :cond_69
    add-int/lit8 v7, v7, 0x1

    goto :goto_53

    :cond_6c
    :goto_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_4b

    :cond_6f
    if-ne v6, v0, :cond_ba

    .line 3573
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/system/.aasa/AASApolicy/ASKSK.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3574
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_ba

    if-eqz p2, :cond_ba

    .line 3576
    :goto_80
    array-length v2, p2

    if-ge v5, v2, :cond_ba

    .line 3578
    aget-object v2, p2, v5

    if-eqz v2, :cond_b7

    .line 3579
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf

    const/4 v4, 0x0

    .line 3580
    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eq v3, v0, :cond_b7

    .line 3581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " pkg:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signValue is same with "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AASA_ASKSManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_b7
    add-int/lit8 v5, v5, 0x1

    goto :goto_80

    :cond_ba
    move v1, v6

    :goto_bb
    return v1
.end method

.method public final isTargetCert(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "isTargetCert:"

    const-string v1, "PackageInformation"

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_57

    .line 1112
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v2

    move v4, v3

    .line 1113
    :goto_19
    array-length v5, v2

    if-ge v4, v5, :cond_57

    .line 1116
    :try_start_1c
    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object v5

    .line 1117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_54

    .line 1121
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_4c} :catch_50

    if-eqz v5, :cond_54

    const/4 p0, 0x1

    return p0

    :catch_50
    move-exception v5

    .line 1126
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_57
    return v3
.end method

.method public final isTargetPackage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/asks/ASKSManagerService$ASKSSession;",
            ")Z"
        }
    .end annotation

    .line 3490
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_3b

    if-eqz p3, :cond_3a

    if-eqz p1, :cond_3a

    .line 3494
    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3a

    .line 3495
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isTargetPackage() : There is no information of "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", check current session."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AASA_ASKSManager_RESTRICTED"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getSignature()[Landroid/content/pm/Signature;

    move-result-object p0

    goto :goto_43

    :cond_3a
    return v0

    .line 3503
    :cond_3b
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object p0

    :goto_43
    if-eqz p0, :cond_6d

    .line 3506
    array-length p1, p0

    if-lez p1, :cond_6d

    move p1, v0

    .line 3510
    :goto_49
    array-length p3, p0

    if-ge p1, p3, :cond_6d

    .line 3511
    aget-object p3, p0, p1

    invoke-virtual {p3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p3

    move v1, v0

    .line 3512
    :goto_53
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 3513
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_67

    const/4 p0, 0x1

    return p0

    :cond_67
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    :cond_6a
    add-int/lit8 p1, p1, 0x1

    goto :goto_49

    :cond_6d
    return v0
.end method

.method public isTrustedStore(Ljava/lang/String;)Z
    .registers 11

    const-string/jumbo v0, "ro.product.model"

    const-string v1, "Unknown"

    .line 2275
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2276
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "PackageInformation"

    if-eqz v0, :cond_1e7

    const-string v3, "TRUSTEDSTORE"

    .line 2278
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e7

    .line 2279
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x23

    .line 2280
    invoke-virtual {p0, v3, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 2281
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    if-ge v3, v1, :cond_31

    const-string/jumbo p0, "skip unknown"

    .line 2282
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2285
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " source:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, ":"

    const/4 v5, 0x0

    const-string v6, "ALL"

    if-eqz v3, :cond_c0

    .line 2290
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1d2

    .line 2292
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 2293
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TS Hit"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2296
    :cond_73
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "null"

    .line 2298
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_82

    if-eqz p0, :cond_8a

    :cond_82
    if-eqz p0, :cond_a5

    .line 2299
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    .line 2301
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TS: Hit"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2304
    :cond_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TS: Hit not sig "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 2310
    :cond_c0
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d2

    .line 2311
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_1d2

    .line 2313
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    return v1

    .line 2316
    :cond_d5
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getSigByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_f0

    .line 2318
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TS: ALL Unknown:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2320
    :cond_f0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_111

    .line 2321
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TS: ALL "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_111
    const-string v3, "PERMISSION"

    .line 2324
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b2

    .line 2325
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_1b7

    .line 2328
    :try_start_121
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_1b7

    .line 2329
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v3, 0x1000

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_18e

    .line 2331
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v3, :cond_187

    move v3, v5

    .line 2332
    :goto_13c
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_1b7

    .line 2333
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v7, v7, v3

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_184

    .line 2334
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TS ALL Permission:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    iget-object v7, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_184

    .line 2336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TS ALL Hit Permission:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_184
    add-int/lit8 v3, v3, 0x1

    goto :goto_13c

    :cond_187
    const-string/jumbo p0, "requestedPermissions is null"

    .line 2343
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b7

    :cond_18e
    const-string p0, "PackageInfo is null"

    .line 2346
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_193
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_121 .. :try_end_193} :catch_194

    goto :goto_1b7

    :catch_194
    move-exception p0

    .line 2350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":::::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b7

    :cond_1b2
    const-string p0, "PERMISSION is not exist in TS"

    .line 2354
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_1b7
    :goto_1b7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TS: ALL not sig "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    .line 2364
    :cond_1d2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Check ALL case :"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1e7
    const-string/jumbo p0, "skip TS.."

    .line 2368
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isUnknownApps(Ljava/lang/String;[Landroid/content/pm/Signature;)Z
    .registers 8

    const-string v0, "Only the system can claim isUnknownApps"

    .line 2743
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 2745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isUnknownApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInformation"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_96

    .line 2746
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_96

    if-nez p2, :cond_28

    goto :goto_96

    .line 2751
    :cond_28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    .line 2752
    invoke-virtual {p0, v3, v2}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 2754
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string/jumbo p0, "installedList is null"

    .line 2755
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3e
    const-string/jumbo v4, "overlay"

    .line 2759
    invoke-virtual {p0, v4, v3}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 2761
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4e

    goto :goto_8f

    .line 2766
    :cond_4e
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 2767
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    .line 2770
    :try_start_5a
    aget-object p2, p2, v0

    invoke-virtual {p0, p2}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0

    .line 2771
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_8e

    .line 2772
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/asks/InstalledAppInfo;

    iget-object p1, p1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8e

    const-string/jumbo p0, "isUnknownApp is true"

    .line 2773
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5a .. :try_end_7a} :catch_7c

    const/4 p0, 0x1

    return p0

    :catch_7c
    move-exception p0

    .line 2779
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_8e

    :cond_81
    const-string/jumbo p0, "packageName is not exist in installedUnknownList"

    .line 2782
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    :cond_88
    const-string/jumbo p0, "packageName is not exist in overlayList"

    .line 2785
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8e
    :goto_8e
    return v0

    :cond_8f
    :goto_8f
    const-string/jumbo p0, "overlayList is null"

    .line 2762
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_96
    :goto_96
    const-string/jumbo p0, "packageName or hashedSignature is null!!"

    .line 2747
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isValidZipFormat(Ljava/lang/String;)Z
    .registers 8

    const-string p0, "AASA_ASKSManager"

    const/4 v0, 0x1

    if-eqz p1, :cond_9e

    const-string v1, "PackageInformation"

    .line 2186
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2188
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apk"

    .line 2189
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v0

    :cond_21
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2201
    :try_start_23
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/util/zip/ZipException; {:try_start_23 .. :try_end_28} :catch_7e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_6e
    .catchall {:try_start_23 .. :try_end_28} :catchall_6b

    .line 2202
    :try_start_28
    new-instance v4, Ljava/util/zip/ZipInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_32
    .catch Ljava/util/zip/ZipException; {:try_start_28 .. :try_end_32} :catch_68
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_32} :catch_65
    .catchall {:try_start_28 .. :try_end_32} :catchall_61

    .line 2203
    :try_start_32
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-nez p1, :cond_3a

    move v1, v2

    goto :goto_3b

    :cond_3a
    move v1, v0

    :goto_3b
    const/4 v5, 0x5

    :goto_3c
    if-eqz v1, :cond_55

    if-eqz p1, :cond_55

    if-eqz v5, :cond_55

    .line 2209
    invoke-virtual {v3, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 2210
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 2211
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCompressedSize()J

    .line 2212
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 2213
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_52
    .catch Ljava/util/zip/ZipException; {:try_start_32 .. :try_end_52} :catch_69
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_52} :catch_66
    .catchall {:try_start_32 .. :try_end_52} :catchall_5f

    add-int/lit8 v5, v5, -0x1

    goto :goto_3c

    .line 2227
    :cond_55
    :try_start_55
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5a

    :catch_59
    move v1, v0

    .line 2235
    :goto_5a
    :try_start_5a
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_91

    move v0, v1

    goto :goto_91

    :catchall_5f
    move-exception p0

    goto :goto_63

    :catchall_61
    move-exception p0

    move-object v4, v1

    :goto_63
    move-object v1, v3

    goto :goto_93

    :catch_65
    move-object v4, v1

    :catch_66
    move-object v1, v3

    goto :goto_6f

    :catch_68
    move-object v4, v1

    :catch_69
    move-object v1, v3

    goto :goto_7f

    :catchall_6b
    move-exception p0

    move-object v4, v1

    goto :goto_93

    :catch_6e
    move-object v4, v1

    :goto_6f
    :try_start_6f
    const-string p1, "Non-Valid Format[2]"

    .line 2222
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catchall {:try_start_6f .. :try_end_74} :catchall_92

    if-eqz v1, :cond_7b

    .line 2227
    :try_start_76
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_7b

    :catch_7a
    move v2, v0

    :cond_7b
    :goto_7b
    if-eqz v4, :cond_90

    goto :goto_8d

    :catch_7e
    move-object v4, v1

    :goto_7f
    :try_start_7f
    const-string p1, "Non-Valid Format[1]"

    .line 2219
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_92

    if-eqz v1, :cond_8b

    .line 2227
    :try_start_86
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8b

    :catch_8a
    move v2, v0

    :cond_8b
    :goto_8b
    if-eqz v4, :cond_90

    .line 2235
    :goto_8d
    :try_start_8d
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    :cond_90
    move v0, v2

    :catch_91
    :goto_91
    return v0

    :catchall_92
    move-exception p0

    :goto_93
    if-eqz v1, :cond_98

    .line 2227
    :try_start_95
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_98

    :catch_98
    :cond_98
    if-eqz v4, :cond_9d

    .line 2235
    :try_start_9a
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9d

    .line 2241
    :catch_9d
    :cond_9d
    throw p0

    :cond_9e
    return v0
.end method

.method public final loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;
    .registers 11

    const-string p0, "AASA_ASKSManager"

    const/4 v0, 0x0

    if-nez p2, :cond_6

    return-object v0

    .line 5283
    :cond_6
    :try_start_6
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_a} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_28

    const/16 v2, 0x1000

    :try_start_c
    new-array v3, v2, [B

    if-eqz v1, :cond_1f

    :goto_10
    const/4 v4, 0x0

    .line 5287
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1c

    .line 5288
    invoke-virtual {p3, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_10

    .line 5290
    :cond_1c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 5293
    :cond_1f
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_23} :catch_26
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    move-exception p1

    goto :goto_2a

    :catch_26
    move-exception p1

    goto :goto_4b

    :catch_28
    move-exception p1

    move-object v1, v0

    .line 5305
    :goto_2a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "loadCert(md) : TinyAASA + No RUN "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_69

    .line 5308
    :try_start_45
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_69

    goto :goto_69

    :catch_49
    move-exception p1

    move-object v1, v0

    .line 5296
    :goto_4b
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "loadCert(md) : TinyAASA + No IO "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_69

    .line 5299
    :try_start_66
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69

    :catch_69
    :cond_69
    :goto_69
    return-object v0
.end method

.method public final loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)[Ljava/security/cert/Certificate;
    .registers 8

    const-string p0, "AASA_ASKSManager"

    const/4 v0, 0x0

    if-eqz p2, :cond_63

    .line 5320
    :try_start_5
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_43
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_9} :catch_22

    if-eqz v1, :cond_1d

    :goto_b
    const/4 v2, 0x0

    .line 5322
    :try_start_c
    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    goto :goto_b

    .line 5324
    :cond_15
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_1d

    :catch_19
    move-exception p1

    goto :goto_24

    :catch_1b
    move-exception p1

    goto :goto_45

    .line 5326
    :cond_1d
    :goto_1d
    invoke-virtual {p1, p2}, Landroid/util/jar/StrictJarFile;->getCertificates(Ljava/util/zip/ZipEntry;)[Ljava/security/cert/Certificate;

    move-result-object p0
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_21} :catch_19

    return-object p0

    :catch_22
    move-exception p1

    move-object v1, v0

    .line 5339
    :goto_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "loadCert(B) : No RUN "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_63

    .line 5342
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_63

    goto :goto_63

    :catch_43
    move-exception p1

    move-object v1, v0

    .line 5330
    :goto_45
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "loadCert(B) : No IO "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_63

    .line 5333
    :try_start_60
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_63

    :catch_63
    :cond_63
    :goto_63
    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/pm/IASKSManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    .line 374
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_15

    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_15

    const-string p1, "ASKSManager"

    const-string p2, "ASKS Manager Crash"

    .line 375
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    :cond_15
    throw p0
.end method

.method public final openSession(Ljava/lang/String;)Lcom/android/server/asks/ASKSManagerService$ASKSSession;
    .registers 3

    .line 6360
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6361
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 6362
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->clear()V

    .line 6363
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPackageName(Ljava/lang/String;)V

    return-object p0

    .line 6367
    :cond_17
    new-instance v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    invoke-direct {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;-><init>()V

    .line 6368
    invoke-virtual {v0, p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPackageName(Ljava/lang/String;)V

    .line 6369
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final parsePackageForASKS(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)I
    .registers 29

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    move-object/from16 v4, p6

    move-object/from16 v1, p7

    const-string v11, " "

    const-string v12, "AASA_ASKSManager"

    const-string/jumbo v2, "ro.boot.em.status"

    .line 3600
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    const-string/jumbo v2, "ro.build.official.release"

    .line 3601
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3603
    iget-boolean v3, v8, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    const/4 v13, 0x1

    if-eqz v3, :cond_31

    move v14, v13

    goto :goto_32

    :cond_31
    move v14, v2

    .line 3612
    :goto_32
    :try_start_32
    invoke-virtual {v8, v10}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3613
    invoke-virtual {v9, v2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgNameHash(Ljava/lang/String;)V

    const-string v2, ""

    .line 3615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 3617
    invoke-virtual {v8, v0}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3618
    invoke-virtual {v9, v2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgDigest(Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_4c} :catch_4c

    :catch_4c
    :cond_4c
    const/16 v2, 0x9

    const/4 v15, 0x0

    const/4 v7, -0x1

    .line 3626
    :try_start_50
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v2, v3, v5}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_5c} :catch_191

    const-string v6, "anyway continue to install since this binary is not official"

    const/16 v16, -0x7

    if-eq v2, v7, :cond_80

    if-eqz v14, :cond_65

    return v16

    .line 3633
    :cond_65
    :try_start_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is in BlackList, so fail to install"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3634
    invoke-static {v12, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_7c} :catch_7d

    goto :goto_80

    :catch_7d
    move-exception v0

    goto/16 :goto_194

    .line 3639
    :cond_80
    :goto_80
    :try_start_80
    invoke-virtual {v8, v9, v0}, Lcom/android/server/asks/ASKSManagerService;->isASKSToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_187

    .line 3643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initiating = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", installer = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    const/4 v2, 0x0

    .line 3645
    invoke-virtual {v8, v0, v4, v2}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_aa} :catch_191

    const/16 v5, 0xa

    if-eq v0, v7, :cond_fd

    .line 3647
    :try_start_ae
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 3650
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/server/asks/ASKSManagerService;->isPlatformSigned([Landroid/content/pm/Signature;)Z

    move-result v0

    if-eqz v0, :cond_c7

    goto :goto_103

    .line 3655
    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wrong installer - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_105

    :cond_dd
    if-eqz v1, :cond_e8

    const-string v0, "PrePackageInstaller"

    .line 3658
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    goto :goto_103

    .line 3663
    :cond_e8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot found package information - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_fc} :catch_7d

    goto :goto_105

    .line 3666
    :cond_fd
    :try_start_fd
    invoke-virtual {v8, v5, v10, v2}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_101} :catch_191

    if-eq v0, v7, :cond_105

    :goto_103
    move v0, v13

    goto :goto_106

    :cond_105
    :goto_105
    move v0, v15

    :goto_106
    const/16 v17, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move/from16 v18, v5

    move v5, v0

    move-object v0, v6

    move/from16 v6, v17

    move/from16 v17, v7

    move/from16 v7, p8

    .line 3679
    :try_start_11a
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/asks/ASKSManagerService;->verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZII)I

    move-result v1

    if-nez v1, :cond_127

    const-string v0, "AASA OK"

    .line 3680
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18e

    :cond_127
    if-eqz v14, :cond_168

    .line 3691
    rem-int/lit8 v1, v1, 0xa
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_11a .. :try_end_12b} :catch_183

    if-eq v1, v13, :cond_146

    const/4 v0, 0x2

    if-eq v1, v0, :cond_143

    const/4 v0, 0x4

    if-eq v1, v0, :cond_140

    const/4 v0, 0x5

    if-eq v1, v0, :cond_13d

    const/4 v0, 0x6

    if-eq v1, v0, :cond_13a

    goto :goto_148

    :cond_13a
    const/16 v16, -0xbbe

    goto :goto_148

    :cond_13d
    const/16 v16, -0xbb9

    goto :goto_148

    :cond_140
    const/16 v16, -0xbb8

    goto :goto_148

    :cond_143
    const/16 v16, -0xbba

    goto :goto_148

    :cond_146
    const/16 v16, -0xbbc

    :goto_148
    move/from16 v1, v16

    .line 3712
    :try_start_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", returnValue : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_14a .. :try_end_164} :catch_165

    return v1

    :catch_165
    move-exception v0

    move v7, v1

    goto :goto_194

    .line 3717
    :cond_168
    :try_start_168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fail to install"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    invoke-static {v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_182} :catch_183

    goto :goto_18e

    :catch_183
    move-exception v0

    move/from16 v7, v17

    goto :goto_194

    :cond_187
    move/from16 v17, v7

    if-eqz v14, :cond_18e

    const/16 v0, -0xbbb

    return v0

    :cond_18e
    :goto_18e
    move/from16 v7, v17

    goto :goto_1ac

    :catch_191
    move-exception v0

    move/from16 v17, v7

    .line 3733
    :goto_194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3737
    :goto_1ac
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3738
    invoke-virtual {v8, v0}, Lcom/android/server/asks/ASKSManagerService;->getADPDataFromXML(Ljava/util/HashMap;)V

    .line 3740
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_248

    .line 3742
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3743
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "target ADP - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AASA_ASKSManager_ADP"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgNameHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ADPContainer;

    .line 3748
    invoke-virtual {v0}, Lcom/android/server/asks/ADPContainer;->getADPPolicy()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v1}, Lcom/android/server/asks/ADPOperation;->isSameCategoryByHashCode(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/asks/ADPOperation;->filterADPPolicy(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3755
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_242

    .line 3757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "target list has size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3761
    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ADPContainer$ADPPolicy;

    const/16 v1, -0xbbd

    if-eqz v0, :cond_23c

    const-string/jumbo v2, "picked one adp policy"

    .line 3764
    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    invoke-static/range {p4 .. p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/asks/ADPOperation;->isGreaterOrEqual(Ljava/lang/String;Lcom/android/server/asks/ADPContainer$ADPPolicy;)Z

    move-result v0

    if-nez v0, :cond_242

    const-string/jumbo v0, "install fail, cannot back to the previous version"

    .line 3769
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23c
    const-string v0, "cannot get target policy"

    .line 3775
    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_242
    const-string/jumbo v0, "successs"

    .line 3780
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    :cond_248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is installing.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public final parsePackages(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 3309
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    .line 3310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3313
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_43

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_43

    :cond_19
    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-eq v1, v2, :cond_9

    .line 3315
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    .line 3316
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const-string/jumbo v2, "name"

    .line 3317
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3318
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 3319
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_43
    return-object v0
.end method

.method public final parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4880
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "NONE"

    .line 4881
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4883
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    .line 4885
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 4875
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 4890
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    :goto_4
    const/4 v0, 0x1

    if-eq p0, v0, :cond_50

    const/4 v1, 0x2

    if-eq p0, v1, :cond_b

    goto :goto_4b

    .line 4895
    :cond_b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4b

    .line 4898
    invoke-virtual {p2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AASA_ASKSManager"

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    .line 4899
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-eq v1, v0, :cond_26

    const-string/jumbo v0, "this is an exceptional case"

    .line 4900
    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4902
    :cond_26
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4b

    :cond_2e
    if-eqz p3, :cond_4b

    const-string v1, "PERMISSION"

    .line 4903
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 4904
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p0

    if-eq p0, v0, :cond_44

    const-string/jumbo p0, "this is an exceptional case for permission"

    .line 4905
    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4907
    :cond_44
    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4925
    :cond_4b
    :goto_4b
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_4

    :cond_50
    return-void
.end method

.method public postASKSsetup(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14

    const-string v0, "Only the system can claim postASKSsetup"

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v0, :cond_13

    move p3, v2

    goto :goto_14

    :cond_13
    move p3, v1

    .line 448
    :goto_14
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1fb

    .line 450
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSessions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    .line 452
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRufsContainer()Lcom/android/server/asks/RUFSContainer;

    move-result-object v4

    if-eqz v4, :cond_fd

    .line 454
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRufsContainer()Lcom/android/server/asks/RUFSContainer;

    move-result-object v4

    .line 455
    invoke-virtual {v4}, Lcom/android/server/asks/RUFSContainer;->getHasRUFSToken()Z

    move-result v5

    if-eqz v5, :cond_fd

    .line 456
    new-instance v5, Lcom/android/server/asks/RuleUpdateForSecurity;

    invoke-direct {v5, v4}, Lcom/android/server/asks/RuleUpdateForSecurity;-><init>(Lcom/android/server/asks/RUFSContainer;)V

    .line 459
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CountryISO :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string v8, "CountryISO"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageInformation"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "KR"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_71

    const-string v6, "RUFS Force Enable"

    .line 462
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    goto :goto_78

    :cond_71
    const-string/jumbo v6, "security.ASKS.rufs_enable"

    .line 465
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    :goto_78
    const-string v7, "AASA_ASKSManager_RUFS"

    if-eqz v6, :cond_f8

    const-string v6, "TRY........."

    .line 469
    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "security.ASKS.policy_version"

    .line 470
    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/asks/RuleUpdateForSecurity;->isUpdatePolicy(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_fd

    .line 471
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "!!path:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/asks/RUFSContainer;->getPolicyPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {v5, p2, v2}, Lcom/android/server/asks/RuleUpdateForSecurity;->updatePolicy(Ljava/lang/String;Z)Z

    move-result p2

    if-ne p2, v2, :cond_fd

    .line 474
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy update from "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {v4}, Lcom/android/server/asks/RUFSContainer;->getPolicyVersion()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    .line 477
    invoke-static {v6, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->refreshInstalledUnknownList_NEW()V

    .line 481
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->applyExecutePolicy()V

    const-string/jumbo p2, "ro.product.model"

    const-string/jumbo v1, "null"

    .line 483
    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 487
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy update to   "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v7, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_fd

    :cond_f8
    const-string p2, "RUFS is disabled"

    .line 492
    invoke-static {v7, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_fd
    :goto_fd
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    move-result p2

    if-eqz p2, :cond_104

    move v1, v2

    .line 502
    :cond_104
    iget-object p2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1df

    if-eqz p3, :cond_1df

    .line 505
    iget-object p2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 508
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object p3

    .line 509
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v4

    const-string v5, "Token"

    const-string v6, "AASA_ASKSManager_RESTRICTED"

    if-eqz p3, :cond_151

    .line 511
    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_151

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "postASKSsetup() : new restricted rule("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is updated from Token."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-virtual {p2, p3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    :goto_14f
    move v1, v2

    goto :goto_184

    :cond_151
    if-nez p3, :cond_184

    if-eqz v4, :cond_184

    .line 518
    invoke-virtual {v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_184

    .line 519
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRestictRule() : There is no restricted rule ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") from Token. remove and check policy."

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p2, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 521
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z

    goto :goto_14f

    .line 525
    :cond_184
    :goto_184
    iget-boolean p3, p0, Lcom/android/server/asks/ASKSManagerService;->DEBUG_MODE_FOR_DEVELOPMENT:Z

    if-eqz p3, :cond_18f

    .line 526
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_18f
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p3

    if-eqz p3, :cond_1c5

    .line 531
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p3

    if-eqz p3, :cond_1bd

    .line 533
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p3

    .line 534
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v3

    .line 537
    :try_start_1a3
    invoke-virtual {p3}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-lt p3, v3, :cond_1cf

    .line 538
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V
    :try_end_1bc
    .catch Ljava/lang/NumberFormatException; {:try_start_1a3 .. :try_end_1bc} :catch_1cf

    goto :goto_1ce

    .line 544
    :cond_1bd
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    goto :goto_1ce

    .line 549
    :cond_1c5
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object p3

    if-eqz p3, :cond_1cf

    .line 551
    invoke-virtual {p2, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    :goto_1ce
    move v1, v2

    .line 557
    :catch_1cf
    :cond_1cf
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getEMMode()I

    move-result p3

    const/4 v3, -0x1

    if-eq p3, v3, :cond_1fa

    .line 558
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getEMMode()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setEMMode(I)V

    move v1, v2

    goto :goto_1fa

    .line 564
    :cond_1df
    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->isASKSTarget()Z

    move-result p2

    if-eqz p2, :cond_1fa

    invoke-virtual {v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->hasValue()Z

    move-result p2

    if-eqz p2, :cond_1fa

    if-eqz p3, :cond_1fa

    .line 565
    new-instance p2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {p2, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V

    .line 567
    iget-object p3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v0

    move v1, v2

    goto :goto_1fb

    :cond_1fa
    :goto_1fa
    move-object v3, v0

    .line 573
    :cond_1fb
    :goto_1fb
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppInfoToStore()Lcom/android/server/asks/InstalledAppInfo;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/asks/ASKSManagerService;->ComparisonBeforeSetData(Lcom/android/server/asks/InstalledAppInfo;Ljava/lang/String;)V

    .line 575
    invoke-virtual {p0, v3, p1}, Lcom/android/server/asks/ASKSManagerService;->closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V

    if-eqz v1, :cond_20d

    .line 578
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeState()V

    .line 579
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->updateRestrictedTargetPackages()V

    .line 581
    :cond_20d
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    return-void
.end method

.method public final postUpdatePolicy(Lcom/android/server/asks/RuleUpdateForSecurity;)V
    .registers 12

    .line 1184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1185
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x1f

    .line 1189
    invoke-virtual {p0, v2, v0}, Lcom/android/server/asks/ASKSManagerService;->getASKSDataFromXML(ILjava/util/HashMap;)V

    .line 1190
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "PackageInformation"

    if-nez v2, :cond_9f

    const-string/jumbo v2, "ro.build.version.oneui"

    .line 1191
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1194
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1195
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v7, v4

    .line 1197
    :cond_2d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_79

    .line 1198
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v7, v7, 0x1

    .line 1199
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v7, v9, :cond_49

    const v9, 0xf423f

    goto :goto_53

    :cond_49
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    :goto_53
    if-gt v8, v2, :cond_2d

    if-ge v2, v9, :cond_2d

    .line 1201
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 1202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "oneui version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " applyVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b

    :cond_79
    const-string v6, ""

    .line 1207
    :goto_7b
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 1208
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    move v0, v3

    goto :goto_a6

    .line 1211
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    :cond_9f
    const-string/jumbo v0, "policy list file does not exist"

    .line 1216
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a5
    move v0, v4

    :goto_a6
    if-eqz v0, :cond_bd

    .line 1221
    invoke-virtual {p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->getDevice_policyVersionPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->getDevice_policyUnzipPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/server/asks/RuleUpdateForSecurity;->applyPolicies(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_d2

    const-string/jumbo p1, "policy applied after check policy list"

    .line 1222
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d2

    .line 1225
    :cond_bd
    invoke-virtual {p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->getDevice_policyVersionPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/asks/RuleUpdateForSecurity;->getDevice_policyUnzipPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/android/server/asks/RuleUpdateForSecurity;->applyPolicies(Ljava/lang/String;Ljava/lang/String;ZLjava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_d2

    const-string/jumbo p1, "policy applied but does not exist policy list or oneUI version"

    .line 1226
    invoke-static {v5, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    :goto_d2
    const-string p1, "/data/system/.aasa/ASKS.zip"

    .line 1231
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->deleteFile(Ljava/lang/String;)V

    return-void
.end method

.method public final putInstalledList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 3126
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_12

    .line 3127
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    .line 3128
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 3130
    :cond_12
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 3131
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3133
    :goto_1a
    invoke-virtual {p3, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readASKSFiles(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "Only the system can claim readASKSFiles"

    .line 1278
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 1280
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 1283
    :try_start_10
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_15} :catch_48

    .line 1284
    :try_start_15
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_3e

    .line 1285
    :try_start_1a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    :goto_1e
    const/4 v0, -0x1

    if-eq p2, v0, :cond_29

    .line 1287
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1288
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p2

    goto :goto_1e

    .line 1290
    :cond_29
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_34

    .line 1291
    :try_start_2d
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_3e

    :try_start_30
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_48

    return-object p2

    :catchall_34
    move-exception p2

    .line 1283
    :try_start_35
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception p0

    :try_start_3a
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3d
    throw p2
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception p0

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
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception p0

    .line 1292
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const-string p0, ""

    return-object p0

    :cond_4f
    const-string p0, "No file exists"

    return-object p0
.end method

.method public final readDeletable(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 5760
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz p0, :cond_26

    const/4 p2, 0x0

    const-string/jumbo v0, "version"

    .line 5763
    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "datelimit"

    .line 5764
    invoke-interface {p1, p2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_26

    if-nez p1, :cond_1d

    goto :goto_26

    .line 5768
    :cond_1d
    new-instance p2, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {p2, v0, p1}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5769
    invoke-virtual {p0, p2}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    nop

    :cond_26
    :goto_26
    return-void
.end method

.method public final readEMMode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 5747
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz p0, :cond_1d

    const/4 p2, 0x0

    const-string/jumbo v0, "value"

    .line 5750
    invoke-interface {p1, p2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5751
    invoke-static {p1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5752
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setEMMode(I)V

    :cond_1d
    return-void
.end method

.method public final readPackage(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "name"

    .line 6055
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6057
    new-instance v1, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    .line 6058
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6060
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 6062
    :cond_16
    :goto_16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_73

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    .line 6063
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_73

    :cond_26
    if-eq v2, v3, :cond_16

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2c

    goto :goto_16

    .line 6068
    :cond_2c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "restrict"

    .line 6069
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 6070
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrict(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_16

    :cond_3d
    const-string v3, "emmode"

    .line 6071
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 6072
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readEMMode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_16

    :cond_49
    const-string v3, "delete"

    .line 6073
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 6074
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readDeletable(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_16

    .line 6077
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <pkg>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ASKSManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6078
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_16

    :cond_73
    return-void
.end method

.method public final readRestrict(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 5547
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz p2, :cond_16

    .line 5549
    new-instance v0, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v0}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    const/4 v1, 0x0

    .line 5550
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/asks/ASKSManagerService;->readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V

    .line 5551
    invoke-virtual {p2, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    :cond_16
    return-void
.end method

.method public final readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 5599
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    .line 5602
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_39

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 5603
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_39

    :cond_14
    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1a

    goto :goto_4

    .line 5608
    :cond_1a
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "permission"

    .line 5609
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const-string/jumbo v1, "value"

    .line 5610
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 5611
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 5615
    :cond_39
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public final readRestrictRule(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/asks/ASKSManagerService$Restrict;Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "type"

    .line 5558
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "datelimit"

    .line 5559
    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p3, :cond_17

    const-string/jumbo p3, "version"

    .line 5564
    invoke-interface {p1, v0, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 5569
    :cond_17
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_24

    const-string v3, "from"

    .line 5570
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    .line 5572
    :cond_24
    invoke-virtual {p2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v3

    :goto_28
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p3, :cond_2e

    move v6, v4

    goto :goto_2f

    :cond_2e
    move v6, v5

    :goto_2f
    if-nez v1, :cond_32

    goto :goto_33

    :cond_32
    move v4, v5

    :goto_33
    or-int/2addr v4, v6

    if-nez v4, :cond_5a

    if-eqz v2, :cond_5a

    if-nez v3, :cond_3b

    goto :goto_5a

    :cond_3b
    const-string v4, "REVOKE"

    .line 5580
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 5581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5582
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 5590
    :cond_4b
    invoke-virtual {p2, p3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    .line 5591
    invoke-virtual {p2, v1}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    .line 5592
    invoke-virtual {p2, v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V

    .line 5593
    invoke-virtual {p2, v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    .line 5594
    invoke-virtual {p2, v0}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V

    :cond_5a
    :goto_5a
    return-void
.end method

.method public final readState()V
    .registers 1

    .line 6175
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->readStateInner()V

    return-void
.end method

.method public final readStateInner()V
    .registers 9

    .line 6180
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    .line 6181
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_178

    .line 6184
    :try_start_4
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_a} :catch_152
    .catchall {:try_start_4 .. :try_end_a} :catchall_150

    .line 6190
    :try_start_a
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_150

    .line 6193
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 6194
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 6196
    :goto_1c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_27

    if-eq v3, v4, :cond_27

    goto :goto_1c

    :cond_27
    if-ne v3, v5, :cond_87

    const/4 v3, 0x0

    const-string/jumbo v5, "version"

    .line 6205
    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 6208
    sput-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    const-string/jumbo v5, "security.ASKS.policy_version"

    .line 6209
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6212
    :cond_3b
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 6213
    :cond_3f
    :goto_3f
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v4, :cond_82

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4e

    .line 6214
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v3, :cond_82

    :cond_4e
    if-eq v5, v6, :cond_3f

    const/4 v6, 0x4

    if-ne v5, v6, :cond_54

    goto :goto_3f

    .line 6219
    :cond_54
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PACKAGE"

    .line 6220
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 6221
    invoke-virtual {p0, v2}, Lcom/android/server/asks/ASKSManagerService;->readPackage(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3f

    :cond_64
    const-string v5, "ASKSManager"

    .line 6223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <asks>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6224
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_81
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_81} :catch_126
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_81} :catch_108
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_81} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_81} :catch_cd
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_81} :catch_b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_f .. :try_end_81} :catch_93
    .catchall {:try_start_f .. :try_end_81} :catchall_90

    goto :goto_3f

    .line 6245
    :cond_82
    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_144
    .catchall {:try_start_82 .. :try_end_85} :catchall_150

    goto/16 :goto_144

    .line 6202
    :cond_87
    :try_start_87
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "no start tag found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_90
    .catch Ljava/lang/IllegalStateException; {:try_start_87 .. :try_end_90} :catch_126
    .catch Ljava/lang/NullPointerException; {:try_start_87 .. :try_end_90} :catch_108
    .catch Ljava/lang/NumberFormatException; {:try_start_87 .. :try_end_90} :catch_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_87 .. :try_end_90} :catch_cd
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_90} :catch_b0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_87 .. :try_end_90} :catch_93
    .catchall {:try_start_87 .. :try_end_90} :catchall_90

    :catchall_90
    move-exception v2

    goto/16 :goto_147

    :catch_93
    move-exception v2

    :try_start_94
    const-string v3, "ASKSManager"

    .line 6239
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catchall {:try_start_94 .. :try_end_aa} :catchall_90

    .line 6242
    :try_start_aa
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_af
    .catchall {:try_start_aa .. :try_end_af} :catchall_150

    goto :goto_82

    :catch_b0
    move-exception v2

    :try_start_b1
    const-string v3, "ASKSManager"

    .line 6237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c7
    .catchall {:try_start_b1 .. :try_end_c7} :catchall_90

    .line 6242
    :try_start_c7
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_cc
    .catchall {:try_start_c7 .. :try_end_cc} :catchall_150

    goto :goto_82

    :catch_cd
    move-exception v2

    :try_start_ce
    const-string v3, "ASKSManager"

    .line 6235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e4
    .catchall {:try_start_ce .. :try_end_e4} :catchall_90

    .line 6242
    :try_start_e4
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_e9
    .catchall {:try_start_e4 .. :try_end_e9} :catchall_150

    goto :goto_82

    :catch_ea
    move-exception v2

    :try_start_eb
    const-string v3, "ASKSManager"

    .line 6233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_eb .. :try_end_101} :catchall_90

    .line 6242
    :try_start_101
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_150

    goto/16 :goto_82

    :catch_108
    move-exception v2

    :try_start_109
    const-string v3, "ASKSManager"

    .line 6231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_109 .. :try_end_11f} :catchall_90

    .line 6242
    :try_start_11f
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
    :try_end_124
    .catchall {:try_start_11f .. :try_end_124} :catchall_150

    goto/16 :goto_82

    :catch_126
    move-exception v2

    :try_start_127
    const-string v3, "ASKSManager"

    .line 6229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed parsing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catchall {:try_start_127 .. :try_end_13d} :catchall_90

    .line 6242
    :try_start_13d
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_82

    .line 6249
    :catch_144
    :goto_144
    monitor-exit p0
    :try_end_145
    .catchall {:try_start_13d .. :try_end_145} :catchall_150

    .line 6250
    :try_start_145
    monitor-exit v0
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_178

    return-void

    .line 6242
    :goto_147
    :try_start_147
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_14c
    .catchall {:try_start_147 .. :try_end_14c} :catchall_150

    .line 6245
    :try_start_14c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14f
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_14f} :catch_14f
    .catchall {:try_start_14c .. :try_end_14f} :catchall_150

    .line 6248
    :catch_14f
    :try_start_14f
    throw v2

    :catchall_150
    move-exception v1

    goto :goto_176

    :catch_152
    const-string v1, "AASA_ASKSManager"

    .line 6186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No existing asks rules "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; starting empty"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6187
    monitor-exit p0
    :try_end_174
    .catchall {:try_start_14f .. :try_end_174} :catchall_150

    :try_start_174
    monitor-exit v0
    :try_end_175
    .catchall {:try_start_174 .. :try_end_175} :catchall_178

    return-void

    .line 6249
    :goto_176
    :try_start_176
    monitor-exit p0
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_150

    :try_start_177
    throw v1

    :catchall_178
    move-exception p0

    .line 6250
    monitor-exit v0
    :try_end_17a
    .catchall {:try_start_177 .. :try_end_17a} :catchall_178

    throw p0
.end method

.method public final readyForBooting(Landroid/content/Context;)V
    .registers 10

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "readyForBooting : "

    .line 5776
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_10

    const-string p0, "context is null. "

    .line 5778
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5781
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    .line 5782
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2a

    if-lez v0, :cond_2a

    const/4 v2, 0x0

    .line 5784
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    goto :goto_56

    .line 5789
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result p1

    if-eqz p1, :cond_56

    .line 5791
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_56

    .line 5792
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_56

    const/4 v0, 0x0

    .line 5793
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_46

    move v3, v1

    goto :goto_47

    :cond_46
    move v3, v0

    :goto_47
    const/4 v0, 0x1

    .line 5796
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    :cond_56
    :goto_56
    return-void
.end method

.method public final refreshInstalledUnknownList_NEW()V
    .registers 12

    .line 2849
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 2850
    invoke-virtual {p0, v1, v0}, Lcom/android/server/asks/ASKSManagerService;->getInstalledAppsDataFromXML(Ljava/lang/String;Ljava/util/HashMap;)Ljava/util/ArrayList;

    .line 2852
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const-string v2, "PackageInformation"

    if-eqz v1, :cond_18

    const-string/jumbo p0, "installedUnknownList is null"

    .line 2853
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const-string/jumbo v1, "ro.product.model"

    const-string v3, "Unknown"

    .line 2857
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2858
    invoke-virtual {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->getTargetNodeName(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 2859
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c0

    const/16 v3, 0x1b

    .line 2861
    invoke-virtual {p0, v3, v1}, Lcom/android/server/asks/ASKSManagerService;->getUnknownAppsDataFromXML(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_c0

    .line 2865
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2867
    :cond_3d
    :goto_3d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 2868
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2869
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/asks/InstalledAppInfo;

    .line 2870
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v5, :cond_3d

    if-eqz v4, :cond_3d

    .line 2872
    invoke-virtual {p0, v4}, Lcom/android/server/asks/ASKSManagerService;->getSHA256ForPkgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2875
    iget-object v7, v5, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, " hash:"

    if-eqz v7, :cond_90

    .line 2876
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "try to check "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2877
    iget-object v4, v5, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/UnknownStore;

    if-eqz v4, :cond_3d

    .line 2879
    invoke-virtual {p0, v4, v5}, Lcom/android/server/asks/ASKSManagerService;->compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V

    goto :goto_3d

    :cond_90
    const-string v7, "ALL"

    .line 2881
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3d

    .line 2882
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "try to check(ALL) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2883
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/UnknownStore;

    if-eqz v4, :cond_3d

    .line 2886
    invoke-virtual {p0, v4, v5}, Lcom/android/server/asks/ASKSManagerService;->compareAttributeValue(Lcom/android/server/asks/UnknownStore;Lcom/android/server/asks/InstalledAppInfo;)V

    goto/16 :goto_3d

    .line 2895
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ASKS Unknown List  NEW: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ro.build.official.release"

    const-string v1, "false"

    .line 2900
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 2902
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->RemovedAbnormalApps()V

    :cond_f1
    return-void
.end method

.method public final setDataToDevice(Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)V
    .registers 10

    .line 1023
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1024
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_b0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_9} :catch_ab

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    const-string v2, ","

    const-string v3, "APKFromUnknownSource"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v1, :cond_60

    .line 1025
    :try_start_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " adding."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1027
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p3, :cond_56

    .line 1030
    array-length p1, p3

    if-lt p1, v4, :cond_56

    .line 1031
    aget-object p1, p3, v5

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_59

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_59

    .line 1034
    :cond_56
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    :cond_59
    :goto_59
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1037
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_b4

    .line 1041
    :cond_60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " init.."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 1043
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p3, :cond_a1

    .line 1045
    array-length p1, p3

    if-lt p1, v4, :cond_a1

    .line 1046
    aget-object p1, p3, v5

    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->getSigHash(Landroid/content/pm/Signature;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a4

    .line 1047
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a4

    .line 1049
    :cond_a1
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    :cond_a4
    :goto_a4
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1052
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_aa} :catch_b0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_15 .. :try_end_aa} :catch_ab

    goto :goto_b4

    :catch_ab
    move-exception p0

    .line 1058
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_b4

    :catch_b0
    move-exception p0

    .line 1056
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_b4
    return-void
.end method

.method public final setDataToDeviceForInstalledUnknownList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/asks/InstalledAppInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p0, "package"

    const-string v0, "LIST"

    .line 3170
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    const/4 v2, 0x0

    .line 3173
    :try_start_a
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 3175
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_19} :catch_b7
    .catchall {:try_start_a .. :try_end_19} :catchall_b5

    :try_start_19
    const-string v3, "UTF-8"

    .line 3178
    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 3180
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    .line 3182
    invoke-interface {v1, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 3185
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-eqz p1, :cond_9f

    const/4 v3, 0x0

    .line 3187
    :goto_30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_9f

    .line 3188
    invoke-interface {v1, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    .line 3189
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "signature"

    .line 3190
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "execute"

    .line 3191
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "overlay"

    .line 3192
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "requestInstallerZip"

    .line 3193
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "initType"

    .line 3194
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "accessibility"

    .line 3195
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/InstalledAppInfo;

    iget-object v6, v6, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3196
    invoke-interface {v1, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    .line 3199
    :cond_9f
    invoke-interface {v1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3200
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 3202
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 3204
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_ab} :catch_b2
    .catchall {:try_start_19 .. :try_end_ab} :catchall_af

    .line 3210
    :try_start_ab
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_c1

    goto :goto_c5

    :catchall_af
    move-exception p0

    move-object v2, v4

    goto :goto_c6

    :catch_b2
    move-exception p0

    move-object v2, v4

    goto :goto_b8

    :catchall_b5
    move-exception p0

    goto :goto_c6

    :catch_b7
    move-exception p0

    .line 3206
    :goto_b8
    :try_start_b8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bb
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_b5

    if-eqz v2, :cond_c5

    .line 3210
    :try_start_bd
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c0
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_c0} :catch_c1

    goto :goto_c5

    :catch_c1
    move-exception p0

    .line 3213
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_c5
    :goto_c5
    return-void

    :goto_c6
    if-eqz v2, :cond_d0

    .line 3210
    :try_start_c8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_cc

    goto :goto_d0

    :catch_cc
    move-exception p1

    .line 3213
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 3215
    :cond_d0
    :goto_d0
    throw p0
.end method

.method public final setDataToDeviceForModifyUnknownApp(ILcom/android/server/asks/InstalledAppInfo;)V
    .registers 22

    move/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "/data/system/.aasa/AASApolicy/ASKS_UNKNOWN_INSTALLED_INFO_LIST.xml"

    const-string v3, "UTF-8"

    .line 3219
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v5, 0x0

    .line 3223
    :try_start_d
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 3225
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3226
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1b} :catch_195
    .catchall {:try_start_d .. :try_end_1b} :catchall_192

    .line 3227
    :try_start_1b
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v7, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3228
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 3229
    invoke-virtual {v6, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 3231
    invoke-virtual {v4, v6}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 3232
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_30} :catch_18c
    .catchall {:try_start_1b .. :try_end_30} :catchall_185

    const-string v6, "accessibility"

    const-string/jumbo v8, "initType"

    const-string/jumbo v9, "requestInstallerZip"

    const-string/jumbo v10, "overlay"

    const-string v11, "execute"

    const-string/jumbo v12, "package"

    const-string/jumbo v13, "signature"

    const-string/jumbo v14, "name"

    const/4 v15, 0x1

    if-ne v0, v15, :cond_82

    .line 3236
    :try_start_49
    invoke-interface {v4, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 3237
    iget-object v12, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v14, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3238
    iget-object v12, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-interface {v0, v13, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    iget-object v12, v1, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-interface {v0, v11, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3240
    iget-object v11, v1, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-interface {v0, v10, v11}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3241
    iget-object v10, v1, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    invoke-interface {v0, v9, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3242
    iget-object v9, v1, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-interface {v0, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    iget-object v1, v1, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    invoke-interface {v0, v6, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_73} :catch_7e
    .catchall {:try_start_49 .. :try_end_73} :catchall_79

    move-object/from16 v18, v2

    move-object/from16 v17, v7

    goto/16 :goto_14d

    :catchall_79
    move-exception v0

    move-object v1, v0

    move-object v5, v7

    goto/16 :goto_1a5

    :catch_7e
    move-exception v0

    move-object v5, v7

    goto/16 :goto_196

    :cond_82
    const/4 v15, 0x2

    const/16 v16, 0x0

    if-ne v0, v15, :cond_f9

    .line 3247
    :try_start_87
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8b} :catch_18c
    .catchall {:try_start_87 .. :try_end_8b} :catchall_185

    move-object/from16 v17, v7

    move/from16 v15, v16

    .line 3248
    :goto_8f
    :try_start_8f
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v15, v7, :cond_f6

    .line 3249
    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    move-object/from16 v18, v2

    const/4 v2, 0x1

    if-ne v7, v2, :cond_ed

    .line 3250
    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    .line 3251
    invoke-interface {v2, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 p1, v0

    iget-object v0, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 3252
    invoke-interface {v2, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ef

    .line 3253
    invoke-interface {v4, v12}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 3254
    iget-object v7, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-interface {v0, v14, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    iget-object v7, v1, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    invoke-interface {v0, v13, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3256
    iget-object v7, v1, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    invoke-interface {v0, v11, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3257
    iget-object v7, v1, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    invoke-interface {v0, v10, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    iget-object v7, v1, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    invoke-interface {v0, v9, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    iget-object v7, v1, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    invoke-interface {v0, v8, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3260
    iget-object v1, v1, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    invoke-interface {v0, v6, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3261
    invoke-interface {v5, v0, v2}, Lorg/w3c/dom/Element;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_14d

    :cond_ed
    move-object/from16 p1, v0

    :cond_ef
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, v18

    goto :goto_8f

    :cond_f6
    move-object/from16 v18, v2

    goto :goto_14d

    :cond_f9
    move-object/from16 v18, v2

    move-object/from16 v17, v7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14d

    .line 3267
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    move/from16 v6, v16

    .line 3268
    :goto_106
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_14d

    .line 3269
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_14a

    .line 3270
    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 3271
    invoke-interface {v7, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14a

    .line 3272
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_146

    .line 3274
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_146

    .line 3275
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_146

    .line 3276
    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 3278
    :cond_146
    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_14d

    :cond_14a
    add-int/lit8 v6, v6, 0x1

    goto :goto_106

    .line 3284
    :cond_14d
    :goto_14d
    invoke-interface {v5}, Lorg/w3c/dom/Element;->normalize()V

    .line 3285
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 3286
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    const-string/jumbo v1, "{http://xml.apache.org/xslt}indent-amount"

    const-string v2, "4"

    .line 3287
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "indent"

    const-string/jumbo v2, "yes"

    .line 3288
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "encoding"

    .line 3289
    invoke-virtual {v0, v1, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    new-instance v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v1, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 3292
    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v3, v18

    invoke-direct {v2, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 3293
    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_17d} :catch_183
    .catchall {:try_start_8f .. :try_end_17d} :catchall_181

    .line 3300
    :try_start_17d
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_19f

    goto :goto_1a4

    :catchall_181
    move-exception v0

    goto :goto_188

    :catch_183
    move-exception v0

    goto :goto_18f

    :catchall_185
    move-exception v0

    move-object/from16 v17, v7

    :goto_188
    move-object v1, v0

    move-object/from16 v5, v17

    goto :goto_1a5

    :catch_18c
    move-exception v0

    move-object/from16 v17, v7

    :goto_18f
    move-object/from16 v5, v17

    goto :goto_196

    :catchall_192
    move-exception v0

    move-object v1, v0

    goto :goto_1a5

    :catch_195
    move-exception v0

    .line 3296
    :goto_196
    :try_start_196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_199
    .catchall {:try_start_196 .. :try_end_199} :catchall_192

    if-eqz v5, :cond_1a4

    .line 3300
    :try_start_19b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_19e
    .catch Ljava/io/IOException; {:try_start_19b .. :try_end_19e} :catch_19f

    goto :goto_1a4

    :catch_19f
    move-exception v0

    move-object v1, v0

    .line 3303
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1a4
    :goto_1a4
    return-void

    :goto_1a5
    if-eqz v5, :cond_1b0

    .line 3300
    :try_start_1a7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1aa
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1aa} :catch_1ab

    goto :goto_1b0

    :catch_1ab
    move-exception v0

    move-object v2, v0

    .line 3303
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 3305
    :cond_1b0
    :goto_1b0
    throw v1
.end method

.method public final setDataToDevice_NEW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 p0, 0x0

    .line 1066
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_7a
    .catchall {:try_start_1 .. :try_end_a} :catchall_76

    const-wide/16 v3, 0x2710

    cmp-long v1, v1, v3

    const-string v2, "APKFromUnknownSource"

    if-gez v1, :cond_2d

    .line 1069
    :try_start_12
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_18} :catch_7a
    .catchall {:try_start_12 .. :try_end_18} :catchall_76

    .line 1070
    :try_start_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " adding."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2c} :catch_74
    .catchall {:try_start_18 .. :try_end_2c} :catchall_86

    goto :goto_47

    .line 1072
    :cond_2d
    :try_start_2d
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_33} :catch_7a
    .catchall {:try_start_2d .. :try_end_33} :catchall_76

    .line 1073
    :try_start_33
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " init.."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_47} :catch_74
    .catchall {:try_start_33 .. :try_end_47} :catchall_86

    :goto_47
    move-object p0, v1

    .line 1075
    :try_start_48
    new-instance p1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p1, p0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    if-eqz p3, :cond_67

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6a

    .line 1080
    :cond_67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1082
    :goto_6a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1083
    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_70} :catch_7a
    .catchall {:try_start_48 .. :try_end_70} :catchall_76

    .line 1091
    :try_start_70
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_85

    goto :goto_85

    :catch_74
    move-exception p0

    goto :goto_7d

    :catchall_76
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_87

    :catch_7a
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 1087
    :goto_7d
    :try_start_7d
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_86

    if-eqz v1, :cond_85

    .line 1091
    :try_start_82
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_85

    :catch_85
    :cond_85
    :goto_85
    return-void

    :catchall_86
    move-exception p0

    :goto_87
    if-eqz v1, :cond_8c

    :try_start_89
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8c

    .line 1095
    :catch_8c
    :cond_8c
    throw p0
.end method

.method public final setExpirationDate()V
    .registers 5

    const-string/jumbo p0, "ro.build.date.utc"

    const-wide/16 v0, -0x1

    .line 5997
    invoke-static {p0, v0, v1}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    const-string/jumbo v2, "security.ASKS.expiration_date"

    if-gez p0, :cond_1d

    .line 6000
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 6002
    :cond_1d
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 6003
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 6004
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x5

    const/4 v1, 0x3

    .line 6005
    invoke-virtual {v0, p0, v1}, Ljava/util/Calendar;->add(II)V

    .line 6006
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd"

    invoke-direct {p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 6007
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_41
    return-void
.end method

.method public final setInstalledAppInfoToStore(Lcom/android/server/asks/InstalledAppInfo;)V
    .registers 2

    .line 2935
    iput-object p1, p0, Lcom/android/server/asks/ASKSManagerService;->installedAppInfoToStore:Lcom/android/server/asks/InstalledAppInfo;

    return-void
.end method

.method public final setSamsungAnalyticsLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 6014
    :try_start_0
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/system/.aasa/SamsungAnalyticsLog"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6015
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_68

    const-wide/32 v2, 0x7a120

    cmp-long v0, v0, v2

    const-string v1, ","

    if-gtz v0, :cond_3e

    .line 6016
    :try_start_14
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 6017
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 6018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6019
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    goto :goto_80

    .line 6021
    :cond_3e
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 6022
    new-instance p0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {p0, v0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 6023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6024
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_67} :catch_68

    goto :goto_80

    :catch_68
    move-exception p0

    .line 6027
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setSamsungAnalyticsLog "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AASA_ASKSManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_80
    return-void
.end method

.method public final setTrustTimeByToken(Ljava/lang/String;)V
    .registers 8

    .line 5960
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->convertStringToMills(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v1, 0x3

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    return-void
.end method

.method public setTrustTimebyStatusChanged()V
    .registers 9

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "setTrustTimebyStatusChanged : "

    .line 5850
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5851
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    if-nez v1, :cond_13

    const-string/jumbo p0, "mContext is null. "

    .line 5852
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5855
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 5856
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 5857
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_32

    const/4 v1, 0x0

    .line 5858
    aget-object v0, v0, v1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 5859
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    return-void

    .line 5865
    :cond_32
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->checkNetworkConnection(Landroid/content/Context;)I

    move-result v0

    .line 5866
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->isAutoTimeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_50

    if-lez v0, :cond_50

    const/4 v3, 0x0

    .line 5868
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    goto :goto_53

    .line 5873
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->updateTrustedFile()V

    :goto_53
    return-void
.end method

.method public final setTrustedFile(IJJ)V
    .registers 10

    const-string v0, ","

    const-string v1, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v2, "setTrustedFile : "

    .line 5897
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5899
    invoke-virtual {p0, p2, p3}, Lcom/android/server/asks/ASKSManagerService;->convertMillsToString(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v2, "security.ASKS.time_value"

    invoke-static {v2, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 5901
    :try_start_15
    new-instance v2, Ljava/io/PrintWriter;

    const-string v3, "/data/system/.aasa/trustedTime"

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_49
    .catchall {:try_start_15 .. :try_end_1c} :catchall_45

    .line 5902
    :try_start_1c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5903
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 5904
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_42} :catch_43
    .catchall {:try_start_1c .. :try_end_42} :catchall_67

    goto :goto_63

    :catch_43
    move-exception p0

    goto :goto_4c

    :catchall_45
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_68

    :catch_49
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    .line 5906
    :goto_4c
    :try_start_4c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setTrustedTime() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_67

    if-eqz v2, :cond_66

    .line 5909
    :goto_63
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_66
    return-void

    :catchall_67
    move-exception p0

    :goto_68
    if-eqz v2, :cond_6d

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 5910
    :cond_6d
    throw p0
.end method

.method public systemReady()V
    .registers 4

    const-string v0, "Only the system can claim the system is ready"

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 356
    iput-boolean v0, p0, Lcom/android/server/asks/ASKSManagerService;->mSystemReady:Z

    .line 358
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->checkDeletableListForASKS()V

    .line 360
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "security_policy_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    .line 363
    :goto_1c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "security.ASKS.rufs_enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->setExpirationDate()V

    return-void
.end method

.method public final toChars([B)[C
    .registers 8

    .line 5075
    array-length p0, p1

    mul-int/lit8 v0, p0, 0x2

    .line 5077
    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_6
    if-ge v1, p0, :cond_2f

    .line 5081
    aget-byte v2, p1, v1

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    mul-int/lit8 v4, v1, 0x2

    const/16 v5, 0xa

    if-lt v3, v5, :cond_18

    add-int/lit8 v3, v3, 0x61

    sub-int/2addr v3, v5

    goto :goto_1a

    :cond_18
    add-int/lit8 v3, v3, 0x30

    :goto_1a
    int-to-char v3, v3

    .line 5083
    aput-char v3, v0, v4

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v4, v4, 0x1

    if-lt v2, v5, :cond_27

    add-int/lit8 v2, v2, 0x61

    sub-int/2addr v2, v5

    goto :goto_29

    :cond_27
    add-int/lit8 v2, v2, 0x30

    :goto_29
    int-to-char v2, v2

    .line 5085
    aput-char v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_2f
    return-object v0
.end method

.method public final updateRestrictRule(Lcom/android/server/asks/ASKSManagerService$ASKSSession;)Z
    .registers 15

    .line 5373
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5378
    invoke-virtual {p0, v0, p1}, Lcom/android/server/asks/ASKSManagerService;->getRestrictDataFromXML(Ljava/util/HashMap;Lcom/android/server/asks/ASKSManagerService$ASKSSession;)V

    .line 5380
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    const-string v1, "AASA_ASKSManager_RESTRICTED"

    if-eqz p1, :cond_15

    const-string p1, "There is no restricted rule."

    .line 5381
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5385
    :cond_15
    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_130

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_130

    .line 5387
    iget-object p1, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2b
    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_130

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5389
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5390
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 5403
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string/jumbo v8, "updateRestictRule() : current restricted rule("

    const-string v9, "Token"

    const-string v10, "Policy"

    if-eqz v7, :cond_c3

    .line 5405
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v7

    .line 5406
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/asks/ASKSManagerService$Restrict;

    const-string/jumbo v12, "updateRestrictRule() : new restricted rule exists."

    .line 5407
    invoke-static {v1, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_84

    .line 5408
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 5409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") is from Token. Skipped."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_84
    if-eqz v7, :cond_a2

    .line 5415
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 5416
    invoke-virtual {v11}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v5, v7, :cond_2b

    .line 5417
    :cond_a2
    invoke-virtual {v6, v11}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 5418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRestrictRule() : update restricted rule for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c0
    move v3, v2

    goto/16 :goto_2b

    :cond_c3
    const-string/jumbo v5, "updateRestrictRule() : new restricted rule doesn\'t exists."

    .line 5422
    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    if-eqz v5, :cond_fd

    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fd

    const/4 v3, 0x0

    .line 5424
    invoke-virtual {v6, v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 5425
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRestrictRule() : remove restricted rule for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 5427
    :cond_fd
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    if-eqz v5, :cond_2b

    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 5428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is from Token. not removed."

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    .line 5434
    :cond_130
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_138
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_189

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 5436
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    if-eqz v4, :cond_153

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_153

    goto :goto_138

    .line 5438
    :cond_153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRestrictRule() : new restricted rule for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    new-instance v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    invoke-direct {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;-><init>()V

    .line 5440
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-virtual {v3, v4}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V

    .line 5441
    iget-object v4, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    goto :goto_138

    :cond_189
    return v3
.end method

.method public final updateRestrictedTargetPackages()V
    .registers 6

    .line 5354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5355
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    .line 5357
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5359
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    .line 5360
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v4

    if-eqz v4, :cond_43

    .line 5362
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 5363
    :cond_43
    invoke-virtual {v3}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_15

    .line 5364
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "DENY"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 5368
    :cond_56
    invoke-static {v0}, Landroid/content/pm/ASKSManager;->updateRestrictedTargetPackages(Ljava/util/HashMap;)V

    return-void
.end method

.method public final updateTrustedFile()V
    .registers 9

    const-string v0, "AASA_ASKSManager_SECURETIME"

    const-string/jumbo v1, "updateTrustedFile : "

    .line 5878
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->hasTrustedTime()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 5880
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedFile()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 5882
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_38

    const/4 v1, 0x0

    .line 5883
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x1

    .line 5885
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v4, 0x2

    .line 5886
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 5887
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v1, v4

    add-long v4, v1, v6

    move-object v2, p0

    .line 5891
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/asks/ASKSManagerService;->setTrustedFile(IJJ)V

    :cond_38
    return-void
.end method

.method public verifyASKStokenForPackage(Ljava/lang/String;Ljava/lang/String;J[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 23

    move-object v10, p0

    move-object v11, p1

    move-object/from16 v0, p5

    const-string v1, "Only the system can claim verifyASKStokenForPackage"

    .line 390
    invoke-virtual {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->enforceSystemOrRoot(Ljava/lang/String;)V

    .line 397
    iget-boolean v1, v10, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    if-eqz v1, :cond_15

    const/4 v1, 0x0

    .line 398
    iput-boolean v1, v10, Lcom/android/server/asks/ASKSManagerService;->isFirstTime:Z

    .line 399
    iget-object v1, v10, Lcom/android/server/asks/ASKSManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/asks/ASKSManagerService;->readyForBooting(Landroid/content/Context;)V

    :cond_15
    const/16 v1, 0x13

    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v12, -0x1

    if-eq v3, v12, :cond_2d

    move-object/from16 v3, p2

    .line 405
    :try_start_21
    invoke-virtual {p0, v3}, Lcom/android/server/asks/ASKSManagerService;->getAdvancedHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_25} :catch_25

    .line 409
    :catch_25
    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/asks/ASKSManagerService;->checkListForASKS(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eq v1, v12, :cond_2f

    const/4 v0, -0x7

    return v0

    :cond_2d
    move-object/from16 v3, p2

    .line 416
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/asks/ASKSManagerService;->openSession(Ljava/lang/String;)Lcom/android/server/asks/ASKSManagerService$ASKSSession;

    move-result-object v13

    if-eqz v2, :cond_38

    .line 419
    invoke-virtual {v13, v2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setPkgDigest(Ljava/lang/String;)V

    .line 422
    :cond_38
    invoke-virtual {v13, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setSignature([Landroid/content/pm/Signature;)V

    .line 423
    invoke-virtual {p0, p1, v0}, Lcom/android/server/asks/ASKSManagerService;->isSignatureMatched(Ljava/lang/String;[Landroid/content/pm/Signature;)I

    move-result v8

    if-eq v8, v12, :cond_5c

    const/4 v0, 0x1

    .line 426
    invoke-virtual {v13, v0}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setASKSTarget(Z)V

    move-object v0, p0

    move-object v1, v13

    move-object v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    .line 427
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/asks/ASKSManagerService;->parsePackageForASKS(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)I

    move-result v0

    if-eq v0, v12, :cond_5b

    .line 431
    invoke-virtual {p0, v13, p1}, Lcom/android/server/asks/ASKSManagerService;->closeSession(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;)V

    :cond_5b
    move v12, v0

    :cond_5c
    return v12
.end method

.method public final verifyToken(Lcom/android/server/asks/ASKSManagerService$ASKSSession;Ljava/lang/String;Ljava/lang/String;ZII)I
    .registers 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p5

    move/from16 v5, p6

    const-string v6, "BEFORE"

    const-string v7, "RUFS"

    const-string v8, "MODELS"

    const-string v9, "EMMODE"

    const-string v10, "EXPIRED"

    const-string v11, "CARRIERS"

    const-string v12, " "

    const-string v13, "RESTRICT"

    const-string v14, "AASA_ASKSManager"

    const-string v15, " AASA_VerifyToken START "

    .line 4111
    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getCodePath()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v12

    const/4 v12, 0x1

    move-object/from16 v17, v6

    .line 4125
    :try_start_2a
    new-instance v6, Landroid/util/jar/StrictJarFile;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2c} :catch_a2
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_2c} :catch_83
    .catchall {:try_start_2a .. :try_end_2c} :catchall_7e

    move-object/from16 v18, v7

    const/4 v7, 0x0

    :try_start_2f
    invoke-direct {v6, v15, v7, v12}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_7c
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_32} :catch_7a
    .catchall {:try_start_2f .. :try_end_32} :catchall_7e

    if-nez p4, :cond_49

    :try_start_34
    const-string v7, "/data/"

    .line 4126
    invoke-virtual {v15, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3a} :catch_43
    .catch Ljava/lang/SecurityException; {:try_start_34 .. :try_end_3a} :catch_3e
    .catchall {:try_start_34 .. :try_end_3a} :catchall_73d

    if-eqz v7, :cond_49

    move v7, v12

    goto :goto_4a

    :catch_3e
    move-exception v0

    move-object v12, v0

    move-object/from16 v19, v13

    goto :goto_8a

    :catch_43
    move-exception v0

    move-object v12, v0

    move-object/from16 v19, v13

    goto/16 :goto_a9

    :cond_49
    const/4 v7, 0x0

    .line 4132
    :goto_4a
    :try_start_4a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getTokenName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v15
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_75
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_52} :catch_70
    .catchall {:try_start_4a .. :try_end_52} :catchall_73d

    if-eqz v15, :cond_69

    move-object/from16 v19, v13

    .line 4135
    :try_start_56
    invoke-virtual {v15}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v12

    long-to-int v12, v12

    new-array v12, v12, [B

    .line 4136
    invoke-virtual {v1, v6, v15, v12}, Lcom/android/server/asks/ASKSManagerService;->loadCertificates(Landroid/util/jar/StrictJarFile;Ljava/util/zip/ZipEntry;[B)[Ljava/security/cert/Certificate;

    .line 4138
    invoke-virtual {v1, v2, v4, v12}, Lcom/android/server/asks/ASKSManagerService;->checkIntegrityNew(Lcom/android/server/asks/ASKSManagerService$ASKSSession;I[B)[B

    move-result-object v12
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_64} :catch_67
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_64} :catch_65
    .catchall {:try_start_56 .. :try_end_64} :catchall_73d

    goto :goto_6c

    :catch_65
    move-exception v0

    goto :goto_73

    :catch_67
    move-exception v0

    goto :goto_78

    :cond_69
    move-object/from16 v19, v13

    const/4 v12, 0x0

    .line 4154
    :goto_6c
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->close()V

    goto :goto_c4

    :catch_70
    move-exception v0

    move-object/from16 v19, v13

    :goto_73
    move-object v12, v0

    goto :goto_8b

    :catch_75
    move-exception v0

    move-object/from16 v19, v13

    :goto_78
    move-object v12, v0

    goto :goto_aa

    :catch_7a
    move-exception v0

    goto :goto_86

    :catch_7c
    move-exception v0

    goto :goto_a5

    :catchall_7e
    move-exception v0

    move-object v1, v0

    const/4 v12, 0x0

    goto/16 :goto_740

    :catch_83
    move-exception v0

    move-object/from16 v18, v7

    :goto_86
    move-object/from16 v19, v13

    move-object v12, v0

    const/4 v6, 0x0

    :goto_8a
    const/4 v7, 0x0

    .line 4149
    :goto_8b
    :try_start_8b
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ERROR: AASA_VerifyToken "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_c3

    goto :goto_c0

    :catch_a2
    move-exception v0

    move-object/from16 v18, v7

    :goto_a5
    move-object/from16 v19, v13

    move-object v12, v0

    const/4 v6, 0x0

    :goto_a9
    const/4 v7, 0x0

    .line 4145
    :goto_aa
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " ERROR: AASA_VerifyToken "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catchall {:try_start_8b .. :try_end_be} :catchall_73d

    if-eqz v6, :cond_c3

    .line 4154
    :goto_c0
    invoke-virtual {v6}, Landroid/util/jar/StrictJarFile;->close()V

    :cond_c3
    const/4 v12, 0x0

    :goto_c4
    if-nez v12, :cond_ce

    const-string v1, " ERROR: plz check certification in the device - Fail to check integrity"

    .line 4161
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x16

    return v1

    .line 4163
    :cond_ce
    array-length v6, v12

    const/4 v13, 0x1

    if-eq v6, v13, :cond_72a

    array-length v6, v12

    const/4 v13, 0x2

    if-ne v6, v13, :cond_d8

    goto/16 :goto_72a

    .line 4180
    :cond_d8
    :try_start_d8
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v15

    .line 4181
    invoke-virtual {v15}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 4182
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-direct {v13, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v6, 0x0

    invoke-interface {v15, v13, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d8 .. :try_end_e9} :catch_70d

    :try_start_e9
    const-string v6, "MODE"

    .line 4186
    invoke-virtual {v1, v15, v6}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4188
    invoke-virtual {v1, v6}, Lcom/android/server/asks/ASKSManagerService;->isInteger(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_f8

    const/16 v13, 0x15

    return v13

    .line 4193
    :cond_f8
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 4195
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_101} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_101} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e9 .. :try_end_101} :catch_70d

    const-string v15, "CROSSDOWN"

    move-object/from16 v20, v9

    const-string v9, "PACKAGE"

    move-object/from16 v21, v10

    const-string v10, "DIGEST"

    const-string v2, "CREATE"

    if-eqz v6, :cond_193

    move-object/from16 v22, v11

    const/4 v11, 0x1

    if-eq v6, v11, :cond_14d

    const/4 v7, 0x3

    if-eq v6, v7, :cond_11a

    const/16 v6, 0x15

    return v6

    :cond_11a
    if-ne v4, v11, :cond_1ef

    :try_start_11c
    const-string v23, "PACKAGE"

    const-string v24, "DIGEST"

    const-string v25, "CREATE"

    const-string v26, "MODELS"

    const-string v27, "CARRIERS"

    const-string v28, "EXPIRED"

    const-string v29, "RESTRICT"

    const-string v30, "DATELIMIT"

    const-string v31, "CROSSDOWN"

    const-string v32, "RUFS"

    const-string v33, "BEFORE"

    const-string v34, "AFTER"

    const-string v35, "CHECK"

    const-string v36, "EMMODE"

    const-string v37, "ADPMODELS"

    const-string v38, "ADPCARRIERS"

    const-string v39, "ASKSRNEWMODELS"

    const-string v40, "ASKSRNEWCARRIERS"

    .line 4225
    filled-new-array/range {v23 .. v40}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1ef

    :cond_14d
    move v6, v11

    if-ne v4, v6, :cond_1ef

    const-string v23, "PACKAGE"

    const-string v24, "DIGEST"

    const-string v25, "CREATE"

    const-string v26, "MODELS"

    const-string v27, "CARRIERS"

    const-string v28, "EXPIRED"

    const-string v29, "RESTRICT"

    const-string v30, "DATELIMIT"

    const-string v31, "CROSSDOWN"

    const-string v32, "RUFS"

    const-string v33, "BEFORE"

    const-string v34, "AFTER"

    const-string v35, "CHECK"

    const-string v36, "EMMODE"

    const-string v37, "ADPMODELS"

    const-string v38, "ADPCARRIERS"

    const-string v39, "ASKSRNEWMODELS"

    const-string v40, "ASKSRNEWCARRIERS"

    .line 4215
    filled-new-array/range {v23 .. v40}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1ef

    :catch_181
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v16

    goto/16 :goto_711

    :catch_187
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v16

    goto/16 :goto_6cf

    :catch_18d
    move-exception v0

    move-object v1, v0

    move-object/from16 v9, v16

    goto/16 :goto_6ef

    :cond_193
    move-object/from16 v22, v11

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1ef

    if-eqz v7, :cond_1d0

    .line 4201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Violate security policy of MSTG. Package("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") is blocked. "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "installer::"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4203
    invoke-virtual {v1, v3}, Lcom/android/server/asks/ASKSManagerService;->writeBlockApkList(Ljava/lang/String;)V

    const/16 v1, 0xf

    return v1

    .line 4207
    :cond_1d0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Token 0:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    filled-new-array {v9, v2, v10, v15}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1ef
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_1ef} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_11c .. :try_end_1ef} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11c .. :try_end_1ef} :catch_181

    .line 4248
    :cond_1ef
    :goto_1ef
    :try_start_1ef
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4249
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1f8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_1fc
    .catch Ljava/io/IOException; {:try_start_1ef .. :try_end_1fc} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_1ef .. :try_end_1fc} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ef .. :try_end_1fc} :catch_70d

    const-string v13, "NONE"

    if-eqz v11, :cond_20a

    :try_start_200
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 4250
    invoke-virtual {v6, v11, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_209} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_200 .. :try_end_209} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_200 .. :try_end_209} :catch_181

    goto :goto_1f8

    .line 4252
    :cond_20a
    :try_start_20a
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    .line 4253
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 4254
    new-instance v11, Ljava/io/ByteArrayInputStream;

    invoke-direct {v11, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v23, v12

    const/4 v12, 0x0

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4256
    invoke-virtual {v1, v7, v6}, Lcom/android/server/asks/ASKSManagerService;->parseXMLNew(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 4269
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/asks/ASKSManagerService;->getTrustedToday()Ljava/lang/String;

    move-result-object v7

    .line 4272
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11
    :try_end_228
    .catch Ljava/io/IOException; {:try_start_20a .. :try_end_228} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_20a .. :try_end_228} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20a .. :try_end_228} :catch_70d

    const/4 v12, -0x1

    if-eqz v11, :cond_257

    :try_start_22b
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_257

    .line 4274
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_257

    .line 4276
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OK:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_256
    .catch Ljava/io/IOException; {:try_start_22b .. :try_end_256} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_22b .. :try_end_256} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22b .. :try_end_256} :catch_181

    const/4 v12, 0x0

    .line 4284
    :cond_257
    :try_start_257
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_25b
    .catch Ljava/io/IOException; {:try_start_257 .. :try_end_25b} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_257 .. :try_end_25b} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_257 .. :try_end_25b} :catch_70d

    if-eqz v3, :cond_2a5

    :try_start_25d
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a5

    const/4 v3, 0x1

    if-ne v4, v3, :cond_2a9

    .line 4288
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->getPkgDigest()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_280

    .line 4289
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_280

    const-string v3, "OK:HASH"

    .line 4291
    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a9

    .line 4293
    :cond_280
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NOT OK:HASH : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " comp : "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a2
    .catch Ljava/io/IOException; {:try_start_25d .. :try_end_2a2} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_25d .. :try_end_2a2} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_25d .. :try_end_2a2} :catch_181

    :goto_2a2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2a9

    :cond_2a5
    const/4 v3, 0x1

    if-ne v4, v3, :cond_2a9

    goto :goto_2a2

    .line 4302
    :cond_2a9
    :goto_2a9
    :try_start_2a9
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2ad
    .catch Ljava/io/IOException; {:try_start_2a9 .. :try_end_2ad} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_2a9 .. :try_end_2ad} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a9 .. :try_end_2ad} :catch_70d

    if-eqz v3, :cond_308

    :try_start_2af
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_308

    .line 4304
    invoke-virtual {v6, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4305
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2c8

    :goto_2c5
    add-int/lit8 v12, v12, -0x1

    goto :goto_32a

    :cond_2c8
    const-string/jumbo v5, "ro.build.2ndbrand"

    const-string v9, "false"

    .line 4309
    invoke-static {v5, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_2d9

    const-string v3, "OK:CROSSDOWN"

    .line 4311
    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32a

    :cond_2d9
    const-string/jumbo v9, "true"

    .line 4312
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2ee

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_2ee

    const-string v1, "FAILED CROSSDOWN for sep lite"

    .line 4314
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x92

    return v1

    :cond_2ee
    const-string v9, "false"

    .line 4316
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_302

    const/4 v5, 0x1

    and-int/2addr v3, v5

    if-nez v3, :cond_302

    const-string v1, "FAILED CROSSDOWN for galaxy"

    .line 4318
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9c

    return v1

    :cond_302
    const-string v3, "OK:CROSSDOWN"

    .line 4321
    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32a

    :cond_308
    const/4 v3, 0x1

    if-ne v4, v3, :cond_32a

    const-string/jumbo v9, "true"

    const-string/jumbo v10, "ro.build.2ndbrand"

    .line 4327
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32a

    if-eq v5, v3, :cond_32a

    const/4 v3, 0x2

    if-eq v5, v3, :cond_32a

    const/4 v3, 0x4

    if-ne v5, v3, :cond_324

    goto :goto_32a

    :cond_324
    const-string v3, "Error : No value CROSSDOWN in 2ndbrand."

    .line 4333
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_329
    .catch Ljava/io/IOException; {:try_start_2af .. :try_end_329} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_2af .. :try_end_329} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2af .. :try_end_329} :catch_181

    goto :goto_2c5

    .line 4340
    :cond_32a
    :goto_32a
    :try_start_32a
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_32e
    .catch Ljava/io/IOException; {:try_start_32a .. :try_end_32e} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_32a .. :try_end_32e} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32a .. :try_end_32e} :catch_70d

    if-eqz v3, :cond_342

    :try_start_330
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_342

    .line 4345
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_340
    .catch Ljava/io/IOException; {:try_start_330 .. :try_end_340} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_330 .. :try_end_340} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_330 .. :try_end_340} :catch_181

    const/4 v5, 0x1

    goto :goto_344

    :cond_342
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_344
    move-object/from16 v8, v22

    .line 4358
    :try_start_346
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9
    :try_end_34a
    .catch Ljava/io/IOException; {:try_start_346 .. :try_end_34a} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_346 .. :try_end_34a} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_346 .. :try_end_34a} :catch_70d

    if-eqz v9, :cond_373

    :try_start_34c
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_373

    const/4 v9, 0x1

    if-ne v5, v9, :cond_36d

    .line 4361
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4362
    invoke-virtual {v1, v3, v5}, Lcom/android/server/asks/ASKSManagerService;->checkTokenTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_373

    const-string v3, "Error : CARRIERS"

    .line 4364
    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, -0x1

    goto :goto_373

    .line 4371
    :cond_36d
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_373
    .catch Ljava/io/IOException; {:try_start_34c .. :try_end_373} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_34c .. :try_end_373} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34c .. :try_end_373} :catch_181

    .line 4376
    :cond_373
    :goto_373
    :try_start_373
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_377
    .catch Ljava/io/IOException; {:try_start_373 .. :try_end_377} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_373 .. :try_end_377} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_373 .. :try_end_377} :catch_70d

    if-eqz v3, :cond_3c7

    :try_start_379
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c7

    .line 4378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CREATE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39d
    .catch Ljava/io/IOException; {:try_start_379 .. :try_end_39d} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_379 .. :try_end_39d} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_379 .. :try_end_39d} :catch_181

    .line 4382
    :try_start_39d
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4383
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 4384
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ge v3, v4, :cond_3b9

    const-string v3, "createDate is bigger than today."

    .line 4385
    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    invoke-virtual {v1, v2}, Lcom/android/server/asks/ASKSManagerService;->setTrustTimeByToken(Ljava/lang/String;)V

    :cond_3b9
    move-object/from16 v3, p1

    .line 4388
    invoke-virtual {v3, v2}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setVersion(Ljava/lang/String;)V
    :try_end_3be
    .catch Ljava/lang/NumberFormatException; {:try_start_39d .. :try_end_3be} :catch_3bf
    .catch Ljava/io/IOException; {:try_start_39d .. :try_end_3be} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39d .. :try_end_3be} :catch_181

    goto :goto_3d4

    :catch_3bf
    :try_start_3bf
    const-string v1, "Error : CREATE-NumberFormatException"

    .line 4391
    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    return v1

    :cond_3c7
    move-object/from16 v3, p1

    const/4 v2, 0x1

    if-ne v4, v2, :cond_3d3

    const-string v2, "Error : CREATE in asks case."

    .line 4398
    invoke-static {v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d1
    .catch Ljava/io/IOException; {:try_start_3bf .. :try_end_3d1} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_3bf .. :try_end_3d1} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3bf .. :try_end_3d1} :catch_181

    add-int/lit8 v12, v12, -0x1

    :cond_3d3
    const/4 v2, 0x0

    :goto_3d4
    move-object/from16 v4, v21

    .line 4403
    :try_start_3d6
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_3da
    .catch Ljava/io/IOException; {:try_start_3d6 .. :try_end_3da} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_3d6 .. :try_end_3da} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3d6 .. :try_end_3da} :catch_70d

    if-eqz v5, :cond_437

    :try_start_3dc
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_437

    .line 4405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EXPIRED : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_400
    .catch Ljava/io/IOException; {:try_start_3dc .. :try_end_400} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_3dc .. :try_end_400} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3dc .. :try_end_400} :catch_181

    .line 4408
    :try_start_400
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 4409
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v5, v8, :cond_418

    const-string v1, "createDate is bigger than expiredDate."

    .line 4410
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xe

    return v1

    .line 4414
    :cond_418
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 4415
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v5, v4, :cond_437

    const-string/jumbo v1, "today Date is bigger than expiredDate."

    .line 4416
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42c
    .catch Ljava/lang/NumberFormatException; {:try_start_400 .. :try_end_42c} :catch_42f
    .catch Ljava/io/IOException; {:try_start_400 .. :try_end_42c} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_400 .. :try_end_42c} :catch_181

    const/16 v1, 0xe

    return v1

    :catch_42f
    :try_start_42f
    const-string v1, "EXPIRED : NumberFormatException"

    .line 4422
    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_434
    .catch Ljava/io/IOException; {:try_start_42f .. :try_end_434} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_42f .. :try_end_434} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_42f .. :try_end_434} :catch_181

    const/16 v1, 0x15

    return v1

    :cond_437
    move-object/from16 v4, v19

    .line 4428
    :try_start_439
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_43d
    .catch Ljava/io/IOException; {:try_start_439 .. :try_end_43d} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_439 .. :try_end_43d} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_439 .. :try_end_43d} :catch_70d

    if-eqz v5, :cond_50c

    :try_start_43f
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50c

    const-string v5, "DELETE"

    .line 4430
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_453
    .catch Ljava/io/IOException; {:try_start_43f .. :try_end_453} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_43f .. :try_end_453} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_43f .. :try_end_453} :catch_181

    const-string v7, "DATELIMIT"

    if-eqz v5, :cond_4a3

    :try_start_457
    const-string v1, "AASA_ASKSManager_DELETABLE"

    .line 4432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4434
    new-instance v1, Lcom/android/server/asks/ASKSManagerService$Deletable;

    invoke-direct {v1}, Lcom/android/server/asks/ASKSManagerService$Deletable;-><init>()V

    .line 4435
    invoke-virtual {v1, v2}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setVersion(Ljava/lang/String;)V

    .line 4437
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_499

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_499

    .line 4439
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/asks/ASKSManagerService$Deletable;->setDateLimit(Ljava/lang/String;)V

    .line 4440
    invoke-virtual {v3, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setDeletable(Lcom/android/server/asks/ASKSManagerService$Deletable;)V

    goto :goto_50c

    :cond_499
    const-string v1, "AASA_ASKSManager_DELETABLE"

    const-string v2, "FAIL: DATELIMIT in deletable"

    .line 4443
    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, -0x1

    goto :goto_50c

    .line 4450
    :cond_4a3
    new-instance v5, Lcom/android/server/asks/ASKSManagerService$Restrict;

    invoke-direct {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;-><init>()V

    .line 4452
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setType(Ljava/lang/String;)V

    .line 4453
    invoke-virtual {v5, v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setVersion(Ljava/lang/String;)V

    const-string v2, "Token"

    .line 4454
    invoke-virtual {v5, v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setFrom(Ljava/lang/String;)V

    .line 4456
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d3

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d3

    .line 4457
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setDateLimit(Ljava/lang/String;)V

    goto :goto_4dd

    :cond_4d3
    const-string v2, "AASA_ASKSManager_RESTRICTED"

    const-string v4, "FAIL: DATELIMIT in restricted."

    .line 4459
    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, -0x1

    const/4 v5, 0x0

    :goto_4dd
    if-eqz v5, :cond_509

    const-string v2, "REVOKE"

    .line 4465
    invoke-virtual {v5}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_509

    .line 4467
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4469
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 4470
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 4471
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v8, v23

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 4473
    invoke-virtual {v1, v4, v2}, Lcom/android/server/asks/ASKSManagerService;->readRestrictPermissions(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 4480
    invoke-virtual {v5, v2}, Lcom/android/server/asks/ASKSManagerService$Restrict;->setPermissionList(Ljava/util/ArrayList;)V

    .line 4483
    :cond_509
    invoke-virtual {v3, v5}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRestrict(Lcom/android/server/asks/ASKSManagerService$Restrict;)V
    :try_end_50c
    .catch Ljava/io/IOException; {:try_start_457 .. :try_end_50c} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_457 .. :try_end_50c} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_457 .. :try_end_50c} :catch_181

    :cond_50c
    :goto_50c
    move-object/from16 v1, v20

    .line 4487
    :try_start_50e
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_512
    .catch Ljava/io/IOException; {:try_start_50e .. :try_end_512} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_50e .. :try_end_512} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50e .. :try_end_512} :catch_70d

    if-eqz v2, :cond_556

    :try_start_514
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_556

    const-string v2, "AASA_ASKSManager_EM"

    .line 4489
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMMODE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53a
    .catch Ljava/io/IOException; {:try_start_514 .. :try_end_53a} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_514 .. :try_end_53a} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_514 .. :try_end_53a} :catch_181

    .line 4492
    :try_start_53a
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4493
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4495
    invoke-virtual {v3, v1}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setEMMode(I)V
    :try_end_54b
    .catch Ljava/lang/NumberFormatException; {:try_start_53a .. :try_end_54b} :catch_54c
    .catch Ljava/io/IOException; {:try_start_53a .. :try_end_54b} :catch_18d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53a .. :try_end_54b} :catch_181

    goto :goto_556

    :catch_54c
    :try_start_54c
    const-string v1, "AASA_ASKSManager_EM"

    const-string v2, "EMMODE : NumberFormatException"

    .line 4498
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_553
    .catch Ljava/io/IOException; {:try_start_54c .. :try_end_553} :catch_18d
    .catch Ljava/lang/NumberFormatException; {:try_start_54c .. :try_end_553} :catch_187
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_54c .. :try_end_553} :catch_181

    const/16 v1, 0x15

    return v1

    :cond_556
    :goto_556
    move-object/from16 v1, v18

    .line 4505
    :try_start_558
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b4

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b4

    move-object/from16 v2, v17

    .line 4506
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_56e
    .catch Ljava/io/IOException; {:try_start_558 .. :try_end_56e} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_558 .. :try_end_56e} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_558 .. :try_end_56e} :catch_70d

    const-string v5, "AASA_ASKSManager_RUFS"

    if-eqz v4, :cond_6aa

    :try_start_572
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6aa

    const-string v4, "AFTER"

    .line 4507
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a2

    const-string v4, "AFTER"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6a2

    const-string v4, "CHECK"

    .line 4508
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69a

    const-string v4, "CHECK"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_69a

    .line 4510
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4511
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v4, "AFTER"

    .line 4512
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "CHECK"

    .line 4513
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 4514
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5c5
    .catch Ljava/io/IOException; {:try_start_572 .. :try_end_5c5} :catch_6eb
    .catch Ljava/lang/NumberFormatException; {:try_start_572 .. :try_end_5c5} :catch_6cb
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_572 .. :try_end_5c5} :catch_70d

    move-object/from16 v9, v16

    :try_start_5c7
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " :: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " :: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " :: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4516
    new-instance v8, Lcom/android/server/asks/RUFSContainer;

    invoke-direct {v8}, Lcom/android/server/asks/RUFSContainer;-><init>()V

    .line 4518
    invoke-virtual {v8, v1}, Lcom/android/server/asks/RUFSContainer;->setPolicyVersion(Ljava/lang/String;)V
    :try_end_5f4
    .catch Ljava/io/IOException; {:try_start_5c7 .. :try_end_5f4} :catch_6c9
    .catch Ljava/lang/NumberFormatException; {:try_start_5c7 .. :try_end_5f4} :catch_6c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5c7 .. :try_end_5f4} :catch_70b

    .line 4520
    :try_start_5f4
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/android/server/asks/RUFSContainer;->setSizeofZip(J)V

    .line 4521
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, Lcom/android/server/asks/RUFSContainer;->setSizeofFiles(J)V

    .line 4522
    invoke-virtual {v8, v7}, Lcom/android/server/asks/RUFSContainer;->setDigest(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 4523
    invoke-virtual {v8, v1}, Lcom/android/server/asks/RUFSContainer;->setHasRUFSToken(Z)V

    const-string v1, " SET RUFS TOKEN True!"

    .line 4524
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60e
    .catch Ljava/lang/NumberFormatException; {:try_start_5f4 .. :try_end_60e} :catch_60f
    .catch Ljava/io/IOException; {:try_start_5f4 .. :try_end_60e} :catch_6c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5f4 .. :try_end_60e} :catch_70b

    goto :goto_61a

    :catch_60f
    const/4 v1, 0x0

    .line 4527
    :try_start_610
    invoke-virtual {v8, v1}, Lcom/android/server/asks/RUFSContainer;->setHasRUFSToken(Z)V

    const-string v1, " SET RUFS TOKEN False!"

    .line 4528
    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v12, v12, -0x1

    :goto_61a
    const-string v1, "ADPMODELS"

    .line 4532
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_658

    const-string v1, "ADPMODELS"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_658

    const-string v1, "ADPCARRIERS"

    .line 4533
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_658

    const-string v1, "ADPCARRIERS"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_658

    const-string v1, "ADPMODELS"

    .line 4535
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ADPCARRIERS"

    .line 4536
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4537
    invoke-virtual {v8, v1}, Lcom/android/server/asks/RUFSContainer;->setADPModels(Ljava/lang/String;)V

    .line 4538
    invoke-virtual {v8, v2}, Lcom/android/server/asks/RUFSContainer;->setADPCarriers(Ljava/lang/String;)V

    :cond_658
    const-string v1, "ASKSRNEWMODELS"

    .line 4542
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_696

    const-string v1, "ASKSRNEWMODELS"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_696

    const-string v1, "ASKSRNEWCARRIERS"

    .line 4543
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_696

    const-string v1, "ASKSRNEWCARRIERS"

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_696

    const-string v1, "ASKSRNEWMODELS"

    .line 4545
    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "ASKSRNEWCARRIERS"

    .line 4546
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4547
    invoke-virtual {v8, v1}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWModels(Ljava/lang/String;)V

    .line 4548
    invoke-virtual {v8, v2}, Lcom/android/server/asks/RUFSContainer;->setASKSRNEWCarriers(Ljava/lang/String;)V

    .line 4552
    :cond_696
    invoke-virtual {v3, v8}, Lcom/android/server/asks/ASKSManagerService$ASKSSession;->setRufsContainer(Lcom/android/server/asks/RUFSContainer;)V

    goto :goto_6b6

    :cond_69a
    move-object/from16 v9, v16

    const-string v1, "ERROR: CHECK in RUFS"

    .line 4555
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b1

    :cond_6a2
    move-object/from16 v9, v16

    const-string v1, "ERROR: AFTER in RUFS"

    .line 4559
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b1

    :cond_6aa
    move-object/from16 v9, v16

    const-string v1, "ERROR: BEFORE in RUFS"

    .line 4563
    invoke-static {v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6b1
    add-int/lit8 v12, v12, -0x1

    goto :goto_6b6

    :cond_6b4
    move-object/from16 v9, v16

    :goto_6b6
    if-nez v12, :cond_6bf

    const-string v1, " Pass ALL"

    .line 4569
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_6bf
    const-string v1, " Fail: auth"

    .line 4574
    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c4
    .catch Ljava/io/IOException; {:try_start_610 .. :try_end_6c4} :catch_6c9
    .catch Ljava/lang/NumberFormatException; {:try_start_610 .. :try_end_6c4} :catch_6c7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_610 .. :try_end_6c4} :catch_70b

    const/16 v1, 0xdd

    return v1

    :catch_6c7
    move-exception v0

    goto :goto_6ce

    :catch_6c9
    move-exception v0

    goto :goto_6ee

    :catch_6cb
    move-exception v0

    move-object/from16 v9, v16

    :goto_6ce
    move-object v1, v0

    .line 4584
    :goto_6cf
    :try_start_6cf
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const/16 v1, 0x15

    return v1

    :catch_6eb
    move-exception v0

    move-object/from16 v9, v16

    :goto_6ee
    move-object v1, v0

    .line 4579
    :goto_6ef
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_708
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6cf .. :try_end_708} :catch_70b

    const/16 v1, 0x15

    return v1

    :catch_70b
    move-exception v0

    goto :goto_710

    :catch_70d
    move-exception v0

    move-object/from16 v9, v16

    :goto_710
    move-object v1, v0

    .line 4592
    :goto_711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x15

    return v1

    :cond_72a
    :goto_72a
    move-object v8, v12

    const/4 v1, 0x0

    const-string v2, " ERROR: plz check certification in the device - Fail to check integrity"

    .line 4165
    invoke-static {v14, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4166
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/lang/String;-><init>([B)V

    .line 4169
    :try_start_736
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12
    :try_end_73a
    .catch Ljava/lang/NumberFormatException; {:try_start_736 .. :try_end_73a} :catch_73b

    goto :goto_73c

    :catch_73b
    move v12, v1

    :goto_73c
    return v12

    :catchall_73d
    move-exception v0

    move-object v1, v0

    move-object v12, v6

    :goto_740
    if-eqz v12, :cond_745

    .line 4154
    invoke-virtual {v12}, Landroid/util/jar/StrictJarFile;->close()V

    .line 4155
    :cond_745
    throw v1
.end method

.method public final writeASKSFileIntegrity([B)V
    .registers 4

    if-nez p1, :cond_8

    :try_start_2
    const-string v0, "/data/system/.aasa/asks.xml"

    .line 6088
    invoke-virtual {p0, v0}, Lcom/android/server/asks/ASKSManagerService;->getApkFileHashBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_8} :catch_8

    :catch_8
    :cond_8
    const-string v0, "AASA_ASKSManager"

    if-eqz p1, :cond_31

    .line 6095
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 6097
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->getVaultKeeperManager()Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/service/vaultkeeper/VaultKeeperManager;->write(I[B)I

    move-result p0

    if-eqz p0, :cond_24

    const-string/jumbo p0, "write failed to vault"

    .line 6101
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_24
    const-string/jumbo p0, "write success to vault"

    .line 6104
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_2b
    const-string p0, "failed to get vault service"

    .line 6109
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_31
    const-string p0, "failed to get file hash"

    .line 6114
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36
    return-void
.end method

.method public final writeBlockApkList(Ljava/lang/String;)V
    .registers 6

    const-string p0, "AASA_ASKSManager"

    const/4 v0, 0x0

    .line 5059
    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/.aasa/blockedList.log"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5060
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 5061
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v1, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_15} :catch_2d
    .catchall {:try_start_3 .. :try_end_15} :catchall_2b

    .line 5062
    :try_start_15
    invoke-virtual {v1, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5063
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    const-string/jumbo p1, "writeBlockApkList() Success"

    .line 5064
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_21} :catch_28
    .catchall {:try_start_15 .. :try_end_21} :catchall_25

    .line 5069
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_48

    :catchall_25
    move-exception p0

    move-object v0, v1

    goto :goto_49

    :catch_28
    move-exception p1

    move-object v0, v1

    goto :goto_2e

    :catchall_2b
    move-exception p0

    goto :goto_49

    :catch_2d
    move-exception p1

    .line 5066
    :goto_2e
    :try_start_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeBlockApkList() Fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_2b

    if-eqz v0, :cond_48

    .line 5069
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_48
    :goto_48
    return-void

    :goto_49
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 5070
    :cond_4e
    throw p0
.end method

.method public final writeState()V
    .registers 1

    .line 6255
    invoke-virtual {p0}, Lcom/android/server/asks/ASKSManagerService;->writeStateInner()V

    return-void
.end method

.method public final writeStateInner()V
    .registers 12

    .line 6276
    iget-object v0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    monitor-enter v0

    const/4 v1, 0x0

    .line 6279
    :try_start_4
    iget-object v2, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_a} :catch_164
    .catchall {:try_start_4 .. :try_end_a} :catchall_162

    .line 6281
    :try_start_a
    iget-object v3, p0, Lcom/android/server/asks/ASKSManagerService;->mASKSStates:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_12} :catch_15f
    .catchall {:try_start_a .. :try_end_12} :catchall_15c

    .line 6284
    :try_start_12
    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 6285
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 6286
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v5, "asks"

    .line 6287
    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "version"

    .line 6288
    sget-object v6, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-interface {v4, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6290
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 6291
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 6293
    :cond_3a
    :goto_3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 6295
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6296
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/asks/ASKSManagerService$ASKSState;

    if-eqz v7, :cond_3a

    .line 6297
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->hasValue()Z

    move-result v8

    if-eqz v8, :cond_3a

    const-string/jumbo v8, "package"

    .line 6299
    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    .line 6300
    invoke-interface {v4, v1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6301
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v6

    if-eqz v6, :cond_cf

    .line 6302
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getRestrict()Lcom/android/server/asks/ASKSManagerService$Restrict;

    move-result-object v6

    const-string/jumbo v8, "restrict"

    .line 6303
    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "version"

    .line 6304
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "type"

    .line 6305
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "datelimit"

    .line 6306
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getDateLimit()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "from"

    .line 6307
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getFrom()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v1, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, "REVOKE"

    .line 6308
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 6309
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Restrict;->getPermissionList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_aa
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v9, "permission"

    .line 6310
    invoke-interface {v4, v1, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "value"

    .line 6311
    invoke-interface {v4, v1, v9, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "permission"

    .line 6312
    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_aa

    :cond_c9
    const-string/jumbo v6, "restrict"

    .line 6315
    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6318
    :cond_cf
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_ff

    .line 6319
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getEMMode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "emmode"

    .line 6320
    invoke-interface {v4, v1, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "value"

    .line 6321
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1, v8, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "emmode"

    .line 6322
    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6324
    :cond_ff
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    if-eqz v6, :cond_126

    .line 6325
    invoke-virtual {v7}, Lcom/android/server/asks/ASKSManagerService$ASKSState;->getDeletable()Lcom/android/server/asks/ASKSManagerService$Deletable;

    move-result-object v6

    const-string v7, "delete"

    .line 6326
    invoke-interface {v4, v1, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "version"

    .line 6327
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v1, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v7, "datelimit"

    .line 6328
    invoke-virtual {v6}, Lcom/android/server/asks/ASKSManagerService$Deletable;->getDateLimit()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1, v7, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "delete"

    .line 6329
    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_126
    const-string/jumbo v6, "package"

    .line 6331
    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3a

    :cond_12e
    const-string v3, "asks"

    .line 6334
    invoke-interface {v4, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 6335
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 6336
    iget-object v1, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string/jumbo v1, "security.ASKS.policy_version"

    .line 6337
    sget-object v3, Lcom/android/server/asks/ASKSManagerService;->mASKSPolicyVersion:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_143} :catch_144
    .catchall {:try_start_12 .. :try_end_143} :catchall_15c

    goto :goto_151

    :catch_144
    move-exception v1

    :try_start_145
    const-string v3, "AASA_ASKSManager"

    const-string v4, "Failed to write state, restoring backup"

    .line 6339
    invoke-static {v3, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6340
    iget-object p0, p0, Lcom/android/server/asks/ASKSManagerService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_151
    .catch Ljava/io/IOException; {:try_start_145 .. :try_end_151} :catch_15f
    .catchall {:try_start_145 .. :try_end_151} :catchall_15c

    :goto_151
    if-eqz v2, :cond_183

    .line 6347
    :try_start_153
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_156
    .catch Ljava/io/IOException; {:try_start_153 .. :try_end_156} :catch_157
    .catchall {:try_start_153 .. :try_end_156} :catchall_190

    goto :goto_183

    :catch_157
    move-exception p0

    .line 6349
    :goto_158
    :try_start_158
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15b
    .catchall {:try_start_158 .. :try_end_15b} :catchall_190

    goto :goto_183

    :catchall_15c
    move-exception p0

    move-object v1, v2

    goto :goto_185

    :catch_15f
    move-exception p0

    move-object v1, v2

    goto :goto_165

    :catchall_162
    move-exception p0

    goto :goto_185

    :catch_164
    move-exception p0

    :goto_165
    :try_start_165
    const-string v2, "AASA_ASKSManager"

    .line 6343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17b
    .catchall {:try_start_165 .. :try_end_17b} :catchall_162

    if-eqz v1, :cond_183

    .line 6347
    :try_start_17d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_180
    .catch Ljava/io/IOException; {:try_start_17d .. :try_end_180} :catch_181
    .catchall {:try_start_17d .. :try_end_180} :catchall_190

    goto :goto_183

    :catch_181
    move-exception p0

    goto :goto_158

    .line 6353
    :cond_183
    :goto_183
    :try_start_183
    monitor-exit v0
    :try_end_184
    .catchall {:try_start_183 .. :try_end_184} :catchall_190

    return-void

    :goto_185
    if-eqz v1, :cond_18f

    .line 6347
    :try_start_187
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18a
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_18a} :catch_18b
    .catchall {:try_start_187 .. :try_end_18a} :catchall_190

    goto :goto_18f

    :catch_18b
    move-exception v1

    .line 6349
    :try_start_18c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 6352
    :cond_18f
    :goto_18f
    throw p0

    :catchall_190
    move-exception p0

    .line 6353
    monitor-exit v0
    :try_end_192
    .catchall {:try_start_18c .. :try_end_192} :catchall_190

    throw p0
.end method
