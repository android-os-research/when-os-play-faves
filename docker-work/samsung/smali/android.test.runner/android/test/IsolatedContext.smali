.class public Landroid/test/IsolatedContext;
.super Landroid/content/ContextWrapper;
.source "IsolatedContext.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mBroadcastIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mMockAccountManager:Landroid/accounts/AccountManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "targetContext"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 57
    iput-object p1, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    .line 58
    invoke-static {p0}, Landroid/test/mock/MockAccountManager;->newMockAccountManager(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/accounts/AccountManager;

    .line 59
    return-void
.end method


# virtual methods
.method public bindIsolatedService(Landroid/content/Intent;ILjava/lang/String;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 7
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "instanceName"    # Ljava/lang/String;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "conn"    # Landroid/content/ServiceConnection;

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    .registers 6
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "conn"    # Landroid/content/ServiceConnection;

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 5
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public getAndClearBroadcastIntents()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 64
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 65
    return-object v0
.end method

.method public getAttributionSource()Landroid/content/AttributionSource;
    .registers 4

    .line 70
    invoke-super {p0}, Landroid/content/ContextWrapper;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 71
    .local v0, "attributionSource":Landroid/content/AttributionSource;
    if-nez v0, :cond_14

    .line 72
    new-instance v1, Landroid/content/AttributionSource$Builder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    invoke-virtual {v1}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v1

    return-object v1

    .line 74
    :cond_14
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .registers 3

    .line 144
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 135
    const-string v0, "account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 136
    iget-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/accounts/AccountManager;

    return-object v0

    .line 139
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 113
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .line 109
    return-void
.end method
