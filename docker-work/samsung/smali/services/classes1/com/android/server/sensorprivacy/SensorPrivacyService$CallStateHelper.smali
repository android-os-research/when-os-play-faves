.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;
.super Ljava/lang/Object;
.source "SensorPrivacyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallStateHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;,
        Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;
    }
.end annotation


# static fields
.field public static final READ_GUIDE_DELAY_MILLIS:I = 0x3e8


# instance fields
.field public mCallStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

.field public mCallStateLock:Ljava/lang/Object;

.field public mCameraBlockedForEmergencyCall:Z

.field public mEmergencyStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

.field public mHandler:Landroid/os/Handler;

.field public mIsInEmergencyCall:Z

.field public mMicUnmutedForEmergencyCall:Z

.field public mTts:Landroid/speech/tts/TextToSpeech;

.field public mTtsHashForTTSPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mTtsHashForVoiceCallPath:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTts(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Landroid/speech/tts/TextToSpeech;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTtsHashForTTSPath(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForTTSPath:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTtsHashForVoiceCallPath(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForVoiceCallPath:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetLocaleStringResource(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monCall(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->onCall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monCallOver(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->onCallOver()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monEmergencyCall(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->onEmergencyCall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreadGuideString(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->readGuideString(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrunTTS(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->runTTS(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .registers 5

    .line 1722
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1713
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForVoiceCallPath:Ljava/util/HashMap;

    .line 1714
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForTTSPath:Ljava/util/HashMap;

    .line 1720
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    .line 1723
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mEmergencyStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

    .line 1724
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

    .line 1726
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmTelephonyManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mEmergencyStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$OutgoingEmergencyStateCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1728
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmTelephonyManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateCallback:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$CallStateCallback;

    invoke-virtual {p1, v0, v1}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 1731
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForVoiceCallPath:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 1732
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "streamType"

    .line 1731
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1733
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForTTSPath:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 1734
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1733
    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1735
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getLocaleStringResource(Ljava/util/Locale;ILandroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 1866
    new-instance p0, Landroid/content/res/Configuration;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1867
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 1868
    invoke-virtual {p3, p0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isInEmergencyCall()Z
    .registers 2

    .line 1740
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1742
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final onCall()V
    .registers 5

    .line 1800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1802
    :try_start_4
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_19

    .line 1803
    :try_start_7
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object p0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseDialog(I)V

    .line 1804
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    .line 1806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    .line 1804
    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p0

    .line 1806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1807
    throw p0
.end method

.method public final onCallOver()V
    .registers 10

    .line 1811
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    .line 1813
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    .line 1814
    iget-boolean v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    if-eqz v2, :cond_23

    .line 1815
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    .line 1817
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    .line 1820
    :cond_23
    iget-boolean v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    if-eqz v2, :cond_3c

    .line 1821
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    .line 1823
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    .line 1827
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final onEmergencyCall()V
    .registers 11

    .line 1773
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCallStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1774
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    if-nez v1, :cond_5a

    const/4 v1, 0x1

    .line 1775
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mIsInEmergencyCall:Z

    .line 1776
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v2

    .line 1777
    invoke-virtual {v2, v1, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 1778
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    .line 1780
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    goto :goto_2f

    .line 1782
    :cond_2d
    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mMicUnmutedForEmergencyCall:Z

    .line 1786
    :goto_2f
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v4

    const/4 v5, 0x2

    .line 1787
    invoke-virtual {v2, v4, v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1788
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmSensorPrivacyServiceImpl(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    move-result-object v3

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->-$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V

    .line 1790
    iput-boolean v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    goto :goto_5a

    .line 1792
    :cond_58
    iput-boolean v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mCameraBlockedForEmergencyCall:Z

    .line 1796
    :cond_5a
    :goto_5a
    monitor-exit v0

    return-void

    :catchall_5c
    move-exception p0

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public final readGuideString(I)V
    .registers 4

    .line 1845
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final runTTS(I)V
    .registers 5

    .line 1832
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_17

    .line 1833
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    goto :goto_1a

    .line 1840
    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->readGuideString(I)V

    :goto_1a
    return-void
.end method
