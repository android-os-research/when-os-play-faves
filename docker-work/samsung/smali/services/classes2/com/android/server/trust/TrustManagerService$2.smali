.class public Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .line 1830
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 1833
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_116

    :pswitch_8
    goto/16 :goto_114

    .line 1847
    :pswitch_a
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserMayRequestUnlock(Lcom/android/server/trust/TrustManagerService;I)V

    goto/16 :goto_114

    .line 1908
    :pswitch_13
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshTrustableTimers(Lcom/android/server/trust/TrustManagerService;I)V

    goto/16 :goto_114

    .line 1844
    :pswitch_1c
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_25

    move v2, v3

    :cond_25
    invoke-static {p0, v0, v2}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUserRequestedUnlock(Lcom/android/server/trust/TrustManagerService;IZ)V

    goto/16 :goto_114

    .line 1902
    :pswitch_2a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_2f

    move v2, v3

    .line 1904
    :cond_2f
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v3, :cond_36

    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    goto :goto_38

    :cond_36
    sget-object p1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    .line 1905
    :goto_38
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, v2, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mhandleScheduleTrustTimeout(Lcom/android/server/trust/TrustManagerService;ZLcom/android/server/trust/TrustManagerService$TimeoutType;)V

    goto/16 :goto_114

    .line 1894
    :pswitch_3f
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_4b

    .line 1895
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mupdateTrust(Lcom/android/server/trust/TrustManagerService;IIZLcom/android/internal/infra/AndroidFuture;)V

    .line 1897
    :cond_4b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "except"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1899
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;II)V

    goto/16 :goto_114

    .line 1850
    :pswitch_60
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockLockout(Lcom/android/server/trust/TrustManagerService;II)V

    goto/16 :goto_114

    .line 1877
    :pswitch_6b
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1, v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$msetDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;IZ)V

    goto/16 :goto_114

    .line 1881
    :pswitch_74
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1882
    :try_start_7b
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmTrustUsuallyManagedForUser(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 1883
    monitor-exit v0
    :try_end_86
    .catchall {:try_start_7b .. :try_end_86} :catchall_ac

    .line 1885
    :goto_86
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_114

    .line 1886
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1887
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    .line 1888
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v3

    if-eq v1, v3, :cond_a9

    .line 1889
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmLockPatternUtils(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    :cond_a9
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    :catchall_ac
    move-exception p0

    .line 1883
    :try_start_ad
    monitor-exit v0
    :try_end_ae
    .catchall {:try_start_ad .. :try_end_ae} :catchall_ac

    throw p0

    .line 1872
    :pswitch_af
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmCurrentUser(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1873
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    .line 1874
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_114

    .line 1864
    :pswitch_c5
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1866
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_114

    .line 1867
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mupdateDualDARStateAndUnlockIfNeeded(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_114

    .line 1858
    :pswitch_da
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchTrustableDowngrade(Lcom/android/server/trust/TrustManagerService;)V

    .line 1859
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/trust/TrustManagerService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_114

    .line 1853
    :pswitch_e9
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1855
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p0, v1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mrefreshDeviceLockedForUser(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_114

    .line 1841
    :pswitch_f4
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_fb

    move v2, v3

    :cond_fb
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v2, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mdispatchUnlockAttempt(Lcom/android/server/trust/TrustManagerService;ZI)V

    goto :goto_114

    .line 1838
    :pswitch_101
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$mremoveListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    goto :goto_114

    .line 1835
    :pswitch_10b
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {p0, p1}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$maddListener(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    :cond_114
    :goto_114
    return-void

    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_10b
        :pswitch_101
        :pswitch_f4
        :pswitch_e9
        :pswitch_8
        :pswitch_da
        :pswitch_c5
        :pswitch_c5
        :pswitch_af
        :pswitch_74
        :pswitch_c5
        :pswitch_6b
        :pswitch_60
        :pswitch_3f
        :pswitch_2a
        :pswitch_1c
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method
