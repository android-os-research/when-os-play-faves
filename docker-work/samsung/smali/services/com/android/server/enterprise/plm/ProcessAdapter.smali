.class public Lcom/android/server/enterprise/plm/ProcessAdapter;
.super Landroid/os/Handler;
.source "ProcessAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;
    }
.end annotation


# static fields
.field public static final EVENT_ADAPTER_START:I = 0x1

.field public static final EVENT_ADAPTER_STOP:I = 0x2

.field public static final EVENT_PROCESS_ALIVE:I = 0x3

.field public static final EVENT_PROCESS_DEATH:I = 0x4

.field public static final EVENT_STATUS_UPDATE:I = 0x5

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

.field public mStateDelegate:Lcom/android/server/enterprise/plm/IStateDelegate;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/enterprise/plm/ProcessAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;)V
    .registers 4

    .line 25
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    iput-object p2, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mContext:Landroid/content/Context;

    .line 27
    iput-object p3, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 52
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :try_start_19
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_51

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x3

    if-eq v1, v2, :cond_49

    const/4 v2, 0x4

    if-eq v1, v2, :cond_45

    const/4 v2, 0x5

    if-eq v1, v2, :cond_41

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    .line 69
    :cond_41
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->onStatusUpdate(Landroid/os/Message;)V

    goto :goto_5f

    .line 66
    :cond_45
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->onProcessDeath(Landroid/os/Message;)V

    goto :goto_5f

    .line 63
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->onProcessAlive(Landroid/os/Message;)V

    goto :goto_5f

    .line 60
    :cond_4d
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->onAdapterStop(Landroid/os/Message;)V

    goto :goto_5f

    .line 57
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->onAdapterStart(Landroid/os/Message;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_54} :catch_55

    goto :goto_5f

    :catch_55
    move-exception p0

    .line 76
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5f
    return-void
.end method

.method public final onAdapterStart(Landroid/os/Message;)V
    .registers 2

    .line 81
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->START:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void
.end method

.method public final onAdapterStop(Landroid/os/Message;)V
    .registers 2

    .line 85
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void
.end method

.method public final onProcessAlive(Landroid/os/Message;)V
    .registers 2

    .line 89
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->ALIVE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void
.end method

.method public final onProcessDeath(Landroid/os/Message;)V
    .registers 2

    .line 93
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->DEATH:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void
.end method

.method public final onStatusUpdate(Landroid/os/Message;)V
    .registers 2

    .line 97
    sget-object p1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->UPDATE:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/plm/ProcessAdapter;->tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V

    return-void
.end method

.method public setDelegate(Lcom/android/server/enterprise/plm/IStateDelegate;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mStateDelegate:Lcom/android/server/enterprise/plm/IStateDelegate;

    return-void
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x2

    .line 39
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final tryKeepAlive(Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;)V
    .registers 7

    .line 101
    sget-object v0, Lcom/android/server/enterprise/plm/ProcessAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryKeepAlive("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    invoke-virtual {v2}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$1;->$SwitchMap$com$android$server$enterprise$plm$ProcessAdapter$TryReason:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4c

    const/4 v4, 0x2

    if-eq v1, v4, :cond_42

    if-eq v1, v2, :cond_3c

    goto :goto_52

    .line 112
    :cond_3c
    iget-object v1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->changeAdjLevel(Z)V

    goto :goto_52

    .line 108
    :cond_42
    iget-object v1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    invoke-virtual {v1, p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->unregisterObserver(Landroid/os/Handler;)V

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_52

    .line 105
    :cond_4c
    iget-object v1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    const/4 v4, 0x4

    invoke-virtual {v1, p0, v2, v4}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->registerObserver(Landroid/os/Handler;II)V

    .line 118
    :goto_52
    sget-object v1, Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;->STOP:Lcom/android/server/enterprise/plm/ProcessAdapter$TryReason;

    if-eq p1, v1, :cond_61

    iget-object p1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    iget-object v1, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mStateDelegate:Lcom/android/server/enterprise/plm/IStateDelegate;

    .line 119
    invoke-virtual {p1, v1}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->needToKeepAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z

    move-result p1

    if-eqz p1, :cond_61

    goto :goto_62

    :cond_61
    const/4 v3, 0x0

    .line 120
    :goto_62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "needToKeepAlive : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_87

    .line 123
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->startProcess()Z

    move-result p0

    if-nez p0, :cond_94

    const-string p0, "failed to start keep alive"

    .line 124
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 127
    :cond_87
    iget-object p0, p0, Lcom/android/server/enterprise/plm/ProcessAdapter;->mKeepAliveImpl:Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->stopProcess()Z

    move-result p0

    if-nez p0, :cond_94

    const-string p0, "failed to stop keep alive"

    .line 128
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_94
    :goto_94
    return-void
.end method

.method public update()V
    .registers 3

    const/4 v0, 0x5

    .line 43
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_a
    return-void
.end method
