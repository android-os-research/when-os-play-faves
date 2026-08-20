.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;
.super Lcom/android/internal/util/StateMachine;
.source "WifiProfileAndQoSProvider.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/share/mcf/IMcfServiceState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CasterMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;,
        Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;
    }
.end annotation


# static fields
.field static final CMD_CASTER_SHARE_DATA_CHANGED:I = 0x7

.field static final CMD_CHECK_AND_START_SHARE:I = 0x1

.field static final CMD_CLEAR_HISTORY:I = 0xb

.field static final CMD_DISMISS_DIALOG:I = 0x5

.field static final CMD_SCREEN_OFF:I = 0xd

.field static final CMD_SHOW_PWD_CONFIRM_DIALOG:I = 0x3

.field static final CMD_STOP_PASSWORD_SHARE:I = 0xc

.field static final CMD_STOP_SHARE:I = 0x2

.field static final CMD_UNBIND_MCF_SERVICE:I = 0xa

.field static final CMD_UPDATE_PWD_BSSID_LIST:I = 0x9

.field static final CMD_UPDATE_QOS_DATA_POLL:I = 0x8

.field static final CMD_UPDATE_WIFI_INFO:I = 0xe

.field static final CMD_USER_CONFIRM:I = 0x4

.field static final EVENT_MCF_SERVICE_CONNECTED:I = 0x14

.field static final EVENT_PASSWORD_REQUESTED:I = 0x15

.field static final EVENT_PASSWORD_SESSION_CLOSED:I = 0x16

.field private static final TAG:Ljava/lang/String; = "WifiProfileShare.Caster"


# instance fields
.field private final mActiveState:Lcom/android/internal/util/State;

.field private final mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

.field private final mDefaultState:Lcom/android/internal/util/State;

.field private mEnablePasswordShare:Z

.field final mGetWhatToString:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSharedApConfigKey:Ljava/lang/String;

.field private mLastSharedStaConfigKey:Ljava/lang/String;

.field private mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

.field private final mMobileWipsDetectedBssid:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifiedUserData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mShareData:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiProfileInfo:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;


