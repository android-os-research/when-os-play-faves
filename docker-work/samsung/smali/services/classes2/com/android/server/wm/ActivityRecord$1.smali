.class public Lcom/android/server/wm/ActivityRecord$1;
.super Ljava/lang/Object;
.source "ActivityRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 1077
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const-string v0, "ActivityTaskManager"

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity pause timeout for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1084
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1085
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1087
    :cond_2f
    :try_start_2f
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-wide v4, v1, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pausing "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V

    .line 1088
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$1;->this$0:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 1089
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2f .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_59
    move-exception p0

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
