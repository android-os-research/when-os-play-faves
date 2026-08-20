.class Lcom/samsung/android/allshare/AVPlayerImpl$2;
.super Lcom/samsung/android/allshare/AllShareResponseHandler;
.source "AVPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/AVPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/AVPlayerImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/AVPlayerImpl;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/AVPlayerImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 896
    iput-object p1, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private blacklist notifyPlaybackEvent(Landroid/os/Bundle;Lcom/samsung/android/allshare/ERROR;)V
    .registers 15
    .param p1, "resBundle"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 1093
    const-string v0, "BUNDLE_PARCELABLE_ITEM"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1094
    .local v0, "bundle":Landroid/os/Bundle;
    nop

    .line 1095
    const-string v1, "BUNDLE_LONG_CONTENT_INFO_STARTINGPOSITION"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 1097
    .local v1, "contentInfoStartingPosition":J
    new-instance v3, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 1098
    .local v3, "cb":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    move-result-object v3

    .line 1099
    invoke-virtual {v3}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v4

    .line 1101
    .local v4, "contentInfo":Lcom/samsung/android/allshare/media/ContentInfo;
    invoke-static {v0}, Lcom/samsung/android/allshare/ItemCreator;->fromBundle(Landroid/os/Bundle;)Lcom/samsung/android/allshare/Item;

    move-result-object v5

    .line 1103
    .local v5, "item":Lcom/samsung/android/allshare/Item;
    nop

    .line 1104
    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1105
    .local v6, "itemConstructor":Ljava/lang/String;
    if-eqz v6, :cond_48

    const-string v7, "WEB_CONTENT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    if-eqz v4, :cond_48

    .line 1107
    new-instance v7, Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    invoke-direct {v7}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;-><init>()V

    .line 1108
    .local v7, "builder":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->setStartingPosition(J)Lcom/samsung/android/allshare/media/ContentInfo$Builder;

    .line 1109
    invoke-virtual {v7}, Lcom/samsung/android/allshare/media/ContentInfo$Builder;->build()Lcom/samsung/android/allshare/media/ContentInfo;

    move-result-object v4

    .line 1112
    .end local v7    # "builder":Lcom/samsung/android/allshare/media/ContentInfo$Builder;
    :cond_48
    const-string v7, "AVPlayerImpl"

    if-nez v5, :cond_5d

    .line 1113
    const-string v8, "notifyPlaybackEvent : item is null"

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    iget-object v7, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/allshare/ERROR;->ITEM_NOT_EXIST:Lcom/samsung/android/allshare/ERROR;

    invoke-interface {v7, v5, v4, v8}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_b5

    .line 1117
    :cond_5d
    const-string v8, "notifyPlaybackEvent : "

    if-eqz v4, :cond_8e

    .line 1119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " position["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1120
    invoke-virtual {v4}, Lcom/samsung/android/allshare/media/ContentInfo;->getStartingPosition()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1119
    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 1122
    :cond_8e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/allshare/DLog;->d_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :goto_ac
    iget-object v7, p0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v7}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v7

    invoke-interface {v7, v5, v4, p2}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPlayResponseReceived(Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/media/ContentInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1126
    :goto_b5
    return-void
.end method


# virtual methods
.method public blacklist handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .registers 20
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 900
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v1

    .line 901
    .local v1, "actionID":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 902
    .local v2, "resBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_3ec

    if-nez v2, :cond_10

    goto/16 :goto_3ec

    .line 909
    :cond_10
    const-string v3, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object v3

    .line 912
    .local v3, "error":Lcom/samsung/android/allshare/ERROR;
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_URI"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY"

    const-string v7, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_URI"

    const-string v8, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH"

    const-string v9, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_LOCAL_CONTENS_FILEPATH_WITH_METADATA"

    const/4 v10, 0x0

    if-nez v5, :cond_43

    .line 914
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 915
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 916
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_43

    .line 917
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 918
    :cond_43
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v3, v5}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 919
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5, v10}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fputmContentChangedNotified(Lcom/samsung/android/allshare/AVPlayerImpl;Z)V

    goto :goto_5a

    .line 921
    :cond_51
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmPlayingContentUris(Lcom/samsung/android/allshare/AVPlayerImpl;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 925
    :cond_5a
    :goto_5a
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    const/4 v11, 0x4

    const/4 v12, 0x6

    const/4 v13, 0x5

    const/16 v16, 0x1

    const/16 v17, -0x1

    if-eqz v5, :cond_165

    .line 926
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3ee

    :cond_70
    goto/16 :goto_f3

    :sswitch_72
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PLAY_WEB_CONTENTS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v11

    goto/16 :goto_f5

    :sswitch_7d
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_PLAY_POSITION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0xa

    goto/16 :goto_f5

    :sswitch_89
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_PLAYER_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0xc

    goto/16 :goto_f5

    :sswitch_95
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_PAUSE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0x8

    goto :goto_f5

    :sswitch_a0
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_STOP"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v12

    goto :goto_f5

    :sswitch_aa
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SEEK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v4, 0x7

    goto :goto_f5

    :sswitch_b4
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v10

    goto :goto_f5

    :sswitch_bc
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move v4, v13

    goto :goto_f5

    :sswitch_c4
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v4, 0x3

    goto :goto_f5

    :sswitch_cc
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/4 v4, 0x2

    goto :goto_f5

    :sswitch_d4
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MEDIA_INFO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0xb

    goto :goto_f5

    :sswitch_df
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_RESUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    const/16 v4, 0x9

    goto :goto_f5

    :sswitch_ea
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    move/from16 v4, v16

    goto :goto_f5

    :goto_f3
    move/from16 v4, v17

    :goto_f5
    const-string v5, "BUNDLE_LONG_POSITION"

    packed-switch v4, :pswitch_data_424

    goto :goto_165

    .line 963
    :pswitch_fb
    const-string v4, "BUNDLE_STRING_AV_PLAER_STATE"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 965
    .local v4, "state":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;

    move-result-object v5

    .line 967
    .local v5, "playerState":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetStateResponseReceived(Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_165

    .line 955
    .end local v4    # "state":Ljava/lang/String;
    .end local v5    # "playerState":Lcom/samsung/android/allshare/media/AVPlayer$AVPlayerState;
    :pswitch_10f
    const/4 v4, 0x0

    .line 957
    .local v4, "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v5, v3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 958
    new-instance v5, Lcom/samsung/android/allshare/MediaInfoImpl;

    invoke-direct {v5, v2}, Lcom/samsung/android/allshare/MediaInfoImpl;-><init>(Landroid/os/Bundle;)V

    move-object v4, v5

    .line 960
    :cond_11e
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetMediaInfoResponseReceived(Lcom/samsung/android/allshare/media/MediaInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 961
    goto :goto_165

    .line 950
    .end local v4    # "mediaInfo":Lcom/samsung/android/allshare/media/MediaInfo;
    :pswitch_128
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 951
    .local v4, "position":J
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onGetPlayPositionResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 952
    goto :goto_165

    .line 947
    .end local v4    # "position":J
    :pswitch_136
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onResumeResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 948
    goto :goto_165

    .line 944
    :pswitch_140
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onPauseResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 945
    goto :goto_165

    .line 939
    :pswitch_14a
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 940
    .restart local v4    # "position":J
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v5, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onSeekResponseReceived(JLcom/samsung/android/allshare/ERROR;)V

    .line 941
    goto :goto_165

    .line 936
    .end local v4    # "position":J
    :pswitch_158
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlaybackResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerPlaybackResponseListener;->onStopResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 937
    goto :goto_165

    .line 933
    :pswitch_162
    invoke-direct {v0, v2, v3}, Lcom/samsung/android/allshare/AVPlayerImpl$2;->notifyPlaybackEvent(Landroid/os/Bundle;Lcom/samsung/android/allshare/ERROR;)V

    .line 972
    :cond_165
    :goto_165
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v4

    if-eqz v4, :cond_1df

    .line 973
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_442

    :cond_174
    goto :goto_19e

    :sswitch_175
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_VOLUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    move/from16 v4, v16

    goto :goto_1a0

    :sswitch_180
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_MUTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    const/4 v4, 0x2

    goto :goto_1a0

    :sswitch_18a
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_GET_VOLUME"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    move v4, v10

    goto :goto_1a0

    :sswitch_194
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_REQUEST_SET_MUTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_174

    const/4 v4, 0x3

    goto :goto_1a0

    :goto_19e
    move/from16 v4, v17

    :goto_1a0
    const-string v5, "BUNDLE_BOOLEAN_MUTE"

    const-string v6, "BUNDLE_INT_VOLUME"

    packed-switch v4, :pswitch_data_454

    goto :goto_1df

    .line 990
    :pswitch_1a8
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 991
    .local v4, "onoff":Z
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    .line 992
    goto :goto_1df

    .line 985
    .end local v4    # "onoff":Z
    :pswitch_1b6
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 986
    .restart local v4    # "onoff":Z
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetMuteResponseReceived(ZLcom/samsung/android/allshare/ERROR;)V

    .line 987
    goto :goto_1df

    .line 980
    .end local v4    # "onoff":Z
    :pswitch_1c4
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 981
    .local v4, "level":I
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onSetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 982
    goto :goto_1df

    .line 975
    .end local v4    # "level":I
    :pswitch_1d2
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 976
    .restart local v4    # "level":I
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerVolumeResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerVolumeResponseListener;->onGetVolumeResponseReceived(ILcom/samsung/android/allshare/ERROR;)V

    .line 998
    .end local v4    # "level":I
    :cond_1df
    :goto_1df
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    const-string v5, "AVPlayerImpl"

    if-eqz v4, :cond_34b

    .line 999
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_460

    :cond_1f0
    goto :goto_237

    :sswitch_1f1
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_SET_ASPECT_RATIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    move v11, v10

    goto :goto_239

    :sswitch_1fb
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_CAPTION_STATE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    move v11, v12

    goto :goto_239

    :sswitch_205
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ZOOM_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    const/4 v11, 0x3

    goto :goto_239

    :sswitch_20f
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_GET_ASPECT_RATIO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    move/from16 v11, v16

    goto :goto_239

    :sswitch_21a
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_CONTROL_CAPTION"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    move v11, v13

    goto :goto_239

    :sswitch_224
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_ORIGIN_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    goto :goto_239

    :sswitch_22d
    const-string v4, "com.sec.android.allshare.action.ACTION_AV_PLAYER_MOVE_360_VIEW"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f0

    const/4 v11, 0x2

    goto :goto_239

    :goto_237
    move/from16 v11, v17

    :goto_239
    packed-switch v11, :pswitch_data_47e

    goto/16 :goto_34b

    .line 1023
    :pswitch_23e
    nop

    .line 1024
    const-string v4, "BUNDLE_STRING_CAPTION_CAPTIONS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1025
    .local v4, "captions":Ljava/lang/String;
    nop

    .line 1026
    const-string v6, "BUNDLE_STRING_CAPTION_ENABLEDCAPTIONS"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1027
    .local v6, "enabledCaptions":Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 1028
    .local v7, "tempCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    invoke-static {v6}, Lcom/samsung/android/allshare/Caption;->parseCaption(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 1029
    .local v8, "tempEnabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v9, "captionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v11, "enabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    if-eqz v7, :cond_2a4

    .line 1032
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_264
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2a4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/allshare/Caption;

    .line 1033
    .local v13, "caption":Lcom/samsung/android/allshare/Caption;
    iget-object v10, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-virtual {v13}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Lcom/samsung/android/allshare/AVPlayerImpl;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1034
    .local v10, "captionUri":Ljava/lang/String;
    if-eqz v10, :cond_285

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_285

    .line 1035
    invoke-virtual {v13, v10}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    .line 1037
    :cond_285
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AV_PLAYER_GET_CAPTION_STATE : [available caption]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1040
    invoke-virtual {v13}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1038
    invoke-static {v5, v14}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    .end local v10    # "captionUri":Ljava/lang/String;
    .end local v13    # "caption":Lcom/samsung/android/allshare/Caption;
    const/4 v10, 0x0

    goto :goto_264

    .line 1043
    :cond_2a4
    if-eqz v8, :cond_2e9

    .line 1044
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2aa
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2e9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/allshare/Caption;

    .line 1045
    .local v12, "caption":Lcom/samsung/android/allshare/Caption;
    iget-object v13, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->getCaptionUri()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/allshare/AVPlayerImpl;->getCaptionFilePathFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1046
    .local v13, "captionUri":Ljava/lang/String;
    if-eqz v13, :cond_2cb

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_2cb

    .line 1047
    invoke-virtual {v12, v13}, Lcom/samsung/android/allshare/Caption;->setCaptionUri(Ljava/lang/String;)V

    .line 1049
    :cond_2cb
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ACTION_AV_PLAYER_GET_CAPTION_STATE : [enabled caption]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1052
    invoke-virtual {v12}, Lcom/samsung/android/allshare/Caption;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1050
    invoke-static {v5, v14}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    .end local v12    # "caption":Lcom/samsung/android/allshare/Caption;
    .end local v13    # "captionUri":Ljava/lang/String;
    goto :goto_2aa

    .line 1055
    :cond_2e9
    iget-object v10, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v10}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v10

    invoke-interface {v10, v9, v11, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onCaptionStateResponseReceived(Ljava/util/List;Ljava/util/List;Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_34b

    .line 1020
    .end local v4    # "captions":Ljava/lang/String;
    .end local v6    # "enabledCaptions":Ljava/lang/String;
    .end local v7    # "tempCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v8    # "tempEnabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v9    # "captionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    .end local v11    # "enabledCaptionsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/allshare/Caption;>;"
    :pswitch_2f3
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onControlCaptionResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1021
    goto :goto_34b

    .line 1017
    :pswitch_2fd
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onReset360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1018
    goto :goto_34b

    .line 1014
    :pswitch_307
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onZoom360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1015
    goto :goto_34b

    .line 1011
    :pswitch_311
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onMove360ViewResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1012
    goto :goto_34b

    .line 1004
    :pswitch_31b
    nop

    .line 1005
    const-string v4, "BUNDLE_STRING_ASPECT_RATIO"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1006
    .local v4, "aspectRatio":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_AV_PLAYER_GET_ASPECT_RATIO : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    iget-object v6, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v6}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v6

    invoke-interface {v6, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onAspectRatioStateResponseReceived(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 1009
    goto :goto_34b

    .line 1001
    .end local v4    # "aspectRatio":Ljava/lang/String;
    :pswitch_342
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerExtensionResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerExtensionResponseListener;->onSetAspectRatioResponseReceived(Lcom/samsung/android/allshare/ERROR;)V

    .line 1062
    :cond_34b
    :goto_34b
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v4

    if-eqz v4, :cond_3eb

    .line 1063
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_490

    :cond_35a
    goto :goto_384

    :sswitch_35b
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_CREATE_PARTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35a

    move/from16 v10, v16

    goto :goto_386

    :sswitch_366
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_GET_DEVICE_STATUS_INFO"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35a

    const/4 v10, 0x0

    goto :goto_386

    :sswitch_370
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_LEAVE_PARTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35a

    const/4 v10, 0x3

    goto :goto_386

    :sswitch_37a
    const-string v4, "com.sec.android.allshare.action.ACTION_WHA_JOIN_PARTY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35a

    const/4 v10, 0x2

    goto :goto_386

    :goto_384
    move/from16 v10, v17

    :goto_386
    packed-switch v10, :pswitch_data_4a2

    goto :goto_3eb

    .line 1084
    :pswitch_38a
    const-string v4, "ACTION_WHA_LEAVE_PARTY"

    invoke-static {v5, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onLeaveWHAParty(Lcom/samsung/android/allshare/ERROR;)V

    goto :goto_3eb

    .line 1080
    :pswitch_399
    const-string v4, "ACTION_WHA_JOIN_PARTY"

    invoke-static {v5, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    iget-object v4, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v4}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onJoinWHAParty(Lcom/samsung/android/allshare/ERROR;)V

    .line 1082
    goto :goto_3eb

    .line 1074
    :pswitch_3a8
    const-string v4, "BUNDLE_STRING_WHA_PARTY_ID"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1076
    .local v4, "partyId":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_WHA_CREATE_PARTY : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onCreateWHAParty(Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V

    .line 1078
    goto :goto_3eb

    .line 1065
    .end local v4    # "partyId":Ljava/lang/String;
    :pswitch_3ce
    const-string v4, "ACTION_WHA_GET_DEVICE_STATUS_INFO"

    invoke-static {v5, v4}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const/4 v4, 0x0

    .line 1068
    .local v4, "whaDeviceInfo":Lcom/samsung/android/allshare/WHADeviceInfo;
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {v5, v3}, Lcom/samsung/android/allshare/ERROR;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e2

    .line 1069
    new-instance v5, Lcom/samsung/android/allshare/WHADeviceInfo;

    invoke-direct {v5, v2}, Lcom/samsung/android/allshare/WHADeviceInfo;-><init>(Landroid/os/Bundle;)V

    move-object v4, v5

    .line 1071
    :cond_3e2
    iget-object v5, v0, Lcom/samsung/android/allshare/AVPlayerImpl$2;->this$0:Lcom/samsung/android/allshare/AVPlayerImpl;

    invoke-static {v5}, Lcom/samsung/android/allshare/AVPlayerImpl;->-$$Nest$fgetmAVPlayerWHAResponseListener(Lcom/samsung/android/allshare/AVPlayerImpl;)Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Lcom/samsung/android/allshare/media/AVPlayer$IAVPlayerWHAResponseListener;->onGetWHADeviceStatusInfo(Lcom/samsung/android/allshare/WHADeviceInfo;Lcom/samsung/android/allshare/ERROR;)V

    .line 1090
    .end local v4    # "whaDeviceInfo":Lcom/samsung/android/allshare/WHADeviceInfo;
    :cond_3eb
    :goto_3eb
    return-void

    .line 903
    .end local v3    # "error":Lcom/samsung/android/allshare/ERROR;
    :cond_3ec
    :goto_3ec
    return-void

    nop

    :sswitch_data_3ee
    .sparse-switch
        -0x7d8f058e -> :sswitch_ea
        -0x46bcb307 -> :sswitch_df
        -0x30970672 -> :sswitch_d4
        -0x7b77c7c -> :sswitch_cc
        -0x795bdc5 -> :sswitch_c4
        -0x6493073 -> :sswitch_bc
        0x124dd700 -> :sswitch_b4
        0x124f1a44 -> :sswitch_aa
        0x124f53ce -> :sswitch_a0
        0x3768538a -> :sswitch_95
        0x3f7c3598 -> :sswitch_89
        0x5da5b1b8 -> :sswitch_7d
        0x65f3faa4 -> :sswitch_72
    .end sparse-switch

    :pswitch_data_424
    .packed-switch 0x0
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_162
        :pswitch_158
        :pswitch_14a
        :pswitch_140
        :pswitch_136
        :pswitch_128
        :pswitch_10f
        :pswitch_fb
    .end packed-switch

    :sswitch_data_442
    .sparse-switch
        -0x317ce26e -> :sswitch_194
        -0x2a3b9921 -> :sswitch_18a
        -0x100afce2 -> :sswitch_180
        0x4935b453 -> :sswitch_175
    .end sparse-switch

    :pswitch_data_454
    .packed-switch 0x0
        :pswitch_1d2
        :pswitch_1c4
        :pswitch_1b6
        :pswitch_1a8
    .end packed-switch

    :sswitch_data_460
    .sparse-switch
        -0x79fd1c27 -> :sswitch_22d
        -0x6ce3b8dc -> :sswitch_224
        -0x665f3a88 -> :sswitch_21a
        -0x3d761e87 -> :sswitch_20f
        0x32b4de17 -> :sswitch_205
        0x379faf23 -> :sswitch_1fb
        0x556047ed -> :sswitch_1f1
    .end sparse-switch

    :pswitch_data_47e
    .packed-switch 0x0
        :pswitch_342
        :pswitch_31b
        :pswitch_311
        :pswitch_307
        :pswitch_2fd
        :pswitch_2f3
        :pswitch_23e
    .end packed-switch

    :sswitch_data_490
    .sparse-switch
        -0x16b2ba48 -> :sswitch_37a
        0x372ea5b7 -> :sswitch_370
        0x52ede3e2 -> :sswitch_366
        0x71c0ea4a -> :sswitch_35b
    .end sparse-switch

    :pswitch_data_4a2
    .packed-switch 0x0
        :pswitch_3ce
        :pswitch_3a8
        :pswitch_399
        :pswitch_38a
    .end packed-switch
.end method
