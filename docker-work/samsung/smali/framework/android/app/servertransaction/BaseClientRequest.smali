.class public interface abstract Landroid/app/servertransaction/BaseClientRequest;
.super Ljava/lang/Object;
.source "BaseClientRequest.java"

# interfaces
.implements Landroid/app/servertransaction/ObjectPoolItem;


# virtual methods
.method public abstract greylist-max-o execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public greylist-max-o postExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 4
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 56
    return-void
.end method

.method public greylist-max-o preExecute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 37
    return-void
.end method
