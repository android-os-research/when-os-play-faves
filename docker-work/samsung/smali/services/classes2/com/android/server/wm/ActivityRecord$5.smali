.class public Lcom/android/server/wm/ActivityRecord$5;
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

    .line 1131
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$5;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1135
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$5;->this$0:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const-string v1, "ActivityTaskManager"

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter pip timeout for  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$5;->this$0:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$5;->this$0:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-string/jumbo v2, "timeout"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setHiddenWhileEnteringPinnedMode(ZLjava/lang/String;)V

    .line 1138
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_30
    move-exception p0

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
