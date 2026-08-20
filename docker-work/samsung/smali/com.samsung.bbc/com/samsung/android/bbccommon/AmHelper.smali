.class public Lcom/samsung/android/bbccommon/AmHelper;
.super Ljava/lang/Object;
.source "AmHelper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .registers 6

    .line 69
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static forceStopPackage(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    const-string p1, "activity"

    .line 124
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 p1, 0x14

    const/16 v0, 0xb

    const/4 v1, 0x0

    .line 125
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/bbccommon/AmHelper;->getRecentTasksForUser(Landroid/app/ActivityManager;III)Ljava/util/List;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 131
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v1, :cond_15

    .line 132
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 133
    iget-object v1, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 135
    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    goto :goto_15

    .line 142
    :cond_43
    invoke-virtual {p0, p2}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static getCallerPackage(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .line 111
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 114
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static getRecentTasksForUser(Landroid/app/ActivityManager;III)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "III)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static isUserRunning(I)Z
    .registers 4

    const/4 v0, 0x0

    .line 35
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, p0, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v1

    if-nez v1, :cond_18

    .line 36
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_16} :catch_19

    if-eqz p0, :cond_19

    :cond_18
    const/4 v0, 0x1

    :catch_19
    :cond_19
    return v0
.end method

.method public static sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;I)V
    .registers 4

    .line 74
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;)V
    .registers 5

    .line 78
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method public static setContentUserHint(Landroid/content/Intent;I)V
    .registers 2

    .line 45
    invoke-virtual {p0, p1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    return-void
.end method

.method public static startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 5

    const/4 v0, 0x0

    .line 51
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    return-void
.end method

.method public static startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 5

    .line 57
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 5

    .line 61
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/ComponentName;
    .registers 4

    .line 65
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static startUserInBackground(I)Z
    .registers 2

    .line 83
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 85
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static stopUser(I)I
    .registers 4

    .line 92
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/android/bbccommon/AmHelper$1;

    invoke-direct {v2}, Lcom/samsung/android/bbccommon/AmHelper$1;-><init>()V

    invoke-interface {v0, p0, v1, v2}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const/4 p0, -0x1

    return p0
.end method
