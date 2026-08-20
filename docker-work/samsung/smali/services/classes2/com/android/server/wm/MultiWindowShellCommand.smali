.class public Lcom/android/server/wm/MultiWindowShellCommand;
.super Landroid/os/ShellCommand;
.source "MultiWindowShellCommand.java"


# static fields
.field public static final CMD_ADD_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "add-split-activity"

.field public static final CMD_ADJUST_FREEFORM_COUNT_TEMP:Ljava/lang/String; = "adjust-freeform-count-temp"

.field public static final CMD_ALLOW_MULTIWINDOW:Ljava/lang/String; = "allow-multiwindow"

.field public static final CMD_APPPAIR:Ljava/lang/String; = "apppair"

.field public static final CMD_BLOCK_MULTIWINDOW:Ljava/lang/String; = "block-multiwindow"

.field public static final CMD_CORNER_GESTURE:Ljava/lang/String; = "corner-gesture"

.field public static final CMD_CORNER_GESTURE_CUSTOM_VALUE:Ljava/lang/String; = "corner-gesture-custom-value"

.field public static final CMD_DEX_FONT_SCALE:Ljava/lang/String; = "dex-font-scale"

.field public static final CMD_DEX_FORCE_ENABLE:Ljava/lang/String; = "dex-force-enable"

.field public static final CMD_DISMISS_SPLIT_AND_START:Ljava/lang/String; = "dismiss-split-and-start"

.field public static final CMD_DIVIDER_RATIO:Ljava/lang/String; = "divider-ratio"

.field public static final CMD_DUMP_EMBED_ACTIVITY_INFO:Ljava/lang/String; = "dump-embed-activity"

.field public static final CMD_DUMP_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "dump-split-activity"

.field public static final CMD_FREEDOCKSIDE:Ljava/lang/String; = "freedockside"

.field public static final CMD_GET_EMBED_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "get-embed-activity-package-enabled"

.field public static final CMD_GET_MULTI_SPLIT_FLAGS:Ljava/lang/String; = "get-multi-split-flags"

.field public static final CMD_GET_SPLIT_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "get-split-activity-package-enabled"

.field public static final CMD_GET_TASKID_FROM_PACKAGE_NAME:Ljava/lang/String; = "getTaskIdFromPackageName"

.field public static final CMD_MINIMIZE:Ljava/lang/String; = "minimize"

.field public static final CMD_MINIMIZE_ALL:Ljava/lang/String; = "minimize-all"

.field public static final CMD_MINIMIZE_ALL_INTENT:Ljava/lang/String; = "minimize-all-intent"

.field public static final CMD_MOVE_FREEFORM_TO_SPLIT:Ljava/lang/String; = "move-freeform-to-split"

.field public static final CMD_MOVE_SPLIT_TO_FREEFORM:Ljava/lang/String; = "move-split-to-freeform"

.field public static final CMD_MULTISPLITAPPPAIR:Ljava/lang/String; = "multisplitapppair"

.field public static final CMD_MW_DEFAULT_LAUNCH_MODE_FREFORM:Ljava/lang/String; = "force-freeform"

.field public static final CMD_MW_DISABLE_REASON:Ljava/lang/String; = "disable-requester"

.field public static final CMD_MW_DYNAMIC_ENABLED:Ljava/lang/String; = "support"

.field public static final CMD_ONLY_DEBUG_COMMANDS:Ljava/lang/String; = "onlydebugtest"

.field public static final CMD_REMOVE_FOCUSED_TASK:Ljava/lang/String; = "removeFocusedTask"

.field public static final CMD_REMOVE_SPLIT_ACTIVITY_INFO:Ljava/lang/String; = "remove-split-activity"

.field public static final CMD_RESET_HELP:Ljava/lang/String; = "reset-help"

.field public static final CMD_SET_EMBED_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "set-embed-activity-package-enabled"

.field public static final CMD_SET_SPLIT_ACTIVITY_PACKAGE_ENABLED:Ljava/lang/String; = "set-split-activity-package-enabled"

