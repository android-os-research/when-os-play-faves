.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProvisioningProcessObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V
    .registers 2

    .line 1613
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;-><init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)V

    return-void
.end method


# virtual methods
.method public maybeUnregister()Z
    .registers 4

    .line 1615
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmProvisioningLock(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1616
    :try_start_7
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmCurrentProvisioningState(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v1

    if-nez v1, :cond_4f

    .line 1617
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "maybeUnregister() unregistering process observer"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_52

    .line 1619
    :try_start_19
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmProvisioningObserver(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v1

    if-eqz v1, :cond_4c

    .line 1620
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmProvisioningObserver(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1621
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fputmProvisioningObserver(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;)V

    .line 1622
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "provisioning observer unregistered"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3e} :catch_3f
    .catchall {:try_start_19 .. :try_end_3e} :catchall_52

    goto :goto_4c

    :catch_3f
    move-exception p0

    .line 1625
    :try_start_40
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1626
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Can\'t unregisterProcessObserver"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    const/4 p0, 0x1

    .line 1628
    monitor-exit v0

    return p0

    .line 1630
    :cond_4f
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_40 .. :try_end_54} :catchall_52

    throw p0
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1637
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    .line 1679
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    return-void
.end method

.method public onProcessDied(II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1644
    :cond_7
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-eqz p2, :cond_e

    return-void

    .line 1647
    :cond_e
    iget-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmProvisioningLock(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1648
    :try_start_15
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmCurrentProvisioningState(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    goto :goto_89

    .line 1664
    :cond_2b
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmCurrentProvisioningState(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.containercore"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getProcessId(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_89

    .line 1665
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxCore died.."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "state"

    .line 1667
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmCurrentProvisioningState(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    .line 1669
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    goto :goto_89

    .line 1653
    :cond_5a
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmCurrentProvisioningState(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v0

    const-string v1, "com.android.managedprovisioning"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->getProcessId(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p1, :cond_89

    .line 1654
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "managedprovisioning died.."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "state"

    .line 1656
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1657
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmCurrentProvisioningState(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningState;->update(Landroid/os/Bundle;)Z

    .line 1658
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$ProvisioningProcessObserver;->maybeUnregister()Z

    .line 1674
    :cond_89
    :goto_89
    monitor-exit p2

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit p2
    :try_end_8d
    .catchall {:try_start_15 .. :try_end_8d} :catchall_8b

    throw p0
.end method
