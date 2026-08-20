.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private greylist-max-o mListening:Z

.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2

    .line 946
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method

.method private greylist-max-o updateVolumeSlider(II)V
    .registers 8
    .param p1, "streamType"    # I
    .param p2, "streamValue"    # I

    .line 1019
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationOrRing(Landroid/preference/SeekBarVolumizer;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0, p1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misNotificationOrRing(Landroid/preference/SeekBarVolumizer;I)Z

    move-result v0

    goto :goto_1c

    .line 1020
    :cond_11
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v0

    if-ne p1, v0, :cond_1b

    move v0, v1

    goto :goto_1c

    :cond_1b
    move v0, v2

    :goto_1c
    nop

    .line 1021
    .local v0, "streamMatch":Z
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v3

    if-eqz v3, :cond_4f

    if-eqz v0, :cond_4f

    const/4 v3, -0x1

    if-eq p2, v3, :cond_4f

    .line 1022
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    if-nez v3, :cond_40

    if-nez p2, :cond_3f

    goto :goto_40

    :cond_3f
    move v1, v2

    .line 1024
    .local v1, "muted":Z
    :cond_40
    :goto_40
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmUiHandler(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v1}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    .line 1026
    .end local v1    # "muted":Z
    :cond_4f
    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 968
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 971
    .local v1, "streamType":I
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    const-string v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    if-eqz v2, :cond_23

    .line 972
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 973
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    if-ne v2, v1, :cond_152

    .line 974
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_152

    .line 976
    :cond_23
    const-string v2, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 977
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmAudioManager(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmRingerMode(Landroid/preference/SeekBarVolumizer;I)V

    .line 979
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_152

    .line 980
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_152

    .line 982
    :cond_49
    const-string v2, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 983
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 984
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    if-ne v2, v1, :cond_152

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetisRingerUpdatedToAudio(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 985
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto/16 :goto_152

    .line 987
    :cond_6c
    const-string v2, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_eb

    .line 988
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_87

    .line 989
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mgetDefaultRingtoneUri(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmDefaultUri(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)V

    goto :goto_99

    .line 990
    :cond_87
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_99

    .line 991
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mgetDefaultNotificationUri(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmDefaultUri(Landroid/preference/SeekBarVolumizer;Landroid/net/Uri;)V

    .line 994
    :cond_99
    :goto_99
    :try_start_99
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmRingtone(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v2

    if-eqz v2, :cond_ea

    .line 995
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmRingtone(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmDefaultUri(Landroid/preference/SeekBarVolumizer;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V

    .line 996
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmRingtone(Landroid/preference/SeekBarVolumizer;)Landroid/media/Ringtone;

    move-result-object v2

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmStreamType(Landroid/preference/SeekBarVolumizer;)I

    move-result v4

    .line 997
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 998
    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v3

    .line 996
    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setAudioAttributes(Landroid/media/AudioAttributes;)V
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_cc} :catch_cd

    goto :goto_ea

    .line 1000
    :catch_cd
    move-exception v2

    .line 1001
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception happens in SIM_CHANGED_ACTION : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SeekBarVolumizer"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_ea
    :goto_ea
    goto :goto_152

    .line 1003
    :cond_eb
    const-string v2, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 1004
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v3

    invoke-static {v2, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmZenMode(Landroid/preference/SeekBarVolumizer;I)V

    .line 1005
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_152

    .line 1006
    :cond_106
    const-string v2, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_152

    .line 1007
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationManager(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmNotificationPolicy(Landroid/preference/SeekBarVolumizer;Landroid/app/NotificationManager$Policy;)V

    .line 1008
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_12b

    move v3, v5

    goto :goto_12c

    :cond_12b
    move v3, v4

    :goto_12c
    invoke-static {v2, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowAlarms(Landroid/preference/SeekBarVolumizer;Z)V

    .line 1010
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_13c

    move v4, v5

    :cond_13c
    invoke-static {v2, v4}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowMedia(Landroid/preference/SeekBarVolumizer;Z)V

    .line 1012
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmNotificationPolicy(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/app/NotificationManager$Policy;)Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-static {v2, v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmAllowRinger(Landroid/preference/SeekBarVolumizer;Z)V

    .line 1014
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    .line 1016
    :cond_152
    :goto_152
    return-void
.end method

.method public greylist-max-o setListening(Z)V
    .registers 4
    .param p1, "listening"    # Z

    .line 950
    iget-boolean v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 951
    :cond_5
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    .line 952
    if-eqz p1, :cond_36

    .line 953
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 954
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 957
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 958
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 959
    const-string v1, "com.samsung.intent.action.DEFAULT_CS_SIM_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 961
    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_3f

    .line 962
    :cond_36
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmContext(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 964
    :goto_3f
    return-void
.end method
