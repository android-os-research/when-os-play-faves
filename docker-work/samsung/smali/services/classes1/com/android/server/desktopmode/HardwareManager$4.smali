.class public Lcom/android/server/desktopmode/HardwareManager$4;
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

    .line 194
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 7

    const-string v0, "ACTION"

    .line 197
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEVTYPE"

    .line 198
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PRODUCT"

    .line 199
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "4b4/f645"

    .line 204
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 205
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_47

    .line 206
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUEvent(device) :: action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", devType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", product = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_47
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_4e
    const-string v1, "add"

    .line 210
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 211
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attached US bootmode for dex pad"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/16 v1, 0x72

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetRawDockStateLocked(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 213
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v1, "04b4:f645"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetRawDockUsbpdIdsLocked(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V

    .line 214
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateDockStatusLocked(Lcom/android/server/desktopmode/HardwareManager;)Z

    goto :goto_97

    :cond_73
    const-string/jumbo v1, "remove"

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 217
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Detached US bootmode for dex pad"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetRawDockStateLocked(Lcom/android/server/desktopmode/HardwareManager;I)V

    .line 219
    iget-object v0, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const-string v1, "04b4:f645"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$msetRawDockUsbpdIdsLocked(Lcom/android/server/desktopmode/HardwareManager;Ljava/lang/String;)V

    .line 220
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$4;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateDockStatusLocked(Lcom/android/server/desktopmode/HardwareManager;)Z

    .line 222
    :cond_97
    :goto_97
    monitor-exit p1

    goto :goto_9c

    :catchall_99
    move-exception p0

    monitor-exit p1
    :try_end_9b
    .catchall {:try_start_4e .. :try_end_9b} :catchall_99

    throw p0

    :cond_9c
    :goto_9c
    return-void
.end method
