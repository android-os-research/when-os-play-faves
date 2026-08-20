.class public final Lcom/android/server/pdp/PdpService$SvcPdpHandler;
.super Landroid/os/Handler;
.source "PdpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pdp/PdpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SvcPdpHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V
    .registers 4

    .line 60
    iput-object p1, p0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 61
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 65
    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    goto/16 :goto_249

    :cond_b
    const-string v1, "PdpService"

    const-string v3, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST >"

    .line 67
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "sys.pdp.last_job"

    const-string v4, "XXXX"

    .line 68
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "ro.boot.carrierid"

    .line 69
    invoke-static {v5, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sys.pdp.toasted"

    .line 70
    invoke-static {v6, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v8, "XAC"

    .line 72
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "XAU"

    .line 73
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string/jumbo v10, "toasted"

    .line 74
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/2addr v11, v2

    .line 76
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[PDP] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpInfoChecked : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpCarrierIsXAC : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpCarrierIsXAU : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[PDP] pdpToastChecked : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_23f

    if-eqz v4, :cond_23f

    .line 85
    invoke-static {v6, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "[PDP] Prepare Toast"

    .line 86
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "[PDP]\nrestore : narrow success\n\n [ ! ]\n size issue"

    const-string v5, "detect-bkup"

    const-string/jumbo v6, "restore_narrow_suc"

    const-string/jumbo v7, "restore_done"

    const-string/jumbo v10, "restore_fail"

    const-string/jumbo v11, "remove-bkup"

    const-string v12, "backup_narrow_suc"

    const-string v13, "backup_done"

    const-string v14, "backup_fail_etc"

    const-string v15, "backup_fail_cache"

    const-string v2, "backup_fail_BFNE"

    move-object/from16 v16, v1

    const-string/jumbo v1, "setupwizard"

    move-object/from16 v17, v5

    const-string v5, "backup_fail_suw"

    if-nez v8, :cond_19a

    if-eqz v9, :cond_e9

    goto/16 :goto_19a

    .line 113
    :cond_e9
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v8, 0x5

    if-nez v5, :cond_18f

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f8

    goto/16 :goto_18f

    .line 115
    :cond_f8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_107

    .line 116
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\nNo backup file"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_196

    .line 117
    :cond_107
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 118
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\n/c partition size"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_196

    .line 119
    :cond_116
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_125

    .line 120
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\n ETC"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto/16 :goto_196

    .line 121
    :cond_125
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_134

    .line 122
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/4 v1, 0x3

    const-string v2, "[PDP]\nback-up : success"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 123
    :cond_134
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_144

    .line 124
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/16 v1, 0x9

    const-string v2, "[PDP]\nback-up : narrow success\n\n [ ! ]\n size issue"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 125
    :cond_144
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 126
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const/16 v1, 0x11

    const-string v2, "[PDP]\ndelete the back-up files : done"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 127
    :cond_154
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x56

    if-eqz v1, :cond_164

    .line 128
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nrestore : fail\nPlease download a userdata.img file again."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 130
    :cond_164
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_172

    .line 131
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nrestore : success"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 132
    :cond_172
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17e

    .line 133
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    :cond_17e
    move-object/from16 v8, v17

    .line 134
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_196

    .line 135
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up files are detected"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 114
    :cond_18f
    :goto_18f
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\nback-up : fail\nsetup-wizard [ FINISH ]"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    :cond_196
    :goto_196
    move-object/from16 v1, v16

    goto/16 :goto_244

    :cond_19a
    :goto_19a
    move-object/from16 v8, v17

    .line 89
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_237

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1aa

    goto/16 :goto_237

    .line 91
    :cond_1aa
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b9

    .line 92
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: NG [file not exist]"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    :cond_1b9
    const/4 v2, 0x1

    .line 93
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c8

    .line 94
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: NG [/c size]"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 95
    :cond_1c8
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1d7

    .line 96
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: NG ETC"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 97
    :cond_1d7
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e6

    .line 98
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 99
    :cond_1e6
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f4

    .line 100
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup: [!] narrow success"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 101
    :cond_1f4
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_203

    .line 102
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    const-string v1, "[PDP]\n system backup: on\n manual backup cancel: done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_196

    .line 103
    :cond_203
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_211

    const-string v0, "[PDP] restore-fail toast is not allowed"

    move-object/from16 v1, v16

    .line 104
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_244

    :cond_211
    move-object/from16 v1, v16

    .line 105
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21f

    const-string v0, "[PDP] restore-done toast is not allowed"

    .line 106
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_244

    .line 107
    :cond_21f
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22b

    .line 108
    iget-object v0, v0, Lcom/android/server/pdp/PdpService$SvcPdpHandler;->this$0:Lcom/android/server/pdp/PdpService;

    invoke-virtual {v0, v4, v2}, Lcom/android/server/pdp/PdpService;->handleDisplayPDPToast(Ljava/lang/String;I)V

    goto :goto_244

    .line 109
    :cond_22b
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_244

    const-string v0, "[PDP] detect-backup toast is not allowed"

    .line 110
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_244

    :cond_237
    :goto_237
    move-object/from16 v1, v16

    const-string v0, "[PDP] backup-fail toast is not allowed"

    .line 90
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_244

    :cond_23f
    const-string v0, "[PDP] Already Toasted"

    .line 139
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_244
    :goto_244
    const-string v0, "[PDP] handleMessage MSG_DISPLAY_PDPTOAST <"

    .line 141
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_249
    return-void
.end method
