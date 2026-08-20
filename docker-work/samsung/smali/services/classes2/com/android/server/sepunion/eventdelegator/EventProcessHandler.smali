.class public Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
.super Landroid/os/Handler;
.source "EventProcessHandler.java"


# static fields
.field public static final MSG_OBSERVE_INTENT_ACTION:I = 0x2

.field public static final MSG_OBSERVE_URI:I = 0x1

.field public static final MSG_REGISTER_ACTIVITY_STATE_MONITOR:I = 0x5

.field public static final MSG_REGISTER_CALL_STATE_MONITOR:I = 0x3

.field public static final MSG_REGISTER_PACKAGE_STATE_MONITOR:I = 0x7

.field public static final MSG_RESUME_COMPONENT:I = 0x9

.field public static final MSG_UNIDENTIFIED:I = -0x1

.field public static final MSG_UNREGISTER_ACTIVITY_STATE_MONITOR:I = 0x6

.field public static final MSG_UNREGISTER_CALL_STATE_MONITOR:I = 0x4

.field public static final MSG_UNREGISTER_PACKAGE_STATE_MONITOR:I = 0x8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field public final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

.field public final mUserBroadcastReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 52
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoManagerService;Landroid/os/HandlerThread;)V
    .registers 4

    .line 61
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 57
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mUserBroadcastReceivers:Ljava/util/HashMap;

    .line 292
    new-instance p3, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;

    invoke-direct {p3, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V

    iput-object p3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 311
    new-instance p3, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;

    invoke-direct {p3, p0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;-><init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V

    iput-object p3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 62
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 68
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    iget-object v0, v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 69
    :try_start_5
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 70
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 72
    sget-object p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string p1, "handleMessage(): msg.getData() returns null!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    monitor-exit v0

    return-void

    .line 76
    :cond_1a
    sget-object v3, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EventProcessHandler:handleMessage() msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    packed-switch v4, :pswitch_data_2fe

    goto/16 :goto_2e2

    :pswitch_3a
    const-string p1, "component"

    .line 174
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    if-eqz p1, :cond_2f8

    const-string v4, "is_resumed"

    .line 176
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "monitor_activity_state;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_RESUME_COMPONENT: key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 181
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportComponentStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/ComponentName;Z)V

    goto/16 :goto_2f8

    .line 228
    :pswitch_8e
    iget-object p1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 229
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_98
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "monitor_package_state"

    .line 230
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    .line 231
    sget-object p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string p1, "PackageMonitor is still in use! DO NOT UNREGISTER!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v0

    return-void

    .line 236
    :cond_b5
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_ba
    .catchall {:try_start_5 .. :try_end_ba} :catchall_2fa

    goto/16 :goto_2f8

    .line 220
    :pswitch_bc
    :try_start_bc
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPackagesMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p1, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_c7} :catch_c9
    .catchall {:try_start_bc .. :try_end_c7} :catchall_2fa

    goto/16 :goto_2f8

    :catch_c9
    move-exception p0

    .line 222
    :try_start_ca
    sget-object p1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on registering package monitor! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f8

    .line 193
    :pswitch_e6
    iget-object p1, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 194
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "monitor_activity_state"

    .line 195
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 196
    sget-object p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    const-string p1, "UsageStatWatcher is still needed! DO NOT UNREGISTER!"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit v0

    return-void

    .line 200
    :cond_10d
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "usagestats"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManager;

    goto/16 :goto_2f8

    .line 187
    :pswitch_11a
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "usagestats"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManager;

    goto/16 :goto_2f8

    .line 213
    :pswitch_127
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 214
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {p1, p0, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_2f8

    .line 207
    :pswitch_139
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 208
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {p1, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_2f8

    :pswitch_14d
    const-string p1, "intent_action"

    .line 112
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    .line 113
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, "is_register"

    .line 114
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "for_all_users"

    .line 115
    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_26d

    if-gez v1, :cond_16c

    goto/16 :goto_26d

    .line 120
    :cond_16c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_179

    const-string p0, "handleMessage(): bundle.getString(intent_action) returns null!"

    .line 121
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v0

    return-void

    .line 125
    :cond_179
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mUserBroadcastReceivers:Ljava/util/HashMap;

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_195

    .line 128
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 129
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mUserBroadcastReceivers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_195
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_1e4

    if-eqz v4, :cond_1c6

    .line 135
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding new UnionBroadcastReceiver for the action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v5, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;-><init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    .line 138
    invoke-virtual {v2, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1e4

    .line 140
    :cond_1c6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(): No receiver registered for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in User "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    monitor-exit v0
    :try_end_1e3
    .catchall {:try_start_ca .. :try_end_1e3} :catchall_2fa

    return-void

    :cond_1e4
    :goto_1e4
    if-eqz v4, :cond_246

    .line 148
    :try_start_1e6
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    .line 149
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 150
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    .line 151
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    .line 152
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    .line 153
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_230

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 154
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21c

    goto :goto_230

    :cond_21c
    const-string v2, "android.intent.action.PROVIDER_CHANGED"

    .line 156
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22a

    const-string p1, "content"

    .line 157
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    goto :goto_236

    :cond_22a
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_236

    :cond_230
    :goto_230
    const-string/jumbo p1, "package"

    .line 155
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 161
    :goto_236
    iget-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v5

    move-object v5, v6

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto/16 :goto_2f8

    .line 164
    :cond_246
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24e
    .catch Ljava/lang/Exception; {:try_start_1e6 .. :try_end_24e} :catch_250
    .catchall {:try_start_1e6 .. :try_end_24e} :catchall_2fa

    goto/16 :goto_2f8

    :catch_250
    move-exception p0

    .line 168
    :try_start_251
    sget-object p1, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while processing MSG_OBSERVE_INTENT_ACTION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f8

    :cond_26d
    :goto_26d
    const-string p0, "handleMessage(): Do not support UserHandle.ALL for observing Intent"

    .line 117
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    monitor-exit v0

    return-void

    :pswitch_274
    const-string/jumbo p1, "uri"

    .line 79
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    const-string v4, "is_register"

    .line 80
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez p1, :cond_28c

    const-string p0, "handleMessage(): bundle.getParcelable(uri) returns null!"

    .line 82
    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    monitor-exit v0

    return-void

    .line 86
    :cond_28c
    iget-object v6, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/database/ContentObserver;

    if-nez v6, :cond_2c0

    const-string v6, "handleMessage(): mContentObservers.get(uri) returns null!"

    .line 88
    invoke-static {v3, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2be

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Creating new UnionContentObserver for the uri:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v6, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;

    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-direct {v6, p0, v3}, Lcom/android/server/sepunion/eventdelegator/UnionContentObserver;-><init>(Landroid/os/Handler;Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V

    .line 93
    iget-object v3, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c0

    .line 95
    :cond_2be
    monitor-exit v0

    return-void

    :cond_2c0
    :goto_2c0
    if-eqz v4, :cond_2d3

    const-string v1, "notify_for_descendants"

    .line 101
    invoke-virtual {v2, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 102
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_2f8

    .line 105
    :cond_2d3
    iget-object p0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    iget-object p0, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mContentObservers:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f8

    .line 241
    :goto_2e2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.what has invalid value. msg.what = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2f8
    :goto_2f8
    monitor-exit v0

    return-void

    :catchall_2fa
    move-exception p0

    monitor-exit v0
    :try_end_2fc
    .catchall {:try_start_251 .. :try_end_2fc} :catchall_2fa

    throw p0

    nop

    :pswitch_data_2fe
    .packed-switch 0x1
        :pswitch_274
        :pswitch_14d
        :pswitch_139
        :pswitch_127
        :pswitch_11a
        :pswitch_e6
        :pswitch_bc
        :pswitch_8e
        :pswitch_3a
    .end packed-switch
.end method

.method public notifyToHandler(ILandroid/os/Bundle;)V
    .registers 3

    .line 248
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 249
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 250
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
