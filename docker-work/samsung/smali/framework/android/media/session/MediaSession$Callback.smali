.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private greylist-max-o mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private greylist-max-o mMediaPlayPauseKeyPending:Z

.field private greylist-max-o mSession:Landroid/media/session/MediaSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmHandler(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSession(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)V
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMediaPlayPauseKeySingleTapIfPending(Landroid/media/session/MediaSession$Callback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    return-void
.end method

.method private greylist-max-o handleMediaPlayPauseKeySingleTapIfPending()V
    .registers 12

    .line 1002
    iget-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v0, :cond_5

    .line 1003
    return-void

    .line 1005
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 1006
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 1007
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v1}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    .line 1008
    .local v1, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v2, 0x0

    if-nez v1, :cond_1b

    move-wide v4, v2

    goto :goto_1f

    :cond_1b
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    .line 1009
    .local v4, "validActions":J
    :goto_1f
    const/4 v6, 0x1

    if-eqz v1, :cond_2b

    .line 1010
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2b

    move v7, v6

    goto :goto_2c

    :cond_2b
    move v7, v0

    .line 1011
    .local v7, "isPlaying":Z
    :goto_2c
    const-wide/16 v8, 0x204

    and-long/2addr v8, v4

    cmp-long v8, v8, v2

    if-eqz v8, :cond_35

    move v8, v6

    goto :goto_36

    :cond_35
    move v8, v0

    .line 1013
    .local v8, "canPlay":Z
    :goto_36
    const-wide/16 v9, 0x202

    and-long/2addr v9, v4

    cmp-long v2, v9, v2

    if-eqz v2, :cond_3e

    move v0, v6

    .line 1015
    .local v0, "canPause":Z
    :cond_3e
    if-eqz v7, :cond_46

    if-eqz v0, :cond_46

    .line 1016
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    goto :goto_4d

    .line 1017
    :cond_46
    if-nez v7, :cond_4d

    if-eqz v8, :cond_4d

    .line 1018
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 1020
    :cond_4d
    :goto_4d
    return-void
.end method


# virtual methods
.method public whitelist onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .line 902
    return-void
.end method

.method public whitelist onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1179
    return-void
.end method

.method public whitelist onFastForward()V
    .registers 1

    .line 1124
    return-void
.end method

.method public whitelist onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 14
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .line 918
    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_c9

    iget-object v0, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_c9

    .line 919
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 920
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 921
    .local v0, "ke":Landroid/view/KeyEvent;
    if-eqz v0, :cond_c9

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_c9

    .line 922
    iget-object v2, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v2}, Landroid/media/session/MediaSession;->-$$Nest$fgetmPlaybackState(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v2

    .line 923
    .local v2, "state":Landroid/media/session/PlaybackState;
    const-wide/16 v3, 0x0

    if-nez v2, :cond_31

    move-wide v5, v3

    goto :goto_35

    :cond_31
    invoke-virtual {v2}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v5

    .line 924
    .local v5, "validActions":J
    :goto_35
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    const-wide/16 v8, 0x20

    const/4 v10, 0x1

    sparse-switch v7, :sswitch_data_ca

    .line 948
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    .line 952
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_d4

    goto/16 :goto_c9

    .line 927
    :sswitch_4b
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-lez v7, :cond_55

    .line 929
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    goto :goto_7c

    .line 930
    :cond_55
    iget-boolean v7, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v7, :cond_6c

    .line 932
    iget-object v7, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v11, 0x18

    invoke-virtual {v7, v11}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    .line 934
    iput-boolean v1, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 935
    and-long v7, v5, v8

    cmp-long v1, v7, v3

    if-eqz v1, :cond_7c

    .line 936
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_7c

    .line 939
    :cond_6c
    iput-boolean v10, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    .line 940
    iget-object v1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    .line 941
    invoke-virtual {v1}, Landroid/media/session/MediaSession;->getCurrentControllerInfo()Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    .line 942
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v7, v4

    .line 940
    invoke-virtual {v1, v3, p1, v7, v8}, Landroid/media/session/MediaSession;->dispatchMediaButtonDelayed(Landroid/media/session/MediaSessionManager$RemoteUserInfo;Landroid/content/Intent;J)V

    .line 944
    :cond_7c
    :goto_7c
    return v10

    .line 960
    :sswitch_7d
    const-wide/16 v7, 0x2

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    .line 961
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 962
    return v10

    .line 954
    :sswitch_88
    const-wide/16 v7, 0x4

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    .line 955
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 956
    return v10

    .line 984
    :sswitch_93
    const-wide/16 v7, 0x40

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    .line 985
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 986
    return v10

    .line 990
    :sswitch_9e
    const-wide/16 v7, 0x8

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    .line 991
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 992
    return v10

    .line 972
    :sswitch_a9
    const-wide/16 v7, 0x10

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    .line 973
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 974
    return v10

    .line 966
    :sswitch_b4
    and-long v7, v5, v8

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    .line 967
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 968
    return v10

    .line 978
    :sswitch_be
    const-wide/16 v7, 0x1

    and-long/2addr v7, v5

    cmp-long v3, v7, v3

    if-eqz v3, :cond_c9

    .line 979
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 980
    return v10

    .line 998
    .end local v0    # "ke":Landroid/view/KeyEvent;
    .end local v2    # "state":Landroid/media/session/PlaybackState;
    .end local v5    # "validActions":J
    :cond_c9
    :goto_c9
    return v1

    :sswitch_data_ca
    .sparse-switch
        0x4f -> :sswitch_4b
        0x55 -> :sswitch_4b
    .end sparse-switch

    :sswitch_data_d4
    .sparse-switch
        0x56 -> :sswitch_be
        0x57 -> :sswitch_b4
        0x58 -> :sswitch_a9
        0x59 -> :sswitch_9e
        0x5a -> :sswitch_93
        0x7e -> :sswitch_88
        0x7f -> :sswitch_7d
    .end sparse-switch
.end method

.method public whitelist onPause()V
    .registers 1

    .line 1106
    return-void
.end method

.method public whitelist onPlay()V
    .registers 1

    .line 1071
    return-void
.end method

.method public whitelist onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1087
    return-void
.end method

.method public whitelist onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1080
    return-void
.end method

.method public whitelist onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1093
    return-void
.end method

.method public whitelist onPrepare()V
    .registers 1

    .line 1029
    return-void
.end method

.method public whitelist onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1041
    return-void
.end method

.method public whitelist onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1053
    return-void
.end method

.method public whitelist onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 1065
    return-void
.end method

.method public whitelist onRewind()V
    .registers 1

    .line 1130
    return-void
.end method

.method public whitelist onSeekTo(J)V
    .registers 3
    .param p1, "pos"    # J

    .line 1144
    return-void
.end method

.method public whitelist onSetPlaybackSpeed(F)V
    .registers 2
    .param p1, "speed"    # F

    .line 1168
    return-void
.end method

.method public whitelist onSetRating(Landroid/media/Rating;)V
    .registers 2
    .param p1, "rating"    # Landroid/media/Rating;

    .line 1152
    return-void
.end method

.method public whitelist onSkipToNext()V
    .registers 1

    .line 1112
    return-void
.end method

.method public whitelist onSkipToPrevious()V
    .registers 1

    .line 1118
    return-void
.end method

.method public whitelist onSkipToQueueItem(J)V
    .registers 3
    .param p1, "id"    # J

    .line 1100
    return-void
.end method

.method public whitelist onStop()V
    .registers 1

    .line 1136
    return-void
.end method