.field public static final CMD_SHOW_ALL_COMMANDS:Ljava/lang/String; = "showall"

.field public static final CMD_SPLIT_IMMERSIVE:Ljava/lang/String; = "split-immersive"

.field public static final CMD_START_FREEFORM_TASK_PINNING:Ljava/lang/String; = "start-freeform-task-pinning"

.field public static final CMD_START_SPLIT_SCREEN_MODE:Ljava/lang/String; = "start-split-screen-mode"

.field public static final CMD_STOP_FREEFORM_TASK_PINNING:Ljava/lang/String; = "stop-freeform-task-pinning"

.field public static final CMD_TOGGLE_FREEFORM:Ljava/lang/String; = "toggle-freeform"

.field public static final CMD_TOGGLE_STAY_FOCUS_ACTIVITY:Ljava/lang/String; = "stay-focus-activity"

.field public static final CMD_TOP_TASK_SUPPORTS_MULTIWINDOW:Ljava/lang/String; = "top-task-supports-mw"

.field public static final CMD_VISIBLETASKS:Ljava/lang/String; = "visibletasks"

.field public static final TAG:Ljava/lang/String; = "MultiWindowManagerShellCommand"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCommandMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field public mInitialized:Z

.field public final mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field public mSupportsAllCommands:Z


