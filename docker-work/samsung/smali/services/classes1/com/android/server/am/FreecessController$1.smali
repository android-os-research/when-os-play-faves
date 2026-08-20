.class public Lcom/android/server/am/FreecessController$1;
.super Landroid/app/IProcessObserver$Stub;
.source "FreecessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessController;)V
    .registers 2

    .line 3121
    iput-object p1, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7

    if-eqz p3, :cond_a

    .line 3125
    iget-object p0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    const-string p1, "FGActivity"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    return-void

    .line 3129
    :cond_a
    iget-object p1, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p1}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmSkipTriggerLcdOnFreeze(Lcom/android/server/am/FreecessController;)Z

    move-result p1

    if-eqz p1, :cond_13

    return-void

    .line 3132
    :cond_13
    sget-object p1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter p1

    const p3, 0x186a0

    if-lt p2, p3, :cond_1c

    goto :goto_22

    .line 3133
    :cond_1c
    :try_start_1c
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p3

    if-eqz p3, :cond_59

    .line 3134
    :goto_22
    iget-object p3, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p3, p2}, Lcom/android/server/am/FreecessController;->-$$Nest$mgetPackageStatus(Lcom/android/server/am/FreecessController;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object p3

    if-nez p3, :cond_2c

    .line 3135
    monitor-exit p1

    return-void

    .line 3136
    :cond_2c
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p3, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3c

    monitor-exit p1

    return-void

    .line 3138
    :cond_3c
    iget-object p0, p0, Lcom/android/server/am/FreecessController$1;->this$0:Lcom/android/server/am/FreecessController;

    invoke-static {p0}, Lcom/android/server/am/FreecessController;->-$$Nest$fgetmUidIdleCheck(Lcom/android/server/am/FreecessController;)Z

    move-result p0

    if-eqz p0, :cond_4f

    .line 3139
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p3, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/am/FreecessHandler;->sendUidIdleCheckMsg(ILjava/lang/String;Z)V

    goto :goto_59

    .line 3141
    :cond_4f
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object p0

    iget-object p3, p3, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/am/FreecessHandler;->sendUidIdleCheckMsg(ILjava/lang/String;Z)V

    .line 3144
    :cond_59
    :goto_59
    monitor-exit p1

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_1c .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    return-void
.end method
