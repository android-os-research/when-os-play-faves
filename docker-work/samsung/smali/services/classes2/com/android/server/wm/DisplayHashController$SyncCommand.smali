.class public Lcom/android/server/wm/DisplayHashController$SyncCommand;
.super Ljava/lang/Object;
.source "DisplayHashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayHashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SyncCommand"
.end annotation


# static fields
.field public static final WAIT_TIME_S:I = 0x5


# instance fields
.field public final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mResult:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public static synthetic $r8$lambda$-PuUTpoo9fKHvhyNIF5S31bwF9A(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;Landroid/service/displayhash/IDisplayHashingService;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->lambda$run$1(Ljava/util/function/BiConsumer;Landroid/service/displayhash/IDisplayHashingService;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VY4K2WoJGDAQJfvMijsf5NZ6YK4(Lcom/android/server/wm/DisplayHashController$SyncCommand;Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;->lambda$run$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;)V
    .registers 3

    .line 438
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$SyncCommand-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    return-void
.end method

.method private synthetic lambda$run$0(Landroid/os/Bundle;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mResult:Landroid/os/Bundle;

    .line 447
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method private synthetic lambda$run$1(Ljava/util/function/BiConsumer;Landroid/service/displayhash/IDisplayHashingService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 449
    invoke-interface {p1, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/displayhash/IDisplayHashingService;",
            "Landroid/os/RemoteCallback;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;)V

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayHashController;->-$$Nest$mconnectAndRun(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$Command;)V

    .line 453
    :try_start_a
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x5

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p1

    const-string v0, "WindowManager"

    const-string v1, "Failed to wait for command"

    .line 455
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    :goto_1c
    iget-object p0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mResult:Landroid/os/Bundle;

    return-object p0
.end method
