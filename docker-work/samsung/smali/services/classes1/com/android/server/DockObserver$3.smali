.class public Lcom/android/server/DockObserver$3;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 2

    .line 520
    iput-object p1, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    const-string v0, "DockObserver"

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CCIC Dock UEVENT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/DockObserver;->-$$Nest$fputmLastUeventDevice(Lcom/android/server/DockObserver;I)V

    .line 527
    :try_start_20
    iget-object v0, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_27} :catch_46

    .line 529
    :try_start_27
    iget-object v1, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    const-string v2, "USBPD_IDS"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/DockObserver;->-$$Nest$fputmUsbpdIds(Lcom/android/server/DockObserver;Ljava/lang/String;)V

    .line 532
    iget-object p0, p0, Lcom/android/server/DockObserver$3;->this$0:Lcom/android/server/DockObserver;

    const-string v1, "SWITCH_STATE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1}, Lcom/android/server/DockObserver;->-$$Nest$msetActualDockStateLocked(Lcom/android/server/DockObserver;I)V

    .line 533
    monitor-exit v0

    goto :goto_5c

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_27 .. :try_end_45} :catchall_43

    :try_start_45
    throw p0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_46} :catch_46

    :catch_46
    const-string p0, "DockObserver"

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not parse switch state from event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void
.end method
