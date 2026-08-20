.class public Lcom/android/server/DockObserver$2;
.super Lcom/android/server/ExtconUEventObserver;
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

    .line 496
    iput-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Lcom/android/server/ExtconUEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Lcom/android/server/ExtconUEventObserver$ExtconInfo;Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    const-string p1, "DockObserver"

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dock UEVENT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/DockObserver;->-$$Nest$fputmLastUeventDevice(Lcom/android/server/DockObserver;I)V

    .line 508
    iget-object p1, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {p1}, Lcom/android/server/DockObserver;->-$$Nest$fgetmLock(Lcom/android/server/DockObserver;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_27
    const-string v0, "STATE"

    .line 509
    invoke-virtual {p2, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 511
    iget-object p0, p0, Lcom/android/server/DockObserver$2;->this$0:Lcom/android/server/DockObserver;

    invoke-static {v0}, Lcom/android/server/DockObserver$ExtconStateProvider;->fromString(Ljava/lang/String;)Lcom/android/server/DockObserver$ExtconStateProvider;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/server/DockObserver;->-$$Nest$msetDockStateFromProviderLocked(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$ExtconStateProvider;)V

    goto :goto_4f

    :cond_39
    const-string p0, "DockObserver"

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Extcon event missing STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_4f
    monitor-exit p1

    return-void

    :catchall_51
    move-exception p0

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_27 .. :try_end_53} :catchall_51

    throw p0
.end method
