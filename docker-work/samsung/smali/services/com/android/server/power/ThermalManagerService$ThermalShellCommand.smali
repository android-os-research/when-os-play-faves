.class public Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;
.super Landroid/os/ShellCommand;
.source "ThermalManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ThermalManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThermalShellCommand"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService;)V
    .registers 2

    .line 558
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4

    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_6

    :cond_4
    const-string v0, ""

    :goto_6
    const-string/jumbo v1, "reset"

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    const-string/jumbo v1, "override-status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 567
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 563
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runOverrideStatus()I

    move-result p0

    return p0

    .line 565
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->runReset()I

    move-result p0

    return p0
.end method

.method public onHelp()V
    .registers 2

    .line 611
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Thermal service (thermalservice) commands:"

    .line 612
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 613
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 614
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 615
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  override-status STATUS"

    .line 616
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    sets and locks the thermal status of the device to STATUS."

    .line 617
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    status code is defined in android.os.Temperature."

    .line 618
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset"

    .line 619
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    unlocks the thermal status of the device."

    .line 620
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final runOverrideStatus()I
    .registers 7

    .line 585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 587
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_67

    const/4 v3, -0x1

    .line 590
    :try_start_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_11} :catch_4a
    .catchall {:try_start_9 .. :try_end_11} :catchall_67

    .line 595
    :try_start_11
    invoke-static {v4}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid status: "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_67

    .line 605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    .line 599
    :cond_2f
    :try_start_2f
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_67

    .line 600
    :try_start_36
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fputmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;Z)V

    .line 601
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0, v4}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$msetStatusLocked(Lcom/android/server/power/ThermalManagerService;I)V

    .line 602
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_47

    const/4 p0, 0x0

    .line 605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_47
    move-exception p0

    .line 602
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    :try_start_49
    throw p0

    :catch_4a
    move-exception p0

    .line 592
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_49 .. :try_end_63} :catchall_67

    .line 605
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_67
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 606
    throw p0
.end method

.method public final runReset()I
    .registers 6

    .line 572
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 574
    :try_start_4
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {v2}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fgetmLock(Lcom/android/server/power/ThermalManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_1e

    .line 575
    :try_start_b
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$fputmIsStatusOverride(Lcom/android/server/power/ThermalManagerService;Z)V

    .line 576
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalShellCommand;->this$0:Lcom/android/server/power/ThermalManagerService;

    invoke-static {p0}, Lcom/android/server/power/ThermalManagerService;->-$$Nest$monTemperatureMapChangedLocked(Lcom/android/server/power/ThermalManagerService;)V

    .line 577
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    .line 580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1b
    move-exception p0

    .line 578
    :try_start_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception p0

    .line 580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 581
    throw p0
.end method
