.class public Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
.super Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;
.source "PhoneRestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;,
        Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;
    }
.end annotation


# static fields
.field public static final ACCESS_TO_PB_ADD:I = 0x1

.field public static final ACCESS_TO_PB_EDIT:I = 0x3

.field public static final ACTION_RCS_FILE_RECEIVED_SENT:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

.field public static final ACTION_RCS_FILE_THUMBNAIL_RECEIVED:Ljava/lang/String; = "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

.field public static final ACTION_RCS_MSG_FILE_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

.field public static final ACTION_RCS_MSG_FILE_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

.field public static final ACTION_RCS_MSG_FILE_THUMBNAIL_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

.field public static final ACTION_RCS_MSG_RECEIVED:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

.field public static final ACTION_RCS_MSG_SENT:Ljava/lang/String; = "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

.field public static final ACTION_RCS_MSG_TEXT_RECEIVED:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

.field public static final ACTION_RCS_MSG_TEXT_SENT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

.field public static final ACTION_REQUEST_SMS_PATTERN_CHECK:Ljava/lang/String; = "com.samsung.android.knox.intent.action.REQUEST_SMS_PATTERN_CHECK_INTERNAL"

.field public static final ACTION_SIM_PIN_SERVICE:Ljava/lang/String; = "com.sec.enterprise.SimPinCode"

.field public static final EXTRA_FILE_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final EXTRA_MSG_ID:Ljava/lang/String; = "id"

.field public static final EXTRA_MSG_SENT_REQUEST_SUCCESS:Ljava/lang/String; = "response_status"

.field public static final EXTRA_SESSION_DIRECTION:Ljava/lang/String; = "sessionDirection"

.field public static final INCOMING:I = 0x0

.field public static final MAX_PIN_LENGTH:I = 0x8

.field public static final MIN_PIN_LENGTH:I = 0x4

.field public static final MSG_DELIVERY_MMS:I = 0x1

.field public static final MSG_DELIVERY_SMS:I = 0x0

.field public static final MSG_DELIVERY_SMS_MMS:I = 0x2

.field public static final OUTGOING:I = 0x1

