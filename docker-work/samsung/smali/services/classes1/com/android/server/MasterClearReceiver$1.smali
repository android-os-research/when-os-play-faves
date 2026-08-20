.class public Lcom/android/server/MasterClearReceiver$1;
.super Ljava/lang/Thread;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MasterClearReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/MasterClearReceiver;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$forceWipe:Z

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$reason:Ljava/lang/String;

.field public final synthetic val$shutdown:Z


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;ZZ)V
    .registers 8

    .line 182
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iput-boolean p6, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iput-boolean p7, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const-string v0, "args"

    const-string v1, "!@[MasterClearReceiver] thr.run: Can\'t perform master clear/factory reset"

    const-string v2, "MasterClear"

    .line 186
    :try_start_6
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v4, "FactoryResetByCommand"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_e} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_e} :catch_1a6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_e} :catch_1a1

    const-string v4, "SIMBasedChangeCSC"

    if-eqz v3, :cond_1d

    :try_start_12
    const-string v3, "!@[MasterClearReceiver] thr.run: FactoryResetByATCommand"

    .line 187
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->-$$Nest$mremoveVZWResetDate(Lcom/android/server/MasterClearReceiver;)V

    goto :goto_34

    .line 190
    :cond_1d
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    const-string v5, "HIDDEN_MENU"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 191
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-virtual {v3}, Lcom/android/server/MasterClearReceiver;->setSalesCodeChanged()V

    .line 194
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_3a} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_3a} :catch_1a6
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_3a} :catch_1a1

    const-string v4, "!@[MasterClearReceiver] OMC check delete !!!"

    const-string v5, "/efs/imei/omc.txt"

    if-nez v3, :cond_69

    .line 195
    :try_start_40
    new-instance v3, Ljava/io/File;

    const-string v6, "/omr/carrier"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_69

    const-string v6, "!@[MasterClearReceiver] OMC carrier delete !!!"

    .line 197
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->-$$Nest$smdeleteDir(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 199
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_69

    .line 201
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 207
    :cond_69
    new-instance v3, Ljava/io/File;

    const-string v6, "/omr/res"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_92

    const-string v6, "!@[MasterClearReceiver] OMC resource delete !!!"

    .line 209
    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->-$$Nest$smdeleteDir(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_92

    .line 211
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_92

    .line 213
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 218
    :cond_92
    new-instance v3, Ljava/io/File;

    const-string v4, "/omr/update"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_af

    const-string v4, "!@[MasterClearReceiver] OMC update package delete !!!"

    .line 220
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-static {v3}, Lcom/android/server/MasterClearReceiver;->-$$Nest$smdeleteDir(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_af

    const-string v3, "!@[MasterClearReceiver] OMC update package delete finish !!!"

    .line 222
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_af
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v4, "CustomWipe"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3
    :try_end_b7
    .catch Ljava/io/FileNotFoundException; {:try_start_40 .. :try_end_b7} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_b7} :catch_1a6
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_b7} :catch_1a1

    const-string v4, ""

    if-eqz v3, :cond_10f

    :try_start_bb
    const-string v3, "!@[MasterClearReceiver] thr.run: !!!call wipe customer!!!"

    .line 229
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 232
    iget-object v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 233
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 235
    :cond_ea
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "--locale="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v3, v0, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19b

    .line 237
    :cond_10f
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "WipeCustomerPartiotion"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13f

    const-string v0, "!@[MasterClearReceiver] thr.run: !!!WipeData and WipeCustomerPartiotion!!!"

    .line 238
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--wipe_data\n--wipe_carrier\n--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v3, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19b

    .line 240
    :cond_13f
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "WipeCache"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16d

    const-string v0, "!@[MasterClearReceiver] thr.run: !!!Just Exit (For Bypass Factory Reset)!!!"

    .line 241
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--just_exit\n--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v3, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19b

    .line 243
    :cond_16d
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v3, "Download"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_184

    const-string v0, "!@[MasterClearReceiver] thr.run: !!!Enter the Download Mode for Factory Routine!!!"

    .line 244
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    invoke-static {v0, v4, p0}, Landroid/os/RecoverySystem;->rebootWipeCustomerPartition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19b

    :cond_184
    const-string v0, "!@[MasterClearReceiver] thr.run: !!!No hasExtra, just call rebootWipeUserData!!!"

    .line 248
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v3, p0, Lcom/android/server/MasterClearReceiver$1;->val$context:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/android/server/MasterClearReceiver$1;->val$shutdown:Z

    iget-object v5, p0, Lcom/android/server/MasterClearReceiver$1;->val$reason:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/android/server/MasterClearReceiver$1;->val$forceWipe:Z

    const/4 v7, 0x0

    iget-object p0, p0, Lcom/android/server/MasterClearReceiver$1;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-static {p0}, Lcom/android/server/MasterClearReceiver;->-$$Nest$fgetextraCmd(Lcom/android/server/MasterClearReceiver;)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;ZZLjava/lang/String;)V

    :goto_19b
    const-string p0, "!@[MasterClearReceiver] thr.run: Still running after master clear?!"

    .line 252
    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/io/FileNotFoundException; {:try_start_bb .. :try_end_1a0} :catch_1ab
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_1a0} :catch_1a6
    .catch Ljava/lang/SecurityException; {:try_start_bb .. :try_end_1a0} :catch_1a1

    goto :goto_1af

    :catch_1a1
    move-exception p0

    .line 258
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1af

    :catch_1a6
    move-exception p0

    .line 256
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1af

    :catch_1ab
    move-exception p0

    .line 254
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1af
    return-void
.end method
