.class public abstract Landroid/app/servertransaction/ActivityTransactionItem;
.super Landroid/app/servertransaction/ClientTransactionItem;
.source "ActivityTransactionItem.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/app/servertransaction/ClientTransactionItem;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V
.end method

.method public final blacklist execute(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;Landroid/app/servertransaction/PendingTransactionActions;)V
    .registers 5
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pendingActions"    # Landroid/app/servertransaction/PendingTransactionActions;

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/app/servertransaction/ActivityTransactionItem;->getActivityClientRecord(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 45
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    invoke-virtual {p0, p1, v0, p3}, Landroid/app/servertransaction/ActivityTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;)V

    .line 46
    return-void
.end method

.method blacklist getActivityClientRecord(Landroid/app/ClientTransactionHandler;Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;
    .registers 7
    .param p1, "client"    # Landroid/app/ClientTransactionHandler;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 64
    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v0

    .line 65
    .local v0, "r":Landroid/app/ActivityThread$ActivityClientRecord;
    if-eqz v0, :cond_26

    .line 69
    invoke-virtual {p1, p2}, Landroid/app/ClientTransactionHandler;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 73
    return-object v0

    .line 70
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity must not be null to execute transaction item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity client record must not be null to execute transaction item: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
