.class public Lcom/android/server/audio/MediaFocusControl;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Lcom/android/server/audio/PlayerFocusEnforcer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;,
        Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    }
.end annotation


# static fields
.field public static final ANDROID_AUTO_PACKAGE:Ljava/lang/String; = "com.google.android.projection.gearhead"

.field public static final DEBUG:Z = false

.field public static final DUCKING_IN_APP_SDK_LEVEL:I = 0x19

.field public static final ENFORCE_DUCKING:Z = true

.field public static final ENFORCE_DUCKING_FOR_NEW:Z = true

.field public static final ENFORCE_FADEOUT_FOR_FOCUS_LOSS:Z = false

.field public static final ENFORCE_MUTING_FOR_RING_OR_CALL:Z = true

.field public static final GAIN_AUDIO_FOCUS_DELAY_MS:I = 0x1f4

.field public static final LOSS_AUDIO_FOCUS_DELAY_MS:I = 0x3a98

.field public static final MAX_STACK_SIZE:I = 0x64

.field public static final MSG_DELAY_GAIN_AUDIO_FOCUS:I = 0x4

.field public static final MSG_DELAY_LOSS_AUDIO_FOCUS:I = 0x3

.field public static final MSG_L_FOCUS_LOSS_AFTER_FADE:I = 0x1

.field public static final MSL_L_FORGET_UID:I = 0x2

.field public static final RING_CALL_MUTING_ENFORCEMENT_DELAY_MS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "MediaFocusControl"

