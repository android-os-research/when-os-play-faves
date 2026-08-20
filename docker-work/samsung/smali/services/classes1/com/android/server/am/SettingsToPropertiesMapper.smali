.class public Lcom/android/server/am/SettingsToPropertiesMapper;
.super Ljava/lang/Object;
.source "SettingsToPropertiesMapper.java"


# static fields
.field public static final GLOBAL_SETTINGS_CATEGORY:Ljava/lang/String; = "global_settings"

.field public static final RESET_PERFORMED_PROPERTY:Ljava/lang/String; = "device_config.reset_performed"

.field public static final RESET_RECORD_FILE_PATH:Ljava/lang/String; = "/data/server_configurable_flags/reset_flags"

.field public static final SYSTEM_PROPERTY_INVALID_SUBSTRING:Ljava/lang/String; = ".."

.field public static final SYSTEM_PROPERTY_MAX_LENGTH:I = 0x5c

.field public static final SYSTEM_PROPERTY_PREFIX:Ljava/lang/String; = "persist.device_config."

.field public static final SYSTEM_PROPERTY_VALID_CHARACTERS_REGEX:Ljava/lang/String; = "^[\\w\\.\\-@:]*$"

.field public static final TAG:Ljava/lang/String; = "SettingsToPropertiesMapper"

.field public static final sDeviceConfigScopes:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final sGlobalSettings:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mDeviceConfigScopes:[Ljava/lang/String;

.field public final mGlobalSettings:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$u4ZAQtUCEQrnijBladIz73BixoE(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->lambda$updatePropertiesFromSettings$0(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 22

    const-string/jumbo v0, "native_flags_health_check_enabled"

    .line 71
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    const-string v1, "activity_manager_native_boot"

    const-string v2, "configuration"

    const-string v3, "connectivity"

    const-string/jumbo v4, "input_native_boot"

    const-string/jumbo v5, "intelligence_content_suggestions"

    const-string/jumbo v6, "lmkd_native"

    const-string/jumbo v7, "media_native"

    const-string/jumbo v8, "netd_native"

    const-string/jumbo v9, "nnapi_native"

    const-string/jumbo v10, "profcollect_native_boot"

    const-string/jumbo v11, "runtime_native"

    const-string/jumbo v12, "runtime_native_boot"

    const-string/jumbo v13, "statsd_native"

    const-string/jumbo v14, "statsd_native_boot"

    const-string/jumbo v15, "storage_native_boot"

    const-string/jumbo v16, "surface_flinger_native_boot"

    const-string/jumbo v17, "swcodec_native"

    const-string/jumbo v18, "tethering"

    const-string/jumbo v19, "vendor_system_native"

    const-string/jumbo v20, "virtualization_framework_native"

    const-string/jumbo v21, "window_manager_native_boot"

    .line 81
    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    iput-object p2, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    return-void
.end method

.method public static getResetFlagsFileContent()Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 277
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/server_configurable_flags/reset_flags"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 278
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 279
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_20

    :catch_1a
    move-exception v1

    const-string v2, "failed to read file /data/server_configurable_flags/reset_flags"

    .line 283
    invoke-static {v2, v1}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_20
    return-object v0
.end method

.method public static getResetNativeCategories()[Ljava/lang/String;
    .registers 9

    .line 191
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    .line 195
    :cond_a
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->getResetFlagsFileContent()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-array v0, v1, [Ljava/lang/String;

    return-object v0

    :cond_17
    const-string v2, ";"

    .line 200
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 201
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 202
    array-length v3, v0

    move v4, v1

    :goto_24
    if-ge v4, v3, :cond_50

    aget-object v5, v0, v4

    const-string v6, "\\."

    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 204
    array-length v7, v6

    const/4 v8, 0x3

    if-ge v7, v8, :cond_47

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to extract category name from property "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    goto :goto_4d

    :cond_47
    const/4 v5, 0x2

    .line 208
    aget-object v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_4d
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_50
    new-array v0, v1, [Ljava/lang/String;

    .line 210
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static isNativeFlagsResetPerformed()Z
    .registers 2

    const-string v0, "device_config.reset_performed"

    .line 181
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 182
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$updatePropertiesFromSettings$0(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 154
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 156
    invoke-static {v0, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3c

    .line 158
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unable to construct system property for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    return-void

    :cond_3c
    const/4 v4, 0x0

    .line 162
    invoke-virtual {p1, v2, v4}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_45
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .registers 3

    .line 266
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 267
    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 269
    :cond_a
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 258
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const-string v1, "SettingsToPropertiesMapper"

    if-eqz v0, :cond_a

    .line 259
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 261
    :cond_a
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d
    return-void
.end method

.method public static makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.device_config."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "^[\\w\\.\\-@:]*$"

    .line 225
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string p1, ".."

    .line 226
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2b

    goto :goto_2c

    :cond_2b
    return-object p0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static start(Landroid/content/ContentResolver;)Lcom/android/server/am/SettingsToPropertiesMapper;
    .registers 4

    .line 169
    new-instance v0, Lcom/android/server/am/SettingsToPropertiesMapper;

    sget-object v1, Lcom/android/server/am/SettingsToPropertiesMapper;->sGlobalSettings:[Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/SettingsToPropertiesMapper;->sDeviceConfigScopes:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/am/SettingsToPropertiesMapper;-><init>(Landroid/content/ContentResolver;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertiesFromSettings()V

    return-object v0
.end method


# virtual methods
.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p2, :cond_10

    .line 238
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    :cond_d
    const-string p2, ""

    goto :goto_2d

    .line 242
    :cond_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x5c

    if-le p0, v0, :cond_2d

    .line 243
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exceeds system property max length."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    return-void

    .line 248
    :cond_2d
    :goto_2d
    :try_start_2d
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_53

    :catch_31
    move-exception p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to set property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " value \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_53
    return-void
.end method

.method public updatePropertiesFromSettings()V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mGlobalSettings:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5b

    aget-object v4, v0, v3

    .line 123
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "global_settings"

    .line 124
    invoke-static {v6, v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->makePropertyName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_2c

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setting uri is null for globalSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    goto :goto_58

    :cond_2c
    if-nez v6, :cond_44

    .line 130
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "invalid prop name for globalSetting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SettingsToPropertiesMapper;->log(Ljava/lang/String;)V

    goto :goto_58

    .line 134
    :cond_44
    new-instance v7, Lcom/android/server/am/SettingsToPropertiesMapper$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper$1;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/android/server/am/SettingsToPropertiesMapper;->isNativeFlagsResetPerformed()Z

    move-result v8

    if-nez v8, :cond_53

    .line 144
    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/SettingsToPropertiesMapper;->updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_53
    iget-object v4, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 149
    :cond_5b
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mDeviceConfigScopes:[Ljava/lang/String;

    array-length v1, v0

    :goto_5e
    if-ge v2, v1, :cond_6f

    aget-object v3, v0, v2

    .line 150
    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/server/am/SettingsToPropertiesMapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/SettingsToPropertiesMapper;)V

    invoke-static {v3, v4, v5}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_6f
    return-void
.end method

.method public updatePropertyFromSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/android/server/am/SettingsToPropertiesMapper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/SettingsToPropertiesMapper;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
