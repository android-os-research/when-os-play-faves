.class public Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;
.super Landroid/os/Handler;
.source "PersonaActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PersonaActivityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonaActivityHandler"
.end annotation


# static fields
.field public static final HANDLER_TAG:Ljava/lang/String; = "PersonaActivityHandler"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/PersonaActivityHelper;


# direct methods
.method public static synthetic $r8$lambda$5YrHwj1eUKlS_fD-Ac5fNlha750(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->lambda$handleMessage$0(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rYSMlk_-YBLCUZkRjVTPucq5YlU(Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;ILcom/android/server/wm/Task;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->lambda$handleMessage$1(ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/PersonaActivityHelper;Landroid/os/Looper;)V
    .registers 3

    .line 572
    iput-object p1, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    .line 573
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 2

    .line 596
    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$smisActivityNeedtoFinish(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleMessage$1(ILcom/android/server/wm/Task;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 595
    :cond_3
    new-instance v0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 597
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 595
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 598
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 599
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    if-eqz v0, :cond_51

    .line 602
    :try_start_1f
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_2f

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isMinimized()Z

    move-result p1

    if-eqz p1, :cond_2f

    const/4 p1, 0x1

    .line 603
    invoke-virtual {p2, p1}, Lcom/android/server/wm/Task;->setUnminimizedWhenRestored(Z)V

    .line 605
    :cond_2f
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->semRemoveTask(II)Z
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_39} :catch_3a

    goto :goto_51

    :catch_3a
    move-exception p0

    .line 607
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to removeTask exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaActivityHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    :goto_51
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 577
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_dc

    goto/16 :goto_da

    .line 647
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/Task;

    .line 648
    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result p1

    if-eqz p1, :cond_da

    .line 649
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p0}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$fgetmLastReceivedResumedActivity(Lcom/android/server/wm/PersonaActivityHelper;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mlockSecureFolderIfNecessary(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_da

    .line 643
    :pswitch_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 644
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mlockSecureFolderIfNecessary(Lcom/android/server/wm/PersonaActivityHelper;Lcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_da

    .line 629
    :pswitch_2a
    iget p0, p1, Landroid/os/Message;->arg1:I

    :try_start_2c
    const-string/jumbo p1, "trust"

    .line 631
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object p1

    if-eqz p1, :cond_3e

    .line 633
    invoke-interface {p1, p0, v1}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V

    goto/16 :goto_da

    :cond_3e
    const-string p0, "PersonaActivityHandler"

    const-string p1, "device lock failed. trustmanager may be null."

    .line 635
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_45} :catch_47

    goto/16 :goto_da

    :catch_47
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_da

    .line 617
    :pswitch_4d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 618
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "isHomeActivity"

    .line 619
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "componentName"

    .line 620
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 622
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.container.LOCK_SECUREFOLDER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "userid"

    .line 623
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "isHomeActivity"

    .line 624
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "componentName"

    .line 625
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_da

    .line 585
    :pswitch_80
    iget-object v0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v2, v0, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-nez v2, :cond_87

    goto :goto_da

    .line 586
    :cond_87
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 587
    iget-object v0, v0, Lcom/android/server/wm/PersonaActivityHelper;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 588
    iget-object v2, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v2, v2, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_9a
    if-ltz v2, :cond_b3

    .line 589
    iget-object v3, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object v3, v3, Lcom/android/server/wm/PersonaActivityHelper;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_b0

    .line 591
    new-instance v4, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;I)V

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    :cond_b0
    add-int/lit8 v2, v2, -0x1

    goto :goto_9a

    .line 613
    :cond_b3
    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_8e .. :try_end_b4} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 614
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    invoke-static {p0, p1}, Lcom/android/server/wm/PersonaActivityHelper;->-$$Nest$mremoveMinimizedFreeformTaskExplicitly(Lcom/android/server/wm/PersonaActivityHelper;I)V

    goto :goto_da

    :catchall_bd
    move-exception p0

    .line 613
    :try_start_be
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_be .. :try_end_bf} :catchall_bd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 579
    :pswitch_c3
    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper$PersonaActivityHandler;->this$0:Lcom/android/server/wm/PersonaActivityHelper;

    iget-object p0, p0, Lcom/android/server/wm/PersonaActivityHelper;->mContext:Landroid/content/Context;

    const p1, 0x104068a

    .line 581
    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 582
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 579
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 582
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_da
    :goto_da
    return-void

    nop

    :pswitch_data_dc
    .packed-switch 0x259
        :pswitch_c3
        :pswitch_80
        :pswitch_4d
        :pswitch_2a
        :pswitch_1f
        :pswitch_8
    .end packed-switch
.end method
