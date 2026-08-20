.class public Lcom/android/internal/telephony/CarrierActionAgent;
.super Landroid/os/Handler;
.source "CarrierActionAgent.java"


# static fields
.field public static final blacklist CARRIER_ACTION_REPORT_DEFAULT_NETWORK_STATUS:I = 0x3

.field public static final blacklist CARRIER_ACTION_RESET:I = 0x2

.field public static final blacklist CARRIER_ACTION_SET_METERED_APNS_ENABLED:I = 0x0

.field public static final blacklist CARRIER_ACTION_SET_RADIO_ENABLED:I = 0x1

.field public static final blacklist EVENT_APM_SETTINGS_CHANGED:I = 0x4

.field public static final blacklist EVENT_APN_SETTINGS_CHANGED:I = 0x8

.field public static final blacklist EVENT_DATA_ROAMING_OFF:I = 0x6

.field public static final blacklist EVENT_MOBILE_DATA_SETTINGS_CHANGED:I = 0x5

.field public static final blacklist EVENT_SIM_STATE_CHANGED:I = 0x7

.field private static final blacklist VDBG:Z


# instance fields
.field private blacklist mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

.field private blacklist mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

.field private blacklist mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

.field private blacklist mDefaultNetworkReportRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mMeteredApnEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mMeteredApnEnabledLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mRadioEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

