.class public Lcom/android/server/desktopmode/HardwareManager$3;
.super Landroid/os/UEventObserver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_7
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetRawDockStateLocked(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 184
    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v2, "USBPD_IDS"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetRawDockUsbpdIdsLocked(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V

    .line 185
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$3;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateDockStatusLocked(Lcom/android/server/desktopmode/HardwareManager;)Z
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_26} :catch_29
    .catchall {:try_start_7 .. :try_end_26} :catchall_27

    goto :goto_41

    :catchall_27
    move-exception p0

    goto :goto_43

    .line 187
    :catch_29
    :try_start_29
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not parse switch state from event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_41
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_29 .. :try_end_44} :catchall_27

    throw p0
.end method