.field public static final RCS_PROJ:[Ljava/lang/String;

.field public static final RCS_URI:Landroid/net/Uri;

.field public static final RCS_WHERE:Ljava/lang/String; = "_id=?"

.field public static final SIM_PIN_BIND_TIMER:J = 0x3e8L

.field public static final SIM_SLOT_0:I = 0x0

.field public static final SIM_SLOT_1:I = 0x1

.field public static final SIM_SLOT_ALL:I = -0x1

.field public static final TAG:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field public static final TYPE_MMS:I = 0x1

.field public static final TYPE_SMS:I


# instance fields
.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mContext:Landroid/content/Context;

.field public mDataCheckboxPreviousState:Z

.field public mDataLimitEnabled:Z

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;

.field public volatile mIsPhoneShuttingDown:Z

.field public mKeyguardManager:Landroid/app/KeyguardManager;

.field public final mRcsReceiver:Landroid/content/BroadcastReceiver;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

.field public final mSimLockBroadcast:Landroid/content/BroadcastReceiver;

.field public final mSimPinBind:Ljava/lang/Runnable;

.field public final mSimPinHandler:Landroid/os/Handler;

.field public mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

.field public final mSimPinServiceConn:Landroid/content/ServiceConnection;

.field public final mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

.field public mSubMgr:Landroid/telephony/SubscriptionManager;

.field public final mTelMgr:Landroid/telephony/TelephonyManager;

.field public final subChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSimPinBind(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSimPinHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSimPinServiceConn(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSmsMmsDeliveryHandler(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsPhoneShuttingDown(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSimPinService(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/samsung/android/knox/restriction/ISimPinPolicy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeliveryBlockedMsgs(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deliveryBlockedMsgs(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyRcsChangesAllUser(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySmsPatternCheck(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifySmsPatternCheck()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendRcsBroadcast(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->sendRcsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLockedIccIdsSystemUI(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munlockAllSimCards(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->unlockAllSimCards()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateSystemUIMonitor(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateSystemUIMonitor(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 11

    const-string v0, "content://com.samsung.rcs.im/message"

    .line 203
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_URI:Landroid/net/Uri;

    const-string/jumbo v1, "is_filetransfer"

    const-string/jumbo v2, "remote_uri"

    const-string/jumbo v3, "sender_alias"

    const-string v4, "content_type"

    const-string v5, "body"

    const-string/jumbo v6, "inserted_timestamp"

    const-string/jumbo v7, "sent_timestamp"

    const-string v8, "direction"

    const-string v9, "file_path"

    const-string/jumbo v10, "thumbnail_path"

    .line 204
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 238
    new-instance v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;)V
    .registers 11

    .line 241
    invoke-direct {p0}, Lcom/samsung/android/knox/restriction/IPhoneRestrictionPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 146
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 154
    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-direct {v2, p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler-IA;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    .line 155
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    .line 294
    new-instance v1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$1;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v2, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mRcsReceiver:Landroid/content/BroadcastReceiver;

    .line 333
    new-instance v3, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->subChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 2613
    new-instance v4, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$5;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2885
    new-instance v5, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$6;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimLockBroadcast:Landroid/content/BroadcastReceiver;

    .line 2905
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    .line 2906
    new-instance v6, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$7;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    .line 2921
    new-instance v6, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;

    invoke-direct {v6, p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$8;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;)V

    iput-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinServiceConn:Landroid/content/ServiceConnection;

    const-string v6, "PhoneRestrictionPolicy"

    const-string v7, " >>> PhoneRestrictionPolicy.PhoneRestrictionPolicy()"

    .line 242
    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mInjector:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;

    .line 244
    iget-object v6, p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v6

    check-cast v7, Landroid/content/Context;

    iput-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    .line 245
    invoke-virtual {p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$Injector;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 246
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCheckboxState()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    const-string/jumbo p1, "phone"

    .line 248
    invoke-virtual {v6, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 250
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v7, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 251
    invoke-virtual {p1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.ACTION_SHUTDOWN"

    .line 252
    invoke-virtual {p1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.REBOOT"

    .line 253
    invoke-virtual {p1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "com.samsung.android.knox.intent.action.PHONE_READY_INTERNAL"

    .line 254
    invoke-virtual {p1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v6, v4, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    invoke-static {v6}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/restriction/SimDBProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    const-string/jumbo p1, "telephony_subscription_service"

    .line 259
    invoke-virtual {v6, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    .line 261
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 262
    invoke-virtual {p0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 264
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "android.intent.action.SIM_STATE_CHANGED"

    .line 265
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v6, v5, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 268
    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v6, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.rcs.framework.instantmessaging.category.ACTION"

    .line 275
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    .line 276
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    .line 277
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.rcs.framework.filetransfer.category.NOTIFICATION"

    .line 279
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string p1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    .line 280
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    .line 281
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.rcs.im.READ_PERMISSION"

    .line 283
    invoke-virtual {v6, v2, p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 288
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 289
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v6, v3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingCallExceptionPattern()"

    .line 2695
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_b

    const/4 p0, 0x0

    return p0

    .line 2698
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2699
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    .line 2703
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 2705
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2704
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2700
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingCallRestriction()"

    .line 585
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_b

    return v0

    .line 588
    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 589
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    .line 593
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 594
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 590
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addIncomingSmsExceptionPattern()"

    .line 2790
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_b

    const/4 p0, 0x0

    return p0

    .line 2793
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2794
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    .line 2798
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 2800
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2799
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2795
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "smsRestrictionIncomingPattern"

    .line 924
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 926
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_28

    .line 930
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 931
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 927
    :cond_28
    :goto_28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addNumberOfIncomingCalls()Z
    .registers 10

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addNumberOfIncomingCalls()"

    .line 1566
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 1568
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return v2

    :cond_14
    const/4 v1, 0x0

    .line 1575
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 1578
    :cond_1c
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingCallCountDay"

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1580
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingCallCountWeek"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1582
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_57

    if-eqz v4, :cond_57

    if-eqz v6, :cond_57

    .line 1586
    :try_start_3d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_41} :catch_4c

    .line 1587
    :try_start_41
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_4a

    .line 1588
    :try_start_45
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_49} :catch_4e

    goto :goto_53

    :catch_4a
    move v4, v2

    goto :goto_4e

    :catch_4c
    move v1, v2

    move v4, v1

    :catch_4e
    :goto_4e
    const-string v6, "addNumberOfIncomingCalls - exception"

    .line 1590
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_59

    :cond_57
    move v1, v2

    move v4, v1

    :goto_59
    add-int/lit8 v2, v2, 0x1

    .line 1595
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1596
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1595
    invoke-virtual {v6, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v4, v4, 0x1

    .line 1599
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1601
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1599
    invoke-virtual {v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    .line 1604
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1606
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1604
    invoke-virtual {p0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, v2

    const-string v1, "PhoneRestrictionPolicy.addNumberOfIncomingCalls() >>>"

    .line 1607
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public addNumberOfIncomingSms()Z
    .registers 6

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SMSRestrictionPolicy.addNumberOfIncomingSMS()"

    .line 1121
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v1, 0x0

    .line 1124
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 p0, 0x0

    return p0

    .line 1128
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "incomingSmsCountDay"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1131
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1132
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1131
    invoke-virtual {v3, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1134
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsCountWeek"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1137
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1139
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-virtual {v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 1141
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsCountMonth"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1144
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1146
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1144
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, v1

    const-string v1, "SMSRestrictionPolicy.addNumberOfIncomingSMS() >>>"

    .line 1147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public addNumberOfOutgoingCalls()Z
    .registers 10

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addNumberOfOutgoingCalls()"

    .line 1616
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 1618
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    return v2

    :cond_14
    const/4 v1, 0x0

    .line 1625
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    .line 1628
    :cond_1c
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingCallCountDay"

    invoke-virtual {v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1630
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "outgoingCallCountWeek"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1632
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountMonth"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v1, :cond_57

    if-eqz v4, :cond_57

    if-eqz v6, :cond_57

    .line 1636
    :try_start_3d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_41} :catch_4c

    .line 1637
    :try_start_41
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_45} :catch_4a

    .line 1638
    :try_start_45
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_49} :catch_4e

    goto :goto_53

    :catch_4a
    move v4, v2

    goto :goto_4e

    :catch_4c
    move v1, v2

    move v4, v1

    :catch_4e
    :goto_4e
    const-string v6, "addNumberOfOutgoingCalls - exception"

    .line 1640
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_53
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_59

    :cond_57
    move v1, v2

    move v4, v1

    :goto_59
    add-int/lit8 v2, v2, 0x1

    .line 1645
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1646
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1645
    invoke-virtual {v6, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    add-int/lit8 v4, v4, 0x1

    .line 1649
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1651
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1649
    invoke-virtual {v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    .line 1654
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1656
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1654
    invoke-virtual {p0, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, v2

    const-string v1, "PhoneRestrictionPolicy.addNumberOfOutgoingCalls >>>"

    .line 1657
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public addNumberOfOutgoingSms()Z
    .registers 6

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SmsRestrictionPolicy.addNumberOfOutgoingSms()"

    .line 1152
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v1, 0x0

    .line 1155
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 p0, 0x0

    return p0

    .line 1159
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "outgoingSmsCountDay"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1162
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1163
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1162
    invoke-virtual {v3, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1165
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountWeek"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1168
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1170
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-virtual {v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 1172
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountMonth"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1175
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1177
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1175
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, v1

    const-string v1, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    .line 1178
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public addOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingCallExceptionPattern()"

    .line 2680
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_b

    const/4 p0, 0x0

    return p0

    .line 2683
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2684
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    .line 2688
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 2690
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2689
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2685
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingCallRestriction()"

    .line 571
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_b

    return v0

    .line 574
    :cond_b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 575
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    .line 579
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 580
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 576
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.addOutgoingSmsExceptionPattern()"

    .line 2775
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_b

    const/4 p0, 0x0

    return p0

    .line 2778
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 2779
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2c

    .line 2783
    :cond_18
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 2785
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2784
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2780
    :cond_2c
    :goto_2c
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "smsRestrictionOutgoingPattern"

    .line 907
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 909
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_28

    .line 913
    :cond_14
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "|"

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 910
    :cond_28
    :goto_28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public allowCallerIDDisplay(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2581
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2584
    :try_start_4
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string v1, "allowCallerID"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_11

    goto :goto_1c

    :catch_11
    move-exception p0

    .line 2588
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneRestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_1c
    return p0
.end method

.method public allowCopyContactToSim(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 8

    .line 2203
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2204
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2205
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2206
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "PHONERESTRICTION"

    const-string v4, "copyContactToSimEnabled"

    invoke-virtual {v2, p1, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const-string p2, "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

    .line 2211
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_26

    .line 2214
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2217
    :cond_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1
.end method

.method public allowDataNetworkFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 5

    .line 3755
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    .line 3757
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result p1

    if-nez p1, :cond_e

    .line 3760
    invoke-virtual {p0, p2, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDataSimSlotValueSystemUI(IZ)Z

    :cond_e
    return p1
.end method

.method public allowIncomingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 5

    .line 3766
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x2

    .line 3767
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result p0

    return p0
.end method

.method public allowIncomingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2232
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2233
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string v1, "allowIncomingMms"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowIncomingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2139
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2140
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string v1, "allowIncomingSms"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowIncomingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 5

    .line 3776
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x4

    .line 3777
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result p0

    return p0
.end method

.method public allowMmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 5

    .line 3786
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x6

    .line 3787
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result p0

    return p0
.end method

.method public allowOutgoingCallFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 5

    .line 3771
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x3

    .line 3772
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result p0

    return p0
.end method

.method public allowOutgoingMms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2240
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2241
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string v1, "allowOutgoingMms"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowOutgoingSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2147
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2148
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string v1, "allowOutgoingSms"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public allowOutgoingSmsFromSimSlot(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 5

    .line 3781
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x5

    .line 3782
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I

    move-result p0

    return p0
.end method

.method public allowWapPush(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 5

    .line 2550
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2551
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v1, "wapPushEnabled"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final blockDataNetwork()Z
    .registers 5

    .line 2052
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string p0, "PhoneRestrictionPolicy"

    const-string v0, "Failed to get Telephony Manager"

    .line 2055
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 2058
    :cond_16
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    .line 2060
    iput-boolean v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 2061
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    .line 2062
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    :cond_25
    return v3
.end method

.method public blockMmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 2296
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2297
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockMmsWithStorage"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez p2, :cond_26

    if-eqz v0, :cond_26

    .line 2300
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 2301
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 2302
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return v0
.end method

.method public blockSmsWithStorage(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 2275
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2276
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v2, "PHONERESTRICTION"

    const-string v3, "blockSmsWithStorage"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez p2, :cond_26

    if-eqz v0, :cond_26

    .line 2279
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    if-nez p1, :cond_26

    .line 2280
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 2281
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_26
    return v0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .registers 10

    .line 672
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-nez p1, :cond_d

    return v1

    .line 680
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 681
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_25

    return v2

    :cond_25
    const-string/jumbo v0, "incomingPattern"

    const-string/jumbo v3, "incomingCallExceptionPattern"

    .line 685
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    .line 689
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_8a

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 692
    :try_start_3a
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 693
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v5

    .line 694
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v5, :cond_52

    if-ge v5, v1, :cond_7e

    .line 697
    :cond_52
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v5

    .line 698
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "incomingCallCountWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v5, :cond_67

    if-ge v5, v1, :cond_7e

    :cond_67
    const/4 v5, 0x2

    .line 701
    invoke-virtual {p0, v0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v0

    .line 703
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "incomingCallCountMonth"

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_79
    .catchall {:try_start_3a .. :try_end_79} :catchall_85

    if-lt p0, v0, :cond_80

    if-ge v0, v1, :cond_7e

    goto :goto_80

    :cond_7e
    move p0, v2

    goto :goto_81

    :cond_80
    :goto_80
    move p0, v1

    .line 711
    :goto_81
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8b

    :catchall_85
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 712
    throw p0

    :cond_8a
    move p0, v1

    :goto_8b
    if-eqz p1, :cond_90

    if-eqz p0, :cond_90

    goto :goto_91

    :cond_90
    move v1, v2

    .line 717
    :goto_91
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PhoneRestrictionPolicy.canIncomingCall >>>>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneRestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .registers 12

    const-string v0, "PhoneRestrictionPolicy"

    const/4 v1, 0x1

    if-nez p1, :cond_6

    return v1

    :cond_6
    const-string/jumbo v2, "smsRestrictionIncomingPattern"

    const-string/jumbo v3, "incomingSmsExceptionPattern"

    .line 1226
    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    .line 1231
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9e

    .line 1232
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_1c
    const-string v3, "Limit of sms is enabled!!!"

    .line 1234
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 1236
    invoke-virtual {p0, v2, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v3

    .line 1237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canIncomingSms - limitDay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingSmsCountDay"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1240
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canIncomingSms - countDay = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v7, v3, :cond_61

    if-ge v3, v1, :cond_8d

    .line 1242
    :cond_61
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v3

    .line 1243
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "incomingSmsCountWeek"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v3, :cond_76

    if-ge v3, v1, :cond_8d

    :cond_76
    const/4 v3, 0x2

    .line 1246
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v2

    .line 1247
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsCountMonth"

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v2, :cond_8f

    if-ge v2, v1, :cond_8d

    goto :goto_8f

    :cond_8d
    move p0, v4

    goto :goto_95

    :cond_8f
    :goto_8f
    const-string p0, "canIncomingSms - limit = true"

    .line 1251
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_1c .. :try_end_94} :catchall_99

    move p0, v1

    .line 1256
    :goto_95
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9f

    :catchall_99
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1257
    throw p0

    :cond_9e
    move p0, v1

    :goto_9f
    if-eqz p1, :cond_a4

    if-eqz p0, :cond_a4

    goto :goto_a5

    :cond_a4
    move v1, v4

    :goto_a5
    return v1
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .registers 10

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 630
    :cond_4
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_d

    return v0

    :cond_d
    const-string/jumbo v1, "outgoingPattern"

    const-string/jumbo v2, "outgoingCallExceptionPattern"

    .line 634
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_73

    .line 640
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 642
    :try_start_23
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCounters()V

    .line 643
    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v2

    .line 644
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountDay"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v2, :cond_3b

    if-ge v2, v0, :cond_67

    .line 647
    :cond_3b
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v2

    .line 648
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "outgoingCallCountWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lt v6, v2, :cond_50

    if-ge v2, v0, :cond_67

    :cond_50
    const/4 v2, 0x2

    .line 651
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v1

    .line 653
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "outgoingCallCountMonth"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_62
    .catchall {:try_start_23 .. :try_end_62} :catchall_6e

    if-lt p0, v1, :cond_69

    if-ge v1, v0, :cond_67

    goto :goto_69

    :cond_67
    move p0, v3

    goto :goto_6a

    :cond_69
    :goto_69
    move p0, v0

    .line 661
    :goto_6a
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_74

    :catchall_6e
    move-exception p0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 662
    throw p0

    :cond_73
    move p0, v0

    :goto_74
    if-eqz p1, :cond_79

    if-eqz p0, :cond_79

    goto :goto_7a

    :cond_79
    move v0, v3

    .line 667
    :goto_7a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "PhoneRestrictionPolicy.canOutgoingCall >>>> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneRestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const-string/jumbo v1, "smsRestrictionOutgoingPattern"

    const-string/jumbo v2, "outgoingSmsExceptionPattern"

    .line 1273
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x0

    .line 1278
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "PhoneRestrictionPolicy"

    if-eqz v2, :cond_9e

    .line 1279
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    :try_start_1c
    const-string v2, "Limit of sms is enabled!!!"

    .line 1281
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndCountersSms()V

    .line 1283
    invoke-virtual {p0, v1, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v2

    .line 1284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "canOutgoingSms - limitDay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingSmsCountDay"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1287
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canOutgoingSms - countDay = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v7, v2, :cond_61

    if-ge v2, v0, :cond_8d

    .line 1289
    :cond_61
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v2

    .line 1290
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v8, "outgoingSmsCountWeek"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, v2, :cond_76

    if-ge v2, v0, :cond_8d

    :cond_76
    const/4 v2, 0x2

    .line 1293
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I

    move-result v1

    .line 1294
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "outgoingSmsCountMonth"

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-lt p0, v1, :cond_8f

    if-ge v1, v0, :cond_8d

    goto :goto_8f

    :cond_8d
    move p0, v3

    goto :goto_95

    :cond_8f
    :goto_8f
    const-string p0, "canOutgoingSms - limit = true"

    .line 1298
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_94
    .catchall {:try_start_1c .. :try_end_94} :catchall_99

    move p0, v0

    .line 1303
    :goto_95
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_9f

    :catchall_99
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1304
    throw p0

    :cond_9e
    move p0, v0

    .line 1308
    :goto_9f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmsRestrictionPolicy.canOutgoingSms >>>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " >>> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c0

    if-eqz p0, :cond_c0

    goto :goto_c1

    :cond_c0
    move v0, v3

    :goto_c1
    return v0
.end method

.method public changeSimPinCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    .line 3106
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3107
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3110
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    goto/16 :goto_92

    .line 3116
    :cond_14
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "PhoneRestrictionPolicy"

    if-eqz v1, :cond_38

    .line 3117
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p2

    .line 3118
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2

    const/16 v1, 0x9

    if-nez p2, :cond_2b

    return v1

    .line 3122
    :cond_2b
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_38

    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim not inserted"

    .line 3124
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3131
    :cond_38
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSimSubId(Ljava/lang/String;)I

    move-result v1

    .line 3132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockUnlockCorporateSimCard Sim subscription ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_57

    const/16 p0, 0xd

    return p0

    .line 3137
    :cond_57
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked(I)Z

    move-result v3

    if-nez v3, :cond_5f

    const/4 p0, 0x5

    return p0

    .line 3144
    :cond_5f
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_6c

    if-eq v3, v0, :cond_6c

    const/16 p0, 0xc

    return p0

    .line 3150
    :cond_6c
    invoke-virtual {p0, v1, p3, p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->changeSimPinCodeService(ILjava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_8a

    .line 3153
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 3154
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, v0, p2, p4}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    goto :goto_85

    .line 3156
    :cond_7f
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, v0, p2, p4}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p2

    :goto_85
    if-nez p2, :cond_8a

    const/16 p0, 0xa

    return p0

    :cond_8a
    const/4 p2, 0x0

    .line 3165
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 3166
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    return p3

    :cond_92
    :goto_92
    const/4 p0, 0x2

    return p0
.end method

.method public final changeSimPinCodeService(ILjava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 3265
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v0, :cond_11

    .line 3267
    :try_start_4
    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->changeSimPinCode(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const-string p0, "PhoneRestrictionPolicy"

    const-string p1, "Failed to communicate with Sim Pin Service"

    .line 3269
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 3273
    :cond_11
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1a
    const/16 p0, 0x64

    return p0
.end method

.method public checkDataCallLimit()Z
    .registers 17

    move-object/from16 v0, p0

    const-string v1, "Could not read from Storage"

    const-string v2, "PhoneRestrictionPolicy"

    .line 1898
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1900
    iget-boolean v3, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    const/4 v4, 0x0

    if-nez v3, :cond_f

    return v4

    :cond_f
    const/4 v3, 0x0

    .line 1904
    invoke-virtual {v0, v3, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 1905
    invoke-virtual {v0, v3, v7}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide v8

    const/4 v10, 0x2

    .line 1906
    invoke-virtual {v0, v3, v10}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    .line 1914
    :try_start_20
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "dataCallBytesCountByDay"

    invoke-virtual {v3, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_2c} :catch_2d

    goto :goto_31

    .line 1917
    :catch_2d
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v14, v12

    .line 1921
    :goto_31
    :try_start_31
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "dataCallBytesCountByWeek"

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_3d} :catch_3e

    goto :goto_42

    .line 1924
    :catch_3e
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v12

    .line 1928
    :goto_42
    :try_start_42
    iget-object v0, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dataCallByteCountByMonth"

    invoke-virtual {v0, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_4e} :catch_4f

    goto :goto_53

    .line 1931
    :catch_4f
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v12

    :goto_53
    cmp-long v2, v12, v5

    if-gez v2, :cond_5b

    cmp-long v2, v14, v5

    if-gtz v2, :cond_6b

    :cond_5b
    cmp-long v2, v12, v8

    if-gez v2, :cond_63

    cmp-long v2, v3, v8

    if-gtz v2, :cond_6b

    :cond_63
    cmp-long v2, v12, v10

    if-gez v2, :cond_6d

    cmp-long v0, v0, v10

    if-lez v0, :cond_6d

    :cond_6b
    const/4 v4, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v4, 0x0

    :goto_6e
    return v4
.end method

.method public checkEnableUseOfPacketData(Z)Z
    .registers 6

    .line 1872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 1874
    invoke-virtual {p0, v2, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDateAndDataCallCounters(J)V

    .line 1875
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p0, 0x1

    goto :goto_29

    :cond_20
    :goto_20
    if-eqz p1, :cond_28

    const p0, 0x10403d8

    .line 1877
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_28
    const/4 p0, 0x0

    .line 1883
    :goto_29
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public clearStoredBlockedMms(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 2327
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo p1, "smsMmsType"

    .line 2329
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "0"

    .line 2330
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2331
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SMSMMSBlockedDelivery"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearStoredBlockedSms(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 2317
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string/jumbo p1, "smsMmsType"

    .line 2319
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 2320
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2321
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SMSMMSBlockedDelivery"

    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final dataLimitCounter(Ljava/lang/String;J)V
    .registers 6

    .line 2039
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_d

    :catch_b
    const-wide/16 v0, 0x0

    :goto_d
    add-long/2addr v0, p2

    .line 2044
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .registers 6

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SmsRestrictionPolicy.decreaseNumberOfOutgoingSms()"

    .line 1183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSms()V

    const/4 v1, 0x0

    .line 1186
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    const/4 p0, 0x0

    return p0

    .line 1190
    :cond_13
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v2, "outgoingSmsCountDay"

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1193
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1194
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1193
    invoke-virtual {v3, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1196
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountWeek"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1199
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1201
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1199
    invoke-virtual {v4, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 1203
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsCountMonth"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1206
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1208
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1206
    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, v1

    const-string v1, "SmsRestrictionPolicy.addNumberOfOutgoingSms >>>"

    .line 1209
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public final deleteMessageFromStorageProvider(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "smsMmsBlockedRowId"

    .line 2536
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 2538
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "SMSMMSBlockedDelivery"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    return-void
.end method

.method public final declared-synchronized deliveryBlockedMsgs(I)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>>> deliveryBlockedMsgs"

    .line 2407
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "smsMmsBlockedRowId"

    const-string/jumbo v3, "smsMmsSendType"

    const-string/jumbo v4, "smsMmsPdu"

    const-string/jumbo v5, "smsMmsTimeStamp"

    const-string/jumbo v6, "smsMmsOrigAddress"

    const-string/jumbo v7, "smsMmsMessageId"

    const-string/jumbo v8, "smsMmsSubId"

    .line 2409
    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_26

    const-string v1, "1"

    goto :goto_28

    :cond_26
    const-string v1, "0"

    .line 2415
    :goto_28
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "smsMmsType"

    .line 2416
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SMSMMSBlockedDelivery"

    invoke-virtual {v1, v3, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    const-string v1, "PhoneRestrictionPolicy"

    .line 2420
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cvList size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_59
    .catchall {:try_start_1 .. :try_end_59} :catchall_1ad

    if-eqz v1, :cond_5d

    .line 2422
    monitor-exit p0

    return-void

    .line 2426
    :cond_5d
    :try_start_5d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_61
    :goto_61
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 2427
    iget-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mIsPhoneShuttingDown:Z

    if-eqz v2, :cond_7a

    const-string p1, "PhoneRestrictionPolicy"

    const-string v0, "Phone is shutting down ...quitting"

    .line 2428
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_5d .. :try_end_78} :catchall_1ad

    .line 2429
    monitor-exit p0

    return-void

    .line 2432
    :cond_7a
    :try_start_7a
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_c5

    .line 2437
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_92

    const-string p1, "PhoneRestrictionPolicy"

    const-string v0, "Block SMS with storage applies... quitting"

    .line 2438
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_7a .. :try_end_90} :catchall_1ad

    .line 2439
    monitor-exit p0

    return-void

    :cond_92
    :try_start_92
    const-string/jumbo v5, "smsMmsOrigAddress"

    .line 2444
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2445
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_b3

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 2446
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ac

    goto :goto_b3

    :cond_ac
    const-string v3, "com.samsung.android.knox.intent.action.SEND_BLOCKED_SMS_INTERNAL"

    .line 2453
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_137

    :cond_b3
    :goto_b3
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Other incoming SMS policies apply... delete message and continue"

    .line 2447
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "smsMmsBlockedRowId"

    .line 2449
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2448
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto :goto_61

    .line 2455
    :cond_c5
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v5

    if-eqz v5, :cond_d4

    const-string p1, "PhoneRestrictionPolicy"

    const-string v0, "Block MMS with storage applies... quitting"

    .line 2456
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d2
    .catchall {:try_start_92 .. :try_end_d2} :catchall_1ad

    .line 2457
    monitor-exit p0

    return-void

    .line 2462
    :cond_d4
    :try_start_d4
    invoke-virtual {p0, v4, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v3

    if-nez v3, :cond_191

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_191

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 2463
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_f4

    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2464
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRoamingPolicy()Lcom/samsung/android/knox/restriction/RoamingPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_191

    :cond_f4
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 2465
    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->isWapPushAllowed()Z

    move-result v3

    if-nez v3, :cond_102

    goto/16 :goto_191

    :cond_102
    const-string v3, "com.samsung.android.knox.intent.extra.TIME_STAMP_INTERNAL"

    const-string/jumbo v4, "smsMmsTimeStamp"

    .line 2474
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2473
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.ORIG_ADDRESS_INTERNAL"

    const-string/jumbo v4, "smsMmsOrigAddress"

    .line 2476
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2475
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.MESSAGE_ID_INTERNAL"

    const-string/jumbo v4, "smsMmsMessageId"

    .line 2478
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2477
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.extra.SUB_ID_INTERNAL"

    const-string/jumbo v4, "smsMmsSubId"

    .line 2480
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2479
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.SEND_BLOCKED_MMS_INTERNAL"

    .line 2481
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_137
    const-string/jumbo v3, "smsMmsBlockedRowId"

    .line 2486
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2485
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    const-string/jumbo v3, "smsMmsPdu"

    .line 2488
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 2490
    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    const/4 v4, -0x1

    const-string/jumbo v5, "smsMmsSendType"

    .line 2492
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15c

    .line 2494
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :cond_15c
    const-string v1, "com.samsung.android.knox.intent.extra.PDU_INTERNAL"

    .line 2498
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.extra.SEND_TYPE_INTERNAL"

    .line 2499
    invoke-virtual {v2, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2502
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 2504
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.knox.permission.KNOX_RECEIVE_BLOCKED_SMS_MMS_INTERNAL"

    new-instance v4, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;

    invoke-direct {v4, p0, v9}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_17b
    .catchall {:try_start_d4 .. :try_end_17b} :catchall_1ad

    .line 2520
    :try_start_17b
    monitor-enter v9
    :try_end_17c
    .catch Ljava/lang/InterruptedException; {:try_start_17b .. :try_end_17c} :catch_187
    .catchall {:try_start_17b .. :try_end_17c} :catchall_1ad

    const-wide/16 v1, 0x1f4

    .line 2522
    :try_start_17e
    invoke-virtual {v9, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 2523
    monitor-exit v9

    goto/16 :goto_61

    :catchall_184
    move-exception v1

    monitor-exit v9
    :try_end_186
    .catchall {:try_start_17e .. :try_end_186} :catchall_184

    :try_start_186
    throw v1
    :try_end_187
    .catch Ljava/lang/InterruptedException; {:try_start_186 .. :try_end_187} :catch_187
    .catchall {:try_start_186 .. :try_end_187} :catchall_1ad

    :catch_187
    move-exception v1

    :try_start_188
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, ""

    .line 2525
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_61

    :cond_191
    :goto_191
    const-string v2, "PhoneRestrictionPolicy"

    const-string v3, "Other incoming MMS policies apply... delete message and continue"

    .line 2466
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "smsMmsBlockedRowId"

    .line 2468
    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2467
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->deleteMessageFromStorageProvider(Ljava/lang/String;)V

    goto/16 :goto_61

    :cond_1a4
    const-string p1, "PhoneRestrictionPolicy"

    const-string v0, " deliveryBlockedMsgs >>>> "

    .line 2529
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ab
    .catchall {:try_start_188 .. :try_end_1ab} :catchall_1ad

    .line 2530
    monitor-exit p0

    return-void

    :catchall_1ad
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 3446
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_25

    .line 3448
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 3449
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3448
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 3454
    :cond_25
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    iget-object p3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    const-string p3, "adminUid"

    const-string v0, "SimIccId"

    .line 3456
    filled-new-array {p3, v0}, [Ljava/lang/String;

    move-result-object p3

    const-string v0, "SimTable"

    invoke-virtual {p1, p2, v0, p3}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 p1, 0x0

    move p3, p1

    :goto_3b
    const/4 v0, 0x2

    if-ge p3, v0, :cond_6a

    .line 3462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCSEnabled for sim slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, p1, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3464
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3462
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3b

    :cond_6a
    return-void
.end method

.method public enableLimitNumberOfCalls(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 11

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>>> enableLimitNumberOfCalls "

    .line 1388
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1390
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    return v2

    :cond_15
    const/4 v1, 0x1

    if-eqz p2, :cond_6f

    .line 1394
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 1395
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1396
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    .line 1397
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 1398
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 1399
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 1400
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1401
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1402
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1403
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dateDay"

    .line 1402
    invoke-virtual {v5, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 1404
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1405
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dateWeek"

    .line 1404
    invoke-virtual {v5, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    move v5, v1

    goto :goto_5c

    :cond_5b
    move v5, v2

    :goto_5c
    if-eqz v5, :cond_6d

    .line 1406
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1407
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "dateMonth"

    .line 1406
    invoke-virtual {v5, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_6f

    :cond_6d
    move v3, v2

    goto :goto_70

    :cond_6f
    :goto_6f
    move v3, v1

    :goto_70
    const-string v4, "enableLimitNumberOfCalls  >>>>>"

    .line 1409
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_87

    .line 1410
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v3, "limitCallEnable"

    invoke-virtual {p0, p1, v0, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_87

    move v2, v1

    :cond_87
    return v2
.end method

.method public enableLimitNumberOfSms(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 11

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, " >>>> enableLimitNumberOfSMS "

    .line 968
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_69

    .line 971
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v3

    if-nez v3, :cond_69

    .line 972
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 973
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/16 v4, 0xb

    .line 974
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 975
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xd

    .line 976
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xe

    .line 977
    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 978
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 979
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 980
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "smsDateDay"

    .line 979
    invoke-virtual {v5, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 981
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 982
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "smsDateWeek"

    .line 981
    invoke-virtual {v5, v7, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_54

    move v5, v1

    goto :goto_55

    :cond_54
    move v5, v2

    :goto_55
    if-eqz v5, :cond_67

    .line 983
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 984
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "smsDateMonth"

    .line 983
    invoke-virtual {v5, v4, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    goto :goto_69

    :cond_67
    move v3, v2

    goto :goto_6a

    :cond_69
    :goto_69
    move v3, v1

    :goto_6a
    const-string v4, "enableLimitNumberOfSMS  >>>>>"

    .line 986
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_81

    .line 987
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v3, "limitSmsEnable"

    invoke-virtual {p0, p1, v0, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_81

    goto :goto_82

    :cond_81
    move v1, v2

    :goto_82
    return v1
.end method

.method public final enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 471
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 472
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 471
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 477
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 478
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 477
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforcePhoneApp()V
    .registers 2

    .line 489
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_d

    return-void

    .line 490
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by internal phone"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePhoneAppOrAdmin(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    if-nez p1, :cond_b

    .line 496
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 498
    :cond_b
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1a

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object p1
.end method

.method public final enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    if-nez p1, :cond_b

    .line 507
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 509
    :cond_b
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1a

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object p1
.end method

.method public final enforcePhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 466
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 466
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSms()V
    .registers 2

    .line 1214
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_d

    return-void

    .line 1215
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only receive SMS by internal phone"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemUser()V
    .registers 2

    .line 483
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_b

    return-void

    .line 484
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Can only be called by system user"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 1791
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string v0, "enableLimitDataCall"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1794
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1
.end method

.method public final getDataCheckboxState()Z
    .registers 2

    .line 2089
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "dataCallPacketDataCheckBox"

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    const-string p1, "PhoneRestrictionPolicy"

    const-string v0, ">>> PhoneRestrictionPolicy.getDisclaimerText()"

    .line 3428
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3430
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string v0, "disclaimerText"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 3433
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_15

    return-object p1

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 521
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 523
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 7

    .line 791
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    const-string v0, "emergencyCallOnly"

    const-string v2, "PHONERESTRICTION"

    if-nez p2, :cond_51

    .line 797
    :try_start_10
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    if-nez p1, :cond_1f

    .line 800
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p1, v3}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 802
    :cond_1f
    iget-boolean v3, p1, Lcom/samsung/android/knox/ContextInfo;->mParent:Z

    if-eqz v3, :cond_32

    .line 804
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getInstance()Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPseudoAdminUid()I

    move-result p1

    .line 805
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_32
    if-nez p2, :cond_49

    .line 810
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-nez p2, :cond_49

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    if-gtz p2, :cond_49

    .line 814
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_6f

    .line 812
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Operation supported only on owner space"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 818
    :cond_51
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 821
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 822
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_6b} :catch_6f

    if-eqz p1, :cond_5b

    const/4 p0, 0x1

    return p0

    .line 831
    :catch_6f
    :cond_6f
    :goto_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getEmergencyCall >>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneRestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getIncomingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallExceptionPatterns()"

    .line 2658
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2660
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingCallExceptionPattern"

    .line 2663
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingCallRestriction()"

    .line 549
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 551
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const-string/jumbo v0, "incomingPattern"

    .line 554
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIncomingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getIncomingSmsExceptionPatterns()"

    .line 2753
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2755
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "incomingSmsExceptionPattern"

    .line 2758
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .registers 4

    .line 876
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 877
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    const-string/jumbo v0, "smsRestrictionIncomingPattern"

    .line 880
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getKeyguardManager()Landroid/app/KeyguardManager;
    .registers 3

    .line 3320
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_11

    .line 3321
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 3324
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method public getLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;I)J
    .registers 8

    .line 1822
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "PHONERESTRICTION"

    if-eqz p2, :cond_22

    const/4 v0, 0x1

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    const-wide/16 p0, -0x1

    return-wide p0

    .line 1837
    :cond_10
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "dataCallByMonth"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2a

    .line 1832
    :cond_19
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "dataCallByWeek"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2a

    .line 1827
    :cond_22
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p2, "dataCallByDay"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getLongList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_2a
    const-wide/16 p1, 0x0

    if-eqz p0, :cond_58

    .line 1844
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_58

    .line 1845
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-wide v0, p1

    :cond_39
    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-eqz v4, :cond_39

    cmp-long v4, v2, v0

    if-ltz v4, :cond_55

    cmp-long v4, v0, p1

    if-nez v4, :cond_39

    :cond_55
    move-wide v0, v2

    goto :goto_39

    :cond_57
    move-wide p1, v0

    :cond_58
    return-wide p1
.end method

.method public getLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 5

    .line 1464
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1465
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_d

    return v0

    :cond_d
    const-string p1, "PHONERESTRICTION"

    if-eqz p2, :cond_2c

    const/4 v1, 0x1

    if-eq p2, v1, :cond_22

    const/4 v1, 0x2

    if-eq p2, v1, :cond_18

    return v0

    .line 1482
    :cond_18
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingCallByMonth"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_35

    .line 1477
    :cond_22
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingCallByWeek"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_35

    .line 1472
    :cond_2c
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingCallByDay"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_35
    const/4 p1, 0x0

    if-eqz p0, :cond_61

    .line 1489
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_61

    .line 1490
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_42
    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1491
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_5c

    if-nez p1, :cond_42

    .line 1492
    :cond_5c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_42

    :cond_61
    return p1
.end method

.method public getLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 4

    .line 1040
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "PHONERESTRICTION"

    if-eqz p2, :cond_23

    const/4 v0, 0x1

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 p0, -0x1

    return p0

    .line 1055
    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingSmsByMonth"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2c

    .line 1050
    :cond_19
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingSmsByWeek"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2c

    .line 1045
    :cond_23
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingSmsByDay"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_2c
    const/4 p1, 0x0

    if-eqz p0, :cond_58

    .line 1062
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_58

    .line 1063
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1064
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_53

    if-nez p1, :cond_39

    .line 1065
    :cond_53
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_39

    :cond_58
    return p1
.end method

.method public getLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 5

    .line 1526
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1527
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    const/4 v0, -0x1

    if-nez p1, :cond_d

    return v0

    :cond_d
    const-string p1, "PHONERESTRICTION"

    if-eqz p2, :cond_2c

    const/4 v1, 0x1

    if-eq p2, v1, :cond_22

    const/4 v1, 0x2

    if-eq p2, v1, :cond_18

    return v0

    .line 1544
    :cond_18
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingCallByMonth"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_35

    .line 1539
    :cond_22
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingCallByWeek"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_35

    .line 1534
    :cond_2c
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingCallByDay"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_35
    const/4 p1, 0x0

    if-eqz p0, :cond_61

    .line 1551
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_61

    .line 1552
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_42
    :goto_42
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1553
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_42

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_5c

    if-nez p1, :cond_42

    .line 1554
    :cond_5c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_42

    :cond_61
    return p1
.end method

.method public getLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;I)I
    .registers 4

    .line 1088
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneAppOrOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    const-string p1, "PHONERESTRICTION"

    if-eqz p2, :cond_23

    const/4 v0, 0x1

    if-eq p2, v0, :cond_19

    const/4 v0, 0x2

    if-eq p2, v0, :cond_f

    const/4 p0, -0x1

    return p0

    .line 1103
    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingSmsByMonth"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2c

    .line 1098
    :cond_19
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingSmsByWeek"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_2c

    .line 1093
    :cond_23
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingSmsByDay"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_2c
    const/4 p1, 0x0

    if-eqz p0, :cond_58

    .line 1110
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_58

    .line 1111
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_39
    :goto_39
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    .line 1112
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_53

    if-nez p1, :cond_39

    .line 1113
    :cond_53
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_39

    :cond_58
    return p1
.end method

.method public getOutgoingCallExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallExceptionPatterns()"

    .line 2648
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2650
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingCallExceptionPattern"

    .line 2653
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingCallRestriction()"

    .line 539
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 541
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const-string/jumbo v0, "outgoingPattern"

    .line 544
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutgoingSmsExceptionPatterns(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.getOutgoingSmsExceptionPatterns()"

    .line 2743
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2744
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2745
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return-object p0

    :cond_15
    const/4 v0, 0x1

    const-string/jumbo v1, "outgoingSmsExceptionPattern"

    .line 2748
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;
    .registers 4

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 864
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    const-string/jumbo v0, "smsRestrictionOutgoingPattern"

    .line 867
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPinCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 3227
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 3231
    :try_start_6
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_1c

    :catch_13
    move-exception v3

    const-string v4, "PhoneRestrictionPolicy"

    const-string v5, "Unable to resolve SystemUI\'s UID."

    .line 3234
    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v1

    .line 3236
    :goto_1c
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 3237
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_43

    const-string v6, ":"

    .line 3239
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v1, :cond_38

    .line 3241
    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_38
    const-string v1, "android.uid.systemui"

    .line 3243
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    if-ne v4, v3, :cond_43

    const/4 v2, 0x1

    .line 3248
    :cond_43
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_58

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_58

    if-eqz v2, :cond_50

    goto :goto_58

    .line 3249
    :cond_50
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by System, Phone or System UI"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3252
    :cond_58
    :goto_58
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRCSMessage(Lcom/samsung/android/knox/ContextInfo;J)Landroid/os/Bundle;
    .registers 13

    const-string v0, "body"

    const-string v1, "PhoneRestrictionPolicy"

    const-string/jumbo v2, "getRCS, Start"

    .line 406
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .line 409
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 408
    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    const/4 p1, 0x1

    new-array v6, p1, [Ljava/lang/String;

    .line 413
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v6, p3

    const-string/jumbo p2, "getRCS, Start query"

    .line 415
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p2

    const/4 v8, 0x0

    .line 418
    :try_start_35
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->RCS_PROJ:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_46} :catch_102
    .catchall {:try_start_35 .. :try_end_46} :catchall_100

    if-eqz p0, :cond_fa

    .line 421
    :try_start_48
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "getRCS, collect data"

    .line 423
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "remote-uri"

    const-string/jumbo v4, "remote_uri"

    .line 427
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "sender-alias"

    const-string/jumbo v4, "sender_alias"

    .line 429
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 428
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content-type"

    const-string v4, "content_type"

    .line 431
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 430
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "direction"

    .line 434
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_9f
    .catchall {:try_start_48 .. :try_end_9f} :catchall_f0

    const-string/jumbo v3, "timestamp"

    if-nez v0, :cond_b3

    :try_start_a4
    const-string/jumbo v0, "inserted_timestamp"

    .line 436
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 435
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_c1

    :cond_b3
    const-string/jumbo v0, "sent_timestamp"

    .line 439
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 438
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_c1
    const-string/jumbo v0, "is_filetransfer"

    .line 442
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, p1, :cond_ee

    const-string p1, "file-path"

    const-string v0, "file_path"

    .line 444
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "thumbnail-path"

    const-string/jumbo v0, "thumbnail_path"

    .line 446
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ee
    .catchall {:try_start_a4 .. :try_end_ee} :catchall_f0

    :cond_ee
    move-object v8, v2

    goto :goto_fa

    :catchall_f0
    move-exception p1

    .line 418
    :try_start_f1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_f4
    .catchall {:try_start_f1 .. :try_end_f4} :catchall_f5

    goto :goto_f9

    :catchall_f5
    move-exception p0

    :try_start_f6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f9
    throw p1

    :cond_fa
    :goto_fa
    if-eqz p0, :cond_10a

    .line 450
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_ff} :catch_102
    .catchall {:try_start_f6 .. :try_end_ff} :catchall_100

    goto :goto_10a

    :catchall_100
    move-exception p0

    goto :goto_114

    :catch_102
    move-exception p0

    .line 451
    :try_start_103
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_100

    .line 453
    :cond_10a
    :goto_10a
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo p0, "getRCS, End"

    .line 456
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    .line 453
    :goto_114
    invoke-static {p2, p3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 454
    throw p0
.end method

.method public final getRestrictionPattern(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "PHONERESTRICTION"

    if-nez p2, :cond_11

    .line 839
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 840
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4e

    .line 843
    :cond_11
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 846
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-string p1, ""

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string/jumbo p3, "|"

    if-eqz p2, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 847
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 848
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1d

    .line 851
    :cond_3b
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4d

    const/4 p0, 0x0

    .line 852
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_4e

    :cond_4d
    const/4 p0, 0x0

    :goto_4e
    return-object p0
.end method

.method public final getSimSubId(Ljava/lang/String;)I
    .registers 4

    .line 3211
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 3213
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 3214
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3215
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    return p0

    :cond_27
    const/4 p0, -0x1

    return p0
.end method

.method public final getSmsMmsAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 2260
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PHONERESTRICTION"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2262
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_20

    :cond_1f
    const/4 p1, 0x1

    :goto_20
    return p1
.end method

.method public isBlockMmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2310
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string v0, "blockMmsWithStorage"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2313
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isBlockSmsWithStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2289
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string v0, "blockSmsWithStorage"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2292
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCallerIDDisplayAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const/4 p1, 0x1

    .line 2597
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PHONERESTRICTION"

    const-string v1, "allowCallerID"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2600
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_23

    if-nez v0, :cond_f

    move p1, v0

    goto :goto_2d

    :catch_23
    move-exception p0

    .line 2607
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneRestrictionPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return p1
.end method

.method public isCopyContactToSimAllowed(I)Z
    .registers 5

    .line 2175
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PHONERESTRICTION"

    const-string v1, "copyContactToSimEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2178
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    if-nez v0, :cond_59

    const-string p0, "PhoneRestrictionPolicy"

    if-eq p1, v1, :cond_4e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_42

    .line 2195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCopyContactToSimAllowed wrong message value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    :cond_42
    const-string p1, "Access to PB Edit "

    .line 2191
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x104048c

    .line 2192
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_59

    :cond_4e
    const-string p1, "Access to PB ADD "

    .line 2187
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x1040191

    .line 2188
    invoke-static {p0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_59
    :goto_59
    return v0
.end method

.method public isCopyContactToSimAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const/4 p1, 0x1

    .line 2157
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PHONERESTRICTION"

    const-string v1, "copyContactToSimEnabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2160
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1f} :catch_23

    if-nez v0, :cond_f

    move p1, v0

    goto :goto_2b

    :catch_23
    move-exception p0

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, "Error on isCopyContactToSimAllowed. "

    .line 2167
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    :goto_2b
    return p1
.end method

.method public isDataAllowedFromSimSlot(I)Z
    .registers 3

    const/4 v0, 0x1

    .line 3602
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result p0

    return p0
.end method

.method public isIncomingCallAllowedFromSimSlot(I)Z
    .registers 3

    const/4 v0, 0x2

    .line 3606
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result p0

    return p0
.end method

.method public isIncomingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const-string p1, "allowIncomingMms"

    .line 2248
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIncomingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const-string p1, "allowIncomingSms"

    .line 2223
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isIncomingSmsAllowedFromSimSlot(I)Z
    .registers 3

    const/4 v0, 0x4

    .line 3614
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result p0

    return p0
.end method

.method public isLimitNumberOfCallsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 1421
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    .line 1424
    :cond_a
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string/jumbo v1, "limitCallEnable"

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1427
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_33

    .line 1428
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 1429
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_33
    return v0
.end method

.method public isLimitNumberOfSmsEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 994
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string/jumbo v0, "limitSmsEnable"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 997
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_29

    .line 998
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 999
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public isMmsAllowedFromSimSlot(I)Z
    .registers 3

    const/4 v0, 0x6

    .line 3622
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result p0

    return p0
.end method

.method public final isNumberAllowed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const-string v0, "PhoneRestrictionPolicy"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adminUid"

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object p2, v1, v4

    .line 725
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "PHONERESTRICTION"

    invoke-virtual {v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 727
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1e

    goto :goto_7e

    .line 732
    :cond_1e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_22
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 733
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_35

    goto :goto_22

    .line 737
    :cond_35
    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 738
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_40

    goto :goto_22

    .line 744
    :cond_40
    :try_start_40
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5
    :try_end_44
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_40 .. :try_end_44} :catch_78

    .line 750
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 751
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 753
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 755
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v7, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 757
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_63

    return v2

    .line 763
    :cond_63
    :try_start_63
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5
    :try_end_67
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_63 .. :try_end_67} :catch_72

    .line 768
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 769
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_22

    return v2

    :catch_72
    const-string p0, "failed to compile pattern for exception"

    .line 765
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_78
    const-string v5, "failed to compile pattern for restriction"

    .line 746
    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_7e
    :goto_7e
    return v4
.end method

.method public final isOperationAllowed(II)Z
    .registers 15

    const-string v0, "allowData"

    const-string v1, "PhoneRestrictionPolicy"

    const/4 v2, 0x1

    if-eqz p2, :cond_1e

    if-eq p2, v2, :cond_1e

    .line 3673
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ">>> PhoneRestrictionPolicy.isOperationAllowed() was failed - SlotID is invalid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3678
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isOperationAllowed >>> slotNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "slotId"

    const-string v5, "allowData"

    const-string v6, "allowIncomingCall"

    const-string v7, "allowOutgoingCall"

    const-string v8, "allowIncomingSMS"

    const-string v9, "allowOutgoingSMS"

    const-string v10, "allowMMS"

    const-string v11, "adminUid"

    .line 3688
    filled-new-array/range {v4 .. v11}, [Ljava/lang/String;

    move-result-object v3

    .line 3690
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3693
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v5, "slotId"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3695
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 p2, 0x0

    const-string v5, "PHONERESTRICTION_SLOTID"

    invoke-virtual {p0, v5, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_70

    const-string p0, ">>> PhoneRestrictionPolicy.isOperationAllowed() Cursor is Null"

    .line 3699
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3703
    :cond_70
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move p2, v2

    .line 3706
    :goto_74
    :try_start_74
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_115

    const-string v3, ">>> PhoneRestrictionPolicy.isOperationAllowed() - dB have some valid values"

    .line 3707
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-ne p1, v2, :cond_ad

    .line 3710
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> PhoneRestrictionPolicy.isOperationAllowed() - Result is - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3712
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3711
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3710
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_ac

    .line 3714
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3713
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_ac

    move p2, v2

    goto :goto_ad

    :cond_ac
    move p2, v3

    :cond_ad
    :goto_ad
    const/4 v4, 0x2

    if-ne p1, v4, :cond_c1

    if-eqz p2, :cond_c0

    const-string v4, "allowIncomingCall"

    .line 3718
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3717
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_c0

    move p2, v2

    goto :goto_c1

    :cond_c0
    move p2, v3

    :cond_c1
    :goto_c1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_d5

    if-eqz p2, :cond_d4

    const-string v4, "allowOutgoingCall"

    .line 3723
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3722
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_d4

    move p2, v2

    goto :goto_d5

    :cond_d4
    move p2, v3

    :cond_d5
    :goto_d5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_e9

    if-eqz p2, :cond_e8

    const-string v4, "allowIncomingSMS"

    .line 3728
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3727
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_e8

    move p2, v2

    goto :goto_e9

    :cond_e8
    move p2, v3

    :cond_e9
    :goto_e9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_fd

    if-eqz p2, :cond_fc

    const-string v4, "allowOutgoingSMS"

    .line 3733
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3732
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_fc

    move p2, v2

    goto :goto_fd

    :cond_fc
    move p2, v3

    :cond_fd
    :goto_fd
    const/4 v4, 0x6

    if-ne p1, v4, :cond_110

    if-eqz p2, :cond_10f

    const-string v4, "allowMMS"

    .line 3738
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3737
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-lez p2, :cond_10f

    move v3, v2

    :cond_10f
    move p2, v3

    .line 3741
    :cond_110
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_113
    .catch Landroid/database/SQLException; {:try_start_74 .. :try_end_113} :catch_11b
    .catchall {:try_start_74 .. :try_end_113} :catchall_119

    goto/16 :goto_74

    .line 3747
    :cond_115
    :goto_115
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_135

    :catchall_119
    move-exception p1

    goto :goto_136

    :catch_11b
    move-exception p1

    .line 3744
    :try_start_11c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred accessing Enterprise db "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_134
    .catchall {:try_start_11c .. :try_end_134} :catchall_119

    goto :goto_115

    :goto_135
    return p2

    .line 3747
    :goto_136
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 3749
    throw p1
.end method

.method public isOutgoingCallAllowedFromSimSlot(I)Z
    .registers 3

    const/4 v0, 0x3

    .line 3610
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result p0

    return p0
.end method

.method public isOutgoingMmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2252
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const-string p1, "allowOutgoingMms"

    .line 2255
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOutgoingSmsAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const-string p1, "allowOutgoingSms"

    .line 2228
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSmsMmsAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isOutgoingSmsAllowedFromSimSlot(I)Z
    .registers 3

    const/4 v0, 0x5

    .line 3618
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOperationAllowed(II)Z

    move-result p0

    return p0
.end method

.method public isRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)Z
    .registers 4

    const-string p1, "enableRCS"

    .line 3541
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)Z
    .registers 5

    const/4 p1, 0x1

    if-eqz p4, :cond_1e

    if-eq p4, p1, :cond_1e

    .line 3549
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isRCSEnabledBySimSlot(): failed. invalid simSlotId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneRestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_1e
    if-ne p4, p1, :cond_23

    const-string p1, "enableRCSForSimSlot1"

    goto :goto_25

    :cond_23
    const-string p1, "enableRCSForSimSlot0"

    .line 3558
    :goto_25
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSEnabledInternal(IZLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isRCSEnabledInternal(IZLjava/lang/String;)Z
    .registers 9

    .line 3563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isRCSEnabledInternal(), showMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", columnName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneRestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3565
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSFeature(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3c

    .line 3566
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "isRCSEnabledInternal(): allowed. not support feature = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_3c
    const/4 v0, 0x0

    .line 3570
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0

    const v3, 0x1040bb7

    const/4 v4, 0x0

    if-eqz v0, :cond_4d

    if-eqz p2, :cond_4c

    .line 3572
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_4c
    return v4

    .line 3577
    :cond_4d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "PHONERESTRICTION"

    invoke-virtual {p0, v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 3579
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_59
    :goto_59
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_7f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 3580
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_6c

    goto :goto_59

    .line 3583
    :cond_6c
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    and-int/2addr p3, p1

    if-eq p3, p1, :cond_59

    const-string/jumbo p0, "isRCSEnabledInternal(): disallowed by EDM"

    .line 3584
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7e

    .line 3586
    invoke-static {v3}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_7e
    return v4

    :cond_7f
    return v2
.end method

.method public final isRCSFeature(I)Z
    .registers 2

    const/4 p0, 0x1

    if-ne p1, p0, :cond_4

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method public final isSimLocked(I)Z
    .registers 4

    .line 3190
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v0, :cond_11

    .line 3192
    :try_start_4
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->isSimLocked(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const-string p0, "PhoneRestrictionPolicy"

    const-string p1, "Failed to communicate with Sim Pin Service"

    .line 3194
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 3198
    :cond_11
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .registers 2

    if-nez p1, :cond_9

    .line 3257
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/SimDBProxy;->hasAnySimcard()Z

    move-result p0

    return p0

    .line 3259
    :cond_9
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getPincode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 3260
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return p0
.end method

.method public isSmsPatternCheckRequired()Z
    .registers 8

    const-string v0, "adminUid"

    const-string/jumbo v1, "smsRestrictionIncomingPattern"

    .line 2844
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2846
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "PHONERESTRICTION"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3c

    .line 2848
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3c

    .line 2849
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    .line 2850
    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_31

    goto :goto_1e

    .line 2854
    :cond_31
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2856
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    return v3

    :cond_3c
    const-string/jumbo v1, "smsRestrictionOutgoingPattern"

    .line 2862
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2864
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_73

    .line 2866
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_73

    .line 2867
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_55
    :goto_55
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 2868
    invoke-virtual {v2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-nez v4, :cond_68

    goto :goto_55

    .line 2872
    :cond_68
    invoke-virtual {v2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2874
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_55

    return v3

    :cond_73
    const/4 p0, 0x0

    return p0
.end method

.method public isSubIdLockedByAdmin(I)Z
    .registers 3

    .line 3350
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 3353
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 3355
    :goto_e
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWapPushAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 2565
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION"

    const-string/jumbo v0, "wapPushEnabled"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 2568
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_23

    :cond_22
    const/4 p1, 0x1

    .line 2575
    :goto_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isWapPushAllowed : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhoneRestrictionPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public declared-synchronized lockUnlockCorporateSimCard(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 13

    monitor-enter p0

    :try_start_1
    const-string v0, "PhoneRestrictionPolicy"

    .line 2943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockUnlockCorporateSimCard lock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " iccId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2945
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 2948
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->validatePinCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_32

    const/4 p1, 0x2

    .line 2949
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_142

    .line 2950
    monitor-exit p0

    return p1

    :cond_32
    :try_start_32
    const-string v1, "PhoneRestrictionPolicy"

    const-string/jumbo v2, "lockUnlockCorporateSimCard valid pincode"

    .line 2952
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 2958
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p2

    .line 2959
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p2
    :try_end_4a
    .catchall {:try_start_32 .. :try_end_4a} :catchall_142

    const/16 v1, 0x9

    if-nez p2, :cond_50

    .line 2961
    monitor-exit p0

    return v1

    .line 2963
    :cond_50
    :try_start_50
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5b

    .line 2965
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_59
    .catchall {:try_start_50 .. :try_end_59} :catchall_142

    .line 2966
    monitor-exit p0

    return v1

    .line 2972
    :cond_5b
    :try_start_5b
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getSimSubId(Ljava/lang/String;)I

    move-result v1

    const-string v2, "PhoneRestrictionPolicy"

    .line 2973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lockUnlockCorporateSimCard Sim subscription ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_80

    const/16 p1, 0xd

    .line 2975
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_7e
    .catchall {:try_start_5b .. :try_end_7e} :catchall_142

    .line 2976
    monitor-exit p0

    return p1

    .line 2980
    :cond_80
    :try_start_80
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getAdminBySimcard(Ljava/lang/String;)I

    move-result v3

    const-string v4, "PhoneRestrictionPolicy"

    .line 2981
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "lockUnlockCorporateSimCard Sim owner "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2985
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLocked(I)Z

    move-result v4

    const-string v5, "PhoneRestrictionPolicy"

    .line 2986
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "lockUnlockCorporateSimCard isSimLocked  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xc

    if-eqz p4, :cond_e8

    if-eqz v4, :cond_d6

    if-ne v3, v2, :cond_c6

    const/4 p1, 0x4

    .line 2990
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_c4
    .catchall {:try_start_80 .. :try_end_c4} :catchall_142

    .line 2991
    monitor-exit p0

    return p1

    :cond_c6
    if-ne v3, v0, :cond_cf

    const/16 p1, 0xb

    .line 2993
    :try_start_ca
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_cd
    .catchall {:try_start_ca .. :try_end_cd} :catchall_142

    .line 2994
    monitor-exit p0

    return p1

    :cond_cf
    if-eq v3, v0, :cond_10c

    .line 2996
    :try_start_d1
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_142

    .line 2997
    monitor-exit p0

    return v5

    :cond_d6
    if-ne v3, v2, :cond_d9

    goto :goto_10c

    :cond_d9
    if-ne v3, v0, :cond_e1

    .line 3005
    :try_start_db
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v4, v0, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    goto :goto_10c

    :cond_e1
    if-eq v3, v0, :cond_10c

    .line 3007
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_e6
    .catchall {:try_start_db .. :try_end_e6} :catchall_142

    .line 3008
    monitor-exit p0

    return v5

    :cond_e8
    if-eqz v4, :cond_f7

    if-ne v3, v2, :cond_ed

    goto :goto_10c

    :cond_ed
    if-ne v3, v0, :cond_f0

    goto :goto_10c

    :cond_f0
    if-eq v3, v0, :cond_10c

    .line 3018
    :try_start_f2
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_142

    .line 3019
    monitor-exit p0

    return v5

    :cond_f7
    const/4 v4, 0x5

    .line 3022
    :try_start_f8
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_fb
    .catchall {:try_start_f8 .. :try_end_fb} :catchall_142

    if-ne v3, v2, :cond_ff

    .line 3024
    monitor-exit p0

    return v4

    :cond_ff
    if-ne v3, v0, :cond_108

    .line 3026
    :try_start_101
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z
    :try_end_106
    .catchall {:try_start_101 .. :try_end_106} :catchall_142

    .line 3027
    monitor-exit p0

    return v4

    :cond_108
    if-eq v3, v0, :cond_10c

    .line 3029
    monitor-exit p0

    return v4

    .line 3036
    :cond_10c
    :goto_10c
    :try_start_10c
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setSubIdLockEnabled(IZLjava/lang/String;)I

    move-result v1

    .line 3037
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V

    if-nez v1, :cond_140

    const/4 v4, 0x1

    if-eqz p4, :cond_128

    if-ne v3, v2, :cond_121

    .line 3043
    iget-object p4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {p4, v0, p2, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->addSimcard(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_130

    .line 3045
    :cond_121
    iget-object p4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {p4, v0, p2, p3}, Lcom/android/server/enterprise/restriction/SimDBProxy;->setPincode(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    goto :goto_130

    :cond_128
    if-eq v3, v2, :cond_130

    .line 3049
    iget-object p3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {p3, v0, p2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcard(ILjava/lang/String;)Z

    move-result v4

    .line 3052
    :cond_130
    :goto_130
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result p1

    .line 3054
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    if-nez v4, :cond_140

    const/16 p1, 0xa

    .line 3056
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->logError(I)V
    :try_end_13e
    .catchall {:try_start_10c .. :try_end_13e} :catchall_142

    .line 3057
    monitor-exit p0

    return p1

    .line 3060
    :cond_140
    monitor-exit p0

    return v1

    :catchall_142
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final logError(I)V
    .registers 3

    const/4 p0, 0x2

    const-string v0, "PhoneRestrictionPolicy"

    if-eq p1, p0, :cond_5c

    const/16 p0, 0x64

    if-eq p1, p0, :cond_55

    const/4 p0, 0x4

    if-eq p1, p0, :cond_4e

    const/4 p0, 0x5

    if-eq p1, p0, :cond_47

    const/4 p0, 0x6

    if-eq p1, p0, :cond_40

    packed-switch p1, :pswitch_data_64

    goto :goto_62

    :pswitch_16
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim not inserted"

    .line 3093
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :pswitch_1d
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin owned by another admin"

    .line 3090
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :pswitch_24
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin already locked by admin"

    .line 3087
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :pswitch_2b
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin database error"

    .line 3084
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :pswitch_32
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim not ready"

    .line 3081
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :pswitch_39
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin exceeded max retries"

    .line 3078
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_40
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin blocked by puk"

    .line 3075
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_47
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin already unlocked"

    .line 3072
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_4e
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin already locked"

    .line 3069
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_55
    const-string/jumbo p0, "lockUnlockCorporateSimCard Sim pin unknown"

    .line 3096
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    :cond_5c
    const-string/jumbo p0, "lockUnlockCorporateSimCard invalid pincode"

    .line 3066
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x8
        :pswitch_39
        :pswitch_32
        :pswitch_2b
        :pswitch_24
        :pswitch_1d
        :pswitch_16
    .end packed-switch
.end method

.method public final notifyRcsChangesAllUser()V
    .registers 2

    .line 3595
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v0, "content://com.sec.knox.provider2/PhoneRestrictionPolicy/isRCSEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAllUser(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public final notifySmsPatternCheck()V
    .registers 4

    .line 2833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.REQUEST_SMS_PATTERN_CHECK_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2834
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSmsPatternCheckRequired()Z

    move-result v1

    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2837
    :try_start_15
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1e

    .line 2839
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2840
    throw p0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5

    .line 2112
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateDataLimitState()V

    .line 2116
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2117
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSmsMmsDeliveryHandler:Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy$SmsMmsDeliveryHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2118
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/restriction/SimDBProxy;->removeSimcardsByAdmin(I)Z

    .line 2119
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    if-ne v0, p1, :cond_27

    .line 2120
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->updateSystemUIMonitor(I)V

    .line 2122
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public final putDataCheckboxState(Z)Z
    .registers 3

    .line 2094
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2096
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dataCallPacketDataCheckBox"

    .line 2094
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallExceptionPattern()"

    .line 2674
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 2675
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingCallRestriction()"

    .line 565
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 566
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeIncomingSmsExceptionPattern()"

    .line 2769
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 2770
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    const-string v0, ""

    .line 897
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallExceptionPattern()"

    .line 2668
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 2669
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingCallRestriction()"

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 560
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.removeOutgoingSmsExceptionPattern()"

    .line 2763
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 2764
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    const-string v0, ""

    .line 889
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_b

    const-string p0, "\\s+"

    const-string v0, ""

    .line 531
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    return-object p1
.end method

.method public resetCallsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 1665
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1666
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    return v0

    .line 1669
    :cond_d
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1670
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "incomingCallCountDay"

    .line 1669
    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1671
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1672
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "outgoingCallCountDay"

    .line 1671
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1673
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1674
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "incomingCallCountWeek"

    .line 1673
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1675
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1676
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "outgoingCallCountWeek"

    .line 1675
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1677
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1678
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "incomingCallCountMonth"

    .line 1677
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1679
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1680
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "outgoingCallCountMonth"

    .line 1679
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, p1

    return p0
.end method

.method public resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 1855
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1856
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    .line 1857
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataCallBytesCountByDay"

    .line 1856
    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1858
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1859
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataCallBytesCountByWeek"

    .line 1858
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1860
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1861
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataCallByteCountByMonth"

    .line 1860
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, p1

    return p0
.end method

.method public resetSmsCount(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 1008
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 1009
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    .line 1010
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "incomingSmsCountDay"

    .line 1009
    invoke-virtual {p1, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1011
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1012
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "outgoingSmsCountDay"

    .line 1011
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1013
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1014
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "incomingSmsCountWeek"

    .line 1013
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1015
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1016
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "outgoingSmsCountWeek"

    .line 1015
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1017
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1018
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "incomingSmsCountMonth"

    .line 1017
    invoke-virtual {v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr p1, v1

    .line 1019
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1020
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "outgoingSmsCountMonth"

    .line 1019
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    and-int/2addr p0, p1

    return p0
.end method

.method public final restorePacketDataNetworkSetting()Z
    .registers 5

    .line 2072
    iget-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2073
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    if-nez v0, :cond_29

    const-string p0, "PhoneRestrictionPolicy"

    const-string v0, "Failed to get Telephony Manager"

    .line 2076
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 2079
    :cond_29
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v3

    if-nez v3, :cond_32

    .line 2080
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 2082
    :cond_32
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataCheckboxPreviousState:Z

    .line 2083
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->putDataCheckboxState(Z)Z

    :cond_37
    return v1
.end method

.method public final sendRcsBroadcast(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    .line 372
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_NEW_MESSAGE"

    .line 374
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, -0x1

    const-string/jumbo v5, "id"

    if-nez v2, :cond_57

    const-string v2, "com.samsung.rcs.framework.instantmessaging.action.RECEIVE_SEND_MESSAGE_RESPONSE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_57

    :cond_1b
    const-string v1, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_INCOMING"

    .line 384
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    const-string v2, "com.samsung.rcs.framework.filetransfer.notification.TRANSFER_COMPLETED"

    .line 385
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_72

    :cond_2b
    const-string/jumbo v2, "sessionId"

    .line 387
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 389
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_41

    const-string p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_THUMBNAIL_RECEIVED"

    .line 390
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    :cond_41
    const/4 p1, 0x0

    const-string/jumbo v1, "sessionDirection"

    .line 392
    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_51

    const-string p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_RECEIVED"

    .line 393
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    :cond_51
    const-string p1, "com.samsung.android.knox.intent.action.RCS_MSG_FILE_SENT"

    .line 395
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    :cond_57
    :goto_57
    const-string/jumbo v2, "message_id"

    .line 376
    invoke-virtual {p2, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 378
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const-string p1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_RECEIVED"

    .line 379
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_72

    :cond_6d
    const-string p1, "com.samsung.android.knox.intent.action.RCS_MSG_TEXT_SENT"

    .line 381
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_72
    :goto_72
    const-string p1, "PhoneRestrictionPolicy"

    const-string p2, "RcsReceiver, sendRcsBroadcast"

    .line 400
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public setDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 9

    .line 1757
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p2, :cond_52

    .line 1759
    iget-boolean v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v1, :cond_52

    .line 1760
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->resetDataCallLimitCounter(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 1761
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 1762
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1763
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1764
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1765
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1766
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 1767
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1768
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataCallDateDay"

    .line 1767
    invoke-virtual {v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 1769
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1770
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "dataCallDateWeek"

    .line 1769
    invoke-virtual {v3, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 1771
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1772
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dataCallDateMonth"

    .line 1771
    invoke-virtual {v3, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1774
    :cond_52
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v3, "PHONERESTRICTION"

    const-string v4, "enableLimitDataCall"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p2

    and-int/2addr p2, v0

    if-eqz p2, :cond_7e

    .line 1778
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez p1, :cond_73

    .line 1780
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1781
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    .line 1782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1784
    :cond_73
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->dataUsageTimerActivation()V

    :cond_7e
    return p2
.end method

.method public setDisclaimerText(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setDisclaimerText()"

    .line 3394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 3398
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDisclaimerText(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_20

    .line 3400
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3c

    if-le v3, v4, :cond_20

    const-string p0, ">>> PhoneRestrictionPolicy.setDisclaimerText() was failed - text is over 60 char"

    .line 3401
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_20
    const-string v3, "disclaimerText"

    const-string v4, "PHONERESTRICTION"

    if-eqz v1, :cond_3d

    .line 3408
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v4, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3410
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    if-ne p1, v1, :cond_37

    .line 3411
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, v4, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    goto :goto_45

    :cond_37
    const-string p0, ">>> PhoneRestrictionPolicy.setDisclaimerText() was failed - other admin already set text"

    .line 3415
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 3420
    :cond_3d
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, p1, v4, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    :goto_45
    return v2
.end method

.method public final setDynamicSimControl(Lcom/samsung/android/knox/ContextInfo;IIZ)I
    .registers 16

    .line 3793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDynamicSimControl >>> slotNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " function: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneRestrictionPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eqz p2, :cond_33

    if-eq p2, v0, :cond_33

    const-string p0, ">>> PhoneRestrictionPolicy.setDynamicSimControl() was failed - SlotID is invalid"

    .line 3797
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 3803
    :cond_33
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3806
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3807
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v4

    const/4 v5, -0x2

    if-eqz v4, :cond_159

    const/4 v6, 0x0

    move v8, v0

    move v7, v6

    .line 3810
    :goto_4f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_dd

    .line 3811
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    if-ne v8, p2, :cond_bc

    .line 3814
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-nez p4, :cond_ba

    .line 3815
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v7

    if-ne v7, v4, :cond_ba

    if-ne p3, v0, :cond_ba

    if-eqz v2, :cond_ba

    .line 3817
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 3818
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current Sim "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "is request for Data Block"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3821
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 3822
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    if-eqz v4, :cond_ba

    .line 3823
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is on roaming."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    invoke-virtual {v2, v6}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    :cond_ba
    move v8, v0

    goto :goto_dd

    .line 3830
    :cond_bc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current Sim is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ". Requested block Sim is not present in SlotId"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    move v8, v6

    goto/16 :goto_4f

    :cond_dd
    :goto_dd
    if-ne p3, v0, :cond_e8

    .line 3841
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowData"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_e8
    const/4 v2, 0x2

    if-ne p3, v2, :cond_f4

    .line 3844
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowIncomingCall"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_f4
    const/4 v2, 0x3

    if-ne p3, v2, :cond_100

    .line 3847
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowOutgoingCall"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_100
    const/4 v2, 0x4

    if-ne p3, v2, :cond_10c

    .line 3850
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowIncomingSMS"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_10c
    const/4 v2, 0x5

    if-ne p3, v2, :cond_118

    .line 3853
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "allowOutgoingSMS"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_118
    const/4 v2, 0x6

    if-ne p3, v2, :cond_124

    .line 3856
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "allowMMS"

    invoke-virtual {v3, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 3859
    :cond_124
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 3860
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p4, "adminUid"

    invoke-virtual {p3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3861
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "slotId"

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v8, :cond_154

    .line 3864
    :try_start_140
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "PHONERESTRICTION_SLOTID"

    invoke-virtual {p0, p1, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result p0
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_140 .. :try_end_148} :catch_14b

    if-eqz p0, :cond_154

    goto :goto_155

    :catch_14b
    move-exception p0

    const-string/jumbo p1, "setDynamicSimControl(): failed. unexpected exception - dB error"

    .line 3867
    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, -0x4

    return p0

    :cond_154
    move v0, v6

    :goto_155
    if-eqz v0, :cond_158

    move v5, v6

    :cond_158
    return v5

    :cond_159
    const-string p0, "CurrentSims list is null"

    .line 3836
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public setEmergencyCallOnly(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 6

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 779
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return p0

    .line 782
    :cond_e
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "PHONERESTRICTION"

    const-string v2, "emergencyCallOnly"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 786
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V

    return p1
.end method

.method public setIncomingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setIncomingCallExceptionPattern()"

    .line 2724
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2725
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2726
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 2730
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2731
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v1, "incomingCallExceptionPattern"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setIncomingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setIncomingCallRestriction()"

    .line 613
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 615
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 619
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 620
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v1, "incomingPattern"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setIncomingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    .line 2819
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2821
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 2825
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2826
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v1, "incomingSmsExceptionPattern"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setIncomingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 957
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 958
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "PHONERESTRICTION"

    const-string/jumbo v2, "smsRestrictionIncomingPattern"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 962
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifySmsPatternCheck()V

    return p1
.end method

.method public setLimitOfDataCalls(Lcom/samsung/android/knox/ContextInfo;JJJ)Z
    .registers 14

    .line 1805
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1806
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3a

    cmp-long v2, p4, v0

    if-ltz v2, :cond_3a

    cmp-long v0, p6, v0

    if-gez v0, :cond_15

    goto :goto_3a

    .line 1812
    :cond_15
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByDay"

    move v1, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result p2

    .line 1814
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByWeek"

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result p3

    and-int/2addr p2, p3

    .line 1816
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string v3, "dataCallByMonth"

    move-wide v4, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;Ljava/lang/String;J)Z

    move-result p0

    and-int/2addr p0, p2

    return p0

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return p0
.end method

.method public setLimitOfIncomingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z
    .registers 9

    .line 1443
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1444
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1445
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    if-ltz p2, :cond_41

    if-ltz p3, :cond_41

    if-gez p4, :cond_17

    goto :goto_41

    .line 1451
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingCallByDay"

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_32

    .line 1453
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingCallByWeek"

    invoke-virtual {p2, p1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_32

    move p2, v0

    goto :goto_33

    :cond_32
    move p2, v1

    :goto_33
    if-eqz p2, :cond_41

    .line 1455
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingCallByMonth"

    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_41

    move v1, v0

    :cond_41
    :goto_41
    return v1
.end method

.method public setLimitOfIncomingSms(Lcom/samsung/android/knox/ContextInfo;III)Z
    .registers 9

    .line 1026
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1027
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    if-ltz p2, :cond_38

    if-ltz p3, :cond_38

    if-gez p4, :cond_e

    goto :goto_38

    .line 1031
    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "incomingSmsByDay"

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_29

    .line 1033
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "incomingSmsByWeek"

    invoke-virtual {p2, p1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_29

    move p2, v1

    goto :goto_2a

    :cond_29
    move p2, v0

    :goto_2a
    if-eqz p2, :cond_38

    .line 1035
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "incomingSmsByMonth"

    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_38

    move v0, v1

    :cond_38
    :goto_38
    return v0
.end method

.method public setLimitOfOutgoingCalls(Lcom/samsung/android/knox/ContextInfo;III)Z
    .registers 9

    .line 1505
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1506
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 1507
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    if-ltz p2, :cond_41

    if-ltz p3, :cond_41

    if-gez p4, :cond_17

    goto :goto_41

    .line 1513
    :cond_17
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingCallByDay"

    invoke-virtual {v0, p1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_32

    .line 1515
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingCallByWeek"

    invoke-virtual {p2, p1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_32

    move p2, v0

    goto :goto_33

    :cond_32
    move p2, v1

    :goto_33
    if-eqz p2, :cond_41

    .line 1517
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingCallByMonth"

    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_41

    move v1, v0

    :cond_41
    :goto_41
    return v1
.end method

.method public setLimitOfOutgoingSms(Lcom/samsung/android/knox/ContextInfo;III)Z
    .registers 9

    .line 1074
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 1075
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const/4 v0, 0x0

    if-ltz p2, :cond_38

    if-ltz p3, :cond_38

    if-gez p4, :cond_e

    goto :goto_38

    .line 1079
    :cond_e
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "PHONERESTRICTION"

    const-string/jumbo v3, "outgoingSmsByDay"

    invoke-virtual {v1, p1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_29

    .line 1081
    iget-object p2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "outgoingSmsByWeek"

    invoke-virtual {p2, p1, v2, v3, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_29

    move p2, v1

    goto :goto_2a

    :cond_29
    move p2, v0

    :goto_2a
    if-eqz p2, :cond_38

    .line 1083
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo p2, "outgoingSmsByMonth"

    invoke-virtual {p0, p1, v2, p2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_38

    move v0, v1

    :cond_38
    :goto_38
    return v0
.end method

.method public final setLockedIccIdsSystemUI(I)V
    .registers 5

    .line 3379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3381
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v2}, Lcom/android/server/enterprise/restriction/SimDBProxy;->getIccIdListByAdmin()[Ljava/lang/String;

    move-result-object v2

    .line 3382
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3383
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setLockedIccIdsAsUser(I[Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 3385
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3386
    throw p0
.end method

.method public setOutgoingCallExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingCallExceptionPattern()"

    .line 2710
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2712
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 2716
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2717
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v1, "outgoingCallExceptionPattern"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOutgoingCallRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingCallRestriction()"

    .line 599
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 601
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 605
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 606
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v1, "outgoingPattern"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOutgoingSmsExceptionPattern(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.setOutgoingSmsExceptionPattern()"

    .line 2805
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 2807
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 2811
    :cond_15
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2812
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v0, "PHONERESTRICTION"

    const-string/jumbo v1, "outgoingSmsExceptionPattern"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setOutgoingSmsRestriction(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    .registers 6

    .line 939
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 941
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->removeWhiteSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 942
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    const-string v1, "PHONERESTRICTION"

    const-string/jumbo v2, "smsRestrictionOutgoingPattern"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 946
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifySmsPatternCheck()V

    return p1
.end method

.method public setRCSEnabled(Lcom/samsung/android/knox/ContextInfo;IZ)I
    .registers 5

    .line 3476
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndPhonePermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const-string v0, "enableRCS"

    .line 3477
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setRcsEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setRCSEnabledBySimSlot(Lcom/samsung/android/knox/ContextInfo;IZI)I
    .registers 6

    .line 3484
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceOwnerOnlyAndSimRestrictionPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p4, :cond_22

    if-eq p4, v0, :cond_22

    .line 3487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setRCSEnabledBySimSlot(): failed. invalid simSlotId : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PhoneRestrictionPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_22
    if-ne p4, v0, :cond_27

    const-string p4, "enableRCSForSimSlot1"

    goto :goto_29

    :cond_27
    const-string p4, "enableRCSForSimSlot0"

    .line 3495
    :goto_29
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setRcsEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final setRcsEnabledInternal(Lcom/samsung/android/knox/ContextInfo;IZLjava/lang/String;)I
    .registers 10

    const-string v0, "PHONERESTRICTION"

    .line 3501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRCSEnabledInternal(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", columnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneRestrictionPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3503
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isRCSFeature(I)Z

    move-result v1

    if-nez v1, :cond_3e

    .line 3504
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setRCSEnabledInternal(): failed. not support feature = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_3e
    const/16 v1, 0xff

    .line 3512
    :try_start_40
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4, v0, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    move v3, v1

    :goto_4a
    if-gez v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v3

    :goto_4e
    if-eqz p3, :cond_52

    or-int/2addr p2, v1

    goto :goto_54

    :cond_52
    not-int p2, p2

    and-int/2addr p2, v1

    :goto_54
    const/4 p3, 0x0

    .line 3526
    :try_start_55
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, p1, v0, p4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_5d} :catch_5e

    goto :goto_66

    :catch_5e
    move-exception p1

    const-string/jumbo p2, "setRCSEnabledInternal(): failed. unexpected exception"

    .line 3530
    invoke-static {v2, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move p1, p3

    :goto_66
    if-eqz p1, :cond_6b

    .line 3533
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->notifyRcsChangesAllUser()V

    :cond_6b
    if-eqz p1, :cond_6e

    goto :goto_6f

    :cond_6e
    const/4 p3, -0x2

    :goto_6f
    return p3
.end method

.method public final setSubIdLockEnabled(IZLjava/lang/String;)I
    .registers 6

    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "setSubIdLockEnabled "

    .line 3172
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v1, :cond_17

    .line 3175
    :try_start_c
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->setSubIdLockEnabled(IZLjava/lang/String;)I

    move-result p0
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_10} :catch_11

    return p0

    :catch_11
    const-string p0, "Failed to communicate with Sim Pin Service"

    .line 3177
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 3181
    :cond_17
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 p2, 0x3e8

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_20
    const/16 p0, 0x64

    return p0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string v0, "PhoneRestrictionPolicy"

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforcePhoneApp()V

    .line 2347
    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p2

    .line 2350
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "SMSMMSBlockedDelivery"

    const-string/jumbo v3, "smsMmsPdu"

    .line 2352
    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p4, "smsMmsSendType"

    invoke-virtual {v1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2354
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo p4, "smsMmsType"

    invoke-virtual {v1, p4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p2, "smsMmsOrigAddress"

    .line 2355
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_44

    const-string/jumbo p1, "smsMmsTimeStamp"

    .line 2357
    invoke-virtual {v1, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smsMmsMessageId"

    .line 2358
    invoke-virtual {v1, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "smsMmsSubId"

    .line 2359
    invoke-virtual {v1, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    :cond_44
    :try_start_44
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertConfiguration(Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string/jumbo p0, "sms/mms stored successfully"

    .line 2363
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4f} :catch_50

    goto :goto_55

    :catch_50
    const-string p0, "could not write sms/mms into edm database"

    .line 2365
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_55
    return-void
.end method

.method public supplyPinReportResultForSubscriber(Ljava/lang/String;I)Z
    .registers 5

    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v1, "supplyPinReportResultForSubscriber start"

    .line 3328
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3329
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    if-eqz v1, :cond_1f

    :try_start_c
    const-string/jumbo v1, "supplyPinReportResultForSubscriber call"

    .line 3331
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinService:Lcom/samsung/android/knox/restriction/ISimPinPolicy;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/knox/restriction/ISimPinPolicy;->supplyPinReportResultForSubscriber(Ljava/lang/String;I)Z

    move-result p0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    return p0

    :catch_19
    const-string p0, "Failed to communicate with Sim Pin Service"

    .line 3334
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_1f
    const-string/jumbo p1, "supplyPinReportResultForSubscriber schedule"

    .line 3337
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    iget-object p1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimPinBind:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2e
    const/4 p0, 0x0

    return p0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized unlockAllSimCards()V
    .registers 12

    monitor-enter p0

    .line 3279
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSimDbProxy:Lcom/android/server/enterprise/restriction/SimDBProxy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/SimDBProxy;->hasAnySimcard()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9e

    if-nez v0, :cond_b

    .line 3281
    monitor-exit p0

    return-void

    .line 3284
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_79

    .line 3287
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 3288
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    .line 3290
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIndex(I)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v5, v6, :cond_37

    move v5, v7

    goto :goto_38

    :cond_37
    move v5, v1

    .line 3292
    :goto_38
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    const-string v8, "PhoneRestrictionPolicy"

    .line 3294
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockAllSimCards Got iccId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " for subscriptionId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3296
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v4, :cond_73

    if-eqz v5, :cond_73

    if-eqz v3, :cond_73

    .line 3299
    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getPinCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 3301
    invoke-virtual {p0, v3, v6}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->supplyPinReportResultForSubscriber(Ljava/lang/String;I)Z

    goto :goto_19

    :cond_73
    if-eqz v5, :cond_19

    move v2, v7

    goto :goto_19

    :cond_77
    move v1, v2

    goto :goto_81

    :cond_79
    const-string v0, "PhoneRestrictionPolicy"

    const-string/jumbo v2, "unlockAllSimCards subInfoList list is null"

    .line 3308
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    :goto_81
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getKeyguardManager()Landroid/app/KeyguardManager;

    if-eqz v1, :cond_9c

    .line 3312
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_9c

    .line 3313
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_9c

    .line 3314
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.DO_KEYGUARD_INTERNAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_9c
    .catchall {:try_start_b .. :try_end_9c} :catchall_9e

    .line 3317
    :cond_9c
    monitor-exit p0

    return-void

    :catchall_9e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDataLimitState()V
    .registers 2

    .line 2100
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    const/4 v0, 0x0

    .line 2101
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getDataCallLimitEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    return-void
.end method

.method public final updateDataSimSlotValueSystemUI(IZ)Z
    .registers 11

    .line 3627
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_11

    .line 3628
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    :cond_11
    const/4 v0, 0x1

    .line 3632
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 3633
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 3635
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 3636
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    if-ne v1, p1, :cond_72

    .line 3638
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-string p1, "PhoneRestrictionPolicy"

    if-nez p2, :cond_53

    const/4 v1, 0x0

    .line 3644
    :try_start_31
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "sem_wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/wifi/SemWifiManager;

    if-eqz v5, :cond_4e

    .line 3647
    invoke-virtual {v5}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_4a

    const/16 v7, 0xc

    if-ne v6, v7, :cond_53

    .line 3650
    :cond_4a
    invoke-virtual {v5, v1, p2}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_53

    :cond_4e
    const-string v1, "Mobile Hotspot cannot be disabled"

    .line 3653
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    move-result-object p0

    .line 3657
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setCellularDataAllowedAsUser(IZ)V

    .line 3658
    invoke-virtual {p0, v2, p2}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setWifiTetheringAllowedAsUser(IZ)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_5f} :catch_62
    .catchall {:try_start_31 .. :try_end_5f} :catchall_60

    goto :goto_6a

    :catchall_60
    move-exception p0

    goto :goto_6e

    :catch_62
    move-exception p0

    :try_start_63
    const-string/jumbo p2, "updateDataSimSlotValueSystemUI failed "

    .line 3660
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_60

    const/4 v0, 0x0

    .line 3663
    :goto_6a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_72

    :goto_6e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3664
    throw p0

    :cond_72
    :goto_72
    return v0
.end method

.method public final updateDateAndCounters()V
    .registers 14

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> PhoneRestrictionPolicy.updateDateAndCounters()"

    .line 1690
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 1693
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1694
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1695
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1696
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1699
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1700
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dateDay"

    .line 1701
    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1700
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1703
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1704
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "dateWeek"

    .line 1705
    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1704
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1707
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1708
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "dateMonth"

    .line 1709
    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1708
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1711
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1714
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 1715
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1716
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1715
    invoke-virtual {v2, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1717
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1718
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "incomingCallCountDay"

    .line 1717
    invoke-virtual {v2, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1719
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1720
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "outgoingCallCountDay"

    .line 1719
    invoke-virtual {v2, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x3

    .line 1723
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v12, 0x1

    if-ne v5, v8, :cond_a4

    .line 1724
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1725
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_c5

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1726
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v2, v5, :cond_c5

    .line 1727
    :cond_a4
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1728
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1727
    invoke-virtual {v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1729
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1731
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "incomingCallCountWeek"

    .line 1729
    invoke-virtual {v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1732
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1734
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "outgoingCallCountWeek"

    .line 1732
    invoke-virtual {v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_c5
    const/4 v2, 0x2

    .line 1738
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_e4

    .line 1739
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_105

    .line 1740
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_105

    .line 1742
    :cond_e4
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1743
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1742
    invoke-virtual {v1, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1744
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1746
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "incomingCallCountMonth"

    .line 1744
    invoke-virtual {v1, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1747
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1749
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "outgoingCallCountMonth"

    .line 1747
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_105
    const-string p0, "PhoneRestrictionPolicy.updateDateAndCounters() >>>"

    .line 1752
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateDateAndCountersSms()V
    .registers 14

    const-string v0, "PhoneRestrictionPolicy"

    const-string v1, ">>> SmsRestrictionPolicy.updateDateAndCountersSms()"

    .line 1318
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    const/4 v3, 0x0

    .line 1321
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 1322
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 1323
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 1324
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1327
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1328
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "smsDateDay"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1331
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1332
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v7, "smsDateWeek"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1335
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1336
    iget-object v8, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v9, "smsDateMonth"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1338
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1340
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "current time "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 1343
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1344
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1343
    invoke-virtual {v2, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1345
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1346
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "incomingSmsCountDay"

    .line 1345
    invoke-virtual {v2, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1347
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1348
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "outgoingSmsCountDay"

    .line 1347
    invoke-virtual {v2, v8, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v2, 0x3

    .line 1351
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/4 v12, 0x1

    if-ne v5, v8, :cond_bb

    .line 1352
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1353
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_dc

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1354
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v2, v5, :cond_dc

    .line 1355
    :cond_bb
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1356
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 1355
    invoke-virtual {v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1357
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1359
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "incomingSmsCountWeek"

    .line 1357
    invoke-virtual {v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1360
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1362
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "outgoingSmsCountWeek"

    .line 1360
    invoke-virtual {v2, v7, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_dc
    const/4 v2, 0x2

    .line 1366
    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-ne v5, v6, :cond_fb

    .line 1367
    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v5, v2, :cond_11c

    .line 1368
    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v2, v1, :cond_11c

    .line 1370
    :cond_fb
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1371
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1370
    invoke-virtual {v1, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1372
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1374
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "incomingSmsCountMonth"

    .line 1372
    invoke-virtual {v1, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1375
    iget-object p0, p0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1377
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "outgoingSmsCountMonth"

    .line 1375
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_11c
    const-string p0, "SmsRestrictionPolicy.updateDateAndCountersSms() >>>"

    .line 1380
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateDateAndDataCallCounters(J)V
    .registers 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-string v3, "dataCallDateMonth"

    const-string v4, "dataCallDateWeek"

    const-string v5, "dataCallDateDay"

    .line 1947
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->enforceSystemUser()V

    .line 1949
    iget-boolean v6, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mDataLimitEnabled:Z

    if-nez v6, :cond_12

    return-void

    .line 1954
    :cond_12
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    const/16 v7, 0xb

    const/4 v8, 0x0

    .line 1955
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xc

    .line 1956
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xd

    .line 1957
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    const/16 v7, 0xe

    .line 1958
    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1961
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1963
    :try_start_2f
    iget-object v9, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_3c} :catch_3c

    .line 1968
    :catch_3c
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1970
    :try_start_40
    iget-object v10, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_4d
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_4d} :catch_4d

    .line 1975
    :catch_4d
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 1977
    :try_start_51
    iget-object v11, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/util/Calendar;->setTimeInMillis(J)V
    :try_end_5e
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_5e} :catch_5e

    .line 1982
    :catch_5e
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 1985
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v7

    const-string v13, "dataCallByteCountByMonth"

    const-string v14, "dataCallBytesCountByWeek"

    const-string v15, "dataCallBytesCountByDay"

    if-eqz v7, :cond_e9

    .line 1986
    iget-object v7, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1987
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 1986
    invoke-virtual {v7, v5, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1988
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v7, 0x0

    .line 1989
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1988
    invoke-virtual {v5, v15, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v5, 0x3

    .line 1992
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v8

    move-object/from16 v16, v15

    const/4 v15, 0x1

    if-ne v7, v8, :cond_a3

    .line 1993
    invoke-virtual {v9, v5}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 1994
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v7, v5, :cond_b6

    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 1995
    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-eq v5, v7, :cond_b6

    .line 1996
    :cond_a3
    iget-object v5, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1997
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 1996
    invoke-virtual {v5, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1998
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v5, 0x0

    .line 2000
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1998
    invoke-virtual {v4, v14, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_b6
    const/4 v4, 0x2

    .line 2004
    invoke-virtual {v10, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v7

    if-ne v5, v7, :cond_d5

    .line 2005
    invoke-virtual {v9, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v5, v4, :cond_eb

    .line 2006
    invoke-virtual {v9, v15}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v6, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_eb

    .line 2008
    :cond_d5
    iget-object v4, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 2010
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 2008
    invoke-virtual {v4, v3, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2011
    iget-object v3, v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v4, 0x0

    .line 2013
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2011
    invoke-virtual {v3, v13, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_eb

    :cond_e9
    move-object/from16 v16, v15

    :cond_eb
    :goto_eb
    const-wide/16 v3, 0x0

    cmp-long v3, v3, v1

    if-gez v3, :cond_fc

    move-object/from16 v3, v16

    .line 2017
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 2018
    invoke-virtual {v0, v14, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 2019
    invoke-virtual {v0, v13, v1, v2}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->dataLimitCounter(Ljava/lang/String;J)V

    .line 2023
    :cond_fc
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->checkDataCallLimit()Z

    move-result v1

    if-eqz v1, :cond_106

    .line 2024
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->blockDataNetwork()Z

    goto :goto_109

    .line 2026
    :cond_106
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->restorePacketDataNetworkSetting()Z

    :goto_109
    return-void
.end method

.method public final updateSystemUIMonitor(I)V
    .registers 2

    .line 3442
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->setLockedIccIdsSystemUI(I)V

    return-void
.end method

.method public final validatePinCode(Ljava/lang/String;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_1b

    .line 3363
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1b

    .line 3364
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_13

    goto :goto_1b

    .line 3368
    :cond_13
    :try_start_13
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_17} :catch_1b

    if-gez p1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x1

    :catch_1b
    :cond_1b
    :goto_1b
    return p0
.end method
