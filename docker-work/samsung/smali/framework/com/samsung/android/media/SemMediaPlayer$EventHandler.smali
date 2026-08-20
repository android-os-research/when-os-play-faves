.class Lcom/samsung/android/media/SemMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private blacklist mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field final synthetic blacklist this$0:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSemMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer$EventHandler;)Lcom/samsung/android/media/SemMediaPlayer;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;Landroid/os/Looper;)V
    .registers 4
    .param p2, "ep"    # Lcom/samsung/android/media/SemMediaPlayer;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 3068
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    .line 3069
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3070
    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    .line 3071
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 3075
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmNativeContext(Lcom/samsung/android/media/SemMediaPlayer;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 3076
    const-string v0, "SemMediaPlayer"

    const-string/jumbo v1, "semmediaplayer went away with unhandled events"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    return-void

    .line 3079
    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_1ea

    .line 3271
    const-string v0, "SemMediaPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e9

    .line 3239
    :sswitch_39
    monitor-enter p0

    .line 3240
    :try_start_3a
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleDataListenerDisabled(Lcom/samsung/android/media/SemMediaPlayer;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3241
    monitor-exit p0

    return-void

    .line 3243
    :cond_44
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmExtSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    move-result-object v0

    .line 3244
    .local v0, "extSubtitleListener":Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmExtSubtitleDataHandler(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/os/Handler;

    move-result-object v1

    .line 3245
    .local v1, "extSubtitleHandler":Landroid/os/Handler;
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_81

    .line 3246
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/Parcel;

    if-eqz v2, :cond_80

    .line 3247
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcel;

    .line 3248
    .local v2, "parcel":Landroid/os/Parcel;
    new-instance v3, Landroid/media/SubtitleData;

    invoke-direct {v3, v2}, Landroid/media/SubtitleData;-><init>(Landroid/os/Parcel;)V

    .line 3249
    .local v3, "data":Landroid/media/SubtitleData;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3251
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v4}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmIntSubtitleDataListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v4, v5, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;->onSubtitleData(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleData;)V

    .line 3253
    if-eqz v0, :cond_80

    .line 3254
    if-nez v1, :cond_78

    .line 3255
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v4, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;->onSubtitleData(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/SubtitleData;)V

    goto :goto_80

    .line 3257
    :cond_78
    new-instance v4, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;

    invoke-direct {v4, p0, v0, v3}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer$EventHandler;Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;Landroid/media/SubtitleData;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3266
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v3    # "data":Landroid/media/SubtitleData;
    :cond_80
    :goto_80
    return-void

    .line 3245
    .end local v0    # "extSubtitleListener":Lcom/samsung/android/media/SemMediaPlayer$OnSubtitleDataListener;
    .end local v1    # "extSubtitleHandler":Landroid/os/Handler;
    :catchall_81
    move-exception v0

    :try_start_82
    monitor-exit p0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw v0

    .line 3154
    :sswitch_84
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_218

    goto :goto_b1

    .line 3157
    :pswitch_8a
    :try_start_8a
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mscanInternalSubtitleTracks(Lcom/samsung/android/media/SemMediaPlayer;)V
    :try_end_8f
    .catch Ljava/lang/RuntimeException; {:try_start_8a .. :try_end_8f} :catch_90

    .line 3162
    goto :goto_9c

    .line 3158
    :catch_90
    move-exception v0

    .line 3159
    .local v0, "e":Ljava/lang/RuntimeException;
    const/16 v3, 0x64

    const/16 v4, -0x3f2

    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3161
    .local v1, "msg2":Landroid/os/Message;
    invoke-virtual {p0, v1}, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3165
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "msg2":Landroid/os/Message;
    :goto_9c
    :pswitch_9c
    const/16 v0, 0x322

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 3167
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    if-eqz v0, :cond_b1

    .line 3168
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmSubtitleController(Lcom/samsung/android/media/SemMediaPlayer;)Landroid/media/SubtitleController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SubtitleController;->selectDefaultTrack()V

    .line 3173
    :cond_b1
    :goto_b1
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    move-result-object v0

    .line 3174
    .local v0, "onInfoListener":Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;
    if-eqz v0, :cond_1e9

    .line 3175
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x2ade

    if-ne v1, v2, :cond_d9

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_d9

    .line 3176
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    .line 3177
    .local v1, "info":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    sget-object v3, Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fputmSuperSlowInfo(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$SuperSlowRegion;)V

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3180
    .end local v1    # "info":Landroid/os/Parcel;
    :cond_d9
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;->onInfo(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    goto/16 :goto_1e9

    .line 3136
    .end local v0    # "onInfoListener":Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;
    :sswitch_e4
    const/4 v0, 0x0

    .line 3137
    .local v0, "error_was_handled":Z
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnErrorListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;

    move-result-object v1

    .line 3138
    .local v1, "onErrorListener":Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    if-eqz v1, :cond_f7

    .line 3139
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v1, v2, v4, v5}, Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;->onError(Lcom/samsung/android/media/SemMediaPlayer;II)Z

    move-result v0

    .line 3142
    :cond_f7
    if-nez v0, :cond_106

    .line 3143
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v2

    .line 3144
    .local v2, "onPlaybackCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    if-eqz v2, :cond_106

    .line 3145
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v2, v4}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    .line 3148
    .end local v2    # "onPlaybackCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    :cond_106
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v2, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mstayAwake(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    .line 3149
    goto/16 :goto_1e9

    .line 3218
    .end local v0    # "error_was_handled":Z
    .end local v1    # "onErrorListener":Lcom/samsung/android/media/SemMediaPlayer$OnErrorListener;
    :sswitch_10d
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnTimedTextListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;

    move-result-object v0

    .line 3219
    .local v0, "onTimedTextListener":Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;
    if-nez v0, :cond_117

    .line 3220
    goto/16 :goto_1e9

    .line 3221
    :cond_117
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_122

    .line 3222
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/TimedText;)V

    goto/16 :goto_1e9

    .line 3224
    :cond_122
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_1e9

    .line 3225
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    .line 3227
    .local v1, "parcel":Landroid/os/Parcel;
    new-instance v2, Landroid/media/TimedText;

    invoke-direct {v2, v1}, Landroid/media/TimedText;-><init>(Landroid/os/Parcel;)V

    .line 3228
    .local v2, "text":Landroid/media/TimedText;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3229
    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v3, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;->onTimedText(Lcom/samsung/android/media/SemMediaPlayer;Landroid/media/TimedText;)V

    .line 3230
    .end local v1    # "parcel":Landroid/os/Parcel;
    .end local v2    # "text":Landroid/media/TimedText;
    goto/16 :goto_1e9

    .line 3209
    .end local v0    # "onTimedTextListener":Lcom/samsung/android/media/SemMediaPlayer$OnTimedTextListener;
    :sswitch_13b
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v0

    .line 3210
    .local v0, "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    if-eqz v0, :cond_1e9

    .line 3211
    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->onNotifyTime()V

    goto/16 :goto_1e9

    .line 3197
    .end local v0    # "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    :sswitch_148
    :try_start_148
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v0

    .line 3198
    .restart local v0    # "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    if-eqz v0, :cond_15a

    .line 3199
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_156

    goto :goto_157

    :cond_156
    move v1, v3

    :goto_157
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->onPaused(Z)V
    :try_end_15a
    .catch Ljava/lang/NullPointerException; {:try_start_148 .. :try_end_15a} :catch_15c

    .line 3203
    .end local v0    # "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    :cond_15a
    goto/16 :goto_1e9

    .line 3201
    :catch_15c
    move-exception v0

    .line 3202
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SemMediaPlayer"

    const-string v2, "handleMessage MEDIA_PAUSED e : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3204
    .end local v0    # "e":Ljava/lang/NullPointerException;
    goto/16 :goto_1e9

    .line 3187
    :sswitch_166
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnVideoSizeChangedListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    .line 3188
    .local v0, "onVideoSizeChangedListener":Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;
    if-eqz v0, :cond_1e9

    .line 3189
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Lcom/samsung/android/media/SemMediaPlayer;II)V

    goto/16 :goto_1e9

    .line 3117
    .end local v0    # "onVideoSizeChangedListener":Lcom/samsung/android/media/SemMediaPlayer$OnVideoSizeChangedListener;
    :sswitch_179
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnSeekCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;

    move-result-object v0

    .line 3118
    .local v0, "onSeekCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    if-eqz v0, :cond_186

    .line 3119
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    .line 3123
    :cond_186
    :try_start_186
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmTimeProvider(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;

    move-result-object v1

    .line 3124
    .local v1, "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    if-eqz v1, :cond_193

    .line 3125
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;->onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    :try_end_193
    .catch Ljava/lang/NullPointerException; {:try_start_186 .. :try_end_193} :catch_194

    .line 3129
    .end local v1    # "timeProvider":Lcom/samsung/android/media/SemMediaPlayer$TimeProvider;
    :cond_193
    goto :goto_1e9

    .line 3127
    :catch_194
    move-exception v1

    .line 3128
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v2, "SemMediaPlayer"

    const-string v3, "handleMessage MEDIA_SEEK_COMPLETE e : "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3131
    .end local v1    # "e":Ljava/lang/NullPointerException;
    goto :goto_1e9

    .line 3109
    .end local v0    # "onSeekCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;
    :sswitch_19d
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnBufferingUpdateListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    .line 3110
    .local v0, "onBufferingUpdateListener":Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;
    if-eqz v0, :cond_1e9

    .line 3111
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/samsung/android/media/SemMediaPlayer;I)V

    goto :goto_1e9

    .line 3099
    .end local v0    # "onBufferingUpdateListener":Lcom/samsung/android/media/SemMediaPlayer$OnBufferingUpdateListener;
    :sswitch_1ad
    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnPlaybackCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;

    move-result-object v0

    .line 3100
    .local v0, "onPlaybackCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    if-eqz v0, :cond_1ba

    .line 3101
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v0, v1}, Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/media/SemMediaPlayer;)V

    .line 3103
    :cond_1ba
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1, v3}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mstayAwake(Lcom/samsung/android/media/SemMediaPlayer;Z)V

    .line 3104
    goto :goto_1e9

    .line 3082
    .end local v0    # "onPlaybackCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnPlaybackCompleteListener;
    :sswitch_1c0
    const/4 v0, 0x0

    .line 3083
    .local v0, "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/os/Parcel;

    if-eqz v1, :cond_1d7

    .line 3084
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Parcel;

    .line 3085
    .local v1, "parcel":Landroid/os/Parcel;
    sget-object v2, Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, [Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;

    .line 3086
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3089
    .end local v1    # "parcel":Landroid/os/Parcel;
    :cond_1d7
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$mpopulateInbandTracks(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    .line 3090
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-static {v1}, Lcom/samsung/android/media/SemMediaPlayer;->-$$Nest$fgetmOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer;)Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    move-result-object v1

    .line 3091
    .local v1, "onInitCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    if-eqz v1, :cond_1e9

    .line 3092
    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$EventHandler;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-interface {v1, v2, v0}, Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;->onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V

    .line 3275
    .end local v0    # "trackInfo":[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;
    .end local v1    # "onInitCompleteListener":Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;
    :cond_1e9
    :goto_1e9
    return-void

    :sswitch_data_1ea
    .sparse-switch
        0x1 -> :sswitch_1c0
        0x2 -> :sswitch_1ad
        0x3 -> :sswitch_19d
        0x4 -> :sswitch_179
        0x5 -> :sswitch_166
        0x7 -> :sswitch_148
        0x62 -> :sswitch_13b
        0x63 -> :sswitch_10d
        0x64 -> :sswitch_e4
        0xc8 -> :sswitch_84
        0xc9 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_218
    .packed-switch 0x322
        :pswitch_8a
        :pswitch_9c
    .end packed-switch
.end method
