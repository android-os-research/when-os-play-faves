.class public Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field public final mService:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    return-void
.end method


# virtual methods
.method public final addBrightnessWeights(Ljava/io/PrintWriter;)I
    .registers 8

    .line 297
    sget-boolean p1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez p1, :cond_d

    .line 298
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "Error: available for sec long-term model"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 301
    :cond_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    :try_start_12
    const-string v1, ":"

    .line 303
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 304
    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 305
    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x2

    .line 306
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/4 v5, 0x3

    .line 307
    aget-object p1, p1, v5

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 308
    iget-object v5, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v2, v3, v4, p1}, Lcom/android/server/display/DisplayManagerService;->addBrightnessWeights(FFFF)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_38} :catch_39

    return v1

    .line 310
    :catch_39
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: failed to add brightness weights"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0
.end method

.method public final clearUserPreferredDisplayMode()I
    .registers 3

    .line 368
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 372
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_17

    .line 374
    :catch_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid format of display ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 v0, -0x1

    .line 378
    :goto_17
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final doShortTermReset()I
    .registers 1

    .line 283
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->doShortTermReset()V

    const/4 p0, 0x0

    return p0
.end method

.method public final getActiveDisplayModeAtStart()I
    .registers 6

    .line 405
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 407
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no displayId specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 412
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_5b

    .line 418
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService;->getActiveDisplayModeAtStart(I)Landroid/view/Display$Mode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    .line 420
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Boot display mode: null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 423
    :cond_28
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Boot display mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 414
    :catch_5b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid displayId"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final getAmbientBrightnessInfo(Ljava/io/PrintWriter;)I
    .registers 5

    .line 264
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 266
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: no lux specified"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    const/high16 v2, -0x40800000    # -1.0f

    .line 271
    :try_start_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_26

    .line 275
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "Error: lux should be a positive number"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 278
    :cond_26
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayManagerService;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getDisplays()I
    .registers 6

    .line 192
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 194
    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Displays:"

    .line 196
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 197
    :goto_21
    array-length v3, v0

    if-ge v2, v3, :cond_3d

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_3d
    return v1
.end method

