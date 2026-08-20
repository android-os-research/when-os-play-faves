.class public abstract Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;
.super Ljava/lang/Object;
.source "KeepAliveImpl.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KeepAliveImpl"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/plm/context/ProcessContext;)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    return-void
.end method


# virtual methods
.method public changeAdjLevel(Z)V
    .registers 8

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 112
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 113
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getProcessId()I

    move-result v2

    if-eqz v0, :cond_4f

    if-eqz v1, :cond_4f

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4f

    .line 115
    sget-object v3, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " important"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/ActivityManager;->semSetProcessImportant(Landroid/os/IBinder;IZ)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_4f

    :catch_45
    move-exception p0

    .line 119
    sget-object p1, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    :goto_4f
    return-void
.end method

.method public cleanUpProcess(I)V
    .registers 2

    .line 52
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method public abstract getBinder()Landroid/os/IBinder;
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 30
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mProcessContext:Lcom/android/server/enterprise/plm/context/ProcessContext;

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/context/ProcessContext;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getProcessId()I
.end method

.method public hasPackage(Ljava/lang/String;)Z
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/plm/common/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract isAlive()Z
.end method

.method public isPackageEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/plm/common/Utils;->getEnabledState(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_a

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public abstract needToCleanUpOnConditionNotMet()Z
.end method

.method public abstract needToKeepAlive(Lcom/android/server/enterprise/plm/IStateDelegate;)Z
.end method

.method public abstract registerObserver(Landroid/os/Handler;II)V
.end method

.method public setPackageEnabled(Ljava/lang/String;Z)V
    .registers 3

    .line 64
    iget-object p0, p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/plm/common/Utils;->setEnabledState(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract start()Z
.end method

.method public startProcess()Z
    .registers 5

    .line 69
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 71
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->start()Z

    move-result v2

    goto :goto_18

    :cond_17
    move v2, v3

    .line 74
    :goto_18
    invoke-virtual {p0, v0, v3}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->setPackageEnabled(Ljava/lang/String;Z)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1b} :catch_1d

    move v1, v2

    goto :goto_27

    :catch_1d
    move-exception p0

    .line 77
    sget-object v2, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_27
    :goto_27
    sget-object p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public abstract stop()Z
.end method

.method public stopProcess()Z
    .registers 8

    .line 86
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    :try_start_5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->hasPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    const/4 v2, 0x1

    .line 90
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->isAlive()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->getProcessId()I

    move-result v3

    goto :goto_19

    :cond_18
    move v3, v4

    .line 91
    :goto_19
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->isPackageEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->stop()Z

    move-result v2

    .line 92
    :cond_23
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->setPackageEnabled(Ljava/lang/String;Z)V

    if-eq v3, v4, :cond_50

    .line 94
    invoke-virtual {p0}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->needToCleanUpOnConditionNotMet()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 95
    sget-object v4, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "kill process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->cleanUpProcess(I)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_50} :catch_52

    :cond_50
    move v1, v2

    goto :goto_5c

    :catch_52
    move-exception p0

    .line 101
    sget-object v2, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_5c
    :goto_5c
    sget-object p0, Lcom/android/server/enterprise/plm/impl/KeepAliveImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public abstract unregisterObserver(Landroid/os/Handler;)V
.end method
