.class public Lcom/android/server/wm/AppWarnings;
.super Ljava/lang/Object;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppWarnings$ConfigHandler;,
        Lcom/android/server/wm/AppWarnings$UiHandler;
    }
.end annotation


# static fields
.field public static final CONFIG_FILE_NAME:Ljava/lang/String; = "packages-warnings.xml"

.field public static final FLAG_HIDE_COMPILE_SDK:I = 0x2

.field public static final FLAG_HIDE_DEPRECATED_SDK:I = 0x4

.field public static final FLAG_HIDE_DISPLAY_SIZE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "AppWarnings"

.field public static final TAG_SPEG:Ljava/lang/String; = "SPEG"


# instance fields
.field public mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mConfigFile:Landroid/util/AtomicFile;

.field public mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

.field public final mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

.field public final mPackageFlags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUiContext:Landroid/content/Context;

.field public final mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

.field public mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

.field public mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;


# direct methods
.method public static bridge synthetic -$$Nest$mhideDialogsForPackageUiThread(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->hideDialogsForPackageUiThread(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhideUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings;->hideUnsupportedDisplaySizeDialogUiThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteConfigToFileAmsThread(Lcom/android/server/wm/AppWarnings;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings;->writeConfigToFileAmsThread()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V
    .registers 7

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    .line 95
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 96
    iput-object p2, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    .line 97
    new-instance p1, Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$ConfigHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    .line 98
    new-instance p1, Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/wm/AppWarnings$UiHandler;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    .line 99
    new-instance p1, Landroid/util/AtomicFile;

    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "packages-warnings.xml"

    invoke-direct {p2, p5, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo p3, "warnings-config"

    invoke-direct {p1, p2, p3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    .line 101
    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings;->readConfigFromFileAmsThread()V

    return-void
.end method


# virtual methods
.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getPackageFlags(Ljava/lang/String;)I
    .registers 4

    .line 406
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 407
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 408
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public hasPackageFlag(Ljava/lang/String;I)Z
    .registers 3

    .line 377
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result p0

    and-int/2addr p0, p2

    if-ne p0, p2, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final hideDialogsForPackageUiThread(Ljava/lang/String;)V
    .registers 4

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    if-eqz p1, :cond_11

    .line 349
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 350
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    .line 351
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 355
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_28

    .line 356
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 357
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->dismiss()V

    .line 358
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 362
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_46

    if-eqz p1, :cond_3f

    .line 363
    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_46

    .line 364
    :cond_3f
    iget-object p1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    invoke-virtual {p1}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->dismiss()V

    .line 365
    iput-object v1, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    :cond_46
    return-void
.end method

.method public final hideUnsupportedDisplaySizeDialogUiThread()V
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_a

    .line 234
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    :cond_a
    return-void
.end method

.method public final isSpeg(Ljava/lang/String;I)Z
    .registers 5

    .line 242
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 243
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_2c

    .line 244
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping warning dialog of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPEG"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2c
    return v1
.end method

.method public onDensityChanged()V
    .registers 1

    .line 211
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideUnsupportedDisplaySizeDialog()V

    return-void
.end method

.method public onPackageDataCleared(Ljava/lang/String;)V
    .registers 2

    .line 195
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;)V
    .registers 2

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->removePackageAndHideDialogs(Ljava/lang/String;)V

    return-void
.end method

.method public onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onStartActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final readConfigFromFileAmsThread()V
    .registers 11

    const-string v0, "Error reading package metadata"

    const-string v1, "AppWarnings"

    const/4 v2, 0x0

    .line 558
    :try_start_5
    iget-object v3, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_b} :catch_87
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_b} :catch_7b
    .catchall {:try_start_5 .. :try_end_b} :catchall_79

    .line 560
    :try_start_b
    invoke-static {v3}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v4

    .line 562
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v5

    :goto_13
    const/4 v6, 0x1

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1e

    if-eq v5, v6, :cond_1e

    .line 565
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_1d} :catch_76
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1d} :catch_73
    .catchall {:try_start_b .. :try_end_1d} :catchall_70

    goto :goto_13

    :cond_1e
    if-ne v5, v6, :cond_26

    if-eqz v3, :cond_25

    .line 597
    :try_start_22
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-void

    .line 571
    :cond_26
    :try_start_26
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "packages"

    .line 572
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6a

    .line 573
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    :cond_37
    if-ne v5, v7, :cond_64

    .line 576
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v7, :cond_64

    const-string/jumbo v8, "package"

    .line 578
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    const-string v5, "name"

    .line 579
    invoke-interface {v4, v2, v5}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_64

    const-string v8, "flags"

    const/4 v9, 0x0

    .line 581
    invoke-interface {v4, v2, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 582
    iget-object v9, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    :cond_64
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5
    :try_end_68
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_68} :catch_76
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_68} :catch_73
    .catchall {:try_start_26 .. :try_end_68} :catchall_70

    if-ne v5, v6, :cond_37

    :cond_6a
    if-eqz v3, :cond_8e

    .line 597
    :try_start_6c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_8e

    goto :goto_8e

    :catchall_70
    move-exception p0

    move-object v2, v3

    goto :goto_8f

    :catch_73
    move-exception p0

    move-object v2, v3

    goto :goto_7c

    :catch_76
    move-exception p0

    move-object v2, v3

    goto :goto_88

    :catchall_79
    move-exception p0

    goto :goto_8f

    :catch_7b
    move-exception p0

    :goto_7c
    if-eqz v2, :cond_81

    .line 593
    :try_start_7e
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_79

    :cond_81
    if-eqz v2, :cond_8e

    .line 597
    :goto_83
    :try_start_83
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_8e

    goto :goto_8e

    :catch_87
    move-exception p0

    .line 591
    :goto_88
    :try_start_88
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_79

    if-eqz v2, :cond_8e

    goto :goto_83

    :catch_8e
    :cond_8e
    :goto_8e
    return-void

    :goto_8f
    if-eqz v2, :cond_94

    .line 597
    :try_start_91
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_94} :catch_94

    .line 601
    :catch_94
    :cond_94
    throw p0
