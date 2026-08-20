.class public Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;
.super Ljava/lang/Object;
.source "BlockerManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/BlockerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DesktopModeBlockerInfo"
.end annotation


# instance fields
.field public final blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

.field public final name:Ljava/lang/String;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/BlockerManager;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/BlockerManager;Lcom/samsung/android/desktopmode/IDesktopModeBlocker;Ljava/lang/String;II)V
    .registers 6

    .line 32
    iput-object p1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/BlockerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    .line 34
    iput-object p3, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->name:Ljava/lang/String;

    .line 35
    iput p4, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->pid:I

    .line 36
    iput p5, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 41
    invoke-static {}, Lcom/android/server/desktopmode/BlockerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/BlockerManager;

    invoke-static {v0}, Lcom/android/server/desktopmode/BlockerManager;->-$$Nest$fgetmBlockers(Lcom/android/server/desktopmode/BlockerManager;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 43
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->this$0:Lcom/android/server/desktopmode/BlockerManager;

    invoke-static {v1}, Lcom/android/server/desktopmode/BlockerManager;->-$$Nest$fgetmBlockers(Lcom/android/server/desktopmode/BlockerManager;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_3a

    .line 45
    iget-object v0, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->blocker:Lcom/samsung/android/desktopmode/IDesktopModeBlocker;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeBlocker;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_3a
    move-exception p0

    .line 44
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/BlockerManager$DesktopModeBlockerInfo;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
