.class public Lcom/android/server/emergency/EmergencyAffordanceService;
.super Lcom/android/server/SystemService;
.source "EmergencyAffordanceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;,
        Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final EMERGENCY_AFFORDANCE_OVERRIDE_ISO:Ljava/lang/String; = "emergency_affordance_override_iso"

.field public static final INITIALIZE_STATE:I = 0x1

.field public static final NETWORK_COUNTRY_CHANGED:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "emergency_affordance"

.field public static final SUBSCRIPTION_CHANGED:I = 0x3

.field public static final TAG:Ljava/lang/String; = "EmergencyAffordanceService"

.field public static final UPDATE_AIRPLANE_MODE_STATUS:I = 0x4


# instance fields
.field public mAirplaneModeEnabled:Z

.field public mAnyNetworkNeedsEmergencyAffordance:Z

.field public mAnySimNeedsEmergencyAffordance:Z

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mEmergencyAffordanceNeeded:Z

.field public final mEmergencyCallCountryIsos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

.field public mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mVoiceCapable:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/emergency/EmergencyAffordanceService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/emergency/EmergencyAffordanceService;)Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mdumpInternal(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/emergency/EmergencyAffordanceService;->dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleInitializeState(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleInitializeState()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNetworkCountryChanged(Lcom/android/server/emergency/EmergencyAffordanceService;Ljava/lang/String;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleNetworkCountryChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateAirplaneModeStatus(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateAirplaneModeStatus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUpdateSimSubscriptionInfo(Lcom/android/server/emergency/EmergencyAffordanceService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 83
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$1;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$1;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$2;

    invoke-direct {v0, p0}, Lcom/android/server/emergency/EmergencyAffordanceService$2;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 108
    iput-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700d0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    .line 112
    array-length v0, p1

    const/4 v1, 0x0

    :goto_28
    if-ge v1, v0, :cond_34

    aget-object v2, p1, v1

    .line 113
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 116
    :cond_34
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_54

    .line 117
    iget-object p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "emergency_affordance_override_iso"

    .line 117
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 121
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_54
    return-void
.end method


# virtual methods
.method public final dumpInternal(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    const-string v0, "EmergencyAffordanceService (dumpsys emergency_affordance) state:\n"

    .line 287
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEmergencyAffordanceNeeded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVoiceCapable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAnySimNeedsEmergencyAffordance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAnyNetworkNeedsEmergencyAffordance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEmergencyCallCountryIsos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    const-string v1, ","

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final handleInitializeState()V
    .registers 1

    .line 173
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateAirplaneModeStatus()V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleUpdateSimSubscriptionInfo()V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    .line 176
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method

.method public final handleNetworkCountryChanged(Ljava/lang/String;I)V
    .registers 3

    .line 234
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    if-eqz p1, :cond_12

    const-string p0, "EmergencyAffordanceService"

    const-string p1, "Ignore empty countryIso report when APM is on."

    .line 235
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateNetworkCountry()V

    .line 241
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method

.method public final handleThirdPartyBootPhase()V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 182
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-nez v0, :cond_18

    .line 184
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void

    .line 188
    :cond_18
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EmergencyAffordanceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v1, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    .line 192
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 193
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.NETWORK_COUNTRY_CHANGED"

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 199
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mHandler:Lcom/android/server/emergency/EmergencyAffordanceService$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final handleUpdateAirplaneModeStatus()V
    .registers 4

    .line 203
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    move v2, v1

    :cond_11
    iput-boolean v2, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAirplaneModeEnabled:Z

    return-void
.end method

.method public final handleUpdateSimSubscriptionInfo()V
    .registers 4

    .line 209
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 210
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 218
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/emergency/EmergencyAffordanceService;->isoRequiresEmergencyAffordance(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v1, 0x1

    .line 224
    :cond_25
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    .line 225
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method

.method public final isoRequiresEmergencyAffordance(Ljava/lang/String;)Z
    .registers 2

    .line 263
    iget-object p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyCallCountryIsos:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_7

    .line 137
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->handleThirdPartyBootPhase()V

    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 130
    new-instance v0, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/emergency/EmergencyAffordanceService$BinderService;-><init>(Lcom/android/server/emergency/EmergencyAffordanceService;Lcom/android/server/emergency/EmergencyAffordanceService$BinderService-IA;)V

    const-string v1, "emergency_affordance"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final updateEmergencyAffordanceNeeded()V
    .registers 3

    .line 274
    iget-boolean v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    .line 276
    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mVoiceCapable:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnySimNeedsEmergencyAffordance:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    if-eqz v1, :cond_10

    :cond_e
    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    if-eq v0, v1, :cond_22

    .line 280
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 282
    iget-boolean p0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mEmergencyAffordanceNeeded:Z

    const-string v1, "emergency_affordance_needed"

    .line 280
    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_22
    return-void
.end method

.method public final updateNetworkCountry()V
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1b

    .line 249
    iget-object v3, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso(I)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-virtual {p0, v3}, Lcom/android/server/emergency/EmergencyAffordanceService;->isoRequiresEmergencyAffordance(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v1, 0x1

    goto :goto_1b

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 257
    :cond_1b
    :goto_1b
    iput-boolean v1, p0, Lcom/android/server/emergency/EmergencyAffordanceService;->mAnyNetworkNeedsEmergencyAffordance:Z

    .line 259
    invoke-virtual {p0}, Lcom/android/server/emergency/EmergencyAffordanceService;->updateEmergencyAffordanceNeeded()V

    return-void
.end method
