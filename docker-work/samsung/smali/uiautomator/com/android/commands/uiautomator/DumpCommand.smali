.class public Lcom/android/commands/uiautomator/DumpCommand;
.super Lcom/android/commands/uiautomator/Launcher$Command;
.source "DumpCommand.java"


# static fields
.field private static final DEFAULT_DUMP_FILE:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Ljava/io/File;

    .line 42
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "window_dump.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 45
    const-string v0, "dump"

    invoke-direct {p0, v0}, Lcom/android/commands/uiautomator/Launcher$Command;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public detailedOptions()Ljava/lang/String;
    .registers 3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    dump [--verbose][file]\n      [--compressed]: dumps compressed layout information.\n      [file]: the location where the dumped XML should be stored, default is\n      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method public run([Ljava/lang/String;)V
    .registers 15
    .param p1, "args"    # [Ljava/lang/String;

    .line 63
    sget-object v0, Lcom/android/commands/uiautomator/DumpCommand;->DEFAULT_DUMP_FILE:Ljava/io/File;

    .line 64
    .local v0, "dumpFile":Ljava/io/File;
    const/4 v1, 0x1

    .line 65
    .local v1, "verboseMode":Z
    const/4 v2, 0x0

    .line 67
    .local v2, "allWindows":Z
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_7
    if-ge v5, v3, :cond_30

    aget-object v6, p1, v5

    .line 68
    .local v6, "arg":Ljava/lang/String;
    const-string v7, "--compressed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 69
    const/4 v1, 0x0

    goto :goto_2d

    .line 70
    :cond_15
    const-string v7, "--windows"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 71
    const/4 v2, 0x1

    goto :goto_2d

    .line 72
    :cond_1f
    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 73
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 67
    .end local v6    # "arg":Ljava/lang/String;
    :cond_2d
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 77
    :cond_30
    new-instance v3, Lcom/android/uiautomator/core/UiAutomationShellWrapper;

    invoke-direct {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;-><init>()V

    .line 78
    .local v3, "automationWrapper":Lcom/android/uiautomator/core/UiAutomationShellWrapper;
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->connect()V

    .line 79
    const/4 v5, 0x1

    if-eqz v1, :cond_3f

    .line 81
    invoke-virtual {v3, v4}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setCompressedLayoutHierarchy(Z)V

    goto :goto_42

    .line 83
    :cond_3f
    invoke-virtual {v3, v5}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->setCompressedLayoutHierarchy(Z)V

    .line 90
    :goto_42
    :try_start_42
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->getUiAutomation()Landroid/app/UiAutomation;

    move-result-object v6

    .line 91
    .local v6, "uiAutomation":Landroid/app/UiAutomation;
    const-wide/16 v7, 0x3e8

    const-wide/16 v9, 0x2710

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/UiAutomation;->waitForIdle(JJ)V

    .line 92
    if-eqz v2, :cond_69

    .line 93
    invoke-virtual {v6}, Landroid/app/UiAutomation;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v7

    .line 94
    .local v7, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v8, v7, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v7, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    .line 95
    invoke-virtual {v6, v7}, Landroid/app/UiAutomation;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 96
    nop

    .line 97
    invoke-virtual {v6}, Landroid/app/UiAutomation;->getWindowsOnAllDisplays()Landroid/util/SparseArray;

    move-result-object v8

    .line 98
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v9

    .line 96
    invoke-static {v8, v0, v9}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowsToFile(Landroid/util/SparseArray;Ljava/io/File;Landroid/hardware/display/DisplayManagerGlobal;)V

    .line 99
    .end local v7    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    goto :goto_95

    .line 100
    :cond_69
    invoke-virtual {v6}, Landroid/app/UiAutomation;->getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 101
    .local v7, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-nez v7, :cond_7a

    .line 102
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "ERROR: null root node returned by UiTestAutomationBridge."

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_42 .. :try_end_76} :catch_af
    .catchall {:try_start_42 .. :try_end_76} :catchall_ad

    .line 118
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 103
    return-void

    .line 107
    :cond_7a
    :try_start_7a
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v8

    .line 108
    .local v8, "display":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 109
    .local v9, "rotation":I
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 110
    .local v10, "size":Landroid/graphics/Point;
    invoke-virtual {v8, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 111
    iget v11, v10, Landroid/graphics/Point;->x:I

    iget v12, v10, Landroid/graphics/Point;->y:I

    invoke-static {v7, v0, v9, v11, v12}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V
    :try_end_95
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7a .. :try_end_95} :catch_af
    .catchall {:try_start_7a .. :try_end_95} :catchall_ad

    .line 118
    .end local v6    # "uiAutomation":Landroid/app/UiAutomation;
    .end local v7    # "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v8    # "display":Landroid/view/Display;
    .end local v9    # "rotation":I
    .end local v10    # "size":Landroid/graphics/Point;
    :goto_95
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 119
    nop

    .line 120
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v5, v5, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v4, "UI hierchary dumped to: %s"

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    return-void

    .line 118
    :catchall_ad
    move-exception v4

    goto :goto_bb

    .line 114
    :catch_af
    move-exception v4

    .line 115
    .local v4, "re":Ljava/util/concurrent/TimeoutException;
    :try_start_b0
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "ERROR: could not get idle state."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_ad

    .line 118
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 116
    return-void

    .line 118
    .end local v4    # "re":Ljava/util/concurrent/TimeoutException;
    :goto_bb
    invoke-virtual {v3}, Lcom/android/uiautomator/core/UiAutomationShellWrapper;->disconnect()V

    .line 119
    throw v4
.end method

.method public shortHelp()Ljava/lang/String;
    .registers 2

    .line 50
    const-string v0, "creates an XML dump of current UI hierarchy"

    return-object v0
.end method
