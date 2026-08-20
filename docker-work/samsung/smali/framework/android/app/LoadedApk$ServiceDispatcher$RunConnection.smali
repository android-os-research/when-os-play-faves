.class final Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;
.super Ljava/lang/Object;
.source "LoadedApk.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RunConnection"
.end annotation


# instance fields
.field final greylist-max-o mCommand:I

.field final greylist-max-o mDead:Z

.field final greylist-max-o mName:Landroid/content/ComponentName;

.field final greylist-max-o mService:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/app/LoadedApk$ServiceDispatcher;


# direct methods
.method constructor blacklist <init>(Landroid/app/LoadedApk$ServiceDispatcher;Landroid/content/ComponentName;Landroid/os/IBinder;IZ)V
    .registers 6
    .param p2, "name"    # Landroid/content/ComponentName;
    .param p3, "service"    # Landroid/os/IBinder;
    .param p4, "command"    # I
    .param p5, "dead"    # Z

    .line 2386
    iput-object p1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2387
    iput-object p2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    .line 2388
    iput-object p3, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    .line 2389
    iput p4, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    .line 2390
    iput-boolean p5, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mDead:Z

    .line 2391
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 2394
    iget v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mCommand:I

    if-nez v0, :cond_10

    .line 2395
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    iget-boolean v3, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mDead:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoadedApk$ServiceDispatcher;->doConnected(Landroid/content/ComponentName;Landroid/os/IBinder;Z)V

    goto :goto_1c

    .line 2396
    :cond_10
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    .line 2397
    iget-object v0, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->this$0:Landroid/app/LoadedApk$ServiceDispatcher;

    iget-object v1, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mName:Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/app/LoadedApk$ServiceDispatcher$RunConnection;->mService:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/app/LoadedApk$ServiceDispatcher;->doDeath(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 2399
    :cond_1c
    :goto_1c
    return-void
.end method
