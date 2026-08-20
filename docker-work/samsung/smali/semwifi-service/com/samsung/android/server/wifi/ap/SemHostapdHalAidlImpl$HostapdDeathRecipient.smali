.class Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;
.super Ljava/lang/Object;
.source "SemHostapdHalAidlImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HostapdDeathRecipient"
.end annotation


# instance fields
.field private final mWho:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;


# direct methods
.method public static synthetic $r8$lambda$nICswWw01nwkW1_L2HlBvr_64Hk(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->lambda$binderDied$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;Landroid/os/IBinder;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .registers 5

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "SemHostapdHalAidlImpl"

    const-string v2, "Handle IHostapd/IHostapd died."

    .line 157
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemHostapdHalAidlImpl IHostapd/clearState died.:mWho "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->addMHSDumpLog(Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->clearState()V

    .line 160
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw p0
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 148
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "SemHostapdHalAidlImpl"

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IHostapd/IHostapd died. who "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    .line 150
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmWaitForDeathLatch(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 152
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmWaitForDeathLatch(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 154
    :cond_3e
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->mWho:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->getServiceBinderMockable()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_56

    .line 155
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;->this$0:Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemHostapdHalAidlImpl$HostapdDeathRecipient;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    :cond_56
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_58

    throw p0
.end method
