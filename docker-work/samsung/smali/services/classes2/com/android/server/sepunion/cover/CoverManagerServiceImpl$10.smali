.class public Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

.field public final synthetic val$coverSwitchState:Z


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;Z)V
    .registers 3

    .line 879
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iput-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 882
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$fgetmCoverStateLock(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 883
    :try_start_7
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->this$0:Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl$10;->val$coverSwitchState:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, p0, v3, v3, v2}, Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;->-$$Nest$msendCoverSwitchStateLocked(Lcom/android/server/sepunion/cover/CoverManagerServiceImpl;ZZZZ)Z

    .line 884
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p0
.end method
