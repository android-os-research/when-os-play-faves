.class public final Lcom/att/iqi/libs/IQIConcierge;
.super Ljava/lang/Object;
.source "IQIConcierge.java"


# static fields
.field public static final ACTION_MCC_MNC_VALIDATION_STATE_CHANGED:Ljava/lang/String; = "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED"

.field public static final BRIDGE_LIBRARY_NAME:Ljava/lang/String;

.field public static final IQI_MCCMNC_RESOURCE:Ljava/lang/String; = "/mccmnc.xml"

.field public static final PERMISSION_MODIFY_MNC_MCC_VALIDATION_STATE:Ljava/lang/String; = "com.att.iqi.permission.MODIFY_MNC_MCC_VALIDATION_STATE"

.field public static final SYSTEM_EXT_NATIVE_LIBRARY_PATH:Ljava/lang/String; = "/system_ext/lib64/"

.field public static final SYSTEM_NATIVE_LIBRARY_PATH:Ljava/lang/String; = "/system/lib64/"

.field public static final VENDOR_NATIVE_LIBRARY_PATH:Ljava/lang/String; = "/vendor/lib64/"

.field public static final VERSION:Ljava/lang/String; = "10.3-maui"

.field public static sInstance:Lcom/att/iqi/libs/IQIConcierge; = null

.field public static final sMCCMNCs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sMccMncValidationDisabled:Z = false

.field public static sSimDisabled:Z = true

.field public static final sXmlAttributeMccName:Ljava/lang/String; = "mcc"

.field public static final sXmlAttributeMncName:Ljava/lang/String; = "mnc"

.field public static final sXmlTagName:Ljava/lang/String; = "carrier"


