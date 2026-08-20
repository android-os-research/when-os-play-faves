.class public Lcom/android/server/am/ActivityManagerShellCommand$1;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .registers 7

    const-string v0, "-D"

    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 402
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_16
    const-string v0, "-N"

    .line 403
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 404
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I

    move-result p1

    or-int/lit8 p1, p1, 0x8

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_2b
    const-string v0, "-W"

    .line 405
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 406
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmWaitOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_222

    :cond_3a
    const-string v0, "-P"

    .line 407
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 408
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmProfileFile(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 409
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAutoStop(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_222

    :cond_52
    const-string v0, "--start-profiler"

    .line 410
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6b

    .line 411
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmProfileFile(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 412
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAutoStop(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_222

    :cond_6b
    const-string v0, "--sampling"

    .line 413
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    .line 414
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmSamplingInterval(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_82
    const-string v0, "--streaming"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 416
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStreaming(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_222

    :cond_91
    const-string v0, "--attach-agent"

    .line 417
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "Multiple --attach-agent(-bind) not supported"

    if-eqz v0, :cond_bb

    .line 418
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmAgent(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ab

    .line 419
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 423
    :cond_ab
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAgent(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAttachAgentDuringBind(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_222

    :cond_bb
    const-string v0, "--attach-agent-bind"

    .line 425
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 426
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmAgent(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d3

    .line 427
    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 431
    :cond_d3
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAgent(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    .line 432
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAttachAgentDuringBind(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_222

    :cond_e3
    const-string p2, "-R"

    .line 433
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_fa

    .line 434
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmRepeat(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_fa
    const-string p2, "-S"

    .line 435
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_109

    .line 436
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStopOption(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto/16 :goto_222

    :cond_109
    const-string p2, "--track-allocation"

    .line 437
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_11e

    .line 438
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;)I

    move-result p1

    or-int/lit8 p1, p1, 0x4

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmStartFlags(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_11e
    const-string p2, "--user"

    .line 439
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_135

    .line 440
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmUserId(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_135
    const-string p2, "--receiver-permission"

    .line 441
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_148

    .line 442
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmReceiverPermission(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)V

    goto/16 :goto_222

    :cond_148
    const-string p2, "--display"

    .line 443
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_15f

    .line 444
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmDisplayId(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_15f
    const-string p2, "--windowingMode"

    .line 445
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_176

    .line 446
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmWindowingMode(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_176
    const-string p2, "--forceWindowingMode"

    .line 449
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18d

    .line 450
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmForceWindowingMode(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_18d
    const-string p2, "--activityType"

    .line 452
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a4

    .line 453
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmActivityType(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto/16 :goto_222

    :cond_1a4
    const-string p2, "--task"

    .line 454
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1ba

    .line 455
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmTaskId(Lcom/android/server/am/ActivityManagerShellCommand;I)V

    goto :goto_222

    :cond_1ba
    const-string p2, "--task-overlay"

    .line 456
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1c8

    .line 457
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmIsTaskOverlay(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto :goto_222

    :cond_1c8
    const-string p2, "--lock-task"

    .line 458
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1d6

    .line 459
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmIsLockTask(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto :goto_222

    :cond_1d6
    const-string p2, "--allow-background-activity-starts"

    .line 460
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1f9

    .line 461
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;

    move-result-object p1

    if-nez p1, :cond_1ef

    .line 462
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;Landroid/app/BroadcastOptions;)V

    .line 464
    :cond_1ef
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fgetmBroadcastOptions(Lcom/android/server/am/ActivityManagerShellCommand;)Landroid/app/BroadcastOptions;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    goto :goto_222

    :cond_1f9
    const-string p2, "--async"

    .line 465
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_207

    .line 466
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmAsync(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto :goto_222

    :cond_207
    const-string p2, "--splashscreen-show-icon"

    .line 467
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_215

    .line 468
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmShowSplashScreen(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    goto :goto_222

    :cond_215
    const-string p2, "--dismiss-keyguard-if-insecure"

    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_223

    .line 470
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->-$$Nest$fputmDismissKeyguardIfInsecure(Lcom/android/server/am/ActivityManagerShellCommand;Z)V

    :goto_222
    return v1

    :cond_223
    return v2
.end method
