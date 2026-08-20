.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMIMEIntentReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .registers 2

    .line 1362
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 26

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1365
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Intent - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ExchangeAccountPolicy/Receiver"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_26

    const-string v0, "failed. action is null."

    .line 1368
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string v3, "com.samsung.edm.intent.action.EXCHANGE_SMIME_INSTALL_STATUS"

    .line 1371
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v5, 0x0

    const-string v7, "com.samsung.android.knox.intent.extra.SMIME_INSTALL_TYPE"

    const-string v8, "S"

    const-string v9, "com.samsung.android.knox.intent.extra.CERT_RESULT_ID_INTERNAL"

    const-string v10, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    const-string v11, "com.samsung.android.knox.intent.extra.SMIME_RESULT"

    const/4 v12, -0x1

    const-wide/16 v14, -0x1

    const/4 v13, 0x0

    if-eqz v3, :cond_12e

    const-string v2, "Received - ACTION_SMIME_INSTALL_STATUS"

    .line 1372
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1375
    invoke-virtual {v0, v10, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1376
    invoke-virtual {v0, v9, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v3

    if-nez v3, :cond_79

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed. no registed work. id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_79
    if-ne v2, v12, :cond_110

    cmp-long v5, v10, v5

    if-lez v5, :cond_110

    const/4 v5, 0x1

    .line 1384
    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1385
    iget-object v2, v3, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v3, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1386
    iget v2, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const/4 v6, 0x2

    if-eq v0, v6, :cond_8f

    if-ne v0, v5, :cond_b5

    .line 1391
    :cond_8f
    iget-object v5, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v21, 0x1

    const-string v22, "ForceSmimeCertForEncryption"

    move-object/from16 v16, v5

    move/from16 v17, v3

    move/from16 v18, v2

    move-wide/from16 v19, v10

    invoke-static/range {v16 .. v22}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$mputPolicyState(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v13

    .line 1393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force SMIME Certificate for Enryption. ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b5
    const/4 v5, 0x3

    if-eq v0, v5, :cond_bb

    const/4 v5, 0x1

    if-ne v0, v5, :cond_e1

    .line 1398
    :cond_bb
    iget-object v1, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v21, 0x1

    const-string v22, "ForceSmimeCertForSigning"

    move-object/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v2

    move-wide/from16 v19, v10

    invoke-static/range {v16 .. v22}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$mputPolicyState(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v13

    .line 1400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "force SMIME Certificate for Signing. ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e1
    if-eqz v13, :cond_fa

    .line 1405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "success to SMIME Certificate ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a0

    .line 1407
    :cond_fa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to SMIME Certificate ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a0

    .line 1410
    :cond_110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to enforce SMIME. accId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2a0

    :cond_12e
    const-string v3, "com.samsung.android.knox.intent.action.ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 1413
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29a

    const-string v2, "ExchangeAccountPolicy"

    const-string v3, "Received - ACTION_ENFORCE_SMIME_ALIAS_EMAIL_INTERNAL"

    .line 1414
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1417
    invoke-virtual {v0, v10, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1418
    invoke-virtual {v0, v7, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1419
    invoke-virtual {v0, v9, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1421
    :try_start_14d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1422
    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v0

    if-eqz v0, :cond_271

    .line 1424
    iget-object v7, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    iget v8, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1425
    iget v9, v7, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-ne v2, v12, :cond_25c

    cmp-long v5, v10, v5

    if-lez v5, :cond_25c

    if-nez v3, :cond_1b3

    .line 1429
    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v5, :cond_18d

    .line 1430
    iget-object v5, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v21, 0x2

    const/16 v22, 0x1

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    move-wide/from16 v18, v10

    move/from16 v20, v9

    invoke-static/range {v16 .. v22}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$mresetForcedSMIMECertificateInternal(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v13

    const-string/jumbo v5, "release SMIME Certificate for Enryption (Alias) by null."

    .line 1434
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b3

    .line 1438
    :cond_18d
    iget-object v5, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v21, 0x1

    const-string v22, "ForceSmimeCertForEncryption"

    move-object/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move-wide/from16 v19, v10

    invoke-static/range {v16 .. v22}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$mputPolicyState(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v13

    .line 1440
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force SMIME Certificate for Enryption (Alias). ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b3
    :goto_1b3
    const/4 v5, 0x1

    if-ne v3, v5, :cond_1fb

    .line 1447
    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v5, :cond_1d5

    .line 1448
    iget-object v5, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    const/16 v21, 0x3

    const/16 v22, 0x1

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-wide/from16 v18, v10

    move/from16 v20, v9

    invoke-static/range {v16 .. v22}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$mresetForcedSMIMECertificateInternal(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Lcom/samsung/android/knox/ContextInfo;JIIZ)Z

    move-result v13

    const-string/jumbo v5, "release SMIME Certificate for Signing (Alias) by null."

    .line 1451
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1fb

    .line 1454
    :cond_1d5
    iget-object v5, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    const/16 v21, 0x1

    const-string v22, "ForceSmimeCertForSigning"

    move-object/from16 v16, v5

    move/from16 v17, v8

    move/from16 v18, v9

    move-wide/from16 v19, v10

    invoke-static/range {v16 .. v22}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$mputPolicyState(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;IIJZLjava/lang/String;)Z

    move-result v13

    .line 1456
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force SMIME Certificate for Signing (Alias). ret = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1fb
    :goto_1fb
    if-eqz v13, :cond_22e

    .line 1462
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v0, :cond_218

    .line 1463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "success to release SMIME Certificate (Alias) : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_294

    .line 1467
    :cond_218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "success to SMIME Certificate (Alias) : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    .line 1470
    :cond_22e
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    if-nez v0, :cond_247

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to release SMIME Certificate (Alias) : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    .line 1475
    :cond_247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to SMIME Certificate (Alias)."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    .line 1479
    :cond_25c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forcing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_294

    .line 1482
    :cond_271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force SMIME Certificate has failed. status = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", accId="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28d
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_28d} :catch_28e

    goto :goto_294

    :catch_28e
    move-exception v0

    const-string v5, "Failed to apply SMIME Alis Policy on success."

    .line 1485
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1488
    :goto_294
    iget-object v0, v1, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$SMIMEIntentReceiver;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v0, v10, v11, v2, v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$msendSMIMEAliasResultIntent(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;JII)V

    goto :goto_2a0

    :cond_29a
    const-string/jumbo v0, "no Defined Intent."

    .line 1491
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a0
    return-void
.end method