# instance fields
.field public final mMncMccValidationStateChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$aiVd-Ktw6YtfNaQsMB9ePDua9Xc(Lcom/att/iqi/libs/IQIConcierge;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/att/iqi/libs/IQIConcierge;->lambda$new$0(Ljava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "iqi_bridge"

    .line 159
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/libs/IQIConcierge;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    .line 300
    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->createNetIdPairList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/att/iqi/libs/IQIConcierge;->sMCCMNCs:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Lcom/att/iqi/libs/IQIConcierge$1;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIConcierge$1;-><init>(Lcom/att/iqi/libs/IQIConcierge;)V

    iput-object v0, p0, Lcom/att/iqi/libs/IQIConcierge;->mMncMccValidationStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "IQI Concierge version: 10.3-maui"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 81
    :cond_15
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    .line 83
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.att.iqi.action.ACTION_MCC_MNC_VALIDATION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string v3, "com.att.iqi.permission.MODIFY_MNC_MCC_VALIDATION_STATE"

    .line 84
    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v0

    new-instance v1, Lcom/att/iqi/libs/IQIConcierge$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/IQIConcierge$$ExternalSyntheticLambda0;-><init>(Lcom/att/iqi/libs/IQIConcierge;)V

    invoke-virtual {v0, v1}, Lcom/att/iqi/libs/PreferenceStore;->registerPreferenceChangeListener(Lcom/att/iqi/libs/PreferenceStore$PreferenceChangeListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIConcierge;->updateMccMncValidationStateFromPrefStore()V

    .line 93
    invoke-static {p1}, Lcom/att/iqi/libs/IQIPackageInstaller;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static copyBridgeLibrary(Ljava/lang/String;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 211
    sget-object v2, Lcom/att/iqi/libs/IQIConcierge;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 212
    invoke-static {p0, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    .line 214
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v1

    const-string v2, "bridge_path"

    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Lcom/att/iqi/libs/PreferenceStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const-string v5, "]"

    if-eqz v4, :cond_71

    new-array v0, v3, [Ljava/nio/file/LinkOption;

    .line 217
    invoke-static {p0, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 218
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "storing packageLibrary ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 221
    :cond_46
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v0

    .line 222
    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/att/iqi/libs/PreferenceStore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_51
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_10b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File not found in: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    goto/16 :goto_10b

    :cond_71
    new-array v2, v3, [Ljava/lang/String;

    .line 227
    invoke-static {v1, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 229
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageLibrary ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "] systemLibrary ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 233
    :cond_9d
    invoke-static {p0, v1}, Lcom/att/iqi/libs/IQIConcierge;->shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z

    move-result v2

    if-eqz v2, :cond_100

    .line 234
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v2

    if-eqz v2, :cond_ae

    const-string v2, "Performing copy..."

    invoke-static {v2}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_ae
    const/4 v2, 0x2

    :try_start_af
    new-array v4, v2, [Ljava/nio/file/CopyOption;

    .line 238
    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v3

    sget-object v5, Ljava/nio/file/StandardCopyOption;->COPY_ATTRIBUTES:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v0

    invoke-static {v1, p0, v4}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 242
    new-instance v1, Ljava/util/HashSet;

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/nio/file/attribute/PosixFilePermission;

    sget-object v5, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v5, v4, v3

    sget-object v3, Ljava/nio/file/attribute/PosixFilePermission;->OTHERS_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v3, v4, v0

    sget-object v0, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v0, v4, v2

    const/4 v0, 0x3

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v4, v0

    const/4 v0, 0x4

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_EXECUTE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v4, v0

    const/4 v0, 0x5

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_READ:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v4, v0

    const/4 v0, 0x6

    sget-object v2, Ljava/nio/file/attribute/PosixFilePermission;->OWNER_WRITE:Ljava/nio/file/attribute/PosixFilePermission;

    aput-object v2, v4, v0

    .line 243
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 251
    invoke-static {p0, v1}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;

    .line 252
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_10b

    const-string p0, "Copy completed"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_f6} :catch_f7

    goto :goto_10b

    :catch_f7
    move-exception p0

    .line 254
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10b

    .line 257
    :cond_100
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_10b

    const-string p0, "No copy needed"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_10b
    :goto_10b
    return-void
.end method

.method public static createNetIdPairList()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 305
    :try_start_5
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 306
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 309
    const-class v2, Lcom/att/iqi/libs/IQIConcierge;

    const-string v3, "/mccmnc.xml"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    .line 310
    invoke-interface {v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 311
    invoke-static {v1, v0}, Lcom/att/iqi/libs/IQIConcierge;->parseXmlConfig(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V

    .line 312
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_1f} :catch_38
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_1f} :catch_2c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_43

    .line 318
    :catch_20
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "XML resource reader failure"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_43

    .line 316
    :catch_2c
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "IQI XML resource not found"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    goto :goto_43

    .line 314
    :catch_38
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "failed to start XML parser"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 321
    :cond_43
    :goto_43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getNativeLibraryDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 194
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x400

    .line 197
    :try_start_6
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 198
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_11

    .line 200
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_10} :catch_11

    return-object p0

    :catch_11
    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getVendorLibraryDirPath()Ljava/nio/file/Path;
    .registers 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    .line 180
    sget-object v2, Lcom/att/iqi/libs/IQIConcierge;->BRIDGE_LIBRARY_NAME:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "/vendor/lib64/"

    invoke-static {v4, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    new-array v4, v0, [Ljava/lang/String;

    aput-object v2, v4, v3

    const-string v5, "/system/lib64/"

    .line 181
    invoke-static {v5, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    const-string v2, "/system_ext/lib64/"

    .line 182
    invoke-static {v2, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v3, [Ljava/nio/file/LinkOption;

    .line 183
    invoke-static {v1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2b

    return-object v1

    :cond_2b
    new-array v1, v3, [Ljava/nio/file/LinkOption;

    .line 185
    invoke-static {v4, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_34

    return-object v4

    :cond_34
    new-array v1, v3, [Ljava/nio/file/LinkOption;

    .line 187
    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_3d

    return-object v0

    :cond_3d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "10.3-maui"

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    .line 115
    sget-object v0, Lcom/att/iqi/libs/IQIConcierge;->sInstance:Lcom/att/iqi/libs/IQIConcierge;

    if-nez v0, :cond_b

    .line 116
    new-instance v0, Lcom/att/iqi/libs/IQIConcierge;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIConcierge;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/att/iqi/libs/IQIConcierge;->sInstance:Lcom/att/iqi/libs/IQIConcierge;

    :cond_b
    return-void
.end method

.method public static isServiceBindingAllowed()Z
    .registers 4

    .line 125
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object v0

    const-string/jumbo v1, "service_state"

    const/4 v2, 0x1

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/att/iqi/libs/PreferenceStore;->getInteger(Ljava/lang/String;I)I

    move-result v0

    .line 127
    sget-boolean v1, Lcom/att/iqi/libs/IQIConcierge;->sMccMncValidationDisabled:Z

    if-nez v1, :cond_14

    sget-boolean v1, Lcom/att/iqi/libs/IQIConcierge;->sSimDisabled:Z

    if-nez v1, :cond_17

    :cond_14
    if-ne v0, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    .line 129
    :goto_18
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isServiceBindingAllowed? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_2d

    const-string v3, "YES"

    goto :goto_2f

    :cond_2d
    const-string v3, "NO"

    :goto_2f
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [sMccMncValidationDisabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/att/iqi/libs/IQIConcierge;->sMccMncValidationDisabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " sSimDisabled = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/att/iqi/libs/IQIConcierge;->sSimDisabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " serviceState = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_5a
    return v2
.end method

.method private synthetic lambda$new$0(Ljava/lang/String;)V
    .registers 3

    const-string v0, "disable_mcc_mnc_validation"

    .line 87
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 88
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIConcierge;->updateMccMncValidationStateFromPrefStore()V

    :cond_b
    return-void
.end method

.method public static loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 163
    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->getVendorLibraryDirPath()Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 165
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "storing packageLibrary ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 168
    :cond_26
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p0

    .line 169
    invoke-interface {v0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bridge_path"

    invoke-virtual {p0, v0, p1}, Lcom/att/iqi/libs/PreferenceStore;->setString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_57

    .line 171
    :cond_34
    invoke-static {p0, p1}, Lcom/att/iqi/libs/IQIConcierge;->getNativeLibraryDirPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_52

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Native library dir path: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_52
    if-eqz p0, :cond_57

    .line 174
    invoke-static {p0}, Lcom/att/iqi/libs/IQIConcierge;->copyBridgeLibrary(Ljava/lang/String;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public static matchesNetId(Landroid/telephony/SubscriptionInfo;)Z
    .registers 7

    .line 346
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMccString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getMncString()Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_2b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sub netId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 350
    :cond_2b
    sget-object v1, Lcom/att/iqi/libs/IQIConcierge;->sMCCMNCs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 351
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v4

    if-eqz v4, :cond_65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "config netId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 352
    :cond_65
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const/4 p0, 0x1

    return p0

    .line 357
    :cond_7b
    sget-object p0, Lcom/att/iqi/libs/IQIConcierge;->sMCCMNCs:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public static parseXmlConfig(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashSet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/HashSet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_4
    const/4 v1, 0x1

    if-eq v0, v1, :cond_5d

    const/4 v1, 0x3

    if-ne v0, v1, :cond_58

    .line 330
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_58

    const-string v1, "carrier"

    .line 331
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 332
    new-instance v0, Landroid/util/Pair;

    const/4 v1, 0x0

    const-string v2, "mcc"

    .line 333
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnc"

    .line 334
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "read tag in XML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 338
    :cond_55
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 341
    :cond_58
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_4

    :cond_5d
    return-void
.end method

.method public static shouldCopy(Ljava/nio/file/Path;Ljava/nio/file/Path;)Z
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    .line 264
    invoke-static {p0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    .line 265
    invoke-static {p1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    const-wide/16 v3, -0x1

    if-eqz v1, :cond_2a

    .line 270
    :try_start_11
    const-class v5, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v6, v0, [Ljava/nio/file/LinkOption;

    .line 271
    invoke-static {p0, v5, v6}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    .line 272
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_22

    goto :goto_2b

    :catch_22
    move-exception p0

    .line 274
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    move-wide v5, v3

    :goto_2b
    if-eqz v2, :cond_46

    .line 279
    :try_start_2d
    const-class p0, Ljava/nio/file/attribute/BasicFileAttributes;

    new-array v7, v0, [Ljava/nio/file/LinkOption;

    .line 280
    invoke-static {p1, p0, v7}, Ljava/nio/file/Files;->readAttributes(Ljava/nio/file/Path;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    .line 281
    invoke-interface {p0}, Ljava/nio/file/attribute/BasicFileAttributes;->creationTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide v3
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_3d} :catch_3e

    goto :goto_46

    :catch_3e
    move-exception p0

    .line 283
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    :cond_46
    :goto_46
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_7d

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "appLibraryExists ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "] systemLibraryExists ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "] appLibraryCreationDate ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] systemLibraryCreationDate ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_7d
    if-eqz v2, :cond_86

    if-eqz v1, :cond_85

    cmp-long p0, v3, v5

    if-lez p0, :cond_86

    :cond_85
    const/4 v0, 0x1

    :cond_86
    return v0
.end method

.method public static updateSubscriptions(Landroid/telephony/SubscriptionManager;)Z
    .registers 4

    if-eqz p0, :cond_42

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x1

    if-eqz p0, :cond_34

    .line 142
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    .line 143
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 144
    invoke-static {v2}, Lcom/att/iqi/libs/IQIConcierge;->matchesNetId(Landroid/telephony/SubscriptionInfo;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 145
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_31

    const-string p0, "Non-AT&T SIM found"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_31
    move v0, v1

    :cond_32
    move v1, v0

    goto :goto_40

    .line 151
    :cond_34
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_40

    const-string/jumbo p0, "updateSubscriptions - no active subscriptions"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 154
    :cond_40
    :goto_40
    sput-boolean v1, Lcom/att/iqi/libs/IQIConcierge;->sSimDisabled:Z

    .line 156
    :cond_42
    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->isServiceBindingAllowed()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final updateMccMncValidationStateFromPrefStore()V
    .registers 3

    .line 97
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p0

    const-string v0, "disable_mcc_mnc_validation"

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/att/iqi/libs/IQIConcierge;->sMccMncValidationDisabled:Z

    return-void
.end method
