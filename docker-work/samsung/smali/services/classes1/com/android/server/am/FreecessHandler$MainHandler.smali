.class public Lcom/android/server/am/FreecessHandler$MainHandler;
.super Landroid/os/Handler;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$MainHandler;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 190
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p1

    .line 194
    iget v1, v0, Landroid/os/Message;->what:I

    const-string/jumbo v2, "isDelay"

    const/4 v3, 0x1

    const-string/jumbo v4, "reason"

    const-string/jumbo v5, "uid"

    const-string/jumbo v6, "userId"

    const-string v7, ""

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "packageName"

    const/4 v11, -0x1

    packed-switch v1, :pswitch_data_278

    :pswitch_1c
    goto/16 :goto_276

    .line 397
    :pswitch_1e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 399
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 401
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_276

    if-eq v2, v11, :cond_276

    .line 403
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0, v9}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_276

    .line 394
    :pswitch_3d
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->handleUnfreezeRequestFocusPackage()V

    goto/16 :goto_276

    .line 391
    :pswitch_46
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->cancelCalmMode()V

    goto/16 :goto_276

    .line 382
    :pswitch_4f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 384
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 386
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/am/FreecessController;->quickFreezeForCalmMode(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_276

    .line 375
    :pswitch_6a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    const-string/jumbo v1, "list"

    .line 377
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->triggerCalmMode(Ljava/util/ArrayList;)V

    goto/16 :goto_276

    .line 367
    :pswitch_80
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 369
    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 371
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/FreecessController;->deleteRemovedPackage(Ljava/lang/String;I)V

    goto/16 :goto_276

    .line 364
    :pswitch_97
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->postMonitoringFrozenProcs()V

    goto/16 :goto_276

    .line 341
    :pswitch_a0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    const-string v1, "enabled"

    .line 343
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 344
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 345
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/FreecessController;->onFreezeStateChanged(ZI)V

    goto/16 :goto_276

    .line 254
    :pswitch_b9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 256
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 258
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->handleUnfreezeActivePackages(Ljava/lang/String;)V

    goto/16 :goto_276

    .line 361
    :pswitch_ce
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->readSysfs()V

    goto/16 :goto_276

    .line 352
    :pswitch_d7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    const-string/jumbo v1, "type"

    .line 354
    invoke-virtual {v0, v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 355
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/am/FreecessController;->setIsDumpstateWorking(Z)V

    .line 356
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/am/FreecessController;->setIsSmartSwitchWorking(Z)V

    .line 357
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    goto/16 :goto_276

    .line 349
    :pswitch_fb
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-string v1, "BugReport"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    goto/16 :goto_276

    .line 331
    :pswitch_106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 333
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_276

    if-eq v0, v11, :cond_276

    .line 336
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/FreecessController;->sendPendingBroadcast(Ljava/lang/String;I)V

    goto/16 :goto_276

    .line 328
    :pswitch_121
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-string/jumbo v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    goto/16 :goto_276

    .line 308
    :pswitch_12d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    const-string v1, "enterFlag"

    .line 310
    invoke-virtual {v0, v1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 311
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_15a

    .line 319
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/am/FreecessController;->updateTargetPkgForOLAF(ZLjava/lang/String;I)V

    .line 320
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/FreecessController;->triggerOLAF(Ljava/lang/String;I)V

    .line 321
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->clearTargetPkgForOLAF()V

    goto/16 :goto_276

    .line 323
    :cond_15a
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-string v1, "Force"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezeForOLAF(Ljava/lang/String;)V

    goto/16 :goto_276

    .line 300
    :pswitch_165
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 302
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 304
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->checkFrozenBinder(I)V

    goto/16 :goto_276

    .line 263
    :pswitch_178
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 265
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 267
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "packetMonitorFlag"

    .line 268
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "disableWakelockFlag"

    .line 269
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "isLcdOnTrigger"

    .line 270
    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    const-string/jumbo v8, "unrestrictJobs"

    .line 271
    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 277
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v4, v9}, Lcom/android/server/am/MARsPolicyManager;->restrictJobsByUid(IZ)V

    :cond_1ae
    if-eqz v5, :cond_1bb

    if-eq v5, v3, :cond_1b3

    goto :goto_1c2

    .line 288
    :cond_1b3
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/am/FreecessController;->configPacketMonitoredUid(ILjava/lang/String;I)V

    goto :goto_1c2

    .line 285
    :cond_1bb
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/am/FreecessController;->deletePacketMonitoredUid(I)V

    :goto_1c2
    if-eq v6, v11, :cond_276

    .line 294
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    if-ne v6, v3, :cond_1cb

    goto :goto_1cc

    :cond_1cb
    move v3, v9

    :goto_1cc
    invoke-virtual {v0, v1, v4, v3, v7}, Lcom/android/server/am/FreecessController;->setWakeLockEnableDisable(Ljava/lang/String;IZZ)V

    goto/16 :goto_276

    .line 245
    :pswitch_1d1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 247
    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 249
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->handleResetAllState(Ljava/lang/String;)V

    goto/16 :goto_276

    .line 234
    :pswitch_1e6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 236
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_276

    if-eq v0, v11, :cond_276

    .line 240
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/FreecessController;->handleLcdOnResetState(Ljava/lang/String;I)V

    goto/16 :goto_276

    .line 226
    :pswitch_201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 228
    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 230
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/FreecessController;->lcdOnFreezePackage(Ljava/lang/String;I)V

    goto :goto_276

    .line 216
    :pswitch_217
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 218
    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 219
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 220
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 221
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 222
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_276

    .line 206
    :pswitch_236
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 208
    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 209
    invoke-virtual {v0, v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 210
    invoke-virtual {v0, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 211
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 212
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/am/FreecessController;->lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_276

    .line 196
    :pswitch_255
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_261

    .line 197
    sget-object v1, Lcom/android/server/am/FreecessHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handle MARS_MH_UIDIDLE_TRIGGER_MSG...."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_276

    .line 200
    invoke-virtual {v0, v5, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 201
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;)V

    :cond_276
    :goto_276
    return-void

    nop

    :pswitch_data_278
    .packed-switch 0x1
        :pswitch_255
        :pswitch_236
        :pswitch_217
        :pswitch_201
        :pswitch_1e6
        :pswitch_1d1
        :pswitch_178
        :pswitch_165
        :pswitch_12d
        :pswitch_121
        :pswitch_106
        :pswitch_fb
        :pswitch_d7
        :pswitch_ce
        :pswitch_b9
        :pswitch_a0
        :pswitch_1c
        :pswitch_97
        :pswitch_80
        :pswitch_1c
        :pswitch_6a
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_1e
    .end packed-switch
.end method
