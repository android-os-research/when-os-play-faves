.class public Lcom/android/server/ContainerServiceWrapper;
.super Ljava/lang/Object;
.source "ContainerServiceWrapper.java"


# static fields
.field public static final MSG_SERVICE_DIED:I = 0x1


# instance fields
.field public TAG:Ljava/lang/String;

.field public category:Ljava/lang/String;

.field public info:Lcom/android/server/ContainerServiceInfo;

.field public mBound:Z

.field public final mConnection:Landroid/content/ServiceConnection;

.field public mContainerService:Lcom/samsung/android/knox/IContainerService;

.field public mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mService:Lcom/android/server/pm/PersonaServiceProxy;

.field public name:Landroid/content/ComponentName;

.field public userid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetTAG(Lcom/android/server/ContainerServiceWrapper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBound(Lcom/android/server/ContainerServiceWrapper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/ContainerServiceWrapper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBound(Lcom/android/server/ContainerServiceWrapper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmContainerService(Lcom/android/server/ContainerServiceWrapper;Lcom/samsung/android/knox/IContainerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtriggerRestart(Lcom/android/server/ContainerServiceWrapper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->triggerRestart()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PersonaServiceProxy;Lcom/android/server/ContainerServiceInfo;)V
    .registers 5

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KnoxService::ContainerServiceWrapper"

    .line 27
    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/android/server/ContainerServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$1;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 99
    new-instance v0, Lcom/android/server/ContainerServiceWrapper$2;

    invoke-direct {v0, p0}, Lcom/android/server/ContainerServiceWrapper$2;-><init>(Lcom/android/server/ContainerServiceWrapper;)V

    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    .line 32
    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/android/server/ContainerServiceWrapper;->mService:Lcom/android/server/pm/PersonaServiceProxy;

    .line 34
    iput-object p3, p0, Lcom/android/server/ContainerServiceWrapper;->info:Lcom/android/server/ContainerServiceInfo;

    .line 36
    iget p1, p3, Lcom/android/server/ContainerServiceInfo;->userid:I

    iput p1, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    .line 37
    iget-object p1, p3, Lcom/android/server/ContainerServiceInfo;->category:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->category:Ljava/lang/String;

    .line 38
    iget-object p1, p3, Lcom/android/server/ContainerServiceInfo;->name:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public connect()Z
    .registers 7

    .line 42
    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 43
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " already bound"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 46
    :cond_2a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    const v3, 0x4000001

    new-instance v4, Landroid/os/UserHandle;

    iget v5, p0, Lcom/android/server/ContainerServiceWrapper;->userid:I

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    if-nez v0, :cond_67

    .line 52
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t bind to container service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_67
    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p0
.end method

.method public disconnect()Z
    .registers 4

    .line 59
    invoke-virtual {p0}, Lcom/android/server/ContainerServiceWrapper;->isBound()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 60
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ContainerServiceWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    .line 62
    iput-boolean v1, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    .line 63
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Ubinding service is successful..."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v1
.end method

.method public isBound()Z
    .registers 1

    .line 70
    iget-boolean p0, p0, Lcom/android/server/ContainerServiceWrapper;->mBound:Z

    return p0
.end method

.method public onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 6

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mContainerService:Lcom/samsung/android/knox/IContainerService;

    if-eqz v0, :cond_31

    .line 113
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/IContainerService;->onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    :catch_9
    move-exception p2

    .line 115
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->name:Landroid/content/ComponentName;

    .line 116
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " action:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_31
    const/4 p0, 0x0

    return-object p0
.end method

.method public final triggerRestart()V
    .registers 3

    .line 95
    iget-object v0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    iget-object p0, p0, Lcom/android/server/ContainerServiceWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
