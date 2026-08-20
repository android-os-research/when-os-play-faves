.class public final Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MSCSControlHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V
    .registers 3

    .line 1217
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 p1, 0x0

    .line 1218
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1223
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_e6

    :pswitch_7
    goto/16 :goto_e5

    .line 1325
    :pswitch_9
    :try_start_9
    iget-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mwriteVideoEnhancerListInDataBase2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_10

    goto/16 :goto_e5

    :catch_10
    move-exception p1

    .line 1327
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1328
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mwriteVideoEnhancerListInDataBase(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_e5

    .line 1320
    :pswitch_1b
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mcontrolAclValue_v4(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_e5

    .line 1316
    :pswitch_22
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mcontrolAclValue_v2(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_e5

    .line 1312
    :pswitch_29
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mgetCurrentOpr(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_e5

    .line 1308
    :pswitch_30
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    goto/16 :goto_e5

    .line 1304
    :pswitch_37
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_mode(Z)V

    goto/16 :goto_e5

    .line 1300
    :pswitch_3e
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    goto/16 :goto_e5

    .line 1296
    :pswitch_45
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-virtual {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->burn_in_prevention_mode(Z)V

    goto/16 :goto_e5

    .line 1292
    :pswitch_4c
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mpixel_self_move(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto/16 :goto_e5

    .line 1288
    :pswitch_53
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mpixel_self_move(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto/16 :goto_e5

    .line 1284
    :pswitch_5a
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mgetSystemServices(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_e5

    .line 1280
    :pswitch_61
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSVideoOptionMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto/16 :goto_e5

    .line 1272
    :pswitch_68
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSNSMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto/16 :goto_e5

    .line 1268
    :pswitch_73
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetDMBMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_e5

    .line 1264
    :pswitch_7d
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetEbookMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_e5

    .line 1260
    :pswitch_83
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetEmailMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    goto :goto_e5

    .line 1244
    :pswitch_89
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    goto :goto_e5

    .line 1240
    :pswitch_93
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetSVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZLjava/lang/String;)V

    goto :goto_e5

    .line 1236
    :pswitch_9d
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetVideoMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_e5

    .line 1256
    :pswitch_a7
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetCameraMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_e5

    .line 1252
    :pswitch_b1
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetGalleryMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_e5

    .line 1248
    :pswitch_bb
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetBrowserMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_e5

    .line 1276
    :pswitch_c5
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-static {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fgetFrontPackageName(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$msetUIMode(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_e5

    .line 1230
    :pswitch_cf
    :try_start_cf
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 p1, -0x1

    invoke-interface {p0, p1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_d7
    .catch Landroid/os/RemoteException; {:try_start_cf .. :try_end_d7} :catch_e5

    goto :goto_e5

    .line 1225
    :pswitch_d8
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$mmonitorForegroundActivity(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V

    :catch_e5
    :goto_e5
    return-void

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_cf
        :pswitch_c5
        :pswitch_bb
        :pswitch_b1
        :pswitch_a7
        :pswitch_9d
        :pswitch_93
        :pswitch_89
        :pswitch_83
        :pswitch_7d
        :pswitch_73
        :pswitch_68
        :pswitch_7
        :pswitch_61
        :pswitch_5a
        :pswitch_7
        :pswitch_53
        :pswitch_4c
        :pswitch_45
        :pswitch_3e
        :pswitch_37
        :pswitch_30
        :pswitch_29
        :pswitch_22
        :pswitch_1b
        :pswitch_9
    .end packed-switch
.end method
