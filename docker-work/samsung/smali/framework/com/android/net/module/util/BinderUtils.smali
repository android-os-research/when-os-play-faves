.class public Lcom/android/net/module/util/BinderUtils;
.super Ljava/lang/Object;
.source "BinderUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist withCleanCallingIdentity(Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/net/module/util/BinderUtils$ThrowingRunnable<",
            "TT;>;)V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    .local p0, "action":Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;, "Lcom/android/net/module/util/BinderUtils$ThrowingRunnable<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 43
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p0}, Lcom/android/net/module/util/BinderUtils$ThrowingRunnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    nop

    .line 47
    return-void

    .line 45
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    throw v2
.end method
