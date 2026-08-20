.class public interface abstract Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;
.super Ljava/lang/Object;
.source "FunctionalUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/jobs/FunctionalUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThrowingRunnable"
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public run()V
    .registers 1

    .line 106
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/util/jobs/FunctionalUtils$ThrowingRunnable;->runOrThrow()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 108
    invoke-static {p0}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public abstract runOrThrow()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
