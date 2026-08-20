.class public Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;
.super Ljava/lang/Object;
.source "BlockingServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;->bindAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/samsung/ucm/ucmservice/BlockingServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public volatile mConnectedAtLeastOnce:Z

.field public final synthetic val$q:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 86
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 90
    iget-boolean p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->mConnectedAtLeastOnce:Z

    if-nez p1, :cond_c

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->mConnectedAtLeastOnce:Z

    .line 93
    :try_start_7
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/BlockingServiceConnection$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_c} :catch_c

    :catch_c
    :cond_c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
