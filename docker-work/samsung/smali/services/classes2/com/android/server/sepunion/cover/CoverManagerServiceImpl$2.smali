.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverStateLock(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 127
    :try_start_7
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverState;->updateVisibleRect(I)V

    .line 128
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$mcloneCoverStateLocked(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$mupdateCoverStateToWindowManagerLocked(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Lcom/samsung/android/cover/CoverState;)V

    .line 130
    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverServiceManager(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverServiceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/cover/CoverServiceManager;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    .line 131
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$2;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmStateNotifier(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/sepunion/cover/StateNotifier;->updateCoverSwitchState(Lcom/samsung/android/cover/CoverState;Z)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_3a

    throw p0
.end method
