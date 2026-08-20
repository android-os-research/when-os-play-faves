.class final Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;
.super Landroid/os/Handler;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/AutoRotationHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 215
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    .line 216
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 221
    if-eqz p1, :cond_9c

    .line 222
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_9e

    goto/16 :goto_9c

    .line 269
    :sswitch_b
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisMediaSessionPlaying(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 271
    goto/16 :goto_9c

    .line 264
    :sswitch_17
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisMediaSessionPlaying(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 266
    goto/16 :goto_9c

    .line 259
    :sswitch_23
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 261
    goto :goto_9c

    .line 254
    :sswitch_2e
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisCameraRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 256
    goto :goto_9c

    .line 249
    :sswitch_39
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisMultimediaRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 251
    goto :goto_9c

    .line 244
    :sswitch_44
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisMultimediaRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 245
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 246
    goto :goto_9c

    .line 228
    :sswitch_4f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 229
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_7b

    .line 230
    iget-object v3, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    iget-object v3, v3, Lcom/samsung/android/gesture/AutoRotationHandler;->SET_LANDSCAPE_PREFERRED_APPS_PKG:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 231
    .local v4, "elem":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 232
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisLandscapeAppRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 233
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 234
    return-void

    .line 236
    .end local v4    # "elem":Ljava/lang/String;
    :cond_7a
    goto :goto_5d

    .line 238
    :cond_7b
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v2, v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fputisLandscapeAppRunning(Lcom/samsung/android/gesture/AutoRotationHandler;Z)V

    .line 239
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmMediaSessionMonitor(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    move-result-object v1

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmMediaSessionMonitor(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->setForegroundApp(Ljava/lang/String;)V

    .line 240
    :cond_91
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mupdateAutoRotationMode(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 241
    goto :goto_9c

    .line 224
    .end local v0    # "pkg":Ljava/lang/String;
    :sswitch_97
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$mhandleStartMonitoring(Lcom/samsung/android/gesture/AutoRotationHandler;)V

    .line 277
    :cond_9c
    :goto_9c
    return-void

    nop

    :sswitch_data_9e
    .sparse-switch
        0x1 -> :sswitch_97
        0x9 -> :sswitch_4f
        0x14 -> :sswitch_44
        0x15 -> :sswitch_39
        0x1e -> :sswitch_2e
        0x1f -> :sswitch_23
        0x28 -> :sswitch_17
        0x29 -> :sswitch_b
    .end sparse-switch
.end method