# direct methods
.method public static synthetic $r8$lambda$MnGfqFrmsPRIKBQ9rgwi2blPUjw(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/MultiWindowShellCommand;->lambda$cmdShowAllCommands$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 127
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    .line 125
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mSupportsAllCommands:Z

    .line 128
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 129
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 130
    new-instance p1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-void
.end method

.method public static synthetic lambda$cmdShowAllCommands$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 5

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    method="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cmdAddSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "add-split-activity"
    .end annotation

    .line 360
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_29

    .line 364
    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_29

    const/4 p2, 0x2

    .line 365
    aget-object v2, p1, p2

    const-string v3, "ANY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string p2, "*"

    goto :goto_1d

    :cond_1b
    aget-object p2, p1, p2

    .line 366
    :goto_1d
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    aget-object v1, p1, v1

    aget-object p1, p1, v0

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->addSplitActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_29
    const-string p0, "Error : add-split-activity option requires [packageName] [sourceName] [targetName|ANY]."

    .line 368
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2e
    return v0
.end method

.method public cmdAdjustFreeformCountTemp([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "adjust-freeform-count-temp"
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cmdAllowMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "allow-multiwindow"
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    .line 267
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2d

    const/4 p2, 0x0

    .line 268
    aget-object p2, p1, p2

    .line 269
    aget-object p1, p1, v0

    const-string v1, "add"

    .line 270
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 271
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->addAllowPackage(Ljava/lang/String;)V

    goto :goto_32

    :cond_1c
    const-string/jumbo v1, "remove"

    .line 272
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 273
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->removeAllowPackage(Ljava/lang/String;)V

    goto :goto_32

    :cond_2d
    const-string p0, "Error: allow-multiwindow  option requires [add/remove] [packageName]"

    .line 276
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    :goto_32
    return v0
.end method

.method public cmdBlockMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 6
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "block-multiwindow"
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    .line 288
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2d

    const/4 p2, 0x0

    .line 289
    aget-object p2, p1, p2

    .line 290
    aget-object p1, p1, v0

    const-string v1, "add"

    .line 291
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 292
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->addBlockPackage(Ljava/lang/String;)V

    goto :goto_32

    :cond_1c
    const-string/jumbo v1, "remove"

    .line 293
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 294
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->removeBlockPackage(Ljava/lang/String;)V

    goto :goto_32

    :cond_2d
    const-string p0, "Error: block-multiwindow  option requires [add/remove] [packageName]"

    .line 297
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_32
    :goto_32
    return v0
.end method

.method public cmdDexFontScale([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dex-font-scale"
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cmdDismissSplitAndStart([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dismiss-split-and-start"
    .end annotation

    const/4 p2, 0x1

    if-eqz p1, :cond_2c

    .line 579
    array-length v0, p1

    if-lez v0, :cond_2c

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 581
    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v0, 0x10000000

    .line 582
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 583
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 584
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setDismissSplitBeforeLaunch(Z)V

    .line 585
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    :cond_2c
    return p2
.end method

.method public cmdDumpEmbedActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dump-embed-activity"
    .end annotation

    .line 402
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 406
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingController;->dumpActivityEmbeddedPackageRepository(Ljava/io/PrintWriter;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdDumpSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "dump-split-activity"
    .end annotation

    .line 392
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-nez p1, :cond_6

    const/4 p0, 0x0

    return p0

    .line 396
    :cond_6
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiTaskingController;->dumpSplitActivityRepository(Ljava/io/PrintWriter;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdGetEmbedActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "get-embed-activity-package-enabled"
    .end annotation

    .line 431
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_40

    .line 435
    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_40

    .line 436
    aget-object v1, p1, v1

    .line 437
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 438
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 439
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result p0

    .line 440
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activity embedding "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_33

    const-string p0, "Enabled"

    goto :goto_35

    :cond_33
    const-string p0, "Disabled"

    :goto_35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45

    :cond_40
    const-string p0, "Error: get-embed-activity-package-enabled  option requires [packageName, userId]"

    .line 442
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_45
    return v0
.end method

.method public cmdGetMultiSplitFlags([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "get-multi-split-flags"
    .end annotation

    .line 541
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result p0

    .line 542
    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->multiSplitFlagsToString(I)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 543
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "flags = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdGetSplitActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "get-split-activity-package-enabled"
    .end annotation

    .line 341
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_PACKAGE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_40

    .line 345
    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_40

    .line 346
    aget-object v1, p1, v1

    .line 347
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 348
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 349
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result p0

    .line 350
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " split-activity "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_33

    const-string p0, "Disabled"

    goto :goto_35

    :cond_33
    const-string p0, "Enabled"

    :goto_35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_45

    :cond_40
    const-string p0, "Error: get-split-activity-package-enabled  option requires [packageName, userId]"

    .line 352
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_45
    return v0
.end method

.method public cmdGetTaskIdFromPackageName([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "getTaskIdFromPackageName"
    .end annotation

    if-eqz p1, :cond_33

    .line 611
    array-length v0, p1

    if-lez v0, :cond_33

    .line 612
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 613
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getTaskInfoFromPackageName(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 614
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_33
    const/4 p0, 0x1

    return p0
.end method

.method public cmdImmersiveSplitMode([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "split-immersive"
    .end annotation

    if-eqz p1, :cond_3a

    .line 595
    array-length v0, p1

    if-lez v0, :cond_3a

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    aget-object v1, p1, v0

    const-string v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 596
    :cond_1a
    aget-object p1, p1, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 597
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setSplitImmersiveModeLocked(Z)V

    .line 598
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 599
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    goto :goto_3f

    :cond_3a
    const-string p0, "Invalid argument: split-immersive  option requires [on/off]"

    .line 601
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3f
    const/4 p0, 0x1

    return p0
.end method

.method public cmdMinimizeAll([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "minimize-all"
    .end annotation

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    .line 505
    array-length v0, p1

    if-lez v0, :cond_10

    .line 506
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 508
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/MultiTaskingController;->minimizeAllTasksLocked(IZ)V

    return p1
.end method

.method public cmdMinimizeAllIntent([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "minimize-all-intent"
    .end annotation

    .line 517
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 518
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdMoveFreeformToSplit([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "move-freeform-to-split"
    .end annotation

    .line 527
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p2, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 529
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 530
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 531
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 p2, 0x0

    .line 530
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public cmdMoveSplitToFreeform([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "move-split-to-freeform"
    .end annotation

    .line 552
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance p2, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 554
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object p1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveSplitTaskToFreeform(Landroid/os/IBinder;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdMultiWindowOnAndOff([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "support"
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_42

    .line 214
    array-length v2, p1

    if-lez v2, :cond_42

    aget-object v2, p1, v1

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    aget-object v2, p1, v1

    const-string v4, "off"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 215
    :cond_22
    aget-object p2, p1, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 216
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_37

    aget-object v1, p1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    aget-object p1, p1, v2

    goto :goto_3a

    :cond_37
    const-string/jumbo p1, "shell_command"

    .line 218
    :goto_3a
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    return v2

    :cond_42
    const-string p0, "Error: support  option requires [on/off]"

    .line 223
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public cmdOnlyDebugBuildTest([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "onlydebugtest"
    .end annotation

    const-string p0, "This command is only supported in debug build"

    .line 238
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdRemoveFocusedTask([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "removeFocusedTask"
    .end annotation

    if-eqz p1, :cond_26

    .line 626
    array-length v0, p1

    if-lez v0, :cond_26

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->removeFocusedTask(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    const/4 p0, 0x1

    return p0
.end method

.method public cmdRemoveSplitActivityInfo([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "remove-split-activity"
    .end annotation

    .line 376
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_29

    .line 380
    array-length v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_29

    const/4 p2, 0x2

    .line 381
    aget-object v2, p1, p2

    const-string v3, "ANY"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string p2, "*"

    goto :goto_1d

    :cond_1b
    aget-object p2, p1, p2

    .line 382
    :goto_1d
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    aget-object v1, p1, v1

    aget-object p1, p1, v0

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/MultiTaskingController;->removeSplitActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_29
    const-string p0, "Error : remove-split-activity option requires [packageName] [sourceName] [targetName|ANY]."

    .line 384
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2e
    return v0
.end method

.method public cmdSetCornerGestureCustomValue([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 3
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "corner-gesture-custom-value"
    .end annotation

    if-eqz p1, :cond_2e

    .line 637
    array-length p2, p1

    if-lez p2, :cond_2e

    const/4 p2, 0x0

    .line 638
    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 639
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    .line 640
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setCornerGestureCustomValue(I)V

    .line 641
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->updateCustomBounds()V

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public cmdSetEmbedActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "set-embed-activity-package-enabled"
    .end annotation

    .line 412
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_PACKAGE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    .line 416
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2c

    .line 417
    aget-object p2, p1, v1

    .line 418
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x2

    .line 419
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 420
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 421
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V

    goto :goto_31

    :cond_2c
    const-string p0, "Error: set-embed-activity-package-enabled  option requires [packageName, enabled, userId]"

    .line 423
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_31
    return v0
.end method

.method public cmdSetSplitActivityPackageEnabled([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 7
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "set-split-activity-package-enabled"
    .end annotation

    .line 322
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_PACKAGE_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    .line 326
    array-length v2, p1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2c

    .line 327
    aget-object p2, p1, v1

    .line 328
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    .line 329
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 330
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 331
    invoke-virtual {p0, p2, v1, p1}, Lcom/android/server/wm/MultiTaskingController;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V

    goto :goto_31

    :cond_2c
    const-string p0, "Error: set-split-activity-package-enabled  option requires [packageName, state, userId]"

    .line 333
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_31
    return v0
.end method

.method public cmdShowAllCommands([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "showall"
        supportsReleaseBuild = true
    .end annotation

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Commands    mSupportsAllCommands="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mSupportsAllCommands:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    new-instance p1, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/wm/MultiWindowShellCommand$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public cmdStartFreeformTaskPinning([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "start-freeform-task-pinning"
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_1f

    .line 472
    array-length v1, p1

    if-lt v1, v0, :cond_1f

    .line 473
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_24

    .line 475
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->startFreeformPinning()V

    goto :goto_24

    :cond_1f
    const-string p0, "Error: start-freeform-task-pinning  option requires [taskId]"

    .line 478
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_24
    :goto_24
    return v0
.end method

.method public cmdStopFreeformTaskPinning([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "stop-freeform-task-pinning"
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_22

    .line 488
    array-length v1, p1

    if-lt v1, v0, :cond_22

    .line 489
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_27

    const-string/jumbo p1, "shell command"

    .line 491
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->stopFreeformPinning(ZLjava/lang/String;)V

    goto :goto_27

    :cond_22
    const-string p0, "Error: stop-freeform-task-pinning  option requires [taskId]"

    .line 494
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    :goto_27
    return v0
.end method

.method public cmdToggleFreeform([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "toggle-freeform"
    .end annotation

    .line 563
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 564
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    if-eqz p1, :cond_35

    .line 565
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 566
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    iget-object v0, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 567
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "run toggleFreeformWindowingMode, r="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a

    :cond_35
    const-string p0, "failed, cannot find candidate activity"

    .line 569
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3a
    const/4 p0, 0x1

    return p0
.end method

.method public cmdTopTaskSupportsMultiWindow([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 4
    .annotation runtime Lcom/android/server/wm/MWCommandInfo;
        cmd = "top-task-supports-mw"
    .end annotation

    .line 309
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 312
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result p1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " supports multiwindow = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_36

    :cond_30
    const-string/jumbo p0, "top activity is null"

    .line 315
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_36
    const/4 p0, 0x1

    return p0
.end method

.method public execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I
    .registers 5

    .line 193
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowShellCommand;->initCommands()V

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_17

    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowShellCommand;->invokeCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-eqz p2, :cond_17

    const/4 p0, 0x0

    .line 197
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p0

    :cond_17
    if-eqz p1, :cond_3f

    :try_start_19
    const-string p2, "help"

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3f

    const-string p2, "-h"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2a

    goto :goto_3f

    .line 203
    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown command: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_42

    .line 201
    :cond_3f
    :goto_3f
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiWindowShellCommand;->printHelp(Ljava/io/PrintWriter;)V

    .line 205
    :goto_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_19 .. :try_end_43} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, -0x1

    return p0

    :catchall_48
    move-exception p0

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final initCommands()V
    .registers 7

    .line 134
    iget-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    if-eqz v0, :cond_5

    return-void

    .line 138
    :cond_5
    const-class v0, Lcom/android/server/wm/MultiWindowShellCommand;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 139
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_37

    aget-object v3, v0, v2

    .line 140
    const-class v4, Lcom/android/server/wm/MWCommandInfo;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 141
    const-class v4, Lcom/android/server/wm/MWCommandInfo;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/MWCommandInfo;

    .line 142
    iget-boolean v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mSupportsAllCommands:Z

    if-nez v5, :cond_2b

    invoke-interface {v4}, Lcom/android/server/wm/MWCommandInfo;->supportsReleaseBuild()Z

    move-result v5

    if-eqz v5, :cond_34

    .line 143
    :cond_2b
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    invoke-interface {v4}, Lcom/android/server/wm/MWCommandInfo;->cmd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_37
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mInitialized:Z

    return-void
.end method

.method public final invokeCommand(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mCommandMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_42

    .line 154
    :try_start_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke cmd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    method="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p2, p1, v1

    const/4 p2, 0x1

    aput-object p3, p1, p2

    .line 155
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_3d} :catch_3e

    return p0

    :catch_3e
    move-exception p0

    .line 157
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_42
    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 171
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 173
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 175
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    :goto_14
    if-eqz v2, :cond_1e

    .line 177
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    goto :goto_14

    :cond_1e
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 180
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 181
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/MultiWindowShellCommand;->execute(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 1

    return-void
.end method

.method public final printHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string p0, "MultiWindow manager dump options:"

    .line 647
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_26

    const-string/jumbo p0, "support [on/off] : multiwindow dynamic enable/disable"

    .line 650
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "force-freeform [on/off] : launch as freeform by force"

    .line 651
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "visibletasks : visible task list"

    .line 658
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "reset-help : reset handler help count"

    .line 661
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo p0, "toggle-freeform : toggle freeform mode of top focused activity"

    .line 664
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_26
    const-string p0, "adb shell dumpsys activity mt : print all about multi-tasking"

    .line 675
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setSupportsAllCommands(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 165
    iput-boolean p1, p0, Lcom/android/server/wm/MultiWindowShellCommand;->mSupportsAllCommands:Z

    return-void
.end method
