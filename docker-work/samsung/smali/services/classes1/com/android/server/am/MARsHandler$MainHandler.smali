.class public Lcom/android/server/am/MARsHandler$MainHandler;
.super Landroid/os/Handler;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainHandler"
.end annotation


# instance fields
.field public extras:Landroid/os/Bundle;

.field public final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    .line 115
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 120
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xa

    const-string v4, "MARsHandler"

    const-string/jumbo v5, "policy-num"

    const-string/jumbo v6, "packageList"

    const/4 v7, 0x1

    const-string v8, ""

    const-string/jumbo v9, "uid"

    const-string/jumbo v10, "userId"

    const-string/jumbo v11, "pkgName"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    packed-switch v2, :pswitch_data_312

    goto/16 :goto_310

    .line 286
    :pswitch_24
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    .line 288
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_310

    if-eq v0, v14, :cond_310

    .line 291
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->notifyAnomalyApp(Ljava/lang/String;I)V

    goto/16 :goto_310

    .line 276
    :pswitch_43
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    .line 278
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_310

    if-eq v0, v14, :cond_310

    .line 281
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->setFGSRestrictionTarget(Ljava/lang/String;I)V

    goto/16 :goto_310

    .line 262
    :pswitch_62
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    .line 264
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 266
    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v10, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 267
    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v6, "minAdj"

    invoke-virtual {v5, v6, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 268
    iget-object v6, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v8, "allowRestart"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 269
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "reason"

    invoke-virtual {v0, v7, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "kill package processes. pkgName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", userId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", minAdj="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", allowRestart="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", reason="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_310

    if-eq v2, v14, :cond_310

    if-eq v3, v14, :cond_310

    if-eq v5, v14, :cond_310

    if-eqz v0, :cond_310

    .line 272
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v15

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v5

    move/from16 v20, v6

    move-object/from16 v21, v0

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/am/MARsPolicyManager;->killPackageProcs(Ljava/lang/String;IIIZLjava/lang/String;)V

    goto/16 :goto_310

    .line 250
    :pswitch_f0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    .line 252
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v10, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 254
    iget-object v3, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v4, "bucket"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 255
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string v4, "byUser"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_310

    if-eq v2, v14, :cond_310

    .line 257
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->callSetAppStandbyBucket(Ljava/lang/String;IIZ)V

    goto/16 :goto_310

    .line 243
    :pswitch_11f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    .line 245
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v1, v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 246
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->initDisabledPackage(I)V

    goto/16 :goto_310

    .line 234
    :pswitch_13c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    const-string v2, "extraType"

    .line 236
    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 237
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "specificPackage"

    invoke-virtual {v2, v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 238
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "specificPackageCnt"

    invoke-virtual {v0, v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 239
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->notifyAppSleepToDC(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_310

    .line 224
    :pswitch_165
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v2

    if-nez v2, :cond_310

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 226
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->checkUnusedTargetForDeepSleep()V

    if-eqz v1, :cond_310

    const-string v2, "debug"

    .line 228
    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 229
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    goto/16 :goto_310

    .line 219
    :pswitch_189
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_193

    const-string/jumbo v0, "handle MARS_MH_TRIGGER_POLICY_MSG...."

    .line 220
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_193
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    goto/16 :goto_310

    .line 197
    :pswitch_19c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    .line 199
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 200
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 201
    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v5, v5, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v10, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v1, :cond_1d4

    .line 204
    :goto_1be
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_1db

    .line 205
    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    invoke-virtual {v6, v5, v2, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1be

    .line 209
    :cond_1d4
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(I)V

    :cond_1db
    if-ne v2, v3, :cond_310

    .line 212
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_310

    .line 213
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/am/MARsPolicyManager;->setFirstTimeUpdatePkgsState(Z)V

    .line 214
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler()V

    goto/16 :goto_310

    .line 170
    :pswitch_1f5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    .line 172
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 173
    iget-object v2, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 174
    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    const-string/jumbo v5, "trigger-reason"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    iget-object v4, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    iget-object v0, v0, Lcom/android/server/am/MARsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v4, v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v4, 0x9

    if-ne v2, v4, :cond_22a

    .line 178
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V

    goto/16 :goto_310

    :cond_22a
    if-eqz v1, :cond_310

    const/4 v4, 0x5

    if-eq v2, v4, :cond_23f

    const/4 v4, 0x6

    if-eq v2, v4, :cond_23f

    if-eq v2, v3, :cond_23f

    if-eqz v2, :cond_310

    .line 189
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V

    goto/16 :goto_310

    .line 184
    :cond_23f
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->updateSpecificPolicyTargetPackages(Ljava/util/ArrayList;II)V

    .line 185
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v2, v12}, Lcom/android/server/am/MARsPolicyManager;->forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V

    goto/16 :goto_310

    .line 163
    :pswitch_24f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/MARsHandler$MainHandler;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_310

    const-string v0, "changedTime"

    .line 165
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 166
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsedForTimeChanged(J)V

    goto/16 :goto_310

    .line 152
    :pswitch_266
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_310

    .line 154
    invoke-virtual {v0, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v9, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "mode"

    .line 156
    invoke-virtual {v0, v3, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v1, :cond_310

    if-eq v2, v14, :cond_310

    .line 158
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/server/am/MARsPolicyManager;->updateFasState(Ljava/lang/String;II)V

    goto/16 :goto_310

    .line 148
    :pswitch_288
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    .line 149
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsHandler;->sendGetBatteryStatMsgToMainHandler(Z)V

    goto/16 :goto_310

    .line 142
    :pswitch_296
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v1

    if-nez v1, :cond_310

    .line 143
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/android/server/am/MARsPolicyManager;->doUpdatePackages(Z)V

    .line 144
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0, v13}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    goto :goto_310

    .line 133
    :pswitch_2ad
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v1

    if-nez v1, :cond_2d9

    .line 134
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getIsDumpstateWorking()Z

    move-result v1

    if-nez v1, :cond_2d9

    .line 135
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-eqz v1, :cond_2cc

    goto :goto_2d9

    .line 138
    :cond_2cc
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    .line 139
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    goto :goto_310

    :cond_2d9
    :goto_2d9
    return-void

    .line 122
    :pswitch_2da
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v1

    if-nez v1, :cond_310

    .line 123
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getIsDumpstateWorking()Z

    move-result v1

    if-nez v1, :cond_310

    .line 124
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v1

    if-eqz v1, :cond_2f9

    goto :goto_310

    .line 127
    :cond_2f9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->triggerAction()V

    .line 128
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v1

    if-eqz v1, :cond_310

    .line 129
    iget-object v0, v0, Lcom/android/server/am/MARsHandler$MainHandler;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendRepeatTriggerMsgToMainHandler()V

    nop

    :cond_310
    :goto_310
    return-void

    nop

    :pswitch_data_312
    .packed-switch 0x1
        :pswitch_2da
        :pswitch_2ad
        :pswitch_296
        :pswitch_288
        :pswitch_266
        :pswitch_24f
        :pswitch_1f5
        :pswitch_19c
        :pswitch_189
        :pswitch_165
        :pswitch_13c
        :pswitch_11f
        :pswitch_f0
        :pswitch_62
        :pswitch_43
        :pswitch_24
    .end packed-switch
.end method
