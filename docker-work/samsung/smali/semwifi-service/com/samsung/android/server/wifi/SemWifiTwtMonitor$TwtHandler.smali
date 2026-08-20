.class Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;
.super Landroid/os/Handler;
.source "SemWifiTwtMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/os/Looper;)V
    .registers 3

    .line 979
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    .line 980
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 36

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 990
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v3, "Deact. reason: "

    const-string v4, "WFR: "

    const/4 v8, 0x6

    const/16 v9, 0xbb8

    const-wide/16 v12, 0x3e8

    const/16 v15, 0xb

    const-string v14, " "

    const/16 v11, 0x1f4

    const/4 v10, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_c6e

    goto/16 :goto_c6c

    .line 1025
    :pswitch_1d
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_32

    const-string v0, "SemWifiTwtMonitor"

    const-string v1, "Ignore unexpected teardown event"

    .line 1026
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c6c

    .line 1029
    :cond_32
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v4, v1, Landroid/os/Message;->arg1:I

    iput v4, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 1030
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg2:I

    iput v1, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    .line 1031
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 1032
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 1033
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 1034
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    invoke-virtual {v1, v6, v2, v4, v7}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setNegotiationResult(ZIII)V

    .line 1035
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mprovideTwtStateToLinkInfoCollector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1037
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasTwtIotIssue()Z

    move-result v1

    if-nez v1, :cond_a2

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasAbnormalityInFirmware()Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 1038
    :cond_a2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1039
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mreConfigureSessionParametersBoundary(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1042
    :cond_b0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    if-nez v1, :cond_10b

    .line 1043
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c6c

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c6c

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c6c

    .line 1044
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    if-eqz v1, :cond_c6c

    .line 1045
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1, v9}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1046
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_c6c

    .line 1049
    :cond_10b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    if-eq v1, v8, :cond_c6c

    .line 1050
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 992
    :pswitch_11c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    .line 993
    iget v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->reasonCode:I

    if-nez v2, :cond_1c0

    .line 994
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    .line 995
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    .line 996
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    iput v3, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    .line 997
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iput v10, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 998
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v2

    iget v3, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->id:I

    iget v4, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->duration:I

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->interval:I

    invoke-virtual {v2, v10, v3, v4, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setNegotiationResult(ZIII)V

    .line 1000
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mprovideTwtStateToLinkInfoCollector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1002
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_177

    .line 1003
    invoke-static {v0, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1005
    :cond_177
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_185

    goto/16 :goto_c6c

    .line 1009
    :cond_185
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    move-result v1

    if-eqz v1, :cond_197

    .line 1010
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 1011
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputfirstNego(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Z)V

    .line 1013
    :cond_197
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetDataArray()V

    .line 1014
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v1

    .line 1015
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v3

    aget v1, v1, v5

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getCallPeriod(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartAlgorithmPollWithNewInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1016
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    goto/16 :goto_c6c

    .line 1018
    :cond_1c0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasTwtIotIssue()Z

    move-result v1

    if-nez v1, :cond_1d8

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiTwtControl(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->hasAbnormalityInFirmware()Z

    move-result v1

    if-eqz v1, :cond_c6c

    .line 1019
    :cond_1d8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1020
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mreConfigureSessionParametersBoundary(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1072
    :pswitch_1e8
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mteardownSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1054
    :pswitch_1ef
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_c6c

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetawareConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_c6c

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetp2pConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_c6c

    .line 1055
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v2

    if-lt v1, v2, :cond_24e

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v2

    if-lt v1, v2, :cond_24e

    .line 1057
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    if-nez v1, :cond_247

    .line 1058
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcreateSession(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1060
    :cond_247
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mchangeSessionParameters(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1063
    :cond_24e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore setup request. SP:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " Interval:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v10}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1065
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    if-eqz v1, :cond_c6c

    .line 1066
    invoke-static {v0, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c6c

    .line 1400
    :pswitch_28f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_c6c

    .line 1401
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 1402
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    goto/16 :goto_c6c

    .line 1337
    :pswitch_2a6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;

    .line 1338
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_346

    .line 1339
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmScpmDataProvider(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 1340
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1342
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetlatestSCPMVersion(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d2

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    and-int/2addr v1, v5

    if-eqz v1, :cond_3d2

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDeviceCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    and-int/2addr v1, v10

    if-eqz v1, :cond_3d2

    .line 1345
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_2ed

    .line 1346
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_2ee

    :cond_2ed
    const/4 v1, 0x0

    .line 1347
    :goto_2ee
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetVendorOuiFromVsie(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/util/HashSet;)V

    .line 1348
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_314

    if-eqz v1, :cond_314

    .line 1349
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_314
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mpolicyComplianceCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    move-result v1

    .line 1353
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3d2

    if-nez v1, :cond_3d2

    .line 1354
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1355
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 1356
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    const-string v2, "Twt Policy violation from new policy"

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_3d2

    .line 1359
    :cond_346
    iget-object v2, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->configuration:Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetPM_SCPM_CONFIGURATION_LIST(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v10

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d2

    .line 1360
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$ScpmBundle;->provider:Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmScpmDataProviderSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V

    .line 1361
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckScpmPolicySchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1363
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLatestScpmVersionSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d2

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmConnected(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3d2

    .line 1364
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_383

    .line 1365
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v1

    goto :goto_384

    :cond_383
    const/4 v1, 0x0

    .line 1366
    :goto_384
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mgetVendorOuiFromVsie(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;Ljava/util/HashSet;)V

    .line 1367
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;

    move-result-object v2

    if-eqz v2, :cond_3aa

    if-eqz v1, :cond_3aa

    .line 1368
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetapOUIs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/HashSet;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_3aa
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mpolicyComplianceCheckSchedPm(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Z

    move-result v1

    .line 1372
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_3d2

    if-nez v1, :cond_3d2

    .line 1373
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1374
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    const-string v2, "SchedPm Policy violation from new policy"

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1380
    :cond_3d2
    :goto_3d2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsTwtControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_3ec

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsScheduledPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3eb

    goto :goto_3ec

    :cond_3eb
    move v10, v6

    .line 1386
    :cond_3ec
    :goto_3ec
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_44c

    if-nez v10, :cond_44c

    .line 1387
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1388
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetector(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmWifiServiceDetectionCallback(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiServiceDetector;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiServiceDetector$SemWifiServiceDetectionCallback;)V

    .line 1389
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    const/16 v2, 0x1770

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficControlPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1390
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1391
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1392
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iput v6, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    .line 1393
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1394
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1395
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    const-string v2, "Disable PM control"

    invoke-virtual {v1, v2, v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1397
    :cond_44c
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mreConfigureSessionParametersBoundary(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1266
    :pswitch_453
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1263
    :pswitch_45a
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$monDisconnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1260
    :pswitch_461
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$monConnection(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    goto/16 :goto_c6c

    .line 1269
    :pswitch_468
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_c6c

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettwtRenewalEnabled(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_482

    goto/16 :goto_c6c

    .line 1272
    :cond_482
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1273
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1274
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget-wide v8, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    invoke-static {v2, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1275
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v2

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-eqz v2, :cond_c6c

    .line 1276
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v2

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v8

    sub-long/2addr v2, v8

    const-wide/16 v8, 0x8

    mul-long/2addr v2, v8

    mul-long/2addr v2, v12

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v8

    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v15

    sub-long/2addr v8, v15

    div-long/2addr v2, v8

    .line 1277
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v12

    invoke-static {v8, v12, v13}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmLastRxBytes(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1278
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v11

    invoke-static {v8, v11, v12}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmLastTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    long-to-float v2, v2

    .line 1279
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTrafficLimit(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3f666666    # 0.9f

    cmpl-float v3, v2, v3

    const v8, 0x3f4ccccd    # 0.8f

    if-ltz v3, :cond_64c

    .line 1281
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_505

    .line 1282
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1283
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3, v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    goto :goto_52c

    .line 1285
    :cond_505
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v8

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingStep(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v3, v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1286
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v8

    const v9, 0x3e99999a    # 0.3f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_523

    goto :goto_529

    .line 1287
    :cond_523
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v9

    :goto_529
    invoke-static {v3, v9}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1290
    :goto_52c
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_6ab

    .line 1291
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1293
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v23

    iget-wide v8, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iget-wide v10, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iget-wide v12, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iget-wide v5, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v32

    move-wide/from16 v24, v8

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v5

    invoke-virtual/range {v23 .. v33}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    .line 1296
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 1297
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1298
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v5

    const-wide/16 v8, 0x1

    add-long/2addr v5, v8

    invoke-static {v1, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1300
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->reinitialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object v1

    .line 1301
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1303
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object v6

    .line 1304
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

    move-result-object v6

    const/4 v8, 0x0

    .line 1303
    invoke-virtual {v3, v5, v8, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->tdtOverFlowPerSP(IILcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)F

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1305
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getDiffStats()[J

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;[J)V

    .line 1306
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v23

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v1

    const/4 v3, 0x4

    aget-wide v24, v1, v3

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v1

    const/4 v3, 0x7

    aget-wide v5, v1, v3

    const-wide/16 v8, 0x3e8

    div-long v26, v5, v8

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v1

    aget-wide v5, v1, v3

    div-long v28, v5, v8

    invoke-virtual/range {v23 .. v29}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setTwtMetric(JJJ)V

    .line 1309
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v1

    const/4 v3, 0x6

    aget-wide v5, v1, v3

    .line 1310
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getEpsilonValue(J)J

    move-result-wide v5

    long-to-float v1, v5

    .line 1312
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1315
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    const/16 v1, 0xa

    .line 1316
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6ab

    :cond_64c
    const v1, 0x3f19999a    # 0.6f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_67b

    .line 1319
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_670

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object v1

    .line 1320
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getMainCategoryServiceType()I

    move-result v1

    if-eq v1, v10, :cond_670

    .line 1321
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdeactivateTwt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1323
    :cond_670
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6ab

    .line 1325
    :cond_67b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6ab

    .line 1326
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingStep(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1327
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v3

    cmpl-float v3, v3, v8

    if-lez v3, :cond_6a2

    goto :goto_6a8

    .line 1328
    :cond_6a2
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v8

    :goto_6a8
    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1331
    :cond_6ab
    :goto_6ab
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTrafficLimit(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1332
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_6e4

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingRatio(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v0

    goto :goto_6e6

    :cond_6e4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_6e6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 1331
    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_c6c

    :pswitch_6f3
    const/4 v2, 0x3

    .line 1139
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeMessages(I)V

    .line 1140
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    if-nez v2, :cond_708

    .line 1141
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    goto/16 :goto_c6c

    .line 1143
    :cond_708
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_724

    .line 1144
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1145
    invoke-static {v0, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x2

    .line 1146
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeMessages(I)V

    .line 1149
    :cond_724
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1150
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1151
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v17

    iget-wide v2, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iget-wide v4, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iget-wide v6, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iget-wide v8, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v26

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-wide/from16 v22, v6

    move-wide/from16 v24, v8

    invoke-virtual/range {v17 .. v27}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    .line 1154
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v1

    .line 1155
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v3

    const/4 v4, 0x2

    aget v1, v1, v4

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object v4

    .line 1156
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

    move-result-object v4

    .line 1155
    invoke-virtual {v3, v1, v10, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->tdtOverFlowPerSP(IILcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)F

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1157
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->updateDataArray(F)V

    .line 1159
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v1

    const/4 v2, 0x3

    .line 1160
    aget v2, v1, v2

    const-wide/16 v3, 0x0

    const v5, 0xc350

    const v6, 0x9c40

    if-ne v2, v10, :cond_847

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_847

    .line 1161
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->updateStats()V

    .line 1163
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v2

    const/4 v7, 0x2

    aget v8, v1, v7

    invoke-virtual {v2, v8}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowWarning(I)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object v2

    .line 1164
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPackageChangeFlag()Z

    move-result v8

    if-eqz v8, :cond_7ed

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getIntvAppReset()Z

    move-result v8

    if-eqz v8, :cond_7ed

    .line 1165
    aget v1, v1, v7

    if-le v1, v5, :cond_7ed

    .line 1166
    iget v1, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    iget v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x5

    sub-int/2addr v1, v5

    iput v1, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 1167
    iput v6, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 1168
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setIntvAlgo(I)V

    .line 1172
    :cond_7ed
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1173
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v1

    int-to-float v1, v1

    iget v5, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    int-to-float v6, v5

    div-float/2addr v1, v6

    .line 1174
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1177
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v6, v1, v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckSuspension(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z

    move-result v1

    if-eqz v1, :cond_82a

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_82a

    .line 1179
    invoke-static {v0, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x2

    .line 1180
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeMessages(I)V

    goto/16 :goto_c6c

    .line 1182
    :cond_82a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v3, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1183
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v2, v2, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    const/16 v1, 0xa

    .line 1184
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c6c

    .line 1186
    :cond_847
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPackageChangeFlag()Z

    move-result v2

    if-eqz v2, :cond_c6c

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getIntvAppReset()Z

    move-result v2

    if-eqz v2, :cond_c6c

    const/4 v2, 0x2

    .line 1189
    aget v7, v1, v2

    if-le v7, v5, :cond_c6c

    .line 1190
    aget v1, v1, v10

    int-to-float v1, v1

    const v2, 0x471c4000    # 40000.0f

    mul-float/2addr v1, v2

    int-to-float v2, v7

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 1192
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setIntvAlgo(I)V

    .line 1194
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1195
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v5, v6

    div-float/2addr v2, v5

    .line 1196
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v7

    sub-int v7, v6, v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    .line 1198
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5, v2, v3, v4, v7}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckSuspension(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z

    move-result v2

    if-eqz v2, :cond_8ae

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_8ae

    .line 1200
    invoke-static {v0, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x2

    .line 1201
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeMessages(I)V

    goto/16 :goto_c6c

    .line 1203
    :cond_8ae
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1204
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_8c5

    .line 1205
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdurationTC(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    move-result v1

    .line 1204
    :cond_8c5
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    const/16 v1, 0xa

    .line 1206
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c6c

    :pswitch_8d7
    move v1, v5

    .line 1212
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeMessages(I)V

    .line 1213
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtStatus(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtStatus;->state:I

    if-eqz v1, :cond_a2d

    .line 1214
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1215
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPackageChangeFlag()Z

    move-result v1

    if-eqz v1, :cond_912

    .line 1216
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->clearPackageChangeFlag()V

    .line 1217
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->reinitialize(Ljava/lang/String;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    .line 1220
    :cond_912
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 1221
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->updateStats()V

    .line 1222
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getTWTParams()[I

    move-result-object v1

    const/4 v2, 0x3

    .line 1224
    aget v3, v1, v2

    if-ne v3, v10, :cond_949

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_949

    .line 1225
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v2

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->overflowWarning(I)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object v1

    goto :goto_953

    .line 1226
    :cond_949
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->TWTParameterPoll()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object v1

    .line 1228
    :goto_953
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    .line 1229
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1231
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getPacketMonitoringStats()[J

    move-result-object v4

    const/4 v5, 0x3

    aget-wide v4, v4, v5

    .line 1233
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v6, v2, v4, v5, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckSuspension(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z

    move-result v2

    if-eqz v2, :cond_999

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmAssociatedApCapabilities(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_999

    .line 1235
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1236
    invoke-static {v0, v15}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_a2d

    .line 1238
    :cond_999
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_9ae

    .line 1239
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mdurationTC(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    move-result v2

    goto :goto_9b0

    :cond_9ae
    iget v2, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    .line 1240
    :goto_9b0
    iget-boolean v3, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->needSessionRenewal:Z

    if-nez v3, :cond_9c0

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgettrafficControlActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_a0e

    :cond_9c0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v4

    .line 1241
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapDuration(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapDuration(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    move-result v4

    if-ne v3, v4, :cond_9e6

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v4

    .line 1242
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    move-result v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcapInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)I

    move-result v4

    if-eq v3, v4, :cond_a0e

    :cond_9e6
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v4, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    .line 1243
    invoke-static {v3, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mrenewIgnored(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;II)Z

    move-result v3

    if-nez v3, :cond_a0e

    .line 1244
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1245
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    const/16 v1, 0xa

    .line 1246
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1248
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1, v11}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1251
    :cond_a0e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetthrottlingActivated(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_a1d

    const/16 v1, 0x1770

    goto :goto_a28

    .line 1253
    :cond_a1d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getCallPeriod(I)I

    move-result v1

    .line 1254
    :goto_a28
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstartAlgorithmPollWithNewInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1257
    :cond_a2d
    :goto_a2d
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->resetDataArray()V

    goto/16 :goto_c6c

    .line 1075
    :pswitch_a38
    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->removeMessages(I)V

    .line 1076
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmIsPmControlAvailable(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_a4e

    .line 1077
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    goto/16 :goto_c6c

    .line 1081
    :cond_a4e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1082
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 1083
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v23

    iget-wide v5, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iget-wide v10, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iget-wide v12, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    iget-wide v1, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmCurTime(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v32

    move-wide/from16 v24, v5

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v1

    invoke-virtual/range {v23 .. v33}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->setTrafficStats(JJJJJ)V

    .line 1085
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_a9e

    .line 1086
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetinitialTrafficCheck(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1087
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v0

    const-string v1, "Init. traff. update for resumption check"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_c6c

    .line 1091
    :cond_a9e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->updateLinkLayerStats()V

    .line 1092
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mupdatePackageInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)V

    .line 1093
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v5

    const-wide/16 v10, 0x1

    add-long/2addr v5, v10

    invoke-static {v1, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;J)V

    .line 1095
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->reinitialize()Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;

    move-result-object v1

    .line 1096
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v5, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->intval:I

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1098
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v6

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmSemServiceInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;

    move-result-object v8

    .line 1099
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo;->getTrafficData()Lcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;

    move-result-object v8

    const/4 v10, 0x0

    .line 1098
    invoke-virtual {v5, v6, v10, v8}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->tdtOverFlowPerSP(IILcom/samsung/android/server/wifi/servicedetection/SemServiceInfo$TrafficData;)F

    move-result v5

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;F)V

    .line 1100
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getDiffStats()[J

    move-result-object v5

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;[J)V

    .line 1101
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v23

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v2

    const/4 v5, 0x4

    aget-wide v24, v2, v5

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v2

    const/4 v5, 0x7

    aget-wide v10, v2, v5

    const-wide/16 v12, 0x3e8

    div-long v26, v10, v12

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v2

    aget-wide v5, v2, v5

    div-long v28, v5, v12

    invoke-virtual/range {v23 .. v29}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->setTwtMetric(JJJ)V

    .line 1104
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v2

    const/4 v5, 0x6

    aget-wide v5, v2, v5

    .line 1105
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getEpsilonValue(J)J

    move-result-wide v5

    long-to-float v2, v5

    .line 1107
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetresumptionPollCnt(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1111
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetTdtUs(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)F

    move-result v5

    add-float/2addr v5, v2

    float-to-int v2, v5

    .line 1112
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 1113
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1115
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v5

    const/4 v6, 0x2

    aget-wide v7, v5, v6

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetcheckDiffResult(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)[J

    move-result-object v5

    const/4 v6, 0x3

    aget-wide v5, v5, v6

    add-long/2addr v7, v5

    .line 1117
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v5, v2, v7, v8, v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mcheckResumption(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;FJF)Z

    move-result v2

    if-eqz v2, :cond_c1d

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v4

    .line 1118
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getAppTwtDisableFlag(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c1d

    .line 1119
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v2

    const-string v3, "React."

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    .line 1120
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2, v9}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$mstopTrafficStatsPoll(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1122
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    iget v1, v1, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces$algOutput;->sp:I

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->quantizingDuration(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    .line 1123
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetchipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c13

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetchipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QUALCOMM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c13

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v1

    const v2, 0xa000

    if-lt v1, v2, :cond_c13

    .line 1125
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmDesiredInterval(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmMinSleepPeriod(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fputmDesiredSP(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;I)V

    :cond_c13
    const/16 v1, 0xa

    .line 1127
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c6c

    .line 1129
    :cond_c1d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->getUsageStatsPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getAppTwtDisableFlag(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c60

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtAiIntf(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;

    move-result-object v1

    .line 1130
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/twt/SemTwtAiEngineInterfaces;->getSerDetRes()I

    move-result v1

    if-nez v1, :cond_c40

    goto :goto_c60

    .line 1133
    :cond_c40
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtCessation(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    goto :goto_c6c

    :cond_c60
    :goto_c60
    const/4 v2, 0x2

    .line 1131
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor$TwtHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->-$$Nest$fgetmTwtInfo(Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;)Lcom/samsung/android/server/wifi/twt/SemTwtInfo;

    move-result-object v0

    const-string v1, "Deact. CG"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/twt/SemTwtInfo;->addEvent(Ljava/lang/String;I)V

    :cond_c6c
    :goto_c6c
    return-void

    nop

    :pswitch_data_c6e
    .packed-switch 0x1
        :pswitch_a38
        :pswitch_8d7
        :pswitch_6f3
        :pswitch_468
        :pswitch_461
        :pswitch_45a
        :pswitch_453
        :pswitch_2a6
        :pswitch_28f
        :pswitch_1ef
        :pswitch_1e8
        :pswitch_11c
        :pswitch_1d
    .end packed-switch
.end method
