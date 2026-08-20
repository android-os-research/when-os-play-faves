.class Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;
.super Ljava/lang/Object;
.source "MockAccountManager.java"

# interfaces
.implements Landroid/accounts/AccountManagerFuture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/mock/MockAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockAccountManagerFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;, "Landroid/test/mock/MockAccountManager$MockAccountManagerFuture<TT;>;"
    .local p1, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;->mResult:Ljava/lang/Object;

    .line 95
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .registers 3
    .param p1, "mayInterruptIfRunning"    # Z

    .line 98
    .local p0, "this":Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;, "Landroid/test/mock/MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 111
    .local p0, "this":Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;, "Landroid/test/mock/MockAccountManager$MockAccountManagerFuture<TT;>;"
    iget-object v0, p0, Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .line 116
    .local p0, "this":Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;, "Landroid/test/mock/MockAccountManager$MockAccountManagerFuture<TT;>;"
    invoke-virtual {p0}, Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .registers 2

    .line 102
    .local p0, "this":Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;, "Landroid/test/mock/MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .registers 2

    .line 106
    .local p0, "this":Landroid/test/mock/MockAccountManager$MockAccountManagerFuture;, "Landroid/test/mock/MockAccountManager$MockAccountManagerFuture<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
