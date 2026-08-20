.class public Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;
.super Ljava/lang/Object;
.source "SemDesktopModeStateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListenerInfo"
.end annotation


# instance fields
.field public final listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

.field public final name:Ljava/lang/String;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;Lcom/samsung/android/desktopmode/IDesktopModeListener;Ljava/lang/String;II)V
    .registers 6

    .line 165
    iput-object p1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p3, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->name:Ljava/lang/String;

    .line 167
    iput p4, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->pid:I

    .line 168
    iput p5, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    .line 169
    iput-object p2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 174
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1c
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-static {v0}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->-$$Nest$fgetmInnerLock(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 176
    :try_start_23
    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->this$0:Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;

    invoke-static {v1}, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;->-$$Nest$fgetmListeners(Lcom/android/server/desktopmode/SemDesktopModeStateNotifier;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v2}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_23 .. :try_end_33} :catchall_3e

    .line 178
    iget-object v0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->listener:Lcom/samsung/android/desktopmode/IDesktopModeListener;

    invoke-interface {v0}, Lcom/samsung/android/desktopmode/IDesktopModeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_3e
    move-exception p0

    .line 177
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/desktopmode/SemDesktopModeStateNotifier$ListenerInfo;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
