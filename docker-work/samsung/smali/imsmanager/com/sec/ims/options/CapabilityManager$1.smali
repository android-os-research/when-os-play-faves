.class Lcom/sec/ims/options/CapabilityManager$1;
.super Ljava/lang/Object;
.source "CapabilityManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/ims/options/CapabilityManager;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/options/CapabilityManager;


# direct methods
.method constructor <init>(Lcom/sec/ims/options/CapabilityManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sec/ims/options/CapabilityManager;

    .line 115
    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 118
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {p2}, Lcom/sec/ims/options/ICapabilityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/options/ICapabilityService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/ICapabilityService;)V

    .line 121
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 122
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onConnected()V

    .line 125
    :cond_25
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "registerListener failed. RemoteException: "

    if-nez v0, :cond_74

    .line 127
    :try_start_33
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/options/CapabilityListener;

    .line 128
    .local v2, "listener":Lcom/sec/ims/options/CapabilityListener;
    iget-object v3, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v3, v2}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityListener;)V

    .line 129
    .end local v2    # "listener":Lcom/sec/ims/options/CapabilityListener;
    goto :goto_3d

    .line 130
    :cond_4f
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_58} :catch_59

    .line 133
    goto :goto_74

    .line 131
    :catch_59
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v2}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-boolean v0, v0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    if-eqz v0, :cond_ad

    .line 138
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Re-register CapabilityListener..."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    .line 141
    :try_start_8a
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    iget-object v2, v0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    invoke-virtual {v0, v2}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_91} :catch_92

    .line 144
    goto :goto_ad

    .line 142
    :catch_92
    move-exception v0

    .line 143
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v2}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_ad
    :goto_ad
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 150
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disconnected to CapabilityDiscoveryService."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 152
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    invoke-static {v0}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onDisconnected()V

    .line 154
    :cond_1c
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager$1;->this$0:Lcom/sec/ims/options/CapabilityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->-$$Nest$fputmImsCapabilityService(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/ICapabilityService;)V

    .line 155
    return-void
.end method
