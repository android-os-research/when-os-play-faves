.class public Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;
.super Lcom/samsung/android/sepunion/SemUnionManagerLocal;
.source "SemUnionMainServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemUnionMainServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-direct {p0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public accessoryStateChanged(Z[B[B)V
    .registers 6

    .line 116
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "accessoryStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "friends"

    .line 117
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/FriendsManagerService;

    if-nez v1, :cond_21

    .line 120
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->createSemSystemService(Ljava/lang/String;)V

    .line 121
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/sepunion/FriendsManagerService;

    :cond_21
    if-eqz v1, :cond_27

    .line 124
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/sepunion/FriendsManagerService;->accessoryStateChanged(Z[B[B)V

    goto :goto_30

    .line 126
    :cond_27
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "accessoryStateChanged : create system fail"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    return-void
.end method

.method public createSemSystemService(Ljava/lang/String;)V
    .registers 5

    .line 148
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 149
    :try_start_5
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetsSemSystemServiceMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetsSemSystemServiceMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 150
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already existing service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    monitor-exit v0

    return-void

    .line 153
    :cond_33
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-static {p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/sepunion/SemUnionMainServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$maddSepUnionServiceMapInternal(Lcom/android/server/sepunion/SemUnionMainServiceImpl;Ljava/lang/String;Landroid/content/Context;)V

    .line 154
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;
    .registers 3

    .line 143
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public notifyCoverSwitchStateChanged(JZ)V
    .registers 5

    .line 105
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "notifyCoverSwitchStateChanged"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "plugin"

    .line 106
    invoke-static {p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/SemPluginManagerService;

    if-eqz p0, :cond_19

    .line 108
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/SemPluginManagerService;->notifyCoverSwitchStateChanged(JZ)V

    goto :goto_23

    .line 110
    :cond_19
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "notifyCoverSwitchStateChanged : there is no system"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method public notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V
    .registers 7

    .line 89
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifySmartCoverAttachStateChanged"

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "plugin"

    .line 90
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    if-nez v1, :cond_23

    .line 93
    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl$1;->this$0:Lcom/android/server/sepunion/SemUnionMainServiceImpl;

    iget-object p0, p0, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->mSemUnionManagerLocal:Lcom/samsung/android/sepunion/SemUnionManagerLocal;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sepunion/SemUnionManagerLocal;->createSemSystemService(Ljava/lang/String;)V

    .line 94
    invoke-static {v0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/android/server/sepunion/SemPluginManagerService;

    :cond_23
    if-eqz v1, :cond_29

    .line 97
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/sepunion/SemPluginManagerService;->notifySmartCoverAttachStateChanged(JZLcom/samsung/android/cover/CoverState;)V

    goto :goto_33

    .line 99
    :cond_29
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "notifySmartCoverAttachStateChanged : create system fail"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void
.end method

.method public screenTurnedOff()V
    .registers 2

    .line 132
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "screenTurnOff"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "friends"

    .line 133
    invoke-static {p0}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/sepunion/FriendsManagerService;

    if-eqz p0, :cond_18

    .line 135
    invoke-virtual {p0}, Lcom/android/server/sepunion/FriendsManagerService;->screenTurnedOff()V

    goto :goto_22

    .line 137
    :cond_18
    invoke-static {}, Lcom/android/server/sepunion/SemUnionMainServiceImpl;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "screenTurnOff : there is no system"

    invoke-static {p0, v0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method