# direct methods
.method public static synthetic $r8$lambda$MqLc_MfCe021s7sd44VwNjo-75w(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->lambda$start$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActiveState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mActiveState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/android/internal/util/State;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mDefaultState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSharedApConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedApConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastSharedStaConfigKey(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedStaConfigKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastUpdatedQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileWipsDetectedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mMobileWipsDetectedBssid:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotifiedUserData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mShareData:Landroid/util/Pair;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/util/Pair;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mShareData:Landroid/util/Pair;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWifiProfileInfo(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mWifiProfileInfo:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$masyncSetUserConfirm(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->asyncSetUserConfirm(ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckAndGetShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)Landroid/util/Pair;
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->checkAndGetShareData()Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearUserConfirmHistoryInternal(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->clearUserConfirmHistoryInternal()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misIpTimeSecuredAp(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isIpTimeSecuredAp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrequestToUpdateShareData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mscreenOff(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->screenOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetEnableCaster(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->setEnableCaster(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPasswordShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->setPasswordShare(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartActivityForUserConfirm(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;ZZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->startActivityForUserConfirm(ZZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->startShare(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstopShare(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->stopShare()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateQoSDataPoll(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSDataPoll(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateWifiInfoAndConfig(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateWifiInfoAndConfig(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;Landroid/os/Looper;)V
    .registers 7

    .line 567
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    const-string p1, "WifiProfileShare.Caster"

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 550
    new-instance p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$DefaultState-IA;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mDefaultState:Lcom/android/internal/util/State;

    .line 551
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$ActiveState-IA;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mActiveState:Lcom/android/internal/util/State;

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/Class;

    .line 554
    const-class v2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 555
    invoke-static {v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mGetWhatToString:Landroid/util/SparseArray;

    .line 558
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    .line 559
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mMobileWipsDetectedBssid:Ljava/util/Set;

    .line 564
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mEnablePasswordShare:Z

    .line 935
    new-instance p2, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$1;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 571
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->addState(Lcom/android/internal/util/State;)V

    .line 572
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 575
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 p1, 0x20

    .line 576
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->setLogRecSize(I)V

    .line 577
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->setLogOnlyTransitions(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .registers 2

    .line 530
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .registers 2

    .line 530
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;I)V
    .registers 2

    .line 530
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V

    return-void
.end method

.method private asyncSetUserConfirm(ZLjava/lang/String;)V
    .registers 5

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user response to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_f

    const-string v1, "accept"

    goto :goto_11

    :cond_f
    const-string v1, "reject"

    .line 612
    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " share for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Caster"

    .line 611
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 614
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private checkAndGetShareData()Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;>;"
        }
    .end annotation

    .line 809
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misKeyguardLocked(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiProfileShare.Caster"

    if-eqz v0, :cond_11

    const-string p0, "checkAndGetShareData - device locked"

    .line 810
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 813
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$mgetUltraPowerSaveEnabledFromProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "checkAndGetShareData - emergency mode"

    .line 814
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 817
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misEnabledNearByScanningSettings(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string p0, "checkAndGetShareData - nearby scanning"

    .line 818
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 825
    :cond_2d
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentConfig()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_6d

    .line 827
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 828
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 830
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportQosProvider()Z

    move-result v4

    if-nez v4, :cond_4d

    const-string v4, "checkAndGetShareData - feature unsupported (qos share)"

    .line 831
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 832
    :cond_4d
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misEnableNetworkRecommendation(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v4

    if-nez v4, :cond_5b

    const-string v4, "checkAndGetShareData - not exist network rating provider"

    .line 833
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 834
    :cond_5b
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isAvailableToShareQoS(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_68

    const-string v4, "checkAndGetShareData(qos) - unavailable for this config"

    .line 835
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_66
    move-object v4, v1

    goto :goto_70

    .line 837
    :cond_68
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getSharedQosInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v4

    goto :goto_70

    :cond_6d
    move-object v0, v1

    move-object v3, v0

    move-object v4, v3

    .line 841
    :goto_70
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 842
    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedStaConfigKey:Ljava/lang/String;

    .line 843
    iput-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedApConfigKey:Ljava/lang/String;

    .line 844
    iget-boolean v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mEnablePasswordShare:Z

    if-nez v6, :cond_84

    const-string p0, "checkAndGetShareData(pwd) - subscriber activated"

    .line 845
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_101

    .line 846
    :cond_84
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportWifiProfileShare()Z

    move-result v6

    if-nez v6, :cond_96

    const-string p0, "checkAndGetShareData(pwd) - feature unsupported"

    .line 847
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    :cond_96
    if-nez v0, :cond_9e

    const-string v0, "checkAndGetShareData(pwd sta) - config is null"

    .line 850
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 851
    :cond_9e
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isAvailableToShareConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    if-nez v6, :cond_aa

    const-string v0, "checkAndGetShareData(pwd sta) - unavailable for this config"

    .line 852
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    .line 854
    :cond_aa
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedStaConfigKey:Ljava/lang/String;

    .line 855
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getSharedPasswordInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 857
    :goto_b7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_101

    .line 858
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_d1

    const-string p0, "checkAndGetShareData(pwd mhs) - config is null"

    .line 860
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 861
    :cond_d1
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-nez v3, :cond_ec

    .line 862
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndGetShareData(pwd mhs) - unavailable for this config "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_101

    .line 864
    :cond_ec
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastSharedApConfigKey:Ljava/lang/String;

    .line 865
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 866
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 865
    invoke-static {p0, v3, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p0

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_101
    :goto_101
    if-nez v4, :cond_10f

    .line 870
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_10f

    const-string p0, "checkAndGetShareData - there is no data"

    .line 871
    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 874
    :cond_10f
    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private clearUserConfirmHistoryInternal()V
    .registers 6

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "WifiProfileShare.Caster"

    if-eqz v1, :cond_62

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1018
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1019
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Boolean;

    if-eqz v1, :cond_4d

    const/4 v4, 0x0

    .line 1020
    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1021
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->setUserConfirm(ZLjava/lang/String;)V

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "auto reject profile sharing for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1024
    :cond_4d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "already closed confirm dialog, user data "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_62
    const-string v0, "clear all confirm history"

    .line 1027
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mNotifiedUserData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1029
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->clearUserRequestPasswordHistory()V

    return-void
.end method

.method private getCurrentConfig()Landroid/util/Pair;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 626
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mWifiProfileInfo:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;->getCurrentConfig()Landroid/util/Pair;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method private getCurrentNetworkScore()[I
    .registers 5

    .line 743
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6e

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using test network type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", score ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Caster"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object p0

    return-object p0

    .line 751
    :cond_6e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmAdapter(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;->getCurrentNetworkScore()[I

    move-result-object p0

    return-object p0
.end method

.method private getNetworkType(Landroid/net/wifi/WifiConfiguration;I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;
    .registers 6

    .line 713
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object v0

    const-string v1, "WifiProfileShare.Caster"

    if-eqz v0, :cond_38

    .line 714
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmTestQoSData(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)[I

    move-result-object p0

    const/4 p1, 0x0

    aget p0, p0, p1

    .line 715
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->from(I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    move-result-object p1

    .line 716
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getNetworkType for test, input:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " result:"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 719
    :cond_38
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NO_INTERNET:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne p2, v2, :cond_41

    return-object v0

    :cond_41
    if-eqz p1, :cond_5f

    .line 723
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 724
    iget-boolean p1, p1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    if-eqz p1, :cond_5f

    const-string p0, "captive portal configuration was set"

    .line 725
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    return-object p0

    .line 729
    :cond_5f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misWifiNetworkActivated(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 730
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/ConnectivityManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 732
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/net/ConnectivityManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_8f

    const/16 p1, 0x11

    .line 733
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_8f

    const-string p0, "captive portal capability was set"

    .line 734
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->CAPTIVE_PORTAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    return-object p0

    .line 739
    :cond_8f
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->NORMAL:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    return-object p0
.end method

.method private getPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 3

    .line 618
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p0, :cond_18

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v0

    if-eqz p0, :cond_18

    .line 620
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    .line 622
    :cond_18
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return-object p0
.end method

.method private getSharedPasswordInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;"
        }
    .end annotation

    .line 791
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getPassword(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0

    .line 792
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 793
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isIpTimeSecuredAp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 794
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 798
    :cond_17
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmScanMatcherUtil(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;

    move-result-object p0

    .line 799
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 798
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/server/wifi/share/ScanMatcherUtil;->getMcfDataListForSharingPassword(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 800
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_33

    .line 801
    invoke-static {p1, v1, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_33
    return-object p0
.end method

.method private getSharedQosInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 9

    .line 756
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentNetworkScore()[I

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "WifiProfileShare.Caster"

    if-nez v0, :cond_f

    const-string v3, "current network score is empty"

    .line 758
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 760
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current network type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", score: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :goto_49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->getQoSSpeedInt([I)[I

    move-result-object v0

    if-eqz v0, :cond_87

    .line 767
    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mMobileWipsDetectedBssid:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    const-string p2, "connected network is wips, skip to share qos"

    .line 768
    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    sget-object p2, Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;->SUSPICIOUS:Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aput p2, v0, v1

    goto :goto_71

    .line 771
    :cond_65
    aget v2, v0, v1

    invoke-direct {p0, p2, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getNetworkType(Landroid/net/wifi/WifiConfiguration;I)Lcom/samsung/android/server/wifi/share/mcf/QoSNetworkType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aput p2, v0, v1

    .line 773
    :goto_71
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createQosData(Ljava/lang/String;[I)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p2

    if-eqz p2, :cond_86

    .line 776
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->mSubscribeMode:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmCache(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getSpeedArray()[I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/WifiQoSCacheManager;->addOrUpdateScore(Ljava/lang/String;[I)V

    :cond_86
    return-object p2

    :cond_87
    const-string p0, "failed to generate qos array, need to check network score data"

    .line 780
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 5

    .line 879
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "WifiProfileShare.Caster"

    if-nez v0, :cond_15

    const-string p0, "ap mode: disabled"

    .line 880
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 883
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_2c

    const-string v0, "ap config is null from getWifiApConfiguration(), use getSoftApConfiguration()"

    .line 885
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    goto :goto_32

    .line 888
    :cond_2c
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    move-object v0, v2

    .line 890
    :goto_32
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmAdapter(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;->getApMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 891
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_43

    return-object v1

    .line 894
    :cond_43
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 895
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 896
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clear()V

    .line 897
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 899
    :cond_59
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmAdapter(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$Adapter;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    if-eqz p0, :cond_b1

    .line 901
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 902
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_8f

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8f

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 905
    :cond_8f
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 906
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v1

    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 907
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_a5

    const/4 v1, 0x3

    if-ne p0, v1, :cond_b1

    .line 910
    :cond_a5
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0}, Ljava/util/BitSet;->clear()V

    .line 911
    iget-object p0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_b1
    return-object v0
.end method

.method private isAvailableToShareConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    .line 648
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v1

    .line 649
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_2f

    iget p0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-ne p0, v2, :cond_2f

    if-eqz v1, :cond_22

    iget-boolean p0, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown:Z

    if-nez p0, :cond_2f

    .line 652
    :cond_22
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p0

    if-nez p0, :cond_2f

    .line 653
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    if-nez p0, :cond_2f

    const/4 v0, 0x1

    :cond_2f
    return v0
.end method

.method private isAvailableToShareQoS(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 3

    if-eqz p1, :cond_24

    .line 641
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isOpenNetwork()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmQosOnlyOpenNetwork(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 642
    :cond_16
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p0

    if-nez p0, :cond_24

    .line 643
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p0

    if-nez p0, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private isIpTimeSecuredAp(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "\"iptime\"WPA_PSK"

    .line 786
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "\"iptime5G\"WPA_PSK"

    .line 787
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method private isSupportedSecureConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 5

    .line 630
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    .line 631
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    .line 632
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    .line 633
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    .line 634
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-nez p0, :cond_44

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 635
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_43

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz p0, :cond_43

    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object p0, p0, v1

    if-eqz p0, :cond_43

    goto :goto_44

    :cond_43
    move v0, v1

    :cond_44
    :goto_44
    return v0
.end method

.method private synthetic lambda$start$0(I)V
    .registers 4

    const-string v0, "WifiProfileShare.Caster"

    const/16 v1, 0xd

    if-ne p1, v1, :cond_10

    const/4 p1, 0x1

    .line 587
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    const-string p0, "mobile hotspot activated"

    .line 588
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_10
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1d

    const/4 p1, 0x0

    .line 590
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    const-string p0, "mobile hotspot deactivated"

    .line 591
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    return-void
.end method

.method private requestToUpdateShareData(Z)V
    .registers 3

    const/4 v0, 0x7

    .line 674
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(II)V

    return-void
.end method

.method private screenOff()V
    .registers 2

    const/16 v0, 0xd

    .line 606
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V

    .line 607
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    return-void
.end method

.method private setEnableCaster(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 597
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->removeMessages(I)V

    if-eqz p1, :cond_c

    const-wide/16 v1, 0x3e8

    .line 599
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessageDelayed(IJ)V

    goto :goto_10

    :cond_c
    const/4 p1, 0x2

    .line 601
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    :goto_10
    return-void
.end method

.method private setPasswordShare(Z)V
    .registers 3

    .line 678
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mEnablePasswordShare:Z

    if-eqz p1, :cond_11

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mActiveState:Lcom/android/internal/util/State;

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    .line 681
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->requestToUpdateShareData(Z)V

    goto :goto_16

    :cond_11
    const/16 p1, 0xc

    .line 684
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    :cond_16
    :goto_16
    return-void
.end method

.method private startActivityForUserConfirm(ZZLjava/lang/String;)V
    .registers 7

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_a

    const-string v1, "show"

    goto :goto_c

    :cond_a
    const-string v1, "dismiss"

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " confirm dialog for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Caster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "userData"

    const-string v1, "com.android.settings"

    if-eqz p1, :cond_49

    .line 960
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.settings.wifi.ProfileShareCasterDialog"

    .line 961
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "isHotspot"

    .line 964
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 966
    :try_start_38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_43} :catch_44

    goto :goto_68

    :catch_44
    move-exception p0

    .line 968
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_68

    .line 971
    :cond_49
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.net.wifi.DISMISS_REQ_PASSWORD_DIALOG"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_55

    .line 973
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    :cond_55
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 977
    :try_start_58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Landroid/content/Context;

    move-result-object p0

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_63} :catch_64

    goto :goto_68

    :catch_64
    move-exception p0

    .line 979
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_68
    return-void
.end method

.method private startShare(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)Z"
        }
    .end annotation

    .line 918
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    if-nez p1, :cond_9

    if-eqz p2, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    .line 920
    :cond_9
    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start caster for "

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    if-eqz p1, :cond_22

    const-string v2, "qos ("

    .line 923
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    :cond_22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    const-string v4, "pwd ("

    .line 926
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_3e
    const-string v1, "size "

    .line 928
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 929
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Caster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    invoke-virtual {v0, p1, p2, p0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->startCaster(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)Z

    move-result p0

    return p0
.end method

.method private stopShare()V
    .registers 3

    const-string v0, "WifiProfileShare.Caster"

    const-string v1, "stop caster"

    .line 659
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->stopAllCasterMode()V

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    return-void
.end method

.method private updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 4

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qos data was updated , before:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " after:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.Caster"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 692
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmMcfProvider(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/share/mcf/McfController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfController;->checkAndUpdateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    return-void
.end method

.method private updateQoSDataPoll(Z)V
    .registers 4

    .line 696
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getCurrentConfig()Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p1, "WifiProfileShare.Caster"

    const-string v0, "failed to start caster, network was disconnected"

    .line 698
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 699
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    return-void

    .line 702
    :cond_12
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->isAvailableToShareQoS(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 703
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->getSharedQosInfo(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object v0

    if-eqz v0, :cond_37

    if-nez p1, :cond_34

    .line 704
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mLastUpdatedQoSData:Lcom/samsung/android/server/wifi/share/mcf/McfData;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    .line 706
    :cond_34
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->updateQoSData(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    :cond_37
    return-void
.end method

.method private updateWifiInfoAndConfig(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V
    .registers 4

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 668
    new-instance v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$WifiProfileInfo;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const/16 p1, 0xe

    .line 670
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method clearUserConfirmHistory()V
    .registers 2

    const/16 v0, 0xb

    .line 1012
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    return-void
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3

    .line 999
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3

    .line 1004
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mGetWhatToString:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    return-object v0

    .line 1008
    :cond_b
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onFailedToBindService()V
    .registers 4

    .line 992
    iget v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_f

    const-wide/16 v0, 0x1388

    const/4 v2, 0x1

    .line 993
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessageDelayed(IJ)V

    :cond_f
    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    const/16 v0, 0x14

    .line 986
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->sendMessage(I)V

    const/4 v0, 0x0

    .line 987
    iput v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->mRetryCount:I

    return-void
.end method

.method public start()V
    .registers 3

    .line 582
    invoke-super {p0}, Lcom/android/internal/util/StateMachine;->start()V

    .line 584
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$CasterMode;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiApStateListener;)V

    return-void
.end method
