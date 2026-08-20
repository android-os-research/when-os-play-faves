.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->sendCoverSwitchStateLocked(ZZZZ)Z
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

    .line 675
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 678
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverHideAnimator(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/CoverHideAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmAnimationStartCallback(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/sepunion/cover/CoverHideAnimator;->playCoverHideAnimation(Ljava/lang/Runnable;)V

    .line 679
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverStateLock(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 680
    :try_start_16
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmStateNotifier(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$8;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 681
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_35

    throw p0
.end method
