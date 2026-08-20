.class public Landroid/test/LoaderTestCase;
.super Landroid/test/AndroidTestCase;
.source "LoaderTestCase.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Landroid/test/LoaderTestCase$1;

    invoke-direct {v0}, Landroid/test/LoaderTestCase$1;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoaderResultSynchronously(Landroid/content/Loader;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Loader<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 57
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<TT;>;"
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 61
    .local v0, "queue":Ljava/util/concurrent/ArrayBlockingQueue;, "Ljava/util/concurrent/ArrayBlockingQueue<TT;>;"
    new-instance v1, Landroid/test/LoaderTestCase$2;

    invoke-direct {v1, p0, v0}, Landroid/test/LoaderTestCase$2;-><init>(Landroid/test/LoaderTestCase;Ljava/util/concurrent/ArrayBlockingQueue;)V

    .line 77
    .local v1, "listener":Landroid/content/Loader$OnLoadCompleteListener;, "Landroid/content/Loader$OnLoadCompleteListener<TT;>;"
    new-instance v2, Landroid/test/LoaderTestCase$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1, v1}, Landroid/test/LoaderTestCase$3;-><init>(Landroid/test/LoaderTestCase;Landroid/os/Looper;Landroid/content/Loader;Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 86
    .local v2, "mainThreadHandler":Landroid/os/Handler;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 92
    :try_start_18
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v3
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1c} :catch_1e

    .line 93
    .local v3, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 99
    return-object v3

    .line 94
    .end local v3    # "result":Ljava/lang/Object;, "TT;"
    :catch_1e
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "waiting thread interrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
