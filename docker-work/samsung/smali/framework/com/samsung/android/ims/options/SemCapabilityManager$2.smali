.class Lcom/samsung/android/ims/options/SemCapabilityManager$2;
.super Ljava/lang/Object;
.source "SemCapabilityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ims/options/SemCapabilityManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/ims/options/SemCapabilityManager;

    .line 131
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 134
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to SemCapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {p2}, Lcom/samsung/android/ims/options/SemImsCapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 138
    :try_start_1c
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemImsCapabilityService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmServiceDeath(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_30} :catch_31

    .line 141
    goto :goto_32

    .line 139
    :catch_31
    move-exception v0

    .line 144
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 145
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onConnected()V

    .line 148
    :cond_43
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_93

    .line 150
    :try_start_4f
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_59
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/ims/options/SemCapabilityListener;

    .line 151
    .local v1, "listener":Lcom/samsung/android/ims/options/SemCapabilityListener;
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityListener;)V

    .line 152
    .end local v1    # "listener":Lcom/samsung/android/ims/options/SemCapabilityListener;
    goto :goto_59

    .line 153
    :cond_6b
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_74} :catch_75

    .line 156
    goto :goto_93

    .line 154
    :catch_75
    move-exception v0

    .line 155
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerListener failed. RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_93
    :goto_93
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 162
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected to SemCapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 164
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    invoke-static {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onDisconnected()V

    .line 166
    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;->this$0:Lcom/samsung/android/ims/options/SemCapabilityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/ims/options/SemCapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V

    .line 167
    return-void
.end method
