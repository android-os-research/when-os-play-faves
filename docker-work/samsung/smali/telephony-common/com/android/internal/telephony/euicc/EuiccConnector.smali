.class public Lcom/android/internal/telephony/euicc/EuiccConnector;
.super Lcom/android/internal/telephony/StateMachine;
.source "EuiccConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DumpEuiccServiceCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;,
        Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    }
.end annotation


# static fields
.field static final blacklist LINGER_TIMEOUT_MILLIS:I = 0xea60
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private blacklist mActiveCommandCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public blacklist mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public blacklist mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private blacklist mContext:Landroid/content/Context;

.field public blacklist mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private blacklist mEuiccService:Landroid/service/euicc/IEuiccService;

.field private final blacklist mPackageMonitor:Lcom/android/internal/telephony/PackageChangeReceiver;

.field private blacklist mPm:Landroid/content/pm/PackageManager;

.field private blacklist mSelectedComponent:Landroid/content/pm/ServiceInfo;

.field private blacklist mSm:Landroid/telephony/SubscriptionManager;

.field private blacklist mTm:Landroid/telephony/TelephonyManager;

.field public blacklist mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field private final blacklist mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActiveCommandCallbacks(Lcom/android/internal/telephony/euicc/EuiccConnector;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/service/euicc/IEuiccService;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/service/euicc/IEuiccService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectedComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;Landroid/content/pm/ServiceInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateBinding(Lcom/android/internal/telephony/euicc/EuiccConnector;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->createBinding()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfindBestComponent(Lcom/android/internal/telephony/euicc/EuiccConnector;)Landroid/content/pm/ServiceInfo;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent()Landroid/content/pm/ServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSlotIdFromCardId(Lcom/android/internal/telephony/euicc/EuiccConnector;I)I
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getSlotIdFromCardId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->onCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monCommandStart(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->onCommandStart(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munbind(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->unbind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateSubscriptionInfoListForAllAccessibleEuiccs(Lcom/android/internal/telephony/euicc/EuiccConnector;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->updateSubscriptionInfoListForAllAccessibleEuiccs()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetCallback(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->getCallback(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisEuiccCommand(I)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->isEuiccCommand(I)Z

    move-result p0

    return p0
.end method

.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "EuiccConnector"

    .line 375
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;)V

    .line 346
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor-IA;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/telephony/PackageChangeReceiver;

    .line 347
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    .line 376
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const-string v0, "EuiccConnector"

    .line 381
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 346
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$EuiccPackageMonitor-IA;)V

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/telephony/PackageChangeReceiver;

    .line 347
    new-instance p2, Lcom/android/internal/telephony/euicc/EuiccConnector$1;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/euicc/EuiccConnector$1;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;)V

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 366
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    .line 382
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/euicc/EuiccConnector;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/euicc/EuiccConnector;I)V
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private blacklist createBinding()Z
    .registers 5

    .line 1102
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_d

    const-string p0, "EuiccConnector"

    const-string v0, "Attempting to create binding but no component is selected"

    .line 1103
    invoke-static {p0, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1106
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.euicc.EuiccService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1111
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    const v2, 0x4000001

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public static blacklist findBestActivity(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;
    .registers 4

    const v0, 0x10100040

    .line 172
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-static {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/pm/ComponentInfo;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ActivityInfo;

    if-nez p0, :cond_25

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid component found for intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EuiccConnector"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-object p0
.end method

.method public static blacklist findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;
    .registers 3

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.euicc.EuiccService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10100040

    .line 188
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 189
    invoke-static {p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/pm/ComponentInfo;

    move-result-object p0

    if-nez p0, :cond_1b

    const-string v0, "EuiccConnector"

    const-string v1, "No valid EuiccService implementation found"

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-object p0
.end method

.method private static blacklist findBestComponent(Landroid/content/pm/PackageManager;Ljava/util/List;)Landroid/content/pm/ComponentInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ComponentInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_32

    .line 1125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/high16 v1, -0x80000000

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1126
    invoke-static {p0, v2}, Lcom/android/internal/telephony/euicc/EuiccConnector;->isValidEuiccComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_9

    .line 1130
    :cond_1c
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->getPriority()I

    move-result v3

    if-le v3, v1, :cond_9

    .line 1131
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v0}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .line 1132
    invoke-static {v2}, Lcom/android/internal/telephony/util/TelephonyUtils;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    goto :goto_9

    :cond_32
    return-object v0
.end method

.method private blacklist findBestComponent()Landroid/content/pm/ServiceInfo;
    .registers 1

    .line 1093
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent(Landroid/content/pm/PackageManager;)Landroid/content/pm/ComponentInfo;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ServiceInfo;

    return-object p0
.end method

.method private static blacklist getCallback(Landroid/os/Message;)Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;
    .registers 4

    .line 1013
    iget v0, p0, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_4e

    .line 1037
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/os/Message;->what:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1035
    :pswitch_1e
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;

    return-object p0

    .line 1033
    :pswitch_25
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;

    return-object p0

    .line 1031
    :pswitch_2c
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;

    return-object p0

    .line 1029
    :pswitch_33
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;

    return-object p0

    .line 1027
    :pswitch_3a
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;

    return-object p0

    .line 1025
    :pswitch_41
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;

    return-object p0

    .line 1023
    :pswitch_48
    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x64
        :pswitch_48
        :pswitch_41
        :pswitch_3a
        :pswitch_48
        :pswitch_33
        :pswitch_48
        :pswitch_2c
        :pswitch_25
        :pswitch_1e
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method private blacklist getSlotIdFromCardId(I)I
    .registers 8

    const/4 v0, -0x1

    if-eq p1, v0, :cond_66

    const/4 v1, -0x2

    if-ne p1, v1, :cond_7

    goto :goto_66

    .line 1049
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 1050
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 1051
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getUiccSlotsInfo()[Landroid/telephony/UiccSlotInfo;

    move-result-object p0

    const-string v1, "EuiccConnector"

    if-eqz p0, :cond_61

    .line 1052
    array-length v2, p0

    if-nez v2, :cond_1d

    goto :goto_61

    .line 1056
    :cond_1d
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccController;->convertToCardString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1057
    :goto_26
    array-length v4, p0

    if-ge v3, v4, :cond_4c

    .line 1059
    aget-object v4, p0, v3

    if-nez v4, :cond_38

    const-string v4, "4195b83d-6cee-4999-a02f-d0b9f7079b9d"

    .line 1061
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    const-string v5, "EuiccConnector: Found UiccSlotInfo Null object."

    .line 1060
    invoke-static {v4, v5}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    .line 1064
    :cond_38
    aget-object v4, p0, v3

    if-eqz v4, :cond_41

    .line 1065
    invoke-virtual {v4}, Landroid/telephony/UiccSlotInfo;->getCardId()Ljava/lang/String;

    move-result-object v4

    goto :goto_42

    :cond_41
    const/4 v4, 0x0

    .line 1066
    :goto_42
    invoke-static {v2, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->compareIgnoreTrailingFs(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_49

    return v3

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1070
    :cond_4c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No UiccSlotInfo found for cardId: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_61
    :goto_61
    const-string p0, "UiccSlotInfo is null or empty"

    .line 1053
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    :goto_66
    return v0
.end method

.method private blacklist init(Landroid/content/Context;)V
    .registers 4

    .line 386
    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    .line 387
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "phone"

    .line 388
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mTm:Landroid/telephony/TelephonyManager;

    const-string v0, "telephony_subscription_service"

    .line 390
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSm:Landroid/telephony/SubscriptionManager;

    .line 394
    new-instance p1, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 396
    new-instance p1, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 399
    new-instance p1, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mBindingState:Lcom/android/internal/telephony/euicc/EuiccConnector$BindingState;

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 404
    new-instance p1, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 406
    new-instance p1, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;-><init>(Lcom/android/internal/telephony/euicc/EuiccConnector;Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState-IA;)V

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mConnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$ConnectedState;

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mDisconnectedState:Lcom/android/internal/telephony/euicc/EuiccConnector$DisconnectedState;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 409
    invoke-direct {p0}, Lcom/android/internal/telephony/euicc/EuiccConnector;->findBestComponent()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    if-eqz p1, :cond_5e

    .line 410
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mAvailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$AvailableState;

    goto :goto_60

    :cond_5e
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUnavailableState:Lcom/android/internal/telephony/euicc/EuiccConnector$UnavailableState;

    :goto_60
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 412
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->start()V

    .line 416
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/telephony/PackageChangeReceiver;

    iget-object v1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0, v0}, Lcom/android/internal/telephony/PackageChangeReceiver;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;)V

    .line 417
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static blacklist isEuiccCommand(I)Z
    .registers 2

    const/16 v0, 0x64

    if-lt p0, v0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static blacklist isValidEuiccComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .registers 7

    .line 1142
    invoke-static {p1}, Lcom/android/internal/telephony/util/TelephonyUtils;->getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 1143
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.WRITE_EMBEDDED_SUBSCRIPTIONS"

    .line 1147
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    const-string v3, "Package "

    const-string v4, "EuiccConnector"

    if-eqz p0, :cond_36

    .line 1150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not declare WRITE_EMBEDDED_SUBSCRIPTIONS"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1157
    :cond_36
    instance-of p0, v0, Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_3f

    .line 1158
    check-cast v0, Landroid/content/pm/ServiceInfo;

    iget-object p0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_47

    .line 1159
    :cond_3f
    instance-of p0, v0, Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_8c

    .line 1160
    check-cast v0, Landroid/content/pm/ActivityInfo;

    iget-object p0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    :goto_47
    const-string v0, "android.permission.BIND_EUICC_SERVICE"

    .line 1164
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_67

    .line 1165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not require the BIND_EUICC_SERVICE permission"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1171
    :cond_67
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz p0, :cond_74

    invoke-virtual {p0}, Landroid/content/IntentFilter;->getPriority()I

    move-result p0

    if-nez p0, :cond_72

    goto :goto_74

    :cond_72
    const/4 p0, 0x1

    return p0

    .line 1172
    :cond_74
    :goto_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not specify a priority"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1162
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can only verify services/activities"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist onCommandEnd(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .registers 4

    .line 1082
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "EuiccConnector"

    const-string v0, "Callback already removed from mActiveCommandCallbacks"

    .line 1083
    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x3

    const-wide/32 v0, 0xea60

    .line 1086
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/StateMachine;->sendMessageDelayed(IJ)V

    :cond_1e
    return-void
.end method

.method private blacklist onCommandStart(Lcom/android/internal/telephony/euicc/EuiccConnector$BaseEuiccCommandCallback;)V
    .registers 3

    .line 1076
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 1077
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method private blacklist unbind()V
    .registers 2

    const/4 v0, 0x0

    .line 1116
    iput-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private blacklist updateSubscriptionInfoListForAllAccessibleEuiccs()V
    .registers 4

    .line 1243
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCardIdForDefaultEuicc()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 1245
    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSm:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->requestEmbeddedSubscriptionInfoListRefresh()V

    goto :goto_35

    .line 1247
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/UiccCardInfo;

    .line 1248
    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->isEuicc()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1249
    iget-object v2, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSm:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/UiccCardInfo;->getCardId()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    goto :goto_19

    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public blacklist deleteSubscription(ILjava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 496
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;-><init>()V

    .line 497
    iput-object p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mIccid:Ljava/lang/String;

    .line 498
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DeleteCommandCallback;

    const/16 p2, 0x6a

    const/4 p3, 0x0

    .line 499
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist downloadSubscription(IILandroid/telephony/euicc/DownloadableSubscription;ZZLandroid/os/Bundle;Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 463
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;-><init>()V

    .line 464
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 465
    iput-boolean p4, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mSwitchAfterDownload:Z

    .line 466
    iput-boolean p5, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mForceDeactivateSim:Z

    .line 467
    iput-object p6, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mResolvedBundle:Landroid/os/Bundle;

    .line 468
    iput-object p7, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadCommandCallback;

    .line 469
    iput p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$DownloadRequest;->mPortIndex:I

    const/16 p2, 0x66

    const/4 p3, 0x0

    .line 470
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1236
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSelectedComponent="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mSelectedComponent:Landroid/content/pm/ServiceInfo;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mEuiccService="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mEuiccService:Landroid/service/euicc/IEuiccService;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mActiveCommandCount="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mActiveCommandCallbacks:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dumpEuiccService(Lcom/android/internal/telephony/euicc/EuiccConnector$DumpEuiccServiceCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x72

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 547
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist eraseSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x6d

    const/4 v1, 0x0

    .line 528
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist eraseSubscriptionsWithOptions(IILcom/android/internal/telephony/euicc/EuiccConnector$EraseCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x71

    .line 535
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist getDefaultDownloadableSubscriptionList(IZLcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 481
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;-><init>()V

    .line 482
    iput-boolean p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mForceDeactivateSim:Z

    .line 483
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetDefaultListCommandCallback;

    const/16 p2, 0x68

    const/4 p3, 0x0

    .line 484
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;ZLcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 450
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;-><init>()V

    .line 452
    iput-object p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mSubscription:Landroid/telephony/euicc/DownloadableSubscription;

    .line 453
    iput-boolean p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mForceDeactivateSim:Z

    .line 454
    iput-object p4, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$GetMetadataCommandCallback;

    const/16 p2, 0x65

    const/4 p3, 0x0

    .line 455
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist getEid(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEidCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x64

    const/4 v1, 0x0

    .line 430
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist getEuiccInfo(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccInfoCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x69

    const/4 v1, 0x0

    .line 490
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method blacklist getEuiccProfileInfoList(ILcom/android/internal/telephony/euicc/EuiccConnector$GetEuiccProfileInfoListCommandCallback;)V
    .registers 5

    const/16 v0, 0x67

    const/4 v1, 0x0

    .line 474
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist getOtaStatus(ILcom/android/internal/telephony/euicc/EuiccConnector$GetOtaStatusCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x6f

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist onHalting()V
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mPackageMonitor:Lcom/android/internal/telephony/PackageChangeReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PackageChangeReceiver;->unregister()V

    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/internal/telephony/euicc/EuiccConnector;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 1180
    invoke-static {p2}, Landroid/service/euicc/IEuiccService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/euicc/IEuiccService;

    move-result-object p1

    const/4 p2, 0x4

    .line 1181
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    const/4 p1, 0x5

    .line 1186
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public blacklist retainSubscriptions(ILcom/android/internal/telephony/euicc/EuiccConnector$RetainSubscriptionsCommandCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x6e

    const/4 v1, 0x0

    .line 541
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist startOtaIfNecessary(ILcom/android/internal/telephony/euicc/EuiccConnector$OtaStatusChangedCallback;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    const/16 v0, 0x70

    const/4 v1, 0x0

    .line 442
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public blacklist switchToSubscription(IILjava/lang/String;ZLcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 506
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;-><init>()V

    .line 507
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mIccid:Ljava/lang/String;

    .line 508
    iput-boolean p4, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mForceDeactivateSim:Z

    .line 509
    iput-object p5, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchCommandCallback;

    .line 510
    iput-boolean p6, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$SwitchRequest;->mUsePortIndex:Z

    const/16 p3, 0x6b

    .line 511
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method protected blacklist unhandledMessage(Landroid/os/Message;)V
    .registers 4

    .line 1226
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getCurrentState()Lcom/android/internal/telephony/IState;

    move-result-object p0

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_1d

    const-string p0, "null"

    goto :goto_21

    .line 1228
    :cond_1d
    invoke-interface {p0}, Lcom/android/internal/telephony/IState;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EuiccConnector"

    .line 1227
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "0db20514-5fa1-4e62-a7b7-2acf5f92c957"

    .line 1230
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EuiccConnector: Found unhandledMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    .line 1231
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1229
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist updateSubscriptionNickname(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 518
    new-instance v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;

    invoke-direct {v0}, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;-><init>()V

    .line 519
    iput-object p2, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mIccid:Ljava/lang/String;

    .line 520
    iput-object p3, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mNickname:Ljava/lang/String;

    .line 521
    iput-object p4, v0, Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;->mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;

    const/16 p2, 0x6c

    const/4 p3, 0x0

    .line 522
    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method
