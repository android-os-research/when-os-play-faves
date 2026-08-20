.class public final Lcom/android/server/DockObserver$BinderService;
.super Landroid/os/Binder;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DockObserver$BinderService;-><init>(Lcom/android/server/DockObserver;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 544
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "DockObserver"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 545
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 547
    :try_start_13
    iget-object p1, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p1}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_1df

    const/4 v2, 0x0

    if-eqz p3, :cond_b5

    .line 548
    :try_start_1d
    array-length v3, p3

    if-eqz v3, :cond_b5

    const-string v3, "-a"

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto/16 :goto_b5

    .line 579
    :cond_2c
    array-length v3, p3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_86

    const-string/jumbo v3, "set"

    aget-object v4, p3, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 580
    aget-object v2, p3, v5

    const/4 v3, 0x2

    .line 581
    aget-object p3, p3, v3
    :try_end_41
    .catchall {:try_start_1d .. :try_end_41} :catchall_1dc

    :try_start_41
    const-string/jumbo v3, "state"

    .line 583
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 584
    iget-object v2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v2, v5}, Lcom/android/server/DockObserver;->-$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V

    .line 585
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Lcom/android/server/DockObserver;->-$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_1d7

    .line 587
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown set option: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_6e} :catch_70
    .catchall {:try_start_41 .. :try_end_6e} :catchall_1dc

    goto/16 :goto_1d7

    .line 590
    :catch_70
    :try_start_70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad value: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d7

    .line 592
    :cond_86
    array-length v3, p3

    if-ne v3, v5, :cond_a4

    const-string/jumbo v3, "reset"

    aget-object p3, p3, v2

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a4

    .line 593
    iget-object p2, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p2, v2}, Lcom/android/server/DockObserver;->-$$Nest$fputmUpdatesStopped(Lcom/android/server/DockObserver;Z)V

    .line 594
    iget-object p0, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p0}, Lcom/android/server/DockObserver;->-$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/server/DockObserver;->-$$Nest$msetDockStateLocked(Lcom/android/server/DockObserver;I)V

    goto/16 :goto_1d7

    :cond_a4
    const-string p0, "Dump current dock state, or:"

    .line 596
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  set state <value>"

    .line 597
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  reset"

    .line 598
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1d7

    :cond_b5
    :goto_b5
    const-string p3, "Current Dock Observer Service state:"

    .line 549
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 550
    iget-object p3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Lcom/android/server/DockObserver;->-$$Nest$fgetmUpdatesStopped(Lcom/android/server/DockObserver;)Z

    move-result p3

    if-eqz p3, :cond_c7

    const-string p3, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    .line 551
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 553
    :cond_c7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  reported state: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v3}, Lcom/android/server/DockObserver;->-$$Nest$fgetmReportedDockState(Lcom/android/server/DockObserver;)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 554
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  previous state: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v3}, Lcom/android/server/DockObserver;->-$$Nest$fgetmPreviousDockState(Lcom/android/server/DockObserver;)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  actual state: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v3}, Lcom/android/server/DockObserver;->-$$Nest$fgetmActualDockState(Lcom/android/server/DockObserver;)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " last uevent device: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v3}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLastUeventDevice(Lcom/android/server/DockObserver;)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    iget-object p3, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p3}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;

    move-result-object p3

    if-eqz p3, :cond_1d2

    const-string p3, " == Latest states from Driver =="

    .line 563
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move p3, v2

    :goto_13d
    const/16 v3, 0xa

    if-ge p3, v3, :cond_186

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/DockObserver$LogRecent;->uEventTime:[J

    aget-wide v4, v4, p3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/DockObserver$LogRecent;->uEventType:[I

    aget v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " UsbpdIds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/DockObserver$LogRecent;->uEventUsbpdIds:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_13d

    :cond_186
    const-string p3, " == Latest states to Apps =="

    .line 569
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_18b
    if-ge v2, v3, :cond_1d7

    .line 571
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Time: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/DockObserver$LogRecent;->reportTime:[J

    aget-wide v4, v4, v2

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " State: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/DockObserver$LogRecent;->report:[I

    aget v4, v4, v2

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " UsbpdIds: "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/DockObserver$BinderService;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v4}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLogRecent(Lcom/android/server/DockObserver;)Lcom/android/server/DockObserver$LogRecent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/DockObserver$LogRecent;->reportUsbpdIds:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_18b

    :cond_1d2
    const-string p0, " Cannot log latest events!"

    .line 575
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    :cond_1d7
    :goto_1d7
    monitor-exit p1
    :try_end_1d8
    .catchall {:try_start_70 .. :try_end_1d8} :catchall_1dc

    .line 602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1dc
    move-exception p0

    .line 600
    :try_start_1dd
    monitor-exit p1
    :try_end_1de
    .catchall {:try_start_1dd .. :try_end_1de} :catchall_1dc

    :try_start_1de
    throw p0
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1df

    :catchall_1df
    move-exception p0

    .line 602
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 603
    throw p0
.end method
