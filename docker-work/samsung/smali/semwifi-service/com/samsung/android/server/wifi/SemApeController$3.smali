.class Lcom/samsung/android/server/wifi/SemApeController$3;
.super Landroid/os/Handler;
.source "SemApeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemApeController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeController;Landroid/os/Looper;)V
    .registers 3

    .line 190
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    .line 193
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0xbb8

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_147

    const-string v5, ""

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v0, v4, :cond_10f

    const/4 v8, 0x3

    if-eq v0, v3, :cond_b2

    if-eq v0, v8, :cond_9d

    const/4 v1, 0x4

    if-eq v0, v1, :cond_38

    const/4 v1, 0x5

    if-eq v0, v1, :cond_31

    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainHandler.handleMessage: undefined case: msg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    goto/16 :goto_1cf

    .line 270
    :cond_31
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mevaluateApeState(Lcom/samsung/android/server/wifi/SemApeController;)V

    goto/16 :goto_1cf

    .line 245
    :cond_38
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_3e

    move p1, v4

    goto :goto_3f

    :cond_3e
    move p1, v7

    .line 246
    :goto_3f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z

    move-result v0

    if-eq p1, v0, :cond_1cf

    if-eqz p1, :cond_7f

    const-string v0, "New APE policy: enabled"

    .line 249
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmApeEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 253
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmLatestEnabledWith(Lcom/samsung/android/server/wifi/SemApeController;)Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->type:I

    invoke-static {v0, v4, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$msendBroadcastEnableApe(Lcom/samsung/android/server/wifi/SemApeController;IILjava/lang/String;I)V

    goto :goto_96

    :cond_7f
    const-string v0, "New APE policy: disabled"

    .line 257
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logi(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmApeEnabled(Lcom/samsung/android/server/wifi/SemApeController;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 261
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0, v7, v6, v5, v7}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$msendBroadcastEnableApe(Lcom/samsung/android/server/wifi/SemApeController;IILjava/lang/String;I)V

    .line 264
    :cond_96
    :goto_96
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmPolicyEnabled(Lcom/samsung/android/server/wifi/SemApeController;Z)V

    goto/16 :goto_1cf

    .line 237
    :cond_9d
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v4, :cond_a2

    goto :goto_a3

    :cond_a2
    move v4, v7

    .line 238
    :goto_a3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 239
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 240
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    const/16 v1, 0x10

    invoke-static {p0, v4, v1, v0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V

    goto/16 :goto_1cf

    .line 222
    :cond_b2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmAudioManager(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Check audioMode="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->logv(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    move-result v0

    if-eq v0, v6, :cond_1cf

    if-eq p1, v8, :cond_fa

    .line 228
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1cf

    .line 230
    :cond_fa
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1cf

    .line 210
    :cond_10f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;I)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmAppInfos(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_133

    const-string p1, "VoIP stopped"

    .line 213
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1, v7, v4, v6, v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V

    .line 216
    :cond_133
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1cf

    .line 195
    :cond_147
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;I)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fputmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;Ljava/lang/String;)V

    .line 197
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmAppInfos(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/util/TreeMap;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;

    if-eqz p1, :cond_173

    .line 198
    iget p1, p1, Lcom/samsung/android/server/wifi/SemApeController$AppInfo;->uid:I

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    move-result v0

    if-eq p1, v0, :cond_1c6

    .line 199
    :cond_173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VoIP started: uid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->logd(Ljava/lang/String;)V

    .line 200
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipAppUid(Lcom/samsung/android/server/wifi/SemApeController;)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmVoipPackageName(Lcom/samsung/android/server/wifi/SemApeController;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v4, v4, v0, v5}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$mupdateAppState(Lcom/samsung/android/server/wifi/SemApeController;ZIILjava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 203
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 205
    :cond_1c6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeController$3;->this$0:Lcom/samsung/android/server/wifi/SemApeController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeController;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/wifi/SemApeController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1cf
    :goto_1cf
    return-void
.end method
