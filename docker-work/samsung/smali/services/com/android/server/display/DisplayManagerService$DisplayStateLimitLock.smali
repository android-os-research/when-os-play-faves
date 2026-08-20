.class public Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;
.super Ljava/lang/Object;
.source "DisplayManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DisplayStateLimitLock"
.end annotation


# instance fields
.field public mLastRequestedState:I

.field public mLastRequestedTime:J

.field public final mLock:Landroid/os/IBinder;

.field public final mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;IJ)V
    .registers 6

    .line 6091
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6092
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil;->callerInfoToString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mTag:Ljava/lang/String;

    .line 6093
    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLock:Landroid/os/IBinder;

    .line 6094
    iput p3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLastRequestedState:I

    .line 6095
    iput-wide p4, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLastRequestedTime:J

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 6100
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmRequestDisplayStateLock(Lcom/android/server/display/DisplayManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "DisplayManagerService"

    .line 6101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisplayStateLimitLock: binderDied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6103
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmDisplayStateLimitLocks(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_2b

    .line 6105
    monitor-exit v0

    return-void

    .line 6108
    :cond_2b
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLock:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$msetDisplayStateLimitInternal(Lcom/android/server/display/DisplayManagerService;Landroid/os/IBinder;I)V

    .line 6109
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 6114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLastRequestedState:I

    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (lock:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLock:Landroid/os/IBinder;

    invoke-static {v3}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", t:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mLastRequestedTime:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStateLimitLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
