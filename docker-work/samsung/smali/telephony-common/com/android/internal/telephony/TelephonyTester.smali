.class public Lcom/android/internal/telephony/TelephonyTester;
.super Ljava/lang/Object;
.source "TelephonyTester.java"


# static fields
.field private static blacklist mImsExternalCallStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mServiceStateTestIntent:Landroid/content/Intent;


# direct methods
.method public static synthetic blacklist $r8$lambda$omabvycVJu1K2M3fA2P2YbUF1h4(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->lambda$testChangeNumber$0(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmServiceStateTestIntent(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleHandoverFailedIntent(Lcom/android/internal/telephony/TelephonyTester;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->handleHandoverFailedIntent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSuppServiceFailedIntent(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleSuppServiceFailedIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTestConferenceEventPackage(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyTester;->handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleTestDialogEventPackageIntent(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->handleTestDialogEventPackageIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendTestSuppServiceNotification(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyTester;->sendTestSuppServiceNotification(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 0

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 9

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Lcom/android/internal/telephony/TelephonyTester$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyTester$1;-><init>(Lcom/android/internal/telephony/TelephonyTester;)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 227
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_b6

    .line 228
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register for intent action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_91

    const-string v0, "register for intent action=com.android.internal.telephony.TestConferenceEventPackage"

    .line 237
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestConferenceEventPackage"

    .line 238
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestDialogEventPackage"

    .line 239
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestSuppSrvcFail"

    .line 240
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestHandoverFail"

    .line 241
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestSuppSrvcNotification"

    .line 242
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestImsECall"

    .line 243
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestReceiveDtmf"

    .line 244
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    :cond_91
    const-string v0, "com.android.internal.telephony.TestServiceState"

    .line 248
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "register for intent action=com.android.internal.telephony.TestServiceState"

    .line 249
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    const-string v0, "com.android.internal.telephony.TestChangeNumber"

    .line 251
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "register for intent action=com.android.internal.telephony.TestChangeNumber"

    .line 252
    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_b6
    return-void
.end method

.method private blacklist getImsCall()Lcom/android/ims/ImsCall;
    .registers 2

    .line 516
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 521
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    if-nez p0, :cond_f

    return-object v0

    .line 526
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    :cond_16
    return-object p0
.end method

.method private blacklist handleHandoverFailedIntent()V
    .registers 5

    .line 279
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 284
    :cond_7
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p0

    const/16 v1, 0xd

    const/16 v2, 0x12

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionHandoverFailed(Landroid/telephony/ims/ImsCallSession;IILandroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method private blacklist handleSuppServiceFailedIntent(Landroid/content/Intent;)V
    .registers 4

    .line 269
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez p0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    const-string v1, "failureCode"

    .line 273
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 274
    invoke-static {}, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->values()[Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;)V

    return-void
.end method

.method private blacklist handleTestConferenceEventPackage(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .line 299
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez p0, :cond_7

    return-void

    .line 304
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 306
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 309
    :try_start_16
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_1b} :catch_3f

    .line 315
    new-instance p2, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;-><init>(Ljava/io/InputStream;)V

    .line 316
    invoke-virtual {p2}, Lcom/android/internal/telephony/test/TestConferenceEventPackageParser;->parse()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p1

    if-nez p1, :cond_27

    return-void

    :cond_27
    if-eqz p3, :cond_2d

    .line 322
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->injectTestConferenceState(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_3e

    .line 324
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object p0

    if-nez p0, :cond_34

    return-void

    .line 329
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_3b

    return-void

    .line 334
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall;->conferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    :goto_3e
    return-void

    .line 311
    :catch_3f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Test conference event package file not found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist handleTestDialogEventPackageIntent(Landroid/content/Intent;)V
    .registers 10

    .line 344
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez p0, :cond_7

    return-void

    .line 348
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getExternalCallTracker()Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;

    move-result-object p0

    if-nez p0, :cond_e

    return-void

    :cond_e
    const-string v0, "startPackage"

    .line 353
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 354
    sget-object p0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_60

    :cond_1c
    const-string v0, "sendPackage"

    .line 355
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 356
    sget-object p1, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsExternalCallTracker;->refreshExternalCallState(Ljava/util/List;)V

    .line 357
    sget-object p0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_60

    :cond_2f
    const-string p0, "dialogId"

    .line 358
    invoke-virtual {p1, p0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 359
    new-instance v0, Landroid/telephony/ims/ImsExternalCallState;

    const/4 v1, 0x0

    .line 360
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string p0, "number"

    .line 361
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string p0, "canPull"

    const/4 v1, 0x1

    .line 362
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string p0, "state"

    .line 363
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/ims/ImsExternalCallState;-><init>(ILandroid/net/Uri;ZIIZ)V

    .line 368
    sget-object p0, Lcom/android/internal/telephony/TelephonyTester;->mImsExternalCallStates:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_60
    :goto_60
    return-void
.end method

.method private static synthetic blacklist lambda$testChangeNumber$0(Ljava/lang/String;Lcom/android/internal/telephony/Connection;)V
    .registers 3

    const/4 v0, 0x1

    .line 558
    invoke-virtual {p1, p0, v0}, Lcom/android/internal/telephony/Connection;->setAddress(Ljava/lang/String;I)V

    .line 559
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Connection;->setDialString(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "TelephonyTester"

    .line 265
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendTestSuppServiceNotification(Landroid/content/Intent;)V
    .registers 5

    const-string v0, "code"

    .line 373
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const-string v1, "type"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, -0x1

    .line 374
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 375
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 376
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez p0, :cond_20

    return-void

    .line 380
    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Test supp service notification:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 381
    new-instance v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;-><init>()V

    .line 382
    iput v0, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 383
    iput p1, v1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 384
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifySuppSvcNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    :cond_40
    return-void
.end method


# virtual methods
.method blacklist overrideServiceState(Landroid/telephony/ServiceState;)V
    .registers 10

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_279

    if-nez p1, :cond_8

    goto/16 :goto_279

    :cond_8
    const-string v1, "action"

    .line 390
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 391
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string p0, "Service state override reset"

    .line 392
    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    return-void

    .line 396
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "voice_reg_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_50

    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override voice service state with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 401
    :cond_50
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "data_reg_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override data service state with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 406
    :cond_7b
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "operator"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_c3

    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 408
    array-length v1, v0

    const-string v5, ""

    if-lez v1, :cond_9b

    aget-object v1, v0, v3

    goto :goto_9c

    :cond_9b
    move-object v1, v5

    .line 409
    :goto_9c
    array-length v6, v0

    if-le v6, v2, :cond_a2

    aget-object v6, v0, v2

    goto :goto_a3

    :cond_a2
    move-object v6, v1

    .line 410
    :goto_a3
    array-length v7, v0

    if-le v7, v4, :cond_a8

    aget-object v5, v0, v4

    .line 411
    :cond_a8
    invoke-virtual {p1, v1, v6, v5}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override operator with "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 414
    :cond_c3
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "operator_raw"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaLongRaw(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setOperatorAlphaShortRaw(Ljava/lang/String;)V

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Override operator_raw with "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 420
    :cond_ed
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "nr_frequency_range"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setNrFrequencyRange(I)V

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override NR frequency range with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 425
    :cond_118
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "nr_state"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15d

    .line 426
    invoke-virtual {p1, v4, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_139

    .line 429
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 430
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 431
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 434
    :cond_139
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo;->setNrState(I)V

    .line 436
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override NR state with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 439
    :cond_15d
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "voice_rat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 440
    invoke-virtual {p1, v2, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_17e

    .line 443
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 444
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 445
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 446
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 448
    :cond_17e
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 449
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 448
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 451
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override voice rat with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 454
    :cond_1a6
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "data_rat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1ef

    .line 455
    invoke-virtual {p1, v4, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_1c7

    .line 458
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 459
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 460
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 463
    :cond_1c7
    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    .line 464
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 463
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 466
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override data rat with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 469
    :cond_1ef
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "voice_roaming_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_234

    .line 470
    invoke-virtual {p1, v2, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_210

    .line 473
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 474
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 475
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 476
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 478
    :cond_210
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 480
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override voice roaming type with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    .line 483
    :cond_234
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    const-string v1, "data_roaming_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_279

    .line 484
    invoke-virtual {p1, v4, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_255

    .line 487
    new-instance v0, Landroid/telephony/NetworkRegistrationInfo$Builder;

    invoke-direct {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;-><init>()V

    .line 488
    invoke-virtual {v0, v4}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setDomain(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0, v2}, Landroid/telephony/NetworkRegistrationInfo$Builder;->setTransportType(I)Landroid/telephony/NetworkRegistrationInfo$Builder;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo$Builder;->build()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    .line 492
    :cond_255
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mServiceStateTestIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/NetworkRegistrationInfo;->setRoamingType(I)V

    .line 494
    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    .line 495
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Override data roaming type with "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyTester;->log(Ljava/lang/String;)V

    :cond_279
    :goto_279
    return-void
.end method

.method blacklist testChangeNumber(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "number"

    .line 548
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 552
    :cond_9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 555
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    .line 556
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/TelephonyTester$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/TelephonyTester$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 563
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    instance-of v0, p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v0, :cond_36

    .line 564
    check-cast p1, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhoneStateChanged()V

    .line 565
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPreciseCallStateChanged()V

    goto :goto_46

    .line 566
    :cond_36
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v0, :cond_46

    .line 567
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPhoneStateChanged()V

    .line 568
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    :cond_46
    :goto_46
    return-void
.end method

.method blacklist testImsECall()V
    .registers 5

    .line 501
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 504
    :cond_7
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_16

    .line 507
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_16
    const/4 v2, 0x1

    const-string v3, "e_call"

    .line 509
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 510
    iput-object v1, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    .line 511
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionUpdated(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method blacklist testImsReceiveDtmf(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "digit"

    .line 534
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    return-void

    .line 537
    :cond_9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 539
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyTester;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object p0

    if-nez p0, :cond_19

    return-void

    .line 544
    :cond_19
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getImsCallSessionListenerProxy()Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsCall$ImsCallSessionListenerProxy;->callSessionDtmfReceived(C)V

    return-void
.end method