.method public final getMatchContentFrameRateUserPreference()I
    .registers 4

    .line 457
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 458
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 459
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Match content frame rate type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getMatchContentFrameRateUserPreference()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserDisabledHdrTypes()I
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 489
    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 490
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getUserDisabledHdrTypes()[I

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User disabled HDR types: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUserPreferredDisplayMode()I
    .registers 6

    .line 383
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 387
    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_17

    .line 389
    :catch_b
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid format of display ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 v0, -0x1

    .line 393
    :goto_17
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayManagerService;->getUserPreferredDisplayModeInternal(I)Landroid/view/Display$Mode;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    .line 395
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "User preferred display mode: null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 399
    :cond_2a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User preferred display mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 399
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 7

    if-nez p1, :cond_7

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 49
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_206

    goto/16 :goto_17e

    :sswitch_17
    const-string v2, "dwb-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto/16 :goto_17e

    :cond_21
    const/16 v1, 0x1a

    goto/16 :goto_17e

    :sswitch_25
    const-string v2, "clear-user-preferred-display-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto/16 :goto_17e

    :cond_2f
    const/16 v1, 0x19

    goto/16 :goto_17e

    :sswitch_33
    const-string/jumbo v2, "set-user-disabled-hdr-types"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    goto/16 :goto_17e

    :cond_3e
    const/16 v1, 0x18

    goto/16 :goto_17e

    :sswitch_42
    const-string v2, "dmd-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto/16 :goto_17e

    :cond_4c
    const/16 v1, 0x17

    goto/16 :goto_17e

    :sswitch_50
    const-string v2, "dmd-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5a

    goto/16 :goto_17e

    :cond_5a
    const/16 v1, 0x16

    goto/16 :goto_17e

    :sswitch_5e
    const-string v2, "get-match-content-frame-rate-pref"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    goto/16 :goto_17e

    :cond_68
    const/16 v1, 0x15

    goto/16 :goto_17e

    :sswitch_6c
    const-string/jumbo v2, "set-brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    goto/16 :goto_17e

    :cond_77
    const/16 v1, 0x14

    goto/16 :goto_17e

    :sswitch_7b
    const-string/jumbo v2, "set-match-content-frame-rate-pref"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_86

    goto/16 :goto_17e

    :cond_86
    const/16 v1, 0x13

    goto/16 :goto_17e

    :sswitch_8a
    const-string v2, "get-ambient-brightness-info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    goto/16 :goto_17e

    :cond_94
    const/16 v1, 0x12

    goto/16 :goto_17e

    :sswitch_98
    const-string v2, "get-active-display-mode-at-start"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    goto/16 :goto_17e

    :cond_a2
    const/16 v1, 0x11

    goto/16 :goto_17e

    :sswitch_a6
    const-string v2, "ab-short-term-reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b0

    goto/16 :goto_17e

    :cond_b0
    const/16 v1, 0x10

    goto/16 :goto_17e

    :sswitch_b4
    const-string v2, "ab-logging-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_be

    goto/16 :goto_17e

    :cond_be
    const/16 v1, 0xf

    goto/16 :goto_17e

    :sswitch_c2
    const-string v2, "ab-test-disable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cc

    goto/16 :goto_17e

    :cond_cc
    const/16 v1, 0xe

    goto/16 :goto_17e

    :sswitch_d0
    const-string v2, "dwb-set-cct"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    goto/16 :goto_17e

    :cond_da
    const/16 v1, 0xd

    goto/16 :goto_17e

    :sswitch_de
    const-string v2, "ab-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e8

    goto/16 :goto_17e

    :cond_e8
    const/16 v1, 0xc

    goto/16 :goto_17e

    :sswitch_ec
    const-string v2, "dual-screen-off"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f6

    goto/16 :goto_17e

    :cond_f6
    const/16 v1, 0xb

    goto/16 :goto_17e

    :sswitch_fa
    const-string v2, "dock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_104

    goto/16 :goto_17e

    :cond_104
    const/16 v1, 0xa

    goto/16 :goto_17e

    :sswitch_108
    const-string v2, "dual-screen-on"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_112

    goto/16 :goto_17e

    :cond_112
    const/16 v1, 0x9

    goto/16 :goto_17e

    :sswitch_116
    const-string v2, "get-user-preferred-display-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_120

    goto/16 :goto_17e

    :cond_120
    const/16 v1, 0x8

    goto/16 :goto_17e

    :sswitch_124
    const-string/jumbo v2, "set-user-preferred-display-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12e

    goto :goto_17e

    :cond_12e
    const/4 v1, 0x7

    goto :goto_17e

    :sswitch_130
    const-string v2, "dwb-logging-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_139

    goto :goto_17e

    :cond_139
    const/4 v1, 0x6

    goto :goto_17e

    :sswitch_13b
    const-string/jumbo v2, "undock"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_145

    goto :goto_17e

    :cond_145
    const/4 v1, 0x5

    goto :goto_17e

    :sswitch_147
    const-string v2, "get-user-disabled-hdr-types"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_150

    goto :goto_17e

    :cond_150
    const/4 v1, 0x4

    goto :goto_17e

    :sswitch_152
    const-string v2, "ab-test-enable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15b

    goto :goto_17e

    :cond_15b
    const/4 v1, 0x3

    goto :goto_17e

    :sswitch_15d
    const-string v2, "ab-add-brightness-weights"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_166

    goto :goto_17e

    :cond_166
    const/4 v1, 0x2

    goto :goto_17e

    :sswitch_168
    const-string v2, "get-displays"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_171

    goto :goto_17e

    :cond_171
    move v1, v3

    goto :goto_17e

    :sswitch_173
    const-string/jumbo v2, "reset-brightness-configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17d

    goto :goto_17e

    :cond_17d
    move v1, v4

    :goto_17e
    packed-switch v1, :pswitch_data_274

    .line 116
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 62
    :pswitch_186
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result p0

    return p0

    .line 84
    :pswitch_18b
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->clearUserPreferredDisplayMode()I

    move-result p0

    return p0

    .line 94
    :pswitch_190
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setUserDisabledHdrTypes()I

    move-result p0

    return p0

    .line 64
    :pswitch_195
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayModeDirectorLoggingEnabled(Z)I

    move-result p0

    return p0

    .line 66
    :pswitch_19a
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayModeDirectorLoggingEnabled(Z)I

    move-result p0

    return p0

    .line 92
    :pswitch_19f
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getMatchContentFrameRateUserPreference()I

    move-result p0

    return p0

    .line 52
    :pswitch_1a4
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result p0

    return p0

    .line 90
    :pswitch_1a9
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setMatchContentFrameRateUserPreference()I

    move-result p0

    return p0

    .line 71
    :pswitch_1ae
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerShellCommand;->getAmbientBrightnessInfo(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 88
    :pswitch_1b3
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getActiveDisplayModeAtStart()I

    move-result p0

    return p0

    .line 73
    :pswitch_1b8
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->doShortTermReset()I

    move-result p0

    return p0

    .line 58
    :pswitch_1bd
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result p0

    return p0

    .line 79
    :pswitch_1c2
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayManagerShellCommand;->setTestModeEnabled(Z)I

    move-result p0

    return p0

    .line 68
    :pswitch_1c7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setAmbientColorTemperatureOverride()I

    move-result p0

    return p0

    .line 56
    :pswitch_1cc
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setAutoBrightnessLoggingEnabled(Z)I

    move-result p0

    return p0

    :pswitch_1d1
    return v4

    .line 100
    :pswitch_1d2
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setDockedAndIdle()I

    move-result p0

    return p0

    :pswitch_1d7
    return v4

    .line 86
    :pswitch_1d8
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getUserPreferredDisplayMode()I

    move-result p0

    return p0

    .line 82
    :pswitch_1dd
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setUserPreferredDisplayMode()I

    move-result p0

    return p0

    .line 60
    :pswitch_1e2
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setDisplayWhiteBalanceLoggingEnabled(Z)I

    move-result p0

    return p0

    .line 102
    :pswitch_1e7
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->unsetDockedAndIdle()I

    move-result p0

    return p0

    .line 96
    :pswitch_1ec
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getUserDisabledHdrTypes()I

    move-result p0

    return p0

    .line 77
    :pswitch_1f1
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayManagerShellCommand;->setTestModeEnabled(Z)I

    move-result p0

    return p0

    .line 75
    :pswitch_1f6
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerShellCommand;->addBrightnessWeights(Ljava/io/PrintWriter;)I

    move-result p0

    return p0

    .line 98
    :pswitch_1fb
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getDisplays()I

    move-result p0

    return p0

    .line 54
    :pswitch_200
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result p0

    return p0

    nop

    :sswitch_data_206
    .sparse-switch
        -0x59bb9cc8 -> :sswitch_173
        -0x56ff2b78 -> :sswitch_168
        -0x42826ca9 -> :sswitch_15d
        -0x3e25a88e -> :sswitch_152
        -0x3cdc7364 -> :sswitch_147
        -0x321bc3b4 -> :sswitch_13b
        -0x2b98d0f1 -> :sswitch_130
        -0x28f4f10f -> :sswitch_124
        -0x23de541b -> :sswitch_116
        -0x10534131 -> :sswitch_108
        0x2f2233 -> :sswitch_fa
        0x5eb1a7f -> :sswitch_ec
        0x1cd1c6dd -> :sswitch_de
        0x327f7a8b -> :sswitch_d0
        0x3cff2ed9 -> :sswitch_c2
        0x40f5acce -> :sswitch_b4
        0x4af796cb -> :sswitch_a6
        0x4b6a78f7 -> :sswitch_98
        0x5370b1fe -> :sswitch_8a
        0x552bd509 -> :sswitch_7b
        0x5fa7aa9c -> :sswitch_6c
        0x6f0f04fd -> :sswitch_5e
        0x6fae31a8 -> :sswitch_50
        0x70e83ec3 -> :sswitch_42
        0x72f055a8 -> :sswitch_33
        0x7bc64a5c -> :sswitch_25
        0x7c0d4adc -> :sswitch_17
    .end sparse-switch

    :pswitch_data_274
    .packed-switch 0x0
        :pswitch_200
        :pswitch_1fb
        :pswitch_1f6
        :pswitch_1f1
        :pswitch_1ec
        :pswitch_1e7
        :pswitch_1e2
        :pswitch_1dd
        :pswitch_1d8
        :pswitch_1d7
        :pswitch_1d2
        :pswitch_1d1
        :pswitch_1cc
        :pswitch_1c7
        :pswitch_1c2
        :pswitch_1bd
        :pswitch_1b8
        :pswitch_1b3
        :pswitch_1ae
        :pswitch_1a9
        :pswitch_1a4
        :pswitch_19f
        :pswitch_19a
        :pswitch_195
        :pswitch_190
        :pswitch_18b
        :pswitch_186
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 122
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Display manager commands:"

    .line 123
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 124
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 125
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, "  set-brightness BRIGHTNESS"

    .line 127
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    .line 128
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset-brightness-configuration"

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Reset the brightness to its default configuration."

    .line 130
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ab-logging-enable"

    .line 131
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enable auto-brightness logging."

    .line 132
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ab-logging-disable"

    .line 133
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Disable auto-brightness logging."

    .line 134
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dwb-logging-enable"

    .line 135
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enable display white-balance logging."

    .line 136
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dwb-logging-disable"

    .line 137
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Disable display white-balance logging."

    .line 138
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dmd-logging-enable"

    .line 139
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enable display mode director logging."

    .line 140
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dmd-logging-disable"

    .line 141
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Disable display mode director logging."

    .line 142
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dwb-set-cct CCT"

    .line 143
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the ambient color temperature override to CCT (use -1 to disable)."

    .line 144
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-ambient-brightness-info [lux]"

    .line 146
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Gets the ambient brightness thresholds and brightness info."

    .line 147
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ab-short-term-reset"

    .line 148
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Do short-term reset immediately."

    .line 149
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ab-test-enable"

    .line 150
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Enable adaptive brightness test mode for sec long-term model."

    .line 151
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ab-test-disable"

    .line 152
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Disable adaptive brightness test mode for sec long-term model."

    .line 153
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ab-add-brightness-weights [lux]:[brightness(0.0f~1.0f)]:[durationSec]:[continuity]"

    .line 154
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Add brightness weights directly  for sec long-term model."

    .line 155
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-user-preferred-display-mode WIDTH HEIGHT REFRESH-RATE DISPLAY_ID (optional)"

    .line 157
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the user preferred display mode which has fields WIDTH, HEIGHT and REFRESH-RATE. If DISPLAY_ID is passed, the mode change is applied to displaywith id = DISPLAY_ID, else mode change is applied globally."

    .line 159
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  clear-user-preferred-display-mode DISPLAY_ID (optional)"

    .line 162
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Clears the user preferred display mode. If DISPLAY_ID is passed, the mode is cleared for  display with id = DISPLAY_ID, else mode is cleared globally."

    .line 163
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-user-preferred-display-mode DISPLAY_ID (optional)"

    .line 165
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns the user preferred display mode or null if no mode is set by user.If DISPLAY_ID is passed, the mode for display with id = DISPLAY_ID is returned, else global display mode is returned."

    .line 166
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-active-display-mode-at-start DISPLAY_ID"

    .line 169
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns the display mode which was found at boot time of display with id = DISPLAY_ID"

    .line 170
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-match-content-frame-rate-pref PREFERENCE"

    .line 172
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the match content frame rate preference as PREFERENCE "

    .line 173
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-match-content-frame-rate-pref"

    .line 174
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns the match content frame rate preference"

    .line 175
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-user-disabled-hdr-types TYPES..."

    .line 176
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the user disabled HDR types as TYPES"

    .line 177
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-user-disabled-hdr-types"

    .line 178
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns the user disabled HDR types"

    .line 179
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get-displays [CATEGORY]"

    .line 180
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Returns the current displays. Can specify string category among"

    .line 181
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    DisplayManager.DISPLAY_CATEGORY_*; must use the actual string value."

    .line 182
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dock"

    .line 183
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets brightness to docked + idle screen brightness mode"

    .line 184
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  undock"

    .line 185
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets brightness to active (normal) screen brightness mode"

    .line 186
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string v0, ""

    .line 188
    invoke-static {p0, v0}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final resetBrightnessConfiguration()I
    .registers 1

    .line 226
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService;->resetBrightnessConfigurations()V

    const/4 p0, 0x0

    return p0
.end method

.method public final setAmbientColorTemperatureOverride()I
    .registers 3

    .line 246
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 248
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no cct specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 253
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_1c

    .line 258
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerService;->setAmbientColorTemperatureOverride(F)V

    const/4 p0, 0x0

    return p0

    .line 255
    :catch_1c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: cct should be a number"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setAutoBrightnessLoggingEnabled(Z)I
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setAutoBrightnessLoggingEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setBrightness()I
    .registers 4

    .line 204
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 206
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no brightness specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_11
    const/high16 v2, -0x40800000    # -1.0f

    .line 211
    :try_start_13
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_17

    :catch_17
    const/4 v0, 0x0

    cmpg-float v0, v2, v0

    if-ltz v0, :cond_36

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_23

    goto :goto_36

    .line 219
    :cond_23
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 220
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 221
    invoke-virtual {p0, v0, v2}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    return v0

    .line 215
    :cond_36
    :goto_36
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setDisplayModeDirectorLoggingEnabled(Z)I
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayModeDirectorLoggingEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setDisplayWhiteBalanceLoggingEnabled(Z)I
    .registers 2

    .line 236
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setDisplayWhiteBalanceLoggingEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setDockedAndIdle()I
    .registers 3

    .line 515
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(ZI)V

    return v1
.end method

.method public final setMatchContentFrameRateUserPreference()I
    .registers 4

    .line 429
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 431
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no matchContentFrameRatePref specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 437
    :cond_11
    :try_start_11
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_38

    if-gez v0, :cond_21

    .line 443
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of matchContentFrameRatePreference"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 447
    :cond_21
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 448
    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 451
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayManagerShellCommand;->toRefreshRateSwitchingType(I)I

    move-result p0

    .line 452
    invoke-virtual {v1, p0}, Landroid/hardware/display/DisplayManager;->setRefreshRateSwitchingType(I)V

    const/4 p0, 0x0

    return p0

    .line 439
    :catch_38
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid format of matchContentFrameRatePreference"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setTestModeEnabled(Z)I
    .registers 4

    .line 288
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v0, :cond_d

    .line 289
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Error: available for sec long-term model"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    :cond_d
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerService;->setTestModeEnabled(Z)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setUserDisabledHdrTypes()I
    .registers 10

    .line 465
    invoke-virtual {p0}, Landroid/os/ShellCommand;->peekRemainingArgs()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 467
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no userDisabledHdrTypes specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 471
    :cond_11
    array-length v2, v0

    new-array v2, v2, [I

    .line 474
    :try_start_14
    array-length v3, v0

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_18
    if-ge v5, v3, :cond_28

    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    .line 475
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v2, v6
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_24} :catch_3a

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_18

    .line 481
    :cond_28
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 482
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 483
    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManager;->setUserDisabledHdrTypes([I)V

    return v4

    .line 478
    :catch_3a
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid format of userDisabledHdrTypes"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final setUserPreferredDisplayMode()I
    .registers 7

    .line 318
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_11

    .line 320
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no width specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 324
    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21

    .line 326
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no height specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 330
    :cond_21
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_31

    .line 332
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: no refresh-rate specified"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 339
    :cond_31
    :try_start_31
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 340
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 341
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_3d} :catch_72

    if-ltz v0, :cond_41

    if-gez v2, :cond_50

    :cond_41
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_50

    .line 347
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid value of resolution (width, height) and refresh rate"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 352
    :cond_50
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_66

    .line 356
    :try_start_57
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_5b
    .catch Ljava/lang/NumberFormatException; {:try_start_57 .. :try_end_5b} :catch_5c

    goto :goto_66

    .line 358
    :catch_5c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid format of display ID"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    .line 362
    :cond_66
    :goto_66
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    new-instance v1, Landroid/view/Display$Mode;

    invoke-direct {v1, v0, v2, v3}, Landroid/view/Display$Mode;-><init>(IIF)V

    invoke-virtual {p0, v5, v1}, Lcom/android/server/display/DisplayManagerService;->setUserPreferredDisplayModeInternal(ILandroid/view/Display$Mode;)V

    const/4 p0, 0x0

    return p0

    .line 343
    :catch_72
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Error: invalid format of width, height or refresh rate"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method public final toRefreshRateSwitchingType(I)I
    .registers 2

    if-eqz p1, :cond_20

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1f

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1f

    .line 508
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid value of matchContentFrameRate type."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayManagerShellCommand"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :cond_1f
    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public final unsetDockedAndIdle()I
    .registers 2

    .line 520
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(ZI)V

    return v0
.end method
