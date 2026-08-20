.class Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;
.super Ljava/lang/Object;
.source "FailOnTimeout.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/statements/FailOnTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallableStatement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field private final startLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lorg/junit/internal/runners/statements/FailOnTimeout;


# direct methods
.method private constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout;)V
    .registers 3

    .line 142
    iput-object p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->this$0:Lorg/junit/internal/runners/statements/FailOnTimeout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->startLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout;Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout;)V

    return-void
.end method


# virtual methods
.method public awaitStarted()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 159
    return-void
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->call()Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Throwable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->startLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 148
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$CallableStatement;->this$0:Lorg/junit/internal/runners/statements/FailOnTimeout;

    invoke-static {v0}, Lorg/junit/internal/runners/statements/FailOnTimeout;->-$$Nest$fgetoriginalStatement(Lorg/junit/internal/runners/statements/FailOnTimeout;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_13
    .catchall {:try_start_0 .. :try_end_e} :catchall_11

    .line 153
    nop

    .line 154
    const/4 v0, 0x0

    return-object v0

    .line 151
    :catchall_11
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Throwable;
    return-object v0

    .line 149
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    throw v0
.end method
