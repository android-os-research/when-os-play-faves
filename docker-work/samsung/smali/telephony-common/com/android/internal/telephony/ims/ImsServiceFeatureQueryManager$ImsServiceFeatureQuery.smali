.class final Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;
.super Ljava/lang/Object;
.source "ImsServiceFeatureQueryManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImsServiceFeatureQuery"
.end annotation


# instance fields
.field private final blacklist mIntentFilter:Ljava/lang/String;

.field private blacklist mIsServiceConnectionDead:Z

.field private final blacklist mName:Landroid/content/ComponentName;

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    .line 51
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIsServiceConnectionDead:Z

    .line 52
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    .line 53
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    return-void
.end method

.method private blacklist cleanup()V
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmLock(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_10
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmActiveQueries(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Ljava/util/Map;

    move-result-object v1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method private blacklist queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V
    .registers 4

    .line 112
    :try_start_0
    invoke-interface {p1}, Landroid/telephony/ims/aidl/IImsServiceController;->querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_1e

    if-nez p1, :cond_b

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    goto :goto_f

    .line 126
    :cond_b
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsFeatureConfiguration;->getServiceFeatures()Ljava/util/Set;

    move-result-object p1

    .line 129
    :goto_f
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onComplete(Landroid/content/ComponentName;Ljava/util/Set;)V

    return-void

    :catch_1e
    move-exception p1

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryImsFeatures - error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsServiceFeatureQuery"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 117
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-interface {p1, p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onError(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .registers 4

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIsServiceConnectionDead:Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onError(Landroid/content/ComponentName;)V

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .registers 4

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBinding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIsServiceConnectionDead:Z

    if-eqz v0, :cond_1b

    return-void

    .line 105
    :cond_1b
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 106
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onPermanentError(Landroid/content/ComponentName;)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected for component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_20

    .line 77
    invoke-static {p2}, Landroid/telephony/ims/aidl/IImsServiceController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsServiceController;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->queryImsFeatures(Landroid/telephony/ims/aidl/IImsServiceController;)V

    goto :goto_45

    .line 79
    :cond_20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " binder null."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    .line 81
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmListener(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$Listener;->onPermanentError(Landroid/content/ComponentName;)V

    :goto_45
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 87
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceDisconnected for component: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsServiceFeatureQuery"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist start()Z
    .registers 4

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start: intent filter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsServiceFeatureQuery"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mIntentFilter:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->mName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->this$0:Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x4000041

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_41

    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceFeatureQueryManager$ImsServiceFeatureQuery;->cleanup()V

    :cond_41
    return v0
.end method
