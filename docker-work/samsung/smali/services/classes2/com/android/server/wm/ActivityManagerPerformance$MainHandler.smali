.class public final Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityManagerPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityManagerPerformance;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V
    .registers 4

    .line 196
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 208
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_29

    .line 209
    instance-of v3, v0, Lcom/android/server/wm/ActivityRecord;

    if-eqz v3, :cond_11

    .line 210
    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    goto :goto_12

    :cond_11
    move-object v3, v1

    .line 211
    :goto_12
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 212
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 213
    :cond_19
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_24

    .line 214
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_25

    :cond_24
    move v0, v2

    :goto_25
    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_2b

    :cond_29
    move-object v3, v1

    move v0, v2

    .line 217
    :goto_2b
    iget v4, p1, Landroid/os/Message;->what:I

    const-string v5, "ActivityManagerPerformance"

    packed-switch v4, :pswitch_data_1ce

    goto/16 :goto_1cc

    .line 286
    :pswitch_34
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_3d

    const-string p0, "Received MSG_DHA_BOOSTER_ON"

    .line 287
    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_3d
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$sfgetmDynamicHiddenApp()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    if-nez p0, :cond_4a

    .line 289
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getInstance()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$sfputmDynamicHiddenApp(Lcom/android/server/am/DynamicHiddenApp;)V

    .line 291
    :cond_4a
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$sfgetmDynamicHiddenApp()Lcom/android/server/am/DynamicHiddenApp;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/am/DynamicHiddenApp;->doDhaBoosterOn(Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 281
    :pswitch_53
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_5c

    const-string p1, "Received MSG_PERF_TASK_BOOST_END"

    .line 282
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_5c
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mtaskBoostRel(Lcom/android/server/wm/ActivityManagerPerformance;)V

    goto/16 :goto_1cc

    .line 275
    :pswitch_63
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 276
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_83

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received MSG_PERF_TASK_BOOST  pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_83
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mtaskBoostAcq(Lcom/android/server/wm/ActivityManagerPerformance;I)V

    goto/16 :goto_1cc

    .line 270
    :pswitch_8a
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_a2

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received MSG_PERF_RESERVE_ON_OFF  value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_a2
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$mperfReserveControl(Lcom/android/server/wm/ActivityManagerPerformance;Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 264
    :pswitch_a9
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_b2

    const-string p1, "Received MSG_OLAF_FREEZE_CLEAR"

    .line 265
    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_b2
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$molafFreezer(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    goto/16 :goto_1cc

    .line 259
    :pswitch_b9
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_d1

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received MSG_OLAF_FREEZE_ON_OFF  value: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_d1
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v0}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$molafFreezer(Lcom/android/server/wm/ActivityManagerPerformance;Z)V

    goto/16 :goto_1cc

    .line 234
    :pswitch_d8
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_f0

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received MSG_ENABLE_APP_SWITCH, r: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_f0
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    const/4 p1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$msetBoosterAppSwitch(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_1cc

    .line 254
    :pswitch_f8
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_110

    .line 255
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received MSG_CFMS_HINT_AMS_HOME pkgName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_110
    const-string p0, "AMS_APP_HOME"

    .line 256
    invoke-static {p0, v3}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 249
    :pswitch_117
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_12f

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received MSG_CFMS_HINT_AMS_SWITCH pkgName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12f
    const-string p0, "AMS_APP_SWITCH"

    .line 251
    invoke-static {p0, v3}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 244
    :pswitch_136
    sget-boolean p0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p0, :cond_14e

    .line 245
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Received MSG_CFMS_EXEC_ACTIVITY pkgName: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14e
    const-string p0, "EXEC_ACTIVITY"

    .line 246
    invoke-static {p0, v3}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 239
    :pswitch_155
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_16d

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received MSG_ENABLE_ACT_RESUME_TAIL r: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_16d
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$msetBoosterTail(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1cc

    .line 219
    :pswitch_173
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_18b

    .line 220
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received MSG_DISABLE_ACT_RESUME, r: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_18b
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$msetBoosterActResume(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1cc

    .line 224
    :pswitch_191
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_1a9

    .line 225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received MSG_DISABLE_ACT_START, r: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_1a9
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$msetBoosterActStart(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1cc

    .line 229
    :pswitch_1af
    sget-boolean p1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz p1, :cond_1c7

    .line 230
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received MSG_DISABLE_APP_SWITCH, r: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1c7
    iget-object p0, p0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->this$0:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-static {p0, v2, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->-$$Nest$msetBoosterAppSwitch(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V

    :goto_1cc
    return-void

    nop

    :pswitch_data_1ce
    .packed-switch 0x1
        :pswitch_1af
        :pswitch_191
        :pswitch_173
        :pswitch_155
        :pswitch_136
        :pswitch_117
        :pswitch_f8
        :pswitch_d8
        :pswitch_b9
        :pswitch_a9
        :pswitch_8a
        :pswitch_63
        :pswitch_53
        :pswitch_34
    .end packed-switch
.end method