.end method

.method public final removePackageAndHideDialogs(Ljava/lang/String;)V
    .registers 4

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->hideDialogsForPackage(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 221
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 223
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public setPackageFlag(Ljava/lang/String;IZ)V
    .registers 6

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 389
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings;->getPackageFlags(Ljava/lang/String;)I

    move-result v1

    if-eqz p3, :cond_b

    or-int/2addr p2, v1

    goto :goto_d

    :cond_b
    not-int p2, p2

    and-int/2addr p2, v1

    :goto_d
    if-eq v1, p2, :cond_25

    if-eqz p2, :cond_1b

    .line 393
    iget-object p3, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 395
    :cond_1b
    iget-object p2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    :goto_20
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mHandler:Lcom/android/server/wm/AppWarnings$ConfigHandler;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWarnings$ConfigHandler;->scheduleWrite()V

    .line 399
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public showDeprecatedTargetDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 164
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget v1, Landroid/os/Build$VERSION;->MIN_SUPPORTED_TARGET_SDK_INT:I

    if-ge v0, v1, :cond_f

    .line 165
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_f
    return-void
.end method

.method public final showDeprecatedTargetSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 319
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_f

    .line 321
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 325
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    if-eqz v0, :cond_19

    .line 326
    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->dismiss()V

    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    :cond_19
    if-eqz p1, :cond_34

    .line 329
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 331
    new-instance v0, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mDeprecatedTargetSdkVersionDialog:Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;

    .line 333
    invoke-virtual {v0}, Lcom/android/server/wm/DeprecatedTargetSdkVersionDialog;->show()V

    :cond_34
    return-void
.end method

.method public showUnsupportedCompileSdkDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7

    .line 124
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    if-eqz v1, :cond_51

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    if-nez v0, :cond_d

    goto :goto_51

    .line 131
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAlwaysShowUnsupportedCompileSdkWarningActivities:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    .line 144
    :cond_18
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersion:I

    .line 145
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 146
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    const-string v3, "REL"

    .line 147
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 148
    sget-object v4, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v0, :cond_36

    if-lt v1, v2, :cond_4c

    :cond_36
    if-eqz v3, :cond_3a

    if-lt v2, v1, :cond_4c

    :cond_3a
    if-eqz v0, :cond_51

    if-eqz v3, :cond_51

    if-ne v2, v1, :cond_51

    .line 149
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->compileSdkVersionCodename:Ljava/lang/String;

    .line 152
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 154
    :cond_4c
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public final showUnsupportedCompileSdkDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 291
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_f

    .line 293
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 297
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    if-eqz v0, :cond_19

    .line 298
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->dismiss()V

    const/4 v0, 0x0

    .line 299
    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    :cond_19
    if-eqz p1, :cond_34

    .line 301
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 303
    new-instance v0, Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedCompileSdkDialog:Lcom/android/server/wm/UnsupportedCompileSdkDialog;

    .line 305
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedCompileSdkDialog;->show()V

    :cond_34
    return-void
.end method

.method public showUnsupportedDisplaySizeDialogIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 111
    iget v1, v0, Landroid/content/res/Configuration;->densityDpi:I

    sget v2, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-eq v1, v2, :cond_1b

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->requiresSmallestWidthDp:I

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-le v1, v0, :cond_1b

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mUiHandler:Lcom/android/server/wm/AppWarnings$UiHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1b
    return-void
.end method

.method public final showUnsupportedDisplaySizeDialogUiThread(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 263
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSFW_APP_SPEG:Z

    if-eqz v0, :cond_f

    .line 265
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->isSpeg(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 269
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    if-eqz v0, :cond_19

    .line 270
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->dismiss()V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    :cond_19
    if-eqz p1, :cond_34

    .line 273
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AppWarnings;->hasPackageFlag(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 275
    new-instance v0, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    iget-object v1, p0, Lcom/android/server/wm/AppWarnings;->mUiContext:Landroid/content/Context;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;-><init>(Lcom/android/server/wm/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V

    iput-object v0, p0, Lcom/android/server/wm/AppWarnings;->mUnsupportedDisplaySizeDialog:Lcom/android/server/wm/UnsupportedDisplaySizeDialog;

    .line 277
    invoke-virtual {v0}, Lcom/android/server/wm/UnsupportedDisplaySizeDialog;->show()V

    :cond_34
    return-void
.end method

.method public final writeConfigToFileAmsThread()V
    .registers 8

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    monitor-enter v0

    .line 512
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mPackageFlags:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 513
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_88

    const/4 v0, 0x0

    .line 517
    :try_start_c
    iget-object v2, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_12} :catch_76

    .line 519
    :try_start_12
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 520
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v0, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v5, 0x1

    .line 521
    invoke-interface {v3, v4, v5}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v4, "packages"

    .line 522
    invoke-interface {v3, v0, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 524
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 525
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 526
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_2f

    :cond_4e
    const-string/jumbo v6, "package"

    .line 530
    invoke-interface {v3, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v6, "name"

    .line 531
    invoke-interface {v3, v0, v6, v5}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "flags"

    .line 532
    invoke-interface {v3, v0, v5, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v4, "package"

    .line 533
    invoke-interface {v3, v0, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2f

    :cond_65
    const-string/jumbo v1, "packages"

    .line 536
    invoke-interface {v3, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 537
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 539
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {v0, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_73} :catch_74

    goto :goto_87

    :catch_74
    move-exception v0

    goto :goto_79

    :catch_76
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_79
    const-string v1, "AppWarnings"

    const-string v3, "Error writing package metadata"

    .line 541
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v2, :cond_87

    .line 543
    iget-object p0, p0, Lcom/android/server/wm/AppWarnings;->mConfigFile:Landroid/util/AtomicFile;

    invoke-virtual {p0, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_87
    :goto_87
    return-void

    :catchall_88
    move-exception p0

    .line 513
    :try_start_89
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    throw p0
.end method
