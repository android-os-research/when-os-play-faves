.class public Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;
.super Ljava/lang/Thread;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoodCatchThread"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .registers 2

    .line 337
    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    .line 338
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 343
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 345
    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    monitor-enter v0

    .line 346
    :try_start_6
    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    iget-object v3, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler-IA;)V

    invoke-static {v1, v2}, Lcom/android/server/sepunion/SemGoodCatchService;->-$$Nest$fputmGoodCatchHandler(Lcom/android/server/sepunion/SemGoodCatchService;Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;)V

    .line 348
    iget-object p0, p0, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchThread;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 349
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    .line 351
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_1d
    move-exception p0

    .line 349
    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p0
.end method
