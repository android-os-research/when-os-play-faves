.class Lcom/samsung/android/game/FgCheckThread$4;
.super Landroid/os/Handler;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/FgCheckThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 242
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 245
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, ", userId: "

    const-string v2, "FgCheckThread"

    packed-switch v0, :pswitch_data_128

    .line 301
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLooperPrepared(), invalid msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_126

    .line 292
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/game/PkgWithUserId;

    .line 293
    .local v0, "focusedPkg":Lcom/samsung/android/game/PkgWithUserId;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v3

    .line 294
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v4

    .line 295
    .local v4, "userId":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLooperPrepared(), msg: MSG_TASK_FOCUSED, pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # invokes: Lcom/samsung/android/game/FgCheckThread;->handleTaskFocused(Lcom/samsung/android/game/PkgWithUserId;)V
    invoke-static {v1, v0}, Lcom/samsung/android/game/FgCheckThread;->access$900(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V

    .line 298
    goto/16 :goto_126

    .line 282
    .end local v0    # "focusedPkg":Lcom/samsung/android/game/PkgWithUserId;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "userId":I
    :pswitch_55
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 283
    .local v0, "pkgName":Ljava/lang/String;
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 284
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLooperPrepared(), msg: MSG_APP_CREATE, pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-eqz v0, :cond_126

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_126

    .line 287
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_126

    .line 275
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    :pswitch_9b
    const-string v0, "onLooperPrepared(), msg: MSG_KEY_GUARD_LOCKED"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # invokes: Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$600(Lcom/samsung/android/game/FgCheckThread;)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_126

    .line 278
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mResumedPkgMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$200(Lcom/samsung/android/game/FgCheckThread;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_126

    .line 271
    :pswitch_b7
    const-string v0, "onLooperPrepared(), msg: MSG_USER_PRESENT"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # invokes: Lcom/samsung/android/game/FgCheckThread;->handleUserPresent()V
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$800(Lcom/samsung/android/game/FgCheckThread;)V

    .line 273
    goto :goto_126

    .line 264
    :pswitch_c2
    const-string v0, "onLooperPrepared(), msg: MSG_LCD_ON"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$500(Lcom/samsung/android/game/FgCheckThread;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 266
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # invokes: Lcom/samsung/android/game/FgCheckThread;->handleLcdOn()V
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$700(Lcom/samsung/android/game/FgCheckThread;)V

    .line 268
    :cond_d4
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/FgCheckThread;->access$502(Lcom/samsung/android/game/FgCheckThread;Z)Z

    .line 269
    goto :goto_126

    .line 257
    :pswitch_db
    const-string v0, "onLooperPrepared(), msg: MSG_LCD_OFF"

    invoke-static {v2, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$500(Lcom/samsung/android/game/FgCheckThread;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 259
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # invokes: Lcom/samsung/android/game/FgCheckThread;->sendFocusOutConditionally()V
    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->access$600(Lcom/samsung/android/game/FgCheckThread;)V

    .line 261
    :cond_ed
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/FgCheckThread;->mLcdOn:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/FgCheckThread;->access$502(Lcom/samsung/android/game/FgCheckThread;Z)Z

    .line 262
    goto :goto_126

    .line 248
    :pswitch_f4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/game/PkgWithUserId;

    .line 249
    .local v0, "resumedPkg":Lcom/samsung/android/game/PkgWithUserId;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getPkgName()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "pkgName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/game/PkgWithUserId;->getUserId()I

    move-result v3

    .line 251
    .restart local v3    # "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLooperPrepared(), msg: MSG_APP_RESUME, pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v2, p0, Lcom/samsung/android/game/FgCheckThread$4;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # invokes: Lcom/samsung/android/game/FgCheckThread;->handleResume(Lcom/samsung/android/game/PkgWithUserId;)V
    invoke-static {v2, v0}, Lcom/samsung/android/game/FgCheckThread;->access$400(Lcom/samsung/android/game/FgCheckThread;Lcom/samsung/android/game/PkgWithUserId;)V

    .line 254
    nop

    .line 304
    .end local v0    # "resumedPkg":Lcom/samsung/android/game/PkgWithUserId;
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "userId":I
    :cond_126
    :goto_126
    return-void

    nop

    :pswitch_data_128
    .packed-switch 0x2710
        :pswitch_f4
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_db
        :pswitch_c2
        :pswitch_b7
        :pswitch_9b
        :pswitch_55
        :pswitch_24
    .end packed-switch
.end method
