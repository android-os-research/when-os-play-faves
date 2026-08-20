.class public Lcom/android/server/devicepolicy/RemoteBugreportManager;
.super Ljava/lang/Object;
.source "RemoteBugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/RemoteBugreportManager$RemoteBugreportNotificationType;
    }
.end annotation


# static fields
.field public static final BUGREPORT_MIMETYPE:Ljava/lang/String; = "application/vnd.android.bugreport"

.field public static final CTL_STOP:Ljava/lang/String; = "ctl.stop"

.field public static final NOTIFICATION_ID:I = 0x28700e57

.field public static final REMOTE_BUGREPORT_SERVICE:Ljava/lang/String; = "bugreportd"

.field public static final REMOTE_BUGREPORT_TIMEOUT_MILLIS:J = 0x927c0L


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

.field public final mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

.field public final mRemoteBugreportNonce:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

.field public final mRng:Ljava/security/SecureRandom;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$09uoz8oAKLetYjZtY1h9_UejaMA(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->lambda$new$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteBugreportConsentReceiver(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRemoteBugreportServiceIsActive(Lcom/android/server/devicepolicy/RemoteBugreportManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monBugreportFinished(Lcom/android/server/devicepolicy/RemoteBugreportManager;Landroid/content/Intent;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportFinished(Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBugreportSharingAccepted(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportSharingAccepted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBugreportSharingDeclined(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportSharingDeclined()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;)V
    .registers 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRng:Ljava/security/SecureRandom;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportNonce:Ljava/util/concurrent/atomic/AtomicLong;

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    .line 99
    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager$1;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v0, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager$2;-><init>(Lcom/android/server/devicepolicy/RemoteBugreportManager;)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 127
    iput-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 128
    iget-object p2, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 129
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$new$0()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 95
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->onBugreportFailed()V

    :cond_b
    return-void
.end method


# virtual methods
.method public final buildNotification(I)Landroid/app/Notification;
    .registers 8

    .line 133
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.settings.SHOW_REMOTE_BUGREPORT_DIALOG"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 134
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.app.extra.bugreport_notification_type"

    .line 135
    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x100000

    .line 139
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 142
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2f

    :cond_28
    const-string v0, "DevicePolicyManager"

    const-string v1, "Failed to resolve intent for remote bugreport dialog"

    .line 144
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_2f
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v1, p1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 151
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x1080a85

    .line 153
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 154
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 155
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 157
    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$TvExtender;

    invoke-direct {v1}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 159
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne p1, v1, :cond_84

    .line 162
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const p1, 0x1040d52

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 164
    invoke-virtual {p0, v3, v3, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto/16 :goto_112

    :cond_84
    if-ne p1, v2, :cond_97

    .line 166
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const p1, 0x1040df6

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0, v3, v3, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_112

    :cond_97
    const/4 v1, 0x3

    if-ne p1, v1, :cond_112

    .line 171
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x28700e57

    const/high16 v3, 0x14000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 175
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v4, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 178
    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v4, 0x1040407

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 179
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Action$Builder;

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v5, 0x1040d4c

    .line 180
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v4, v3, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 181
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 180
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v2, 0x1040d4e

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    const v2, 0x1040d4d

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    .line 186
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 190
    :cond_112
    :goto_112
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public checkForPendingBugreportAfterBoot()V
    .registers 5

    .line 336
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 339
    :cond_9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    .line 340
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    .line 341
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 343
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x28700e57

    const/4 v2, 0x3

    .line 344
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "DevicePolicyManager"

    .line 343
    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onBugreportFailed()V
    .registers 5

    .line 273
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const-string v2, "ctl.stop"

    const-string v3, "bugreportd"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const-string v2, "DevicePolicyManager"

    const v3, 0x28700e57

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "android.app.extra.BUGREPORT_FAILURE_REASON"

    .line 279
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 281
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v2, "android.app.action.BUGREPORT_FAILED"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 283
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final onBugreportFinished(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "android.intent.extra.REMOTE_BUGREPORT_NONCE"

    const-wide/16 v1, 0x0

    .line 246
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    const-string v1, "DevicePolicyManager"

    if-eqz v0, :cond_6c

    .line 247
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportNonce:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_19

    goto :goto_6c

    .line 251
    :cond_19
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 252
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 256
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_31
    const-string v0, "android.intent.extra.REMOTE_BUGREPORT_HASH"

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const v3, 0x28700e57

    if-eqz v0, :cond_4f

    .line 260
    invoke-virtual {p0, v2, p1}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_64

    .line 264
    :cond_4f
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    const/4 v0, 0x3

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 265
    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 269
    :goto_64
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 248
    :cond_6c
    :goto_6c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid nonce provided, ignoring "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBugreportSharingAccepted()V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 288
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 290
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37

    .line 291
    :cond_1a
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 292
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x28700e57

    const/4 v2, 0x2

    .line 293
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "DevicePolicyManager"

    .line 292
    invoke-virtual {v0, v3, v1, p0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_37
    :goto_37
    return-void
.end method

.method public final onBugreportSharingDeclined()V
    .registers 5

    .line 299
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 300
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    const-string v2, "ctl.stop"

    const-string v3, "bugreportd"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 304
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 306
    :cond_25
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v0, "android.app.action.BUGREPORT_SHARING_DECLINED"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final registerRemoteBugreportReceivers()V
    .registers 6

    const-string v0, "application/vnd.android.bugreport"

    .line 231
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REMOTE_BUGREPORT_DISPATCH"

    invoke-direct {v1, v2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportFinishedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_11
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_20

    :catch_12
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "DevicePolicyManager"

    const-string v3, "Failed to set type %s"

    .line 237
    invoke-static {v0, v1, v3, v2}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :goto_20
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportConsentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public requestBugreport()Z
    .registers 10

    .line 198
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "DevicePolicyManager"

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 199
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerRemoteBugreportUriAndHash()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_14

    goto :goto_78

    .line 204
    :cond_14
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v3

    .line 208
    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1a

    .line 210
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIActivityManager()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v5, v6}, Landroid/app/IActivityManager;->requestRemoteBugReport(J)V

    .line 212
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportNonce:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 213
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportServiceIsActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 214
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->registerRemoteBugreportReceivers()V

    .line 216
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    const v6, 0x28700e57

    .line 217
    invoke-virtual {p0, v5}, Lcom/android/server/devicepolicy/RemoteBugreportManager;->buildNotification(I)Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 216
    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/32 v7, 0x927c0

    invoke-virtual {v0, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_5e} :catch_66
    .catchall {:try_start_1a .. :try_end_5e} :catchall_64

    .line 225
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v5

    :catchall_64
    move-exception v0

    goto :goto_72

    :catch_66
    move-exception v0

    :try_start_67
    const-string v5, "Failed to make remote calls to start bugreportremote service"

    .line 222
    invoke-static {v2, v5, v0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6c
    .catchall {:try_start_67 .. :try_end_6c} :catchall_64

    .line 225
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    return v1

    :goto_72
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 226
    throw v0

    :cond_78
    :goto_78
    const-string p0, "Remote bugreport wasn\'t started because there\'s already one running"

    .line 200
    invoke-static {v2, p0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final shareBugreportWithDeviceOwnerIfExists(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    .line 318
    :try_start_4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 319
    iget-object v2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendBugreportToDeviceOwner(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_d} :catch_20
    .catchall {:try_start_4 .. :try_end_d} :catchall_18

    .line 326
    :goto_d
    iget-object p1, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :catchall_18
    move-exception p1

    goto :goto_34

    .line 316
    :cond_1a
    :try_start_1a
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_20} :catch_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_18

    .line 321
    :catch_20
    :try_start_20
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "android.app.extra.BUGREPORT_FAILURE_REASON"

    const/4 v2, 0x1

    .line 322
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 324
    iget-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const-string v2, "android.app.action.BUGREPORT_FAILED"

    invoke-virtual {p2, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendDeviceOwnerCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_32
    .catchall {:try_start_20 .. :try_end_32} :catchall_18

    goto :goto_d

    :goto_33
    return-void

    .line 326
    :goto_34
    iget-object p2, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mRemoteBugreportSharingAccepted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 327
    iget-object p0, p0, Lcom/android/server/devicepolicy/RemoteBugreportManager;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {p0, v1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setDeviceOwnerRemoteBugreportUriAndHash(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    throw p1
.end method
