.class public final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .registers 2

    .line 619
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .registers 4

    .line 751
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 755
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v2, "request awaken"

    invoke-static {p0, v2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mrequestAwakenInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_17

    .line 757
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 758
    throw p0
.end method

.method public dream()V
    .registers 3

    .line 714
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 718
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mrequestDreamInternal(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 720
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 622
    iget-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fgetmContext(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string p3, "DreamManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 623
    :cond_f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 625
    :try_start_13
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mdumpInternal(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 627
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 628
    throw p0
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .registers 5

    if-eqz p1, :cond_14

    .line 768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 770
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mfinishSelfInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    throw p0

    .line 765
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public forceAmbientDisplayEnabled(Z)V
    .registers 4

    .line 825
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.DEVICE_POWER"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 827
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 829
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mforceAmbientDisplayEnabledInternal(Lcom/android/server/dreams/DreamManagerService;Z)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_14

    .line 831
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    throw p0
.end method

.method public getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;
    .registers 11

    .line 688
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 689
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 690
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getDefaultDreamComponent"

    const/4 v8, 0x0

    move v4, p1

    .line 689
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 692
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 694
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mgetDefaultDreamComponentForUser(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 696
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 697
    throw p0
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .registers 2

    .line 633
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/dreams/DreamManagerService$BinderService;->getDreamComponentsForUser(I)[Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDreamComponentsForUser(I)[Landroid/content/ComponentName;
    .registers 11

    .line 638
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 639
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "getDreamComponents"

    const/4 v8, 0x0

    move v4, p1

    .line 639
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 642
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 644
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mgetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;

    move-result-object p0
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_27

    .line 646
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 647
    throw p0
.end method

.method public isDreaming()Z
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.READ_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 704
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 706
    :try_start_b
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$misDreamingInternal(Lcom/android/server/dreams/DreamManagerService;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_15

    .line 708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 709
    throw p0
.end method

.method public registerDreamOverlayService(Landroid/content/ComponentName;)V
    .registers 4

    .line 679
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 683
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$fputmDreamOverlayServiceName(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;)V

    return-void
.end method

.method public semStartDozing(Landroid/os/IBinder;IIIZ)V
    .registers 14

    if-eqz p1, :cond_19

    .line 799
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 801
    :try_start_6
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v2 .. v7}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$msemStartDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;IIIZ)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_14

    .line 803
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 804
    throw p0

    .line 796
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .registers 5

    .line 652
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 657
    :try_start_f
    invoke-virtual {p0, v0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;->setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    .line 659
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    throw p0
.end method

.method public setDreamComponentsForUser(I[Landroid/content/ComponentName;)V
    .registers 12

    .line 665
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 666
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 667
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v7, "setDreamComponents"

    const/4 v8, 0x0

    move v4, p1

    .line 666
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 671
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$msetDreamComponentsForUser(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_27

    .line 673
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    throw p0
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .registers 6

    if-eqz p1, :cond_14

    .line 783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 785
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mstartDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 787
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    throw p0

    .line 780
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .registers 4

    if-eqz p1, :cond_14

    .line 815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 817
    :try_start_6
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mstopDozingInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 819
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    throw p0

    .line 812
    :cond_14
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "token must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public testDream(ILandroid/content/ComponentName;)V
    .registers 12

    if-eqz p2, :cond_53

    .line 729
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string v1, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v0, v1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 730
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 731
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string/jumbo v7, "testDream"

    move v4, p1

    .line 730
    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 733
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq p1, v0, :cond_41

    .line 736
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Aborted attempt to start a test dream while a different  user is active: userId="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", currentUserId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DreamManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 741
    :cond_41
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 743
    :try_start_45
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mtestDreamInternal(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_4e

    .line 745
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_4e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    throw p0

    .line 727
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dream must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
