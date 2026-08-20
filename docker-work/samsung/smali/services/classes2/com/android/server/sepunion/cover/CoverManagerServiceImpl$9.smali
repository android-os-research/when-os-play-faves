.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;
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

    .line 704
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 707
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverStateLock(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 708
    :try_start_7
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmStateNotifier(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/android/server/sepunion/cover/StateNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$9;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverState(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0

    invoke-virtual {v1, v2, p0}, Lcom/android/server/sepunion/cover/StateNotifier;->updatePowerState(IZ)V

    .line 709
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p0
.end method