.field public static final USAGES_TO_MUTE_IN_RING_OR_CALL:[I

.field public static final VOIP_APPS:[Ljava/lang/String;

.field public static final mAudioFocusLock:Ljava/lang/Object;

.field public static final mEventLogger:Lcom/android/server/audio/AudioEventLogger;

.field public static final mMetricsId:Ljava/lang/String; = "audio.focus"


# instance fields
.field public final mAppOps:Landroid/app/AppOpsManager;

.field public mAudioService:Lcom/android/server/audio/AudioService;

.field public mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

.field public mCallClientId:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public mDevice:I

.field public mExtFocusChangeCounter:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mExtFocusChangeLock"
        }
    .end annotation
.end field

.field public final mExtFocusChangeLock:Ljava/lang/Object;

.field public mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

.field public mFocusFollowers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/audiopolicy/IAudioPolicyCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusHandler:Landroid/os/Handler;

.field public mFocusOwnersForFocusPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation
.end field

.field public mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field public mFocusThread:Landroid/os/HandlerThread;

.field public mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

.field public mIgnoredUid:I

.field public mIsMySpaceEffectFocus:Z

.field public mMultiAudioFocusEnabled:Z

.field public mMultiAudioFocusList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation
.end field

.field public mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

.field public mMySpaceHandler:Landroid/os/Handler;

.field public final mMySpaceRunnable:Ljava/lang/Runnable;

.field public mNotifyFocusOwnerOnDuck:Z

.field public mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation
.end field

.field public mRingOrCallActive:Z

.field public mSplitSoundCb:Landroid/os/IBinder;

.field public mSplitSoundFR:Lcom/android/server/audio/FocusRequester;


# direct methods
.method public static synthetic $r8$lambda$YLQhv_0omU-CauNgVKNjuQj8wAQ()V
    .registers 0

    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ulRZNi6eOYux3Tlpe8I4PQ0OOsE(Lcom/android/server/audio/MediaFocusControl;IZZLcom/android/server/audio/FocusRequester;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/audio/MediaFocusControl;->lambda$updateFocusRequester$1(IZZLcom/android/server/audio/FocusRequester;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusEnforcer(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusPolicy(Lcom/android/server/audio/MediaFocusControl;)Landroid/media/audiopolicy/IAudioPolicyCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFocusStack(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIgnoredFocus(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/FocusRequester;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMultiFocusStack(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/MultiFocusStack;
    .registers 1

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRingOrCallActive(Lcom/android/server/audio/MediaFocusControl;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmFocusStack(Lcom/android/server/audio/MediaFocusControl;Ljava/util/Stack;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIgnoredFocus(Lcom/android/server/audio/MediaFocusControl;Lcom/android/server/audio/FocusRequester;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostForgetUidLater(Lcom/android/server/audio/MediaFocusControl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->postForgetUidLater(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFocusEntryForExtPolicyOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusEntryForExtPolicyOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveFocusStackEntryOnDeath(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetUSAGES_TO_MUTE_IN_RING_OR_CALL()[I
    .registers 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmAudioFocusLock()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 5

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    .line 225
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x32

    const-string v2, "focus commands as seen by MediaFocusControl"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1021
    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->USAGES_TO_MUTE_IN_RING_OR_CALL:[I

    const-string v0, "com.tencent.mm"

    const-string v1, "com.tencent.mobileqq"

    const-string v2, "com.skype.raider"

    const-string/jumbo v3, "jp.naver.line.android"

    const-string v4, "com.google.android.apps.tachyon"

    .line 1779
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/MediaFocusControl;->VOIP_APPS:[Ljava/lang/String;

    return-void

    :array_2c
    .array-data 4
        0x1
        0xe
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V
    .registers 7

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 119
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    .line 397
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    .line 718
    iput-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    .line 726
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    const/4 v2, 0x0

    .line 764
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 770
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 776
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    .line 1804
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 1810
    new-instance v3, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda0;-><init>()V

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceRunnable:Ljava/lang/Runnable;

    .line 1830
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 2103
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    const/4 v3, -0x1

    .line 2104
    iput v3, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 2140
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 2141
    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    .line 124
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    .line 125
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    .line 126
    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getUserId()I

    move-result p2

    const-string/jumbo v2, "multi_audio_focus_enabled"

    .line 128
    invoke-static {p1, v2, v0, p2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_60

    move v0, v1

    :cond_60
    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 130
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->initFocusThreading()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;Lcom/android/server/audio/AudioService;)V
    .registers 5

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/server/audio/MediaFocusControl;-><init>(Landroid/content/Context;Lcom/android/server/audio/PlayerFocusEnforcer;)V

    .line 136
    iput-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 139
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "MediaFocusControl"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    .line 145
    invoke-static {p2}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 147
    invoke-static {p2}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result p2

    if-eqz p2, :cond_48

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "force change device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iput v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 151
    :cond_48
    new-instance p2, Lcom/android/server/audio/MultiFocusStack;

    invoke-direct {p2}, Lcom/android/server/audio/MultiFocusStack;-><init>()V

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    .line 152
    iget p3, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-virtual {p2, p3}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 158
    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    return-void
.end method

.method public static getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .registers 2

    .line 1031
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    const/16 p1, 0x10

    if-eq p0, p1, :cond_1b

    const/16 p1, 0x3ea

    if-eq p0, p1, :cond_18

    const/16 p1, 0x3eb

    if-eq p0, p1, :cond_1b

    packed-switch p0, :pswitch_data_1e

    const/4 p0, 0x0

    return p0

    :pswitch_15
    const/16 p0, 0x3e8

    return p0

    :cond_18
    :pswitch_18
    const/16 p0, 0x1f4

    return p0

    :cond_1b
    :pswitch_1b
    const/16 p0, 0x2bc

    return p0

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_18
        :pswitch_18
        :pswitch_1b
        :pswitch_18
        :pswitch_1b
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_1b
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static synthetic lambda$new$0()V
    .registers 2

    .line 1811
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1813
    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private synthetic lambda$updateFocusRequester$1(IZZLcom/android/server/audio/FocusRequester;)V
    .registers 8

    const-string v0, "MediaFocusControl"

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "focusRequester.getClientId()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-virtual {p4, p1}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    .line 1949
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2e

    .line 1950
    :try_start_22
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne p1, v1, :cond_27

    goto :goto_2e

    .line 1953
    :cond_27
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object p0

    goto :goto_35

    .line 1951
    :cond_2e
    :goto_2e
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object p0

    .line 1959
    :goto_35
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_7b

    const/4 p1, 0x1

    if-eqz p2, :cond_53

    if-nez p3, :cond_53

    const-string p2, "MediaFocusControl"

    const-string/jumbo p3, "pin app playing"

    .line 1961
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1962
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p2, p1, p4, p1}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    goto :goto_7b

    :cond_53
    const-string p2, "MediaFocusControl"

    const-string/jumbo p3, "pin app paused"

    .line 1964
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    invoke-virtual {p4, p1, p4, p1}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 1966
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    .line 1967
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7c

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_7c

    .line 1969
    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    goto :goto_7c

    :cond_7b
    :goto_7b
    move-object p1, v1

    .line 1974
    :cond_7c
    :goto_7c
    invoke-virtual {p0, p4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_84

    .line 1976
    invoke-virtual {p0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_84
    if-eqz p1, :cond_89

    .line 1979
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1981
    :cond_89
    monitor-exit v0

    return-void

    :catchall_8b
    move-exception p0

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_22 .. :try_end_8d} :catchall_8b

    throw p0
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    .line 1407
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.focus"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 1408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    move-object/from16 v5, p4

    .line 1409
    invoke-virtual {v1, v2, v5}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 1410
    invoke-virtual {v1, v2, v10}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string v3, "abandonAudioFocus"

    .line 1411
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1412
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    .line 1415
    sget-object v1, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonAudioFocus() from uid/pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1417
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " clientId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v3, "MediaFocusControl"

    .line 1419
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    .line 1415
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/4 v11, 0x1

    .line 1422
    :try_start_66
    sget-object v12, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_69
    .catch Ljava/util/ConcurrentModificationException; {:try_start_66 .. :try_end_69} :catch_23c

    .line 1426
    :try_start_69
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1427
    invoke-virtual {v2, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v13, 0x0

    if-nez v2, :cond_76

    move v2, v11

    goto :goto_77

    :cond_76
    move v2, v13

    :goto_77
    and-int v14, v1, v2

    if-eqz v14, :cond_7d

    .line 1429
    iput-boolean v13, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    :cond_7d
    if-nez p3, :cond_91

    .line 1434
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v10, v13}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    if-eqz v1, :cond_91

    .line 1437
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v1

    move-object v2, v1

    goto :goto_93

    :cond_91
    move-object/from16 v2, p3

    .line 1441
    :goto_93
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_aa

    if-eqz v2, :cond_ee

    .line 1443
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    if-eq v1, v11, :cond_aa

    .line 1444
    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_ee

    :cond_aa
    const-string v1, "MediaFocusControl"

    .line 1446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonAudioFocus, clientId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v13

    .line 1447
    :goto_c1
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_ee

    .line 1448
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Stack;

    iput-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1449
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_e8

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e8

    goto :goto_eb

    .line 1453
    :cond_e8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :goto_eb
    add-int/lit8 v1, v1, 0x1

    goto :goto_c1

    .line 1457
    :cond_ee
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_11a

    .line 1458
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 1459
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1460
    :cond_100
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11a

    .line 1461
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 1462
    invoke-virtual {v3, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_100

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    if-lez v3, :cond_100

    move v15, v11

    goto :goto_11b

    :cond_11a
    move v15, v13

    .line 1469
    :goto_11b
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1471
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_130

    .line 1472
    iput-object v9, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 1476
    :cond_130
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    if-eqz v1, :cond_15c

    .line 1478
    invoke-virtual {v0, v10}, Lcom/android/server/audio/MediaFocusControl;->fromPhoneCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1479
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_15c

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15c

    .line 1480
    invoke-static {v13}, Lcom/samsung/android/media/MySpaceManager;->playMySpaceEffect(I)V

    .line 1481
    iput-boolean v13, v0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    const-string v1, "MediaFocusControl"

    const-string v3, "abandonAudioFocus: playMySpaceEffect MUSIC FADE IN"

    .line 1482
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_15c
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_181

    .line 1487
    new-instance v8, Landroid/media/AudioFocusInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v1, v8

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object v13, v8

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 1490
    invoke-virtual {v0, v13}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    move-result v1

    if-eqz v1, :cond_181

    .line 1491
    monitor-exit v12

    return v11

    .line 1503
    :cond_181
    invoke-virtual {v0, v10, v11, v11}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1505
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_211

    .line 1506
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f2

    if-eqz v15, :cond_1f2

    .line 1507
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1508
    :cond_198
    :goto_198
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_211

    .line 1509
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 1510
    invoke-virtual {v2, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d0

    const-string v3, "MediaFocusControl"

    .line 1511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abandonAudioFocus( remove "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1511
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 1514
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_198

    .line 1516
    :cond_1d0
    iget-boolean v3, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    if-nez v3, :cond_198

    const-string v3, "MediaFocusControl"

    .line 1517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "abandonAudioFocus( AUDIOFOCUS_GAIN :: packagename = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1518
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1517
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    invoke-virtual {v2, v11}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    goto :goto_198

    :cond_1f2
    const-string v1, "MediaFocusControl"

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "skip abandonAudioFocus because focus granted "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_211
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    if-eqz v1, :cond_22a

    if-eqz v14, :cond_21b

    .line 1531
    invoke-virtual {v1, v11}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    goto :goto_22a

    .line 1532
    :cond_21b
    invoke-virtual {v1, v10}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22a

    .line 1533
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    const/4 v1, 0x0

    .line 1534
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    goto :goto_22b

    :cond_22a
    :goto_22a
    const/4 v1, 0x0

    .line 1540
    :goto_22b
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 1541
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    and-int/lit8 v1, v14, 0x1

    if-eqz v1, :cond_237

    const/4 v1, 0x0

    .line 1544
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1546
    :cond_237
    monitor-exit v12

    goto :goto_256

    :catchall_239
    move-exception v0

    monitor-exit v12
    :try_end_23b
    .catchall {:try_start_69 .. :try_end_23b} :catchall_239

    :try_start_23b
    throw v0
    :try_end_23c
    .catch Ljava/util/ConcurrentModificationException; {:try_start_23b .. :try_end_23c} :catch_23c

    :catch_23c
    move-exception v0

    const-string v1, "MediaFocusControl"

    .line 1551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :goto_256
    return v11
.end method

.method public addFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 732
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 734
    :try_start_7
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 735
    invoke-interface {v3}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v1, 0x1

    :cond_28
    if-eqz v1, :cond_2c

    .line 741
    monitor-exit v0

    return-void

    .line 743
    :cond_2c
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 746
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final addMySpaceEffectDelayLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 1818
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1819
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMySpaceRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1822
    :try_start_10
    sget-object p0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_17} :catch_17

    :catch_17
    return-void
.end method

.method public final canReassignAudioFocus()Z
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x0

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method

.method public checkSplitSoundAudioFocus()V
    .registers 14

    .line 2144
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    if-eqz v0, :cond_35

    .line 2145
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 2146
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v3

    .line 2147
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 2148
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2149
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v9

    .line 2150
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getSdkTarget()I

    move-result v10

    .line 2151
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v12}, Lcom/android/server/audio/MediaFocusControl;->requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)I

    const/4 v0, 0x0

    .line 2153
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 2154
    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    :cond_35
    return-void
.end method

.method public discardAudioFocusOwner()V
    .registers 5

    .line 266
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 269
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 270
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 274
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public dispatchFocusChange(Landroid/media/AudioFocusInfo;I)I
    .registers 6

    .line 973
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 974
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 976
    monitor-exit v0

    return v2

    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1a

    .line 980
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    goto :goto_26

    .line 982
    :cond_1a
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    :goto_26
    if-nez p0, :cond_2a

    .line 986
    monitor-exit v0

    return v2

    .line 988
    :cond_2a
    invoke-virtual {p0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_30
    move-exception p0

    .line 989
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z
    .registers 4

    .line 182
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/audio/PlayerFocusEnforcer;->duckPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;Z)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nMediaFocusControl dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpFocusStack(Ljava/io/PrintWriter;)V

    const-string v0, "\n"

    .line 167
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpMultiAudioFocus(Ljava/io/PrintWriter;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIgnoredAudioFocusUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V
    .registers 3

    .line 993
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 994
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 995
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 996
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 997
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 998
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_a

    :cond_20
    return-void
.end method

.method public final dumpFocusStack(Ljava/io/PrintWriter;)V
    .registers 5

    const-string v0, "\nAudio Focus stack entries (last is top of stack):"

    .line 404
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpMultiSoundStack(Ljava/io/PrintWriter;)V

    const-string v1, "\n"

    .line 415
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v1, :cond_1a

    const-string v1, "No external focus policy\n"

    .line 417
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_38

    .line 419
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External focus policy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", focus owners:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->dumpExtFocusPolicyFocusOwners(Ljava/io/PrintWriter;)V

    .line 422
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_75

    const-string v0, "\n"

    .line 423
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Notify on duck:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " In ring or call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_75
    move-exception p0

    .line 422
    :try_start_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public final dumpMultiAudioFocus(Ljava/io/PrintWriter;)V
    .registers 4

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multi Audio Focus enabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_76

    const-string v0, "Multi Audio Focus List:"

    .line 1628
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------------------------"

    .line 1631
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_63
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1633
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_63

    .line 1635
    :cond_73
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method public final dumpMultiSoundStack(Ljava/io/PrintWriter;)V
    .registers 6

    const-string v0, "\nMultiFocusStack:"

    .line 1833
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1837
    :goto_3b
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "------------------------------"

    if-ge v0, v1, :cond_85

    .line 1838
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 1839
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1842
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_82

    .line 1843
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    goto :goto_72

    :cond_82
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 1846
    :cond_85
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    if-eqz v0, :cond_96

    const-string v0, "Ignored focus"

    .line 1849
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/FocusRequester;->dump(Ljava/io/PrintWriter;)V

    :cond_96
    return-void
.end method

.method public fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z
    .registers 3

    .line 206
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1, p2}, Lcom/android/server/audio/PlayerFocusEnforcer;->fadeOutPlayers(Lcom/android/server/audio/FocusRequester;Lcom/android/server/audio/FocusRequester;)Z

    move-result p0

    return p0
.end method

.method public forgetUid(I)V
    .registers 2

    .line 211
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    return-void
.end method

.method public final fromPhoneCall(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1807
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final getAppDevice(I)I
    .registers 2

    .line 1925
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioService;->getAppDevice(I)I

    move-result p0

    .line 1926
    invoke-static {p0}, Lcom/samsung/android/server/audio/AudioHelper;->isWiredDeviceType(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const/4 p0, 0x2

    :cond_d
    return p0
.end method

.method public getCurrentAudioFocus()I
    .registers 3

    .line 1003
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1004
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 p0, 0x0

    .line 1005
    monitor-exit v0

    return p0

    .line 1007
    :cond_e
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 1009
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public getCurrentAudioFocusPackageName()Ljava/lang/String;
    .registers 5

    .line 1856
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1857
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1858
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_19
    const/4 v1, 0x0

    .line 1860
    :goto_1a
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3f

    .line 1861
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Stack;

    .line 1862
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3c

    .line 1863
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_3f
    const/4 p0, 0x0

    .line 1866
    monitor-exit v0

    return-object p0

    :catchall_42
    move-exception p0

    .line 1868
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .registers 2

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public getFocusStack()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 287
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 288
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 290
    :cond_28
    monitor-exit v0

    return-object v1

    :catchall_2a
    move-exception p0

    .line 291
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public getIgnoredUid()I
    .registers 1

    .line 2135
    iget p0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    return p0
.end method

.method public getMultiAudioFocusEnabled()Z
    .registers 1

    .line 1615
    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    return p0
.end method

.method public getUidForDevice(I)I
    .registers 3

    .line 2077
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object p0

    .line 2079
    invoke-virtual {p0}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_17

    .line 2080
    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result p0

    goto :goto_18

    :cond_17
    const/4 p0, -0x1

    .line 2082
    :goto_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "getUidForDevice, uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaFocusControl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public handleExternalFocusGain(I)V
    .registers 4

    .line 2087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleExternalFocusGain, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    move-result-object p0

    .line 2091
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_25

    return-void

    .line 2094
    :cond_25
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 2095
    :goto_29
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 2096
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2097
    invoke-virtual {p1, v1, v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    goto :goto_29

    :cond_3b
    return-void
.end method

.method public handleUpdateMultiAudioFocus()V
    .registers 9

    .line 2173
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    const-string v1, "MediaFocusControl"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_77

    .line 2174
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const-string v5, " ] )"

    if-nez v0, :cond_44

    .line 2175
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 2176
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/server/audio/AudioHelper;->checkRunningBackground(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 2177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateMultiAudioFocus( send AUDIOFOCUS_LOSS [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2177
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 2183
    :cond_44
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    if-eqz v0, :cond_f4

    .line 2184
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/audio/AudioHelper;->checkRunningBackground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMultiAudioFocus( send AUDIOFOCUS_LOSS mIgnoredFocus [ "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 2186
    invoke-virtual {v6}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2185
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    goto/16 :goto_f4

    .line 2191
    :cond_77
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a3

    .line 2192
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 2193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMultiAudioFocus[mFocusStack] : send Loss :: Tasks ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2194
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2193
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    invoke-virtual {v0, v3, v2, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 2198
    :cond_a3
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    .line 2199
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 2200
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    goto :goto_b1

    .line 2202
    :cond_c1
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_c6
    move v0, v4

    .line 2205
    :goto_c7
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_f4

    .line 2206
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 2207
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2208
    :goto_db
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f1

    .line 2209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/audio/FocusRequester;

    .line 2210
    invoke-virtual {v5, v3, v2, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 2211
    invoke-virtual {v5}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 2212
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_db

    :cond_f1
    add-int/lit8 v0, v0, 0x1

    goto :goto_c7

    :cond_f4
    :goto_f4
    return-void
.end method

.method public hasAudioFocusUsers()Z
    .registers 2

    .line 255
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 256
    :try_start_3
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->empty()Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 257
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final initFocusThreading()V
    .registers 3

    .line 1673
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MediaFocusControl"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    .line 1674
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1675
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$3;

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/audio/MediaFocusControl$3;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    return-void
.end method

.method public isDelayLossApp(Ljava/lang/String;)Z
    .registers 3

    .line 2229
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioSettingsHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;

    const-string v0, "delay_loss_audio_focus"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z
    .registers 2

    const-string p0, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 586
    invoke-virtual {p1, p0}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_11

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->isLockedFocusOwner()Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p0, 0x1

    :goto_12
    return p0
.end method

.method public final isRemoteMicState(Landroid/media/AudioAttributes;)Z
    .registers 3

    .line 2161
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_REMOTE_MIC:Z

    if-eqz v0, :cond_1a

    .line 2162
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object p1

    const-string v0, "AUDIO_REMOTE_MIC"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    .line 2163
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService;->getRemoteMic()Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public mustNotifyFocusOwnerOnDuck()Z
    .registers 1

    .line 724
    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return p0
.end method

.method public mutePlayersForCall([I)V
    .registers 2

    .line 196
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->mutePlayersForCall([I)V

    return-void
.end method

.method public noFocusForSuspendedApp(Ljava/lang/String;I)V
    .registers 11

    .line 231
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 233
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 235
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    .line 236
    invoke-virtual {v3, p2}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3, p1}, Lcom/android/server/audio/FocusRequester;->hasSamePackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 237
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object v4, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v5, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "focus owner:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " in uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pack: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " getting AUDIOFOCUS_LOSS due to app suspension"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v6, "MediaFocusControl"

    .line 242
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v5

    .line 238
    invoke-virtual {v4, v5}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    const/4 v4, -0x1

    .line 244
    invoke-virtual {v3, v4}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    goto :goto_e

    .line 247
    :cond_6c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_70
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 249
    invoke-virtual {p0, p2, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    goto :goto_70

    .line 251
    :cond_82
    monitor-exit v0

    return-void

    :catchall_84
    move-exception p0

    monitor-exit v0
    :try_end_86
    .catchall {:try_start_3 .. :try_end_86} :catchall_84

    throw p0
.end method

.method public notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z
    .registers 4

    .line 950
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 953
    :cond_6
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    if-eqz v0, :cond_17

    .line 955
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 959
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {v0, p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusAbandon(Landroid/media/AudioFocusInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_3a

    :catch_1d
    move-exception p1

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t call notifyAudioFocusAbandon() on IAudioPolicyCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 962
    invoke-interface {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaFocusControl"

    .line 961
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3a
    const/4 p0, 0x1

    return p0
.end method

.method public notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z
    .registers 15

    .line 890
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 891
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    invoke-virtual {p1, v1, v2}, Landroid/media/AudioFocusInfo;->setGen(J)V

    .line 892
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_6e

    .line 893
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    .line 896
    invoke-virtual {v0, p2}, Lcom/android/server/audio/FocusRequester;->hasSameDispatcher(Landroid/media/IAudioFocusDispatcher;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 897
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_2a

    :cond_28
    move v0, v2

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v0, v1

    :goto_2b
    if-eqz v0, :cond_4a

    .line 904
    new-instance v7, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v7, p0, p3}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V

    .line 906
    :try_start_32
    invoke-interface {p3, v7, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_35} :catch_49

    .line 912
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/audio/FocusRequester;

    move-object v3, v10

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Lcom/android/server/audio/MediaFocusControl;)V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4a

    :catch_49
    return v2

    .line 918
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    invoke-interface {p2, p1, v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusRequest(Landroid/media/AudioFocusInfo;I)V
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4f} :catch_50

    return v1

    :catch_50
    move-exception p1

    const-string p2, "MediaFocusControl"

    .line 921
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t call notifyAudioFocusRequest() on IAudioPolicyCallback "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 922
    invoke-interface {p0}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 921
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catchall_6e
    move-exception p0

    .line 892
    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw p0
.end method

.method public notifyExtPolicyCurrentFocusAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 3

    .line 812
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$1;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/audiopolicy/IAudioPolicyCallback;)V

    .line 830
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V
    .registers 8

    .line 837
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 840
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusGrant(Landroid/media/AudioFocusInfo;I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v2

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusGrant() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaFocusControl"

    .line 842
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 847
    :cond_32
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CARLIFE:Z

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4d

    .line 849
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_4d

    .line 850
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioService;->notifyCarLifeEvent(Ljava/lang/String;I)V

    :cond_4d
    return-void
.end method

.method public notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V
    .registers 8

    .line 858
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 861
    :try_start_12
    invoke-interface {v1, p1, p2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->notifyAudioFocusLoss(Landroid/media/AudioFocusInfo;Z)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception v2

    .line 863
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t call notifyAudioFocusLoss() on IAudioPolicyCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    invoke-interface {v1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MediaFocusControl"

    .line 863
    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 868
    :cond_32
    sget-boolean p2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_CARLIFE:Z

    if-eqz p2, :cond_4b

    iget-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    if-eqz p2, :cond_4b

    .line 869
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGainRequest()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4b

    .line 870
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/audio/AudioService;->notifyCarLifeEvent(Ljava/lang/String;I)V

    :cond_4b
    return-void
.end method

.method public final notifyTopOfAudioFocusStack()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_72

    .line 326
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    if-nez v0, :cond_72

    .line 327
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/MediaFocusControl;->isDelayLossApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyTopOfAudioFocusStack: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MediaFocusControl"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 331
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 330
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_72

    .line 334
    :cond_67
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    .line 339
    :cond_72
    :goto_72
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v0, :cond_9a

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9a

    .line 340
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_84
    :goto_84
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 341
    invoke-virtual {p0, v2}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 342
    invoke-virtual {v2, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusGain(I)V

    goto :goto_84

    :cond_9a
    return-void
.end method

.method public postDelayedForLossAudioFocus(Lcom/android/server/audio/FocusRequester;)V
    .registers 4

    .line 2221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "postDelayedForLossAudioFocus: clientId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2223
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    .line 2224
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3a98

    .line 2223
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public postDelayedLossAfterFade(Lcom/android/server/audio/FocusRequester;J)V
    .registers 4

    .line 1645
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 1646
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    .line 1645
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final postForgetUidLater(I)V
    .registers 4

    .line 1651
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-direct {v0, p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    const/4 p1, 0x2

    .line 1652
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    .line 1651
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final propagateFocusLossFromGainToAll(I)V
    .registers 6

    .line 1912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "propagateFocusLossFromGainToAll, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1914
    :goto_18
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_40

    .line 1915
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Stack;

    .line 1916
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1917
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1918
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    const/4 v3, 0x1

    .line 1919
    invoke-virtual {v2, p1, v2, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    goto :goto_2c

    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_40
    return-void
.end method

.method public final propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 356
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 359
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 360
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 362
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 364
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 369
    :cond_2d
    iget-boolean v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6a

    .line 370
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3f
    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    if-eqz p2, :cond_5c

    .line 372
    invoke-virtual {p2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5c

    goto :goto_3f

    .line 378
    :cond_5c
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 380
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    .line 385
    :cond_6a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v0, 0x1

    .line 386
    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    goto :goto_6e

    :cond_80
    return-void
.end method

.method public final pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    .line 607
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_e
    if-ltz v1, :cond_22

    .line 608
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, v3}, Lcom/android/server/audio/MediaFocusControl;->isLockedFocusOwner(Lcom/android/server/audio/FocusRequester;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move v0, v1

    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 612
    :cond_22
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_44

    .line 614
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "MediaFocusControl"

    const-string v4, "No exclusive focus owner found in propagateFocusLossFromGain_syncAf()"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v0

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 618
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    .line 625
    :cond_44
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, p1, v0}, Ljava/util/Stack;->insertElementAt(Ljava/lang/Object;I)V

    .line 629
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sub-int/2addr v0, v2

    :goto_4f
    if-ltz v0, :cond_75

    .line 631
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 632
    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 633
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v5

    .line 632
    invoke-virtual {v4, v5, p1, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 635
    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_72
    add-int/lit8 v0, v0, -0x1

    goto :goto_4f

    .line 638
    :cond_75
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_79
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 642
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    goto :goto_79

    :cond_89
    const/4 p0, 0x2

    return p0
.end method

.method public final removeFocusEntryForExtPolicyOnDeath(Landroid/os/IBinder;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 549
    :cond_9
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 550
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 551
    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    .line 552
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 553
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 554
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 555
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 556
    sget-object p1, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v0, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus requester:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pack:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-virtual {p1, v0}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 561
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 562
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusAbandon_syncAf(Landroid/media/AudioFocusInfo;)Z

    :cond_74
    return-void
.end method

.method public removeFocusFollower(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 753
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 755
    invoke-interface {v2}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/audiopolicy/IAudioPolicyCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 756
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusFollowers:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 760
    :cond_2b
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_6 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final removeFocusStackEntry(Ljava/lang/String;ZZ)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 442
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 443
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->maybeRelease()V

    if-eqz p3, :cond_28

    .line 445
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    :cond_28
    if-eqz p2, :cond_69

    .line 449
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    goto :goto_69

    .line 456
    :cond_2e
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    .line 458
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 459
    invoke-virtual {v2, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioFocus  removeFocusStackEntry(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaFocusControl"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    if-eqz p3, :cond_65

    .line 464
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    .line 467
    :cond_65
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->maybeRelease()V

    goto :goto_34

    :cond_69
    :goto_69
    if-eqz v1, :cond_72

    .line 473
    invoke-virtual {v1}, Landroid/media/AudioFocusInfo;->clearLossReceived()V

    const/4 p3, 0x0

    .line 474
    invoke-virtual {p0, v1, p3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 477
    :cond_72
    iget-boolean p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz p3, :cond_a2

    iget-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_a2

    .line 478
    iget-object p3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 479
    :cond_84
    :goto_84
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 480
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    .line 481
    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    .line 482
    invoke-interface {p3}, Ljava/util/Iterator;->remove()V

    .line 483
    invoke-virtual {v0}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_84

    :cond_9d
    if-eqz p2, :cond_a2

    .line 489
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_a2
    return-void
.end method

.method public final removeFocusStackEntryOnDeath(Landroid/os/IBinder;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAudioFocusLock"
        }
    .end annotation

    .line 500
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 501
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 504
    :goto_1b
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 505
    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cb

    .line 506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 507
    invoke-virtual {v4, p1}, Lcom/android/server/audio/FocusRequester;->hasSameBinder(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 508
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AudioFocus  removeFocusStackEntryOnDeath(): removing entry for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaFocusControl"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.sec.android.app.voicenote"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    .line 511
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.sec.android.app.voicerecorder"

    .line 510
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    goto :goto_74

    .line 514
    :cond_62
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.sec.android.app.dmb"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_80

    const-string v5, "g_dmb_spk_enable=off"

    .line 515
    invoke-static {v5}, Lcom/samsung/android/media/SemAudioSystem;->setPolicyParameters(Ljava/lang/String;)I

    goto :goto_80

    :cond_74
    :goto_74
    const-string v5, "FORCE_NONE for Media"

    .line 512
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-static {}, Lcom/android/server/audio/AudioSystemAdapter;->getDefaultAdapter()Lcom/android/server/audio/AudioSystemAdapter;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lcom/android/server/audio/AudioSystemAdapter;->setForceUse(II)I

    .line 519
    :cond_80
    :goto_80
    sget-object v5, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "focus requester:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " in uid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " pack:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " died"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 524
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 526
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 528
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    goto/16 :goto_21

    :cond_cb
    if-eqz v0, :cond_d0

    .line 534
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->notifyTopOfAudioFocusStack()V

    :cond_d0
    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZI)I
    .registers 34

    move-object/from16 v0, p0

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    move-object/from16 v12, p6

    move/from16 v10, p8

    move/from16 v11, p10

    .line 1080
    new-instance v1, Landroid/media/MediaMetrics$Item;

    const-string v2, "audio.focus"

    invoke-direct {v1, v2}, Landroid/media/MediaMetrics$Item;-><init>(Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/MediaMetrics$Item;->setUid(I)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CALLING_PACKAGE:Landroid/media/MediaMetrics$Key;

    .line 1082
    invoke-virtual {v1, v2, v12}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->CLIENT_NAME:Landroid/media/MediaMetrics$Key;

    .line 1083
    invoke-virtual {v1, v2, v15}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->EVENT:Landroid/media/MediaMetrics$Key;

    const-string/jumbo v3, "requestAudioFocus"

    .line 1084
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->FLAGS:Landroid/media/MediaMetrics$Key;

    .line 1085
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    sget-object v2, Landroid/media/MediaMetrics$Property;->FOCUS_CHANGE_HINT:Landroid/media/MediaMetrics$Key;

    .line 1087
    invoke-static/range {p2 .. p2}, Landroid/media/AudioManager;->audioFocusToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1086
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaMetrics$Item;->set(Landroid/media/MediaMetrics$Key;Ljava/lang/Object;)Landroid/media/MediaMetrics$Item;

    move-result-object v1

    .line 1089
    invoke-virtual {v1}, Landroid/media/MediaMetrics$Item;->record()Z

    const/16 v1, 0x8

    if-ne v10, v1, :cond_50

    move/from16 v9, p11

    goto :goto_55

    .line 1095
    :cond_50
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move v9, v2

    .line 1096
    :goto_55
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAudioFocus() from uid/pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->usageToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->contentTypeToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " clientId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " callingPack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " req="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " flags=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sdk="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p9

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    const-string v4, "MediaFocusControl"

    .line 1104
    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioEventLogger$Event;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v3

    .line 1096
    invoke-virtual {v2, v3}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 1106
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    const/4 v7, 0x0

    if-nez v2, :cond_d8

    const-string v0, "MediaFocusControl"

    const-string v1, " AudioFocus DOA client for requestAudioFocus(), aborting."

    .line 1107
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_d8
    if-eq v10, v1, :cond_ee

    .line 1111
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x20

    .line 1113
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v6, 0x0

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_ee

    return v7

    .line 1118
    :cond_ee
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    const/4 v6, 0x1

    if-eqz v1, :cond_111

    const-string v1, "com.android.systemui"

    .line 1119
    invoke-static {v12, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_111

    if-eq v13, v6, :cond_111

    .line 1121
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-static/range {p1 .. p1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->getStreamVolume(I)I

    move-result v1

    if-nez v1, :cond_111

    const-string v0, "MediaFocusControl"

    const-string v1, "Notification volume is 0,  failing requestAudioFocus()"

    .line 1122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 1128
    :cond_111
    sget-object v16, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v16

    .line 1129
    :try_start_114
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    const/16 v5, 0x64

    if-le v1, v5, :cond_127

    const-string v0, "MediaFocusControl"

    const-string v1, "Max AudioFocus stack size reached, failing requestAudioFocus()"

    .line 1130
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    monitor-exit v16

    return v7

    .line 1135
    :cond_127
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    if-eqz v1, :cond_141

    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_139

    const-string v0, "MediaFocusControl"

    const-string/jumbo v1, "requestAudioFocus failed while call"

    .line 1137
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    monitor-exit v16

    return v7

    :cond_139
    const-string v1, "MediaFocusControl"

    const-string/jumbo v2, "requestAudioFocus NOT failed while call - FLAG_DELAY_OK "

    .line 1140
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_141
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1146
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v1, :cond_159

    .line 1147
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->selectFocusList(I)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    .line 1150
    :cond_159
    iget-boolean v1, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    if-nez v1, :cond_15f

    move v1, v6

    goto :goto_160

    :cond_15f
    move v1, v7

    :goto_160
    const-string v2, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1151
    invoke-virtual {v2, v15}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16a

    move v2, v6

    goto :goto_16b

    :cond_16a
    move v2, v7

    :goto_16b
    and-int v17, v1, v2

    if-eqz v17, :cond_171

    .line 1152
    iput-boolean v6, v0, Lcom/android/server/audio/MediaFocusControl;->mRingOrCallActive:Z

    .line 1155
    :cond_171
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    const/4 v4, 0x0

    if-eqz v1, :cond_196

    .line 1157
    new-instance v18, Landroid/media/AudioFocusInfo;

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    move v3, v9

    move-object/from16 v4, p5

    move/from16 v20, v5

    move-object/from16 v5, p6

    move v13, v6

    move/from16 v6, p2

    move/from16 v7, v19

    move/from16 v8, p8

    move/from16 v21, v9

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;IIII)V

    move-object/from16 v4, v18

    goto :goto_19c

    :cond_196
    move/from16 v20, v5

    move v13, v6

    move/from16 v21, v9

    const/4 v4, 0x0

    .line 1165
    :goto_19c
    invoke-static {}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isSplitSoundEnabled()Z

    move-result v1

    if-eqz v1, :cond_1de

    const-string v1, "com.android.server.telecom"

    .line 1166
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b0

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->isAllowed(Landroid/media/AudioAttributes;)Z

    move-result v1

    if-eqz v1, :cond_1de

    :cond_1b0
    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    .line 1167
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 1168
    new-instance v11, Lcom/android/server/audio/FocusRequester;

    const/4 v8, 0x0

    .line 1169
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    move-object v1, v11

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p8

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    move/from16 v10, v17

    move-object v15, v11

    move-object/from16 v11, p0

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    iput-object v15, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundFR:Lcom/android/server/audio/FocusRequester;

    .line 1171
    iput-object v14, v0, Lcom/android/server/audio/MediaFocusControl;->mSplitSoundCb:Landroid/os/IBinder;

    .line 1173
    :cond_1dc
    monitor-exit v16

    return v13

    :cond_1de
    const-string v1, "com.android.server.telecom"

    .line 1176
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e8

    .line 1177
    iput-object v15, v0, Lcom/android/server/audio/MediaFocusControl;->mCallClientId:Ljava/lang/String;

    .line 1182
    :cond_1e8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_1f9

    and-int/lit8 v1, v10, 0x1

    if-nez v1, :cond_1f5

    .line 1184
    monitor-exit v16

    const/4 v9, 0x0

    return v9

    :cond_1f5
    const/4 v9, 0x0

    move/from16 v18, v13

    goto :goto_1fc

    :cond_1f9
    const/4 v9, 0x0

    move/from16 v18, v9

    .line 1194
    :goto_1fc
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-eqz v1, :cond_20c

    move-object/from16 v5, p4

    .line 1195
    invoke-virtual {v0, v4, v5, v14}, Lcom/android/server/audio/MediaFocusControl;->notifyExtFocusPolicyFocusRequest_syncAf(Landroid/media/AudioFocusInfo;Landroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_20a

    .line 1198
    monitor-exit v16

    return v20

    .line 1201
    :cond_20a
    monitor-exit v16

    return v9

    :cond_20c
    move-object/from16 v5, p4

    .line 1208
    new-instance v8, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    invoke-direct {v8, v0, v14}, Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;-><init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/IBinder;)V
    :try_end_213
    .catchall {:try_start_114 .. :try_end_213} :catchall_46c

    .line 1211
    :try_start_213
    invoke-interface {v14, v8, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_216
    .catch Landroid/os/RemoteException; {:try_start_213 .. :try_end_216} :catch_44e
    .catchall {:try_start_213 .. :try_end_216} :catchall_46c

    .line 1218
    :try_start_216
    invoke-virtual {v0, v15}, Lcom/android/server/audio/MediaFocusControl;->fromPhoneCall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_256

    .line 1219
    invoke-static {}, Lcom/samsung/android/audio/AudioManagerHelper;->isFMPlayerActive()Z

    move-result v1

    if-nez v1, :cond_256

    .line 1220
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_256

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1221
    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v2

    .line 1220
    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v1

    if-eqz v1, :cond_256

    .line 1222
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1}, Lcom/android/server/audio/AudioService;->isWiredHeadsetOrHeadphonePlugged()Z

    move-result v1

    if-eqz v1, :cond_254

    .line 1223
    invoke-static {v13}, Lcom/samsung/android/media/MySpaceManager;->playMySpaceEffect(I)V

    .line 1224
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->addMySpaceEffectDelayLocked()V

    const-string v1, "MediaFocusControl"

    const-string/jumbo v2, "requestAudioFocus: playMySpaceEffect MUSIC FADE OUT"

    .line 1225
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_254
    iput-boolean v13, v0, Lcom/android/server/audio/MediaFocusControl;->mIsMySpaceEffectFocus:Z

    .line 1231
    :cond_256
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_29f

    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1, v15}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29f

    .line 1234
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    .line 1235
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v2

    move v7, v13

    move/from16 v13, p2

    if-ne v2, v13, :cond_294

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getGrantFlags()I

    move-result v2

    if-ne v2, v10, :cond_294

    .line 1238
    invoke-interface {v14, v8, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1239
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    if-ne v13, v7, :cond_292

    .line 1246
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/audio/MediaFocusControl;->resetFocusLossReceived()V

    .line 1250
    :cond_292
    monitor-exit v16

    return v7

    :cond_294
    if-nez v18, :cond_2a2

    .line 1255
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1257
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    goto :goto_2a2

    :cond_29f
    move v7, v13

    move/from16 v13, p2

    .line 1262
    :cond_2a2
    :goto_2a2
    invoke-virtual {v0, v15, v9, v9}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1271
    iget-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    move/from16 v6, v21

    invoke-virtual {v1, v6, v15, v7}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(ILjava/lang/String;Z)Lcom/android/server/audio/FocusRequester;

    move-result-object v1

    if-eqz v1, :cond_2b2

    .line 1274
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->resetFocusLossReceived()V

    :cond_2b2
    if-nez v1, :cond_2d7

    .line 1277
    new-instance v19, Lcom/android/server/audio/FocusRequester;

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p8

    move-object/from16 v5, p4

    move/from16 v21, v6

    move-object/from16 v6, p3

    move v14, v7

    move-object/from16 v7, p5

    move v10, v9

    move-object/from16 v9, p6

    move/from16 v10, v21

    move-object/from16 v11, p0

    move-object v14, v12

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/audio/FocusRequester;-><init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;I)V

    move-object/from16 v1, v19

    goto :goto_2da

    :cond_2d7
    move/from16 v21, v6

    move-object v14, v12

    .line 1280
    :goto_2da
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    const-string v2, "com.google.android.projection.gearhead"

    .line 1288
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1290
    iget-boolean v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    if-eqz v3, :cond_379

    const/4 v3, 0x1

    if-ne v13, v3, :cond_379

    .line 1291
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/audio/MediaFocusControl;->isRemoteMicState(Landroid/media/AudioAttributes;)Z

    move-result v3

    if-nez v3, :cond_379

    if-eqz v17, :cond_31a

    .line 1293
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_379

    .line 1294
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_308
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_379

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    move/from16 v5, p10

    .line 1295
    invoke-virtual {v4, v13, v1, v5}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    goto :goto_308

    .line 1300
    :cond_31a
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35b

    .line 1301
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_328
    :goto_328
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 1302
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-ne v5, v6, :cond_340

    const/4 v7, 0x0

    goto :goto_35c

    :cond_340
    const/4 v5, -0x1

    if-eqz v2, :cond_349

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1311
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    goto :goto_328

    :cond_349
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "com.google.android.projection.gearhead"

    .line 1312
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_328

    .line 1314
    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    goto :goto_328

    :cond_35b
    const/4 v7, 0x1

    :goto_35c
    if-eqz v7, :cond_36c

    .line 1320
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1322
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getDevice()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/server/audio/MultiFocusStack;->pushFocusRequester(ILcom/android/server/audio/FocusRequester;)V

    :cond_36c
    const/4 v2, 0x1

    .line 1325
    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 1326
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1328
    monitor-exit v16

    return v2

    :cond_379
    move/from16 v5, p10

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1333
    iget v3, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    move/from16 v4, v21

    if-ne v3, v4, :cond_3ec

    const-string v2, "MediaFocusControl"

    .line 1334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignore AudioFocus for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    if-eqz v2, :cond_3af

    .line 1336
    invoke-virtual {v2, v15}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a8

    .line 1337
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, v13, v1, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    .line 1339
    :cond_3a8
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 1340
    iput-object v6, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1342
    :cond_3af
    iput-object v1, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 1344
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_3df

    const-string v2, "com.google.android.projection.gearhead"

    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    .line 1345
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3df

    const-string v2, "MediaFocusControl"

    const-string v3, "Loss to Android Auto"

    .line 1347
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, v13, v1, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    :cond_3df
    const/4 v2, 0x1

    .line 1351
    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 1352
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1353
    monitor-exit v16

    return v2

    :cond_3ec
    if-eqz v17, :cond_3f7

    .line 1354
    iget-object v3, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    if-eqz v3, :cond_3f7

    const/4 v2, 0x1

    .line 1356
    invoke-virtual {v3, v13, v1, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    goto :goto_40f

    :cond_3f7
    if-eqz v2, :cond_40f

    .line 1357
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    if-eqz v2, :cond_40f

    .line 1358
    invoke-virtual {v2, v15}, Lcom/android/server/audio/FocusRequester;->hasSameClient(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_40f

    .line 1362
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v2, v13, v1, v7}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    const-string v2, "MediaFocusControl"

    const-string v3, "Loss from Android Auto"

    .line 1363
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40f
    :goto_40f
    if-eqz v18, :cond_420

    .line 1371
    invoke-virtual {v0, v1}, Lcom/android/server/audio/MediaFocusControl;->pushBelowLockedFocusOwnersAndPropagate(Lcom/android/server/audio/FocusRequester;)I

    move-result v2

    if-eqz v2, :cond_41e

    .line 1373
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 1375
    :cond_41e
    monitor-exit v16

    return v2

    .line 1378
    :cond_420
    invoke-virtual {v0, v13, v1, v5}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    const-string v2, "com.android.server.telecom"

    .line 1381
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_432

    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_435

    .line 1383
    :cond_432
    invoke-virtual {v0, v13}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGainToAll(I)V

    .line 1388
    :cond_435
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 1389
    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->handleFocusGainFromRequest(I)V

    .line 1391
    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    and-int/lit8 v1, v17, 0x1

    if-eqz v1, :cond_44c

    .line 1395
    invoke-virtual {v0, v2}, Lcom/android/server/audio/MediaFocusControl;->runAudioCheckerForRingOrCallAsync(Z)V

    .line 1397
    :cond_44c
    monitor-exit v16

    return v2

    :catch_44e
    move v7, v9

    const-string v0, "MediaFocusControl"

    .line 1214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " binder death"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    monitor-exit v16

    return v7

    :catchall_46c
    move-exception v0

    .line 1397
    monitor-exit v16
    :try_end_46e
    .catchall {:try_start_216 .. :try_end_46e} :catchall_46c

    throw v0
.end method

.method public resetFocusLossReceived()V
    .registers 2

    .line 1872
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1873
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->canReassignAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1874
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0}, Lcom/android/server/audio/FocusRequester;->resetFocusLossReceived()V

    :cond_19
    return-void
.end method

.method public restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V
    .registers 3

    .line 187
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {v0, p1}, Lcom/android/server/audio/PlayerFocusEnforcer;->restoreVShapedPlayers(Lcom/android/server/audio/FocusRequester;)V

    .line 190
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    .line 191
    invoke-virtual {p1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;-><init>(I)V

    const/4 p1, 0x2

    .line 190
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final runAudioCheckerForRingOrCallAsync(Z)V
    .registers 3

    .line 1566
    new-instance v0, Lcom/android/server/audio/MediaFocusControl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/audio/MediaFocusControl$2;-><init>(Lcom/android/server/audio/MediaFocusControl;Z)V

    .line 1585
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final selectFocusList(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    .line 1896
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result p1

    .line 1899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectFocusStack, uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 1901
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    .line 1899
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3f

    .line 1903
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne p1, v0, :cond_40

    :cond_3f
    const/4 p1, 0x0

    .line 1908
    :cond_40
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getFocusList(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final selectFocusStack(I)Ljava/util/Stack;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Stack<",
            "Lcom/android/server/audio/FocusRequester;",
            ">;"
        }
    .end annotation

    .line 1880
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result p1

    .line 1883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "selectFocusStack, uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appDevice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 1885
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    .line 1883
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3f

    .line 1887
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne p1, v0, :cond_40

    :cond_3f
    const/4 p1, 0x0

    .line 1892
    :cond_40
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {p0, p1}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object p0

    return-object p0
.end method

.method public sendFocusLoss(Landroid/media/AudioFocusInfo;)Z
    .registers 9

    .line 303
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/FocusRequester;

    .line 306
    invoke-virtual {v2}, Lcom/android/server/audio/FocusRequester;->getClientId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 p1, -0x1

    .line 307
    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    move-object v4, v2

    :cond_2a
    if-eqz v4, :cond_37

    .line 314
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {p0, v4}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 315
    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->release()V

    const/4 p0, 0x1

    .line 316
    monitor-exit v0

    return p0

    .line 318
    :cond_37
    monitor-exit v0

    return v3

    :catchall_39
    move-exception p0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw p0
.end method

.method public setDevice(I)V
    .registers 10

    if-nez p1, :cond_b

    const-string p0, "MediaFocusControl"

    const-string/jumbo p1, "incorrect parameter"

    .line 1988
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1991
    :cond_b
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    const v1, 0x400400d

    and-int/2addr v1, p1

    const/4 v2, 0x2

    if-eqz v1, :cond_35

    :try_start_15
    const-string v1, "MediaFocusControl"

    .line 2000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "force change device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    goto :goto_4f

    .line 2002
    :cond_35
    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_SCO_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    sget-object v1, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    :cond_4d
    const/16 p1, 0x80

    .line 2006
    :cond_4f
    :goto_4f
    iget v1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne v1, p1, :cond_5d

    const-string p0, "MediaFocusControl"

    const-string/jumbo p1, "setDevice, device doesn\'t change"

    .line 2010
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    monitor-exit v0

    return-void

    :cond_5d
    const-string v3, "MediaFocusControl"

    .line 2014
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDevice, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    const-string v3, "MediaFocusControl"

    .line 2019
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "move from default to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v3, v1}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v3

    .line 2022
    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2023
    :cond_a8
    :goto_a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 2024
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/audio/FocusRequester;

    .line 2026
    invoke-virtual {v6}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v7

    .line 2027
    invoke-virtual {v6, v7}, Lcom/android/server/audio/FocusRequester;->setDevice(I)V

    .line 2029
    invoke-virtual {v6}, Lcom/android/server/audio/FocusRequester;->getDevice()I

    move-result v7

    if-ne v7, v1, :cond_a8

    .line 2030
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2031
    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a8

    :cond_cc
    const-string v1, "MediaFocusControl"

    .line 2036
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "move from "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " to default"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/MultiFocusStack;->getFocusStack(I)Ljava/util/Stack;

    move-result-object v1

    .line 2041
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10c

    .line 2042
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v4}, Lcom/android/server/audio/FocusRequester;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v4

    :cond_10c
    const/4 v3, 0x0

    const/4 v5, 0x1

    if-eqz v4, :cond_119

    .line 2048
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/FocusRequester;

    goto :goto_122

    .line 2050
    :cond_119
    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_122

    .line 2051
    invoke-virtual {p0, v5, v3, v5}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 2055
    :cond_122
    :goto_122
    invoke-virtual {v1}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2056
    :goto_126
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13b

    .line 2057
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    .line 2058
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 2059
    iget-object v6, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v6, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_126

    :cond_13b
    if-eqz v3, :cond_14b

    .line 2063
    invoke-virtual {v3}, Lcom/android/server/audio/FocusRequester;->getGainRequest()I

    move-result v1

    if-eq v1, v2, :cond_146

    .line 2065
    invoke-virtual {p0, v1, v3, v5}, Lcom/android/server/audio/MediaFocusControl;->propagateFocusLossFromGain_syncAf(ILcom/android/server/audio/FocusRequester;Z)V

    .line 2067
    :cond_146
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2070
    :cond_14b
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    .line 2071
    monitor-exit v0

    return-void

    :catchall_14f
    move-exception p0

    monitor-exit v0
    :try_end_151
    .catchall {:try_start_15 .. :try_end_151} :catchall_14f

    throw p0
.end method

.method public setDuckingInExtPolicyAvailable(Z)V
    .registers 2

    xor-int/lit8 p1, p1, 0x1

    .line 721
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mNotifyFocusOwnerOnDuck:Z

    return-void
.end method

.method public setFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 783
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_c

    .line 785
    :try_start_8
    iget-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 787
    :cond_c
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 788
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;I)V
    .registers 8

    .line 928
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 929
    :try_start_3
    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getGen()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/audio/MediaFocusControl;->mExtFocusChangeCounter:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_f

    .line 930
    monitor-exit v0

    return-void

    .line 932
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_31

    if-nez p2, :cond_1f

    .line 935
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    goto :goto_2b

    .line 937
    :cond_1f
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusOwnersForFocusPolicy:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/media/AudioFocusInfo;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    :goto_2b
    if-eqz p0, :cond_30

    .line 940
    invoke-virtual {p0, p2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusResultFromExtPolicy(I)V

    :cond_30
    return-void

    :catchall_31
    move-exception p0

    .line 932
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method

.method public setIgnoreAudioFocus(IZ)V
    .registers 8

    .line 2108
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2109
    :try_start_3
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    const/4 v2, -0x1

    if-eqz v1, :cond_1e

    .line 2110
    invoke-virtual {v1, p1}, Lcom/android/server/audio/FocusRequester;->hasSameUid(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    if-nez p2, :cond_17

    .line 2111
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/audio/FocusRequester;->handleFocusLoss(ILcom/android/server/audio/FocusRequester;Z)V

    .line 2113
    :cond_17
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    .line 2114
    iput-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    :cond_1e
    if-nez p2, :cond_24

    .line 2118
    iput v2, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 2119
    monitor-exit v0

    return-void

    .line 2121
    :cond_24
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredUid:I

    .line 2125
    iget-object p2, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    const/4 v1, 0x1

    .line 2126
    invoke-virtual {p2, p1, v1}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    move-result-object p1

    .line 2127
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_35

    .line 2128
    monitor-exit v0

    return-void

    .line 2130
    :cond_35
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mIgnoredFocus:Lcom/android/server/audio/FocusRequester;

    .line 2131
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public unmutePlayersForCall()V
    .registers 1

    .line 201
    iget-object p0, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusEnforcer:Lcom/android/server/audio/PlayerFocusEnforcer;

    invoke-interface {p0}, Lcom/android/server/audio/PlayerFocusEnforcer;->unmutePlayersForCall()V

    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .registers 5

    .line 1560
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1561
    :try_start_5
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/audio/MediaFocusControl;->removeFocusStackEntry(Ljava/lang/String;ZZ)V

    .line 1562
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public unsetFocusPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 795
    :cond_3
    sget-object v0, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_6
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    if-ne v1, p1, :cond_14

    if-eqz p2, :cond_11

    .line 799
    iget-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mPreviousFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    goto :goto_14

    :cond_11
    const/4 p1, 0x0

    .line 801
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl;->mFocusPolicy:Landroid/media/audiopolicy/IAudioPolicyCallback;

    .line 804
    :cond_14
    :goto_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public updateFocusRequester(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1933
    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/MediaFocusControl;->updateFocusRequester(IZ)V

    return-void
.end method

.method public updateFocusRequester(IZ)V
    .registers 8

    const-string v0, "MediaFocusControl"

    .line 1937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFocusRequester, uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    invoke-virtual {p0, p1}, Lcom/android/server/audio/MediaFocusControl;->getAppDevice(I)I

    move-result v0

    .line 1940
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl;->mAudioService:Lcom/android/server/audio/AudioService;

    invoke-virtual {v1, p1}, Lcom/android/server/audio/AudioService;->isPlaybackActiveForUid(I)Z

    move-result v1

    .line 1942
    sget-object v2, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1943
    :try_start_24
    iget-object v3, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/audio/MultiFocusStack;->getFocusRequester(IZ)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v3, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/audio/MediaFocusControl;IZZ)V

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 1983
    monitor-exit v2

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_24 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public updateMultiAudioFocus(Z)V
    .registers 4

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateMultiAudioFocus( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFocusControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl;->mMultiAudioFocusEnabled:Z

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/audio/MediaFocusControl;->handleUpdateMultiAudioFocus()V

    return-void
.end method
