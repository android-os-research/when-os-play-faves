.class public Lcom/android/server/enterprise/email/AccountsReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/AccountsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/AccountsReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/AccountsReceiver;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 87
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user_handle_id"

    const/4 v4, 0x0

    .line 88
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "com.samsung.android.knox.intent.extra.USER_HANDLE_ID_INTERNAL"

    .line 89
    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_23

    .line 91
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onReceive() : Action is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 94
    :cond_23
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive() userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "com.samsung.android.knox.intent.action.CBA_INSTALL_STATUS_INTERNAL"

    .line 96
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_42} :catch_269

    const-string v6, "com.samsung.android.knox.intent.extra.ACCOUNT_ID_INTERNAL"

    const-string v7, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_7b

    :try_start_4a
    const-string v2, "com.samsung.android.knox.intent.extra.STATUS"

    const/4 v3, 0x1

    .line 98
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 99
    invoke-virtual {v1, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 100
    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    if-ne v2, v3, :cond_74

    .line 102
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive() : failed to install cba on accountId : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_74
    iget-object v0, v0, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-static {v0, v5, v6, v4, v2}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$msendClientAuthResultIntent(Lcom/android/server/enterprise/email/AccountsReceiver;JII)V

    goto/16 :goto_274

    :cond_7b
    const-string v4, "edm.intent.action.sec.MDM_ACCOUNT_SETUP_RESULT"

    .line 106
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_81} :catch_269

    const-string v5, "com.samsung.android.knox.intent.extra.INCOMING_PROTOCOL"

    const-string v10, "com.samsung.android.knox.intent.extra.SERVICE_NAME_INTERNAL"

    const-string v11, "com.samsung.android.knox.intent.extra.RECEIVE_HOST_INTERNAL"

    const-string/jumbo v12, "server_name"

    const-string/jumbo v13, "receive_host"

    const-string v14, "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

    const-string v15, "eas"

    const-string v8, "com.samsung.android.knox.intent.extra.ACCOUNT_SETUP_RESULT_STATUS_INTERNAL"

    const-string v9, "account_id"

    move-object/from16 p1, v5

    const-string/jumbo v5, "service"

    move-object/from16 v16, v11

    const-string/jumbo v11, "user_id"

    move-object/from16 v17, v13

    const-string/jumbo v13, "status"

    const-string v0, "containerid"

    move-object/from16 v18, v0

    const-string v0, "com.samsung.android.knox.intent.extra.ACCOUNT_ID"

    move/from16 v19, v3

    const-string v3, "com.samsung.android.knox.intent.extra.RESULT"

    move-object/from16 v20, v0

    const-string v0, "com.samsung.android.knox.intent.extra.EMAIL_ADDRESS"

    if-nez v4, :cond_17b

    :try_start_b4
    const-string v4, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_SETUP_RESULT_INTERNAL"

    .line 107
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_be

    goto/16 :goto_17b

    :cond_be
    const-string v4, "edm.intent.action.sec.MDM_ACCOUNT_DELETE_RESULT"

    .line 155
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_ce

    const-string v4, "com.samsung.android.knox.intent.action.MDM_ACCOUNT_DELETE_RESULT_INTERNAL"

    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_274

    :cond_ce
    const/16 v2, 0x8

    .line 157
    invoke-virtual {v1, v13, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 158
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 159
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v21, v10

    const-wide/16 v10, -0x1

    .line 160
    invoke-virtual {v1, v9, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 161
    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 162
    invoke-virtual {v1, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    if-nez v4, :cond_f2

    .line 164
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_f2
    if-nez v5, :cond_f8

    .line 167
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 170
    :cond_f8
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_139

    .line 171
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10a

    move-object/from16 v10, v21

    .line 173
    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    :cond_10a
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_DELETE_RESULT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v6, v20

    .line 179
    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    .line 180
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v18

    move/from16 v7, v19

    .line 181
    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v10, p0

    .line 182
    iget-object v0, v10, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_274

    :cond_139
    move-object/from16 v10, p0

    move-object/from16 v11, v18

    move/from16 v7, v19

    move-object/from16 v6, v20

    move-object/from16 v12, v17

    .line 185
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_14f

    move-object/from16 v12, v16

    .line 187
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 190
    :cond_14f
    new-instance v1, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_DELETE_RESULT"

    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 193
    invoke-virtual {v1, v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v2, p1

    .line 194
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    .line 195
    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v0, v10, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_274

    :cond_17b
    :goto_17b
    move-object/from16 v22, v16

    move-object/from16 v23, v17

    move-object/from16 v4, v18

    move-object/from16 v2, v20

    move-object/from16 v18, v4

    const/16 v4, 0x8

    .line 108
    invoke-virtual {v1, v13, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 109
    invoke-virtual {v1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 110
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v20, v2

    move-object v13, v3

    move-object/from16 v21, v10

    const-wide/16 v2, -0x1

    .line 111
    invoke-virtual {v1, v9, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 112
    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 113
    invoke-virtual {v1, v6, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    if-nez v11, :cond_1ac

    .line 115
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_1ac
    if-nez v5, :cond_1b2

    .line 118
    invoke-virtual {v1, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    :cond_1b2
    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_227

    .line 122
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1c4

    move-object/from16 v5, v21

    .line 124
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 127
    :cond_1c4
    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.android.knox.intent.action.EXCHANGE_ACCOUNT_ADD_RESULT"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v6, v13

    .line 130
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v7, v20

    .line 131
    invoke-virtual {v1, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.SERVER_ADDRESS"

    .line 132
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v18

    move/from16 v8, v19

    .line 133
    invoke-virtual {v1, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v9, p0

    .line 134
    iget-object v0, v9, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v0

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.knox.permission.KNOX_EXCHANGE"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->getSMIMECertificate(Ljava/lang/String;)Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    move-result-object v0

    if-eqz v0, :cond_274

    if-nez v2, :cond_274

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-eqz v1, :cond_274

    .line 137
    new-instance v1, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;

    invoke-direct {v1, v0, v3, v4}, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;-><init>(Lcom/android/server/enterprise/email/AccountSMIMECertificate;J)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 138
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRecieve() : SMIMECertificate install called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_274

    :cond_227
    move-object/from16 v9, p0

    move-object v6, v13

    move-object/from16 v10, v18

    move/from16 v8, v19

    move-object/from16 v7, v20

    move-object/from16 v12, v23

    .line 141
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_23e

    move-object/from16 v12, v22

    .line 143
    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 146
    :cond_23e
    new-instance v1, Landroid/content/Intent;

    const-string v13, "com.samsung.android.knox.intent.action.EMAIL_ACCOUNT_ADD_RESULT"

    invoke-direct {v1, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {v1, v7, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-object/from16 v0, p1

    .line 150
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.INCOMING_SERVER_ADDRESS"

    .line 151
    invoke-virtual {v1, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {v1, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v0, v9, Lcom/android/server/enterprise/email/AccountsReceiver$1;->this$0:Lcom/android/server/enterprise/email/AccountsReceiver;

    invoke-static {v0}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/email/AccountsReceiver;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_268} :catch_269

    goto :goto_274

    :catch_269
    move-exception v0

    .line 201
    invoke-static {}, Lcom/android/server/enterprise/email/AccountsReceiver;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onRecieve() failed. "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_274
    :goto_274
    return-void
.end method
