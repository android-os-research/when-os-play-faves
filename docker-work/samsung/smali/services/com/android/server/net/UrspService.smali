.class public Lcom/android/server/net/UrspService;
.super Landroid/os/Binder;
.source "UrspService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/UrspService$UrspHandler;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "UrspService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field public final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$5IAuywlIQAlzc2AMehSnceXrkUw(Landroid/os/UserHandle;Ljava/lang/Integer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/net/UrspService;->lambda$onUserRemoved$0(Landroid/os/UserHandle;Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monUidRemoved(Lcom/android/server/net/UrspService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/UrspService;->onUidRemoved(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monUserRemoved(Lcom/android/server/net/UrspService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/net/UrspService;->onUserRemoved(Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 99
    new-instance v0, Lcom/android/server/net/UrspService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/UrspService$1;-><init>(Lcom/android/server/net/UrspService;)V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Lcom/android/server/net/UrspService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/UrspService$2;-><init>(Lcom/android/server/net/UrspService;)V

    iput-object v0, p0, Lcom/android/server/net/UrspService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v0, "missing context"

    .line 57
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/android/server/net/UrspService;->initHandler()V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/net/UrspService;->addUidRemovedReceiver()V

    .line 61
    invoke-virtual {p0}, Lcom/android/server/net/UrspService;->addUserRemovedReceiver()V

    return-void
.end method

.method public static synthetic lambda$onUserRemoved$0(Landroid/os/UserHandle;Ljava/lang/Integer;)Z
    .registers 2

    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final addUidRemovedReceiver()V
    .registers 7

    .line 76
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.UID_REMOVED"

    .line 77
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/UrspService;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final addUserRemovedReceiver()V
    .registers 5

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/UrspService;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final initHandler()V
    .registers 3

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UrspService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/server/net/UrspService$UrspHandler;

    invoke-direct {v1, v0}, Lcom/android/server/net/UrspService$UrspHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/net/UrspService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final onUidRemoved(I)V
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UrspService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {v0}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object p0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    :cond_38
    return-void
.end method

.method public final onUserRemoved(Landroid/os/UserHandle;)V
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "user("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UrspService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {v0}, Landroid/net/ConnectivitySettingsManager;->getMobileDataPreferredUids(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 158
    iget-object p0, p0, Lcom/android/server/net/UrspService;->mContext:Landroid/content/Context;

    .line 159
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/net/UrspService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/server/net/UrspService$$ExternalSyntheticLambda0;-><init>(Landroid/os/UserHandle;)V

    .line 160
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 161
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 158
    invoke-static {p0, p1}, Landroid/net/ConnectivitySettingsManager;->setMobileDataPreferredUids(Landroid/content/Context;Ljava/util/Set;)V

    return-void
.end method

.method public systemReady()V
    .registers 2

    const-string p0, "UrspService"

    const-string/jumbo v0, "systemReady()"

    .line 65
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
