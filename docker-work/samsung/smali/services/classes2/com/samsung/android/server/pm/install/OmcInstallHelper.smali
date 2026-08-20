.class public Lcom/samsung/android/server/pm/install/OmcInstallHelper;
.super Ljava/lang/Object;
.source "OmcInstallHelper.java"


# static fields
.field public static final PREF_PM_SETTINGS_XML_NAME:Ljava/lang/String; = "samsung_pm_settings.xml"

.field public static final PREF_TSS_INITIALIZED:Ljava/lang/String; = "pref_tss_initialized"

.field public static final PROP_PRE_SALESCODE:Ljava/lang/String; = "persist.sys.prev_salescode"

.field public static final PROP_SALESCODE:Ljava/lang/String; = "ro.csc.sales_code"

.field public static final PROP_TSS_ACTIVATED:Ljava/lang/String; = "mdc.singlesku.activated"

.field public static final PROP_TSS_SUPPORTED:Ljava/lang/String; = "mdc.singlesku"

.field public static final TAG:Ljava/lang/String; = "PackageManager"

.field public static final WAIT_TO_READ_AID_RETRY_DELAY_MS:I = 0x14

.field public static final WAIT_TO_READ_AID_TIMEOUT_MS:I = 0x1388


# instance fields
.field public mContext:Landroid/content/Context;

.field public mNeedsOmcInit:Z

.field public mNeedsTssInit:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public deleteContentsIfNeeded(Ljava/io/File;)V
    .registers 3

    if-eqz p1, :cond_11

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->needsOmcOrTssInit()Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x5

    const-string v0, "Clear package cache by omcboot or tssboot"

    .line 42
    invoke-static {p0, v0}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    .line 43
    invoke-static {p1}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    :cond_11
    return-void
.end method

.method public final isTssActivated()Z
    .registers 2

    const-string p0, "mdc.singlesku.activated"

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isTssPropertyInitialized()Z
    .registers 1

    const-string p0, "mdc.singlesku.activated"

    .line 126
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final needsOmcInit()Z
    .registers 5

    const-string/jumbo p0, "persist.sys.prev_salescode"

    .line 52
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ro.csc.sales_code"

    .line 53
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_66

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_66

    .line 57
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    .line 58
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sales code, current: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", prev: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_66

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5f

    goto :goto_66

    .line 63
    :cond_5f
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_66
    :goto_66
    return v2
.end method

.method public needsOmcOrTssInit()Z
    .registers 2

    .line 48
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final needsTssInit()Z
    .registers 5

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->supportTss()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->isTssActivated()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_2e

    .line 71
    :cond_e
    new-instance v0, Ljava/io/File;

    .line 72
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "samsung_pm_settings.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "pref_tss_initialized"

    .line 75
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_2e
    :goto_2e
    return v1
.end method

.method public setOmcAndTssInit()V
    .registers 2

    .line 36
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->needsOmcInit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsOmcInit:Z

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->needsTssInit()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    return-void
.end method

.method public final supportTss()Z
    .registers 2

    const-string p0, "mdc.singlesku"

    const/4 v0, 0x0

    .line 122
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public waitToReadAIDwhenTssAndNonActivated()V
    .registers 7

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->supportTss()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 98
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->isTssPropertyInitialized()Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const-string v0, "PackageManager"

    const-string/jumbo v1, "wait to read AID before system scan"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/16 v3, 0xfa

    :goto_1c
    if-ltz v3, :cond_2d

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->isTssPropertyInitialized()Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_2d

    :cond_25
    const-wide/16 v4, 0x14

    .line 111
    :try_start_27
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2a

    :catch_2a
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 117
    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "waitToReadAID took "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 117
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public writeTssSettings()V
    .registers 4

    .line 79
    iget-boolean v0, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    if-nez v0, :cond_5

    return-void

    .line 83
    :cond_5
    new-instance v0, Ljava/io/File;

    .line 84
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "samsung_pm_settings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean p0, p0, Lcom/samsung/android/server/pm/install/OmcInstallHelper;->mNeedsTssInit:Z

    const-string/jumbo v1, "pref_tss_initialized"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