.field private blacklist mRadioEnabledLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mReportDefaultNetworkStatusLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-string v0, "CarrierActionAgent"

    const/4 v1, 0x2

    .line 56
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/CarrierActionAgent;->VDBG:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 102
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 72
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Lcom/android/internal/telephony/LocalLog;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Lcom/android/internal/telephony/LocalLog;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Lcom/android/internal/telephony/LocalLog;

    .line 80
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    .line 81
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    .line 82
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/CarrierActionAgent$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CarrierActionAgent$1;-><init>(Lcom/android/internal/telephony/CarrierActionAgent;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 104
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    new-instance v0, Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    const-string p1, "Creating CarrierActionAgent"

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getCarrierActionEnabled(I)Ljava/lang/Boolean;
    .registers 4

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 254
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    return-object p0

    .line 252
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    return-object p0

    .line 250
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method private blacklist getRegistrantsFromAction(I)Lcom/android/internal/telephony/RegistrantList;
    .registers 4

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0

    .line 238
    :cond_21
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0

    .line 236
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    return-object p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarrierActionAgent"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarrierActionAgent"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public blacklist carrierActionReportDefaultNetworkStatus(Z)V
    .registers 3

    .line 221
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist carrierActionReset()V
    .registers 3

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReportDefaultNetworkStatus(Z)V

    const/4 v0, 0x1

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetMeteredApnsEnabled(Z)V

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionSetRadioEnabled(Z)V

    .line 229
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierSignalAgent()Lcom/android/internal/telephony/CarrierSignalAgent;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.CARRIER_SIGNAL_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/CarrierSignalAgent;->notifyCarrierSignalReceivers(Landroid/content/Intent;)V

    return-void
.end method

.method public blacklist carrierActionSetMeteredApnsEnabled(Z)V
    .registers 3

    .line 214
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist carrierActionSetRadioEnabled(Z)V
    .registers 3

    .line 207
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 311
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string v1, " mCarrierActionOnMeteredApnsEnabled Log:"

    .line 312
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 314
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " mCarrierActionOnRadioEnabled Log:"

    .line 317
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 319
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v1, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, " mCarrierActionReportDefaultNetworkStatus Log:"

    .line 322
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 324
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public blacklist getContentObserver()Landroid/database/ContentObserver;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CarrierActionAgent;->getCarrierActionEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 114
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_17

    return-void

    .line 115
    :cond_17
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_21c

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown carrier action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->loge(Ljava/lang/String;)V

    goto/16 :goto_21b

    :pswitch_39
    const-string p1, "EVENT_APN_SETTINGS_CHANGED"

    .line 194
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    goto/16 :goto_21b

    .line 165
    :pswitch_43
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "LOADED"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v5, "EVENT_SIM_STATE_CHANGED status: "

    if-eqz v0, :cond_b8

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    const-string p1, "mobile_data"

    .line 170
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v5, 0x1

    if-eq v0, v5, :cond_88

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 173
    :cond_88
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 175
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    .line 176
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    .line 175
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 178
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/SettingsObserver;->observe(Landroid/net/Uri;I)V

    .line 180
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_21b

    .line 181
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, p0, v0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;Z)V

    goto/16 :goto_21b

    :cond_b8
    const-string v0, "ABSENT"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    .line 187
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mSettingsObserver:Lcom/android/internal/telephony/SettingsObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/SettingsObserver;->unobserve()V

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_21b

    .line 189
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForDataRoamingOff(Landroid/os/Handler;)V

    goto/16 :goto_21b

    :pswitch_ed
    const-string p1, "EVENT_DATA_ROAMING_OFF"

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    goto/16 :goto_21b

    :pswitch_f7
    const-string p1, "EVENT_MOBILE_DATA_SETTINGS_CHANGED"

    .line 156
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result p1

    if-nez p1, :cond_21b

    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    goto/16 :goto_21b

    :pswitch_109
    const-string p1, "EVENT_APM_SETTINGS_CHANGED"

    .line 149
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_21b

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    goto/16 :goto_21b

    .line 136
    :pswitch_123
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CARRIER_ACTION_REPORT_AT_DEFAULT_NETWORK_STATUS: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mReportDefaultNetworkStatusLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REGISTER_DEFAULT_NETWORK_STATUS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mDefaultNetworkReportRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionReportDefaultNetworkStatus:Ljava/lang/Boolean;

    invoke-direct {v0, v4, p0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_21b

    :pswitch_16d
    const-string p1, "CARRIER_ACTION_RESET"

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierActionAgent;->carrierActionReset()V

    goto/16 :goto_21b

    .line 129
    :pswitch_177
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SET_RADIO_ENABLED: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnabledLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mRadioEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnRadioEnabled:Ljava/lang/Boolean;

    invoke-direct {v0, v4, p0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_21b

    .line 117
    :pswitch_1be
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    .line 118
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SET_METERED_APNS_ENABLED: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->log(Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnabledLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 121
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_20a

    .line 122
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->getOtasp()I

    move-result v1

    .line 124
    :cond_20a
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/Phone;->notifyOtaspChanged(I)V

    .line 125
    iget-object p1, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mMeteredApnEnableRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance v0, Landroid/os/AsyncResult;

    iget-object p0, p0, Lcom/android/internal/telephony/CarrierActionAgent;->mCarrierActionOnMeteredApnEnabled:Ljava/lang/Boolean;

    invoke-direct {v0, v4, p0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_21b
    :goto_21b
    return-void

    :pswitch_data_21c
    .packed-switch 0x0
        :pswitch_1be
        :pswitch_177
        :pswitch_16d
        :pswitch_123
        :pswitch_109
        :pswitch_f7
        :pswitch_ed
        :pswitch_43
        :pswitch_39
    .end packed-switch
.end method

.method public blacklist registerForCarrierAction(ILandroid/os/Handler;ILjava/lang/Object;Z)V
    .registers 7

    .line 269
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->getCarrierActionEnabled(I)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierActionAgent;->getRegistrantsFromAction(I)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    .line 274
    new-instance p1, Lcom/android/internal/telephony/Registrant;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    if-eqz p5, :cond_1d

    .line 277
    new-instance p0, Landroid/os/AsyncResult;

    const/4 p2, 0x0

    invoke-direct {p0, p2, v0, p2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_1d
    return-void

    .line 271
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "invalid carrier action: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist unregisterForCarrierAction(Landroid/os/Handler;I)V
    .registers 4

    .line 286
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/CarrierActionAgent;->getRegistrantsFromAction(I)Lcom/android/internal/telephony/RegistrantList;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void

    .line 288
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid carrier action: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
