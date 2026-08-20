.class public Lcom/android/server/emailksproxy/EmailKeystoreService$1;
.super Ljava/lang/Object;
.source "EmailKeystoreService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/emailksproxy/EmailKeystoreService;->bind(Landroid/content/Context;I)Lcom/android/server/emailksproxy/EmailKeystoreService$KeyChainConnection;
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

    .line 311
    iput-object p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 316
    iget-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    .line 317
    iput-boolean p1, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->mConnectedAtLeastOnce:Z

    const-string p1, "EmailKeystoreService"

    const-string v0, "Bind to keychain service happened"

    .line 319
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1e

    .line 323
    :try_start_10
    iget-object p0, p0, Lcom/android/server/emailksproxy/EmailKeystoreService$1;->val$q:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p2}, Landroid/security/IKeyChainService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeyChainService;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p0

    .line 328
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
