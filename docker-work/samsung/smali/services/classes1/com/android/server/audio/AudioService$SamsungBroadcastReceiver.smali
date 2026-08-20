.class public Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SamsungBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public static synthetic $r8$lambda$45cR8_INKStE-LyrvRdnUqLlhFc(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->lambda$handleIntent$1(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r2u9IkIZAc7Hg2cB_XxskV2drvE(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->lambda$handleIntent$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 14265
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;-><init>(Lcom/android/server/audio/AudioService;)V

    return-void
.end method

.method private synthetic lambda$handleIntent$0()V
    .registers 1

    .line 14523
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->checkAndUpdateAppList()V

    return-void
.end method

.method private synthetic lambda$handleIntent$1(Landroid/content/Intent;)V
    .registers 2

    .line 14532
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->receiveBtEvent(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 14276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 14277
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 14279
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v0

    const/16 v1, 0x2f7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_638

    :cond_1e
    const-string v1, "com.android.phone.action.PERSONALISE_CALL_SOUND_CHANGED"

    .line 14280
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "AS.AudioService"

    const/4 v3, 0x0

    if-eqz v1, :cond_5b

    .line 14281
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmNbQualityMode(Lcom/android/server/audio/AudioService;I)V

    .line 14282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "handleIntent: mNbQualityMode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmNbQualityMode(Lcom/android/server/audio/AudioService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14283
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmNbQualityMode(Lcom/android/server/audio/AudioService;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/server/audio/AudioHelper;->setNbQualityMode(I)V

    goto/16 :goto_638

    :cond_5b
    const-string v1, "android.settings.ALL_SOUND_MUTE"

    .line 14284
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 14286
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v0, "mute"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmAllSoundMute(Lcom/android/server/audio/AudioService;I)V

    .line 14287
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$msetAllSoundMute(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_638

    :cond_76
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 14288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v4, "l_bigdata_logging"

    const/4 v5, 0x1

    if-eqz v1, :cond_a1

    .line 14290
    new-instance p1, Lcom/samsung/android/media/AudioParameter;

    .line 14291
    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 14292
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHqmHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioHqmHelper;

    move-result-object p2

    invoke-virtual {p2, p1, v5}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V

    .line 14294
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p0

    const-string p1, "dev_shutdown=true"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_638

    :cond_a1
    const-string v1, "com.sec.tms.audio.server"

    .line 14296
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e4

    const-string/jumbo p1, "state"

    .line 14297
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "app"

    .line 14298
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "server"

    .line 14299
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 14300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_TMS_STATE_CHANGED app: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " state : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14301
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->handleTmsStateChange(ZI)V

    goto/16 :goto_638

    :cond_e4
    const-string v1, "com.sec.media.action.AUDIOCORE_LOGGING"

    .line 14302
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_105

    const-string p1, "[logging] receive ACTION_AUDIOCORE_LOGGING"

    .line 14303
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14304
    new-instance p1, Lcom/samsung/android/media/AudioParameter;

    .line 14305
    invoke-static {v4}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 14306
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHqmHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioHqmHelper;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V

    goto/16 :goto_638

    :cond_105
    const-string v1, "com.sec.android.intent.action.DHR_HQM_REFRESH_REQ"

    .line 14307
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    const-string p1, "[logging] receive ACTION_AUDIOCORE_BIGDATA_APP"

    .line 14308
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14309
    new-instance p1, Lcom/samsung/android/media/AudioParameter;

    const-string/jumbo p2, "l_bigdata_logging;l_bigdata_app"

    invoke-static {p2}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/media/AudioParameter;-><init>(Ljava/lang/String;)V

    .line 14312
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHqmHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioHqmHelper;

    move-result-object p0

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/server/audio/AudioHqmHelper;->sendHqmAudioData(Lcom/samsung/android/media/AudioParameter;Z)V

    goto/16 :goto_638

    :cond_129
    const-string v1, "com.samsung.intent.action.WB_AMR"

    .line 14313
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    const-string p1, "EXTRA_RAT"

    .line 14314
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "EXTRA_STATE"

    .line 14315
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/16 v0, 0x9

    if-ne p2, v0, :cond_153

    const-string/jumbo p2, "wb_amr fb"

    .line 14317
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14318
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p2

    const-string v0, "g_call_band=fb"

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_18e

    :cond_153
    const/16 v0, 0x8

    if-ne p2, v0, :cond_169

    const-string/jumbo p2, "wb_amr swb"

    .line 14321
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14322
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p2

    const-string v0, "g_call_band=swb"

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_18e

    :cond_169
    if-ne p2, v5, :cond_17d

    const-string/jumbo p2, "wb_amr wb"

    .line 14325
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14326
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p2

    const-string v0, "g_call_band=wb"

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto :goto_18e

    :cond_17d
    const-string/jumbo p2, "wb_amr nb"

    .line 14329
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14330
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p2

    const-string v0, "g_call_band=nb"

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :goto_18e
    if-eqz p1, :cond_638

    .line 14334
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "l_call_rat_type="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    goto/16 :goto_638

    :cond_1ad
    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 14336
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ce

    const-string p1, "ACTION_SUBINFO_RECORD_UPDATED received"

    .line 14337
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14338
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPhoneStateHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PhoneStateHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/audio/PhoneStateHelper;->unregisterPhoneStateListener()V

    .line 14339
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPhoneStateHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PhoneStateHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/PhoneStateHelper;->registerPhoneStateListener()V

    goto/16 :goto_638

    :cond_1ce
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 14340
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e1

    .line 14341
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->updateAudioServiceNotificationChannel()V

    goto/16 :goto_638

    :cond_1e1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 14342
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, -0x1

    const-string v6, "android.intent.extra.UID"

    if-eqz v1, :cond_37b

    const-string v1, "android.intent.extra.REPLACING"

    .line 14343
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_37b

    .line 14344
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 14345
    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 14346
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 14347
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is removed"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.android.oneconnect"

    .line 14348
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_234

    .line 14349
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetPinDevice()V

    goto/16 :goto_332

    .line 14351
    :cond_234
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p2

    invoke-virtual {p2, v0, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(IZ)I

    move-result p2

    if-eqz p2, :cond_305

    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p2

    .line 14352
    invoke-virtual {p2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->removeItem(I)Z

    move-result p2

    if-eqz p2, :cond_305

    .line 14353
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    const/4 v1, 0x0

    const-string/jumbo v4, "multisound_app"

    if-eqz p2, :cond_2eb

    .line 14354
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( current Packagelist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2ad

    const-string v5, ":"

    .line 14362
    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 14363
    array-length v6, p2

    move v7, v3

    :goto_280
    if-ge v7, v6, :cond_2ad

    aget-object v8, p2, v7

    .line 14364
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2aa

    invoke-static {v8, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2aa

    .line 14365
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_298

    move-object v1, v8

    goto :goto_2aa

    .line 14368
    :cond_298
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2aa
    :goto_2aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_280

    .line 14373
    :cond_2ad
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2cd

    .line 14374
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x2fd

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 14375
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    .line 14374
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 14376
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->showToast()V

    .line 14378
    :cond_2cd
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEC_AUDIO_MULTI_SOUND::ACTION_PACKAGE_REMOVED ( new Packagelist = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14380
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_305

    .line 14383
    :cond_2eb
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x2fd

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 14384
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    .line 14383
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 14385
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmContentResolver(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 14388
    :cond_305
    :goto_305
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/audio/MediaFocusControl;->getIgnoredUid()I

    move-result p2

    if-ne p2, v0, :cond_31a

    .line 14389
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMediaFocusControl(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/MediaFocusControl;

    move-result-object p2

    invoke-virtual {p2, v0, v3}, Lcom/android/server/audio/MediaFocusControl;->setIgnoreAudioFocus(IZ)V

    .line 14392
    :cond_31a
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageListHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PackageListHelper;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->removePackageForName(Landroid/content/Context;Ljava/lang/String;)V

    .line 14394
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p2

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolume(II)V

    .line 14396
    :goto_332
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz p2, :cond_341

    .line 14397
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, p2, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p2

    invoke-static {v1, p2, p1, v3}, Lcom/samsung/android/server/audio/KaraokeHelper;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 14400
    :cond_341
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAppVolumeFromSoundAssistant(Lcom/android/server/audio/AudioService;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->delete(I)V

    const-string p2, "com.samsung.android.soundassistant"

    .line 14402
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_357

    .line 14403
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$mclearSoundAssistantSettings(Lcom/android/server/audio/AudioService;)V

    .line 14406
    :cond_357
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$munSetSoundSettingEventBroadcastIntent(Lcom/android/server/audio/AudioService;Ljava/lang/String;)V

    .line 14408
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object p2

    if-eqz p2, :cond_638

    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_638

    .line 14409
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/AudioGameManager;->deleteGameUid(I)V

    goto/16 :goto_638

    :cond_37b
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 14411
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d2

    .line 14412
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 14413
    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 14414
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioService;->isInAllowedList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a4

    .line 14415
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmPackageListHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/PackageListHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v1, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p1}, Lcom/samsung/android/server/audio/PackageListHelper;->addPackage(Landroid/content/Context;ILjava/lang/String;)V

    .line 14417
    :cond_3a4
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_KARAOKE_LISTENBACK:Z

    if-eqz v0, :cond_3b3

    .line 14418
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v1, v0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSettingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    invoke-static {v1, v0, p1, v5}, Lcom/samsung/android/server/audio/KaraokeHelper;->checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V

    .line 14421
    :cond_3b3
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    if-eqz v0, :cond_638

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/audio/AudioGameManager;->isGamePackager(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_638

    .line 14422
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioGameManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/AudioGameManager;

    move-result-object p0

    invoke-virtual {p0, p2, v5}, Lcom/samsung/android/server/audio/AudioGameManager;->addGameUid(IZ)V

    goto/16 :goto_638

    :cond_3d2
    const-string v1, "android.intent.action.TurnOff_MultiSound"

    .line 14424
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "enabled"

    if-eqz v1, :cond_406

    .line 14425
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioHandler(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$AudioHandler;

    move-result-object v5

    const/16 v6, 0x2fd

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 14426
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    .line 14425
    invoke-static/range {v5 .. v11}, Lcom/android/server/audio/AudioService;->-$$Nest$smsendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 14427
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.android.setting.multisound"

    .line 14428
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.intent.action.MULTISOUND_STATE_CHANGED"

    .line 14429
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 14430
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 14431
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0, p1}, Lcom/android/server/audio/AudioService;->-$$Nest$msendBroadcastToAll(Lcom/android/server/audio/AudioService;Landroid/content/Intent;)V

    goto/16 :goto_638

    :cond_406
    const-string v1, "android.intent.action.SAS_NOTIFICATION_CLEAR"

    .line 14432
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_419

    .line 14433
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearNotification()V

    goto/16 :goto_638

    :cond_419
    const-string v1, "com.samsung.android.audio.headup.changedevice"

    .line 14434
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_449

    .line 14435
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {p2}, Lcom/android/server/audio/AudioService;->getPinDeviceInternal()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioDeviceBroker;->getPriorityDevice(I)I

    move-result p1

    .line 14436
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v0

    .line 14437
    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->getAddressForDevice(I)Ljava/lang/String;

    move-result-object v0

    .line 14436
    invoke-virtual {p2, p1, v0, v3}, Lcom/android/server/audio/AudioService;->setDeviceToForceByUser(ILjava/lang/String;Z)I

    .line 14438
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmMultiSoundManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/MultiSoundManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->clearHeadUpNotification()V

    goto/16 :goto_638

    .line 14439
    :cond_449
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DISPLAY_VOLUME_CONTROL:Z

    if-eqz v1, :cond_489

    const-string v1, "com.samsung.intent.action.DLNA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_489

    const-string/jumbo p1, "status"

    .line 14440
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 14441
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object p2

    if-ne p1, v5, :cond_465

    move v3, v5

    :cond_465
    invoke-virtual {p2, v3}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setDLNAEnabled(Z)V

    .line 14442
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "mIsDLNAEnabled:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmScreenSharingHelper(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/ScreenSharingHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isDLNAEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_638

    :cond_489
    const-string v1, "com.samsung.android.scpm.policy.UPDATE.Audio"

    .line 14520
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4af

    .line 14521
    sget-object p1, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance p2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v0, "Receive SCPM update intent"

    invoke-direct {p2, v0}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 14522
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object p1

    if-eqz p1, :cond_638

    .line 14523
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_638

    :cond_4af
    const-string v1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    .line 14525
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d6

    .line 14526
    sget-object p2, Lcom/android/server/audio/AudioService;->sScpmLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    const-string v1, "Receive SCPM clear intent"

    invoke-direct {v0, v1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 14527
    iget-object p2, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object p2

    if-eqz p2, :cond_638

    .line 14528
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmSoundAppPolicyManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/SoundAppPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/SoundAppPolicyManager;->init(Landroid/content/Context;)V

    goto/16 :goto_638

    :cond_4d6
    const-string p1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    .line 14530
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e8

    .line 14532
    new-instance p1, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p2}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;Landroid/content/Intent;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_638

    :cond_4e8
    const-string p1, "com.sec.media.action.mute_interval"

    .line 14533
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f7

    .line 14534
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$mcheckMuteInterval(Lcom/android/server/audio/AudioService;)V

    goto/16 :goto_638

    :cond_4f7
    const-string p1, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_MODE_ENABLED"

    .line 14535
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_510

    const-string p1, "enable"

    .line 14536
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 14537
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->setDualA2dpMode(Z)V

    goto/16 :goto_638

    :cond_510
    const-string p1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    .line 14538
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    if-eqz p1, :cond_52b

    .line 14539
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 14540
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postActiveBluetoothDeviceChanged(Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_638

    :cond_52b
    const-string p1, "com.sec.android.intent.action.SPLIT_SOUND"

    .line 14541
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53c

    .line 14542
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 14543
    invoke-static {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->setSplitSoundEnabled(Z)V

    goto/16 :goto_638

    :cond_53c
    const-string p1, "com.samsung.android.bluetooth.audiocast.action.device.CONNECTION_STATE_CHANGED"

    .line 14544
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x2

    if-eqz p1, :cond_5a9

    const-string p1, "com.samsung.android.bluetooth.cast.extra.STATE"

    .line 14545
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "com.samsung.android.bluetooth.cast.device.extra.REMOTEROLE"

    .line 14546
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 14547
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 14548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT cast device state:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " role : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v4, :cond_578

    if-nez p1, :cond_638

    .line 14551
    :cond_578
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    if-ne p1, v4, :cond_57e

    move v2, v5

    goto :goto_57f

    :cond_57e
    move v2, v3

    :goto_57f
    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmIsBluetoothCastState(Lcom/android/server/audio/AudioService;Z)V

    .line 14552
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v1

    const v2, 0x8000

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/server/audio/AudioDeviceBroker;->checkSendBecomingNoisyIntent(III)I

    if-ne p2, v4, :cond_638

    .line 14554
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object v6

    if-ne p1, v4, :cond_59a

    move v7, v5

    goto :goto_59b

    :cond_59a
    move v7, v3

    :goto_59b
    const v8, 0x8000

    const/4 v11, 0x0

    const-string v9, "0"

    const-string/jumbo v10, "remote_submix"

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/audio/AudioDeviceBroker;->updateDeviceQuickConnection(ZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_638

    :cond_5a9
    const-string p1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    .line 14560
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5ca

    .line 14561
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmGoodCatchManager(Lcom/android/server/audio/AudioService;)Lcom/samsung/android/server/audio/GoodCatchManager;

    move-result-object p1

    if-nez p1, :cond_638

    .line 14562
    iget-object p1, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    new-instance p2, Lcom/samsung/android/server/audio/GoodCatchManager;

    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object p0, p0, Lcom/android/server/audio/AudioService;->mContext:Landroid/content/Context;

    const-string v0, "AudioService"

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/server/audio/GoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/audio/AudioService;->-$$Nest$fputmGoodCatchManager(Lcom/android/server/audio/AudioService;Lcom/samsung/android/server/audio/GoodCatchManager;)V

    goto :goto_638

    .line 14564
    :cond_5ca
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_BT_VOLUME_MONITOR:Z

    if-eqz p1, :cond_61e

    const-string p1, "com.samsung.bluetooth.device.action.AUDIO_TYPE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61e

    .line 14565
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 14566
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioDeviceBroker;->getA2dp()Landroid/bluetooth/BluetoothA2dp;

    move-result-object p0

    if-eqz p1, :cond_638

    if-eqz p0, :cond_638

    .line 14568
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    const-string v0, "com.samsung.bluetooth.device.extra.AUDIO_TYPE"

    .line 14569
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_60a

    if-eqz p0, :cond_638

    .line 14571
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_638

    .line 14572
    invoke-static {v5}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Z)V

    goto :goto_638

    :cond_60a
    if-eqz p0, :cond_638

    .line 14575
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_638

    .line 14576
    invoke-static {v3}, Lcom/samsung/android/server/audio/BluetoothHelper;->setBtVolumeMonitor(Z)V

    goto :goto_638

    :cond_61e
    const-string p1, "com.android.launcher3.quickstep.closeall"

    .line 14580
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_638

    const-string/jumbo p1, "onReceive close all"

    .line 14581
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14582
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {p0}, Lcom/android/server/audio/AudioService;->-$$Nest$fgetmAudioSystem(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object p0

    const-string/jumbo p1, "l_recovery_restarting=true"

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    :cond_638
    :goto_638
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 14269
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService$SamsungBroadcastReceiver;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 14271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method
