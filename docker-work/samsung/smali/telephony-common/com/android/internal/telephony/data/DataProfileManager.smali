.class public Lcom/android/internal/telephony/data/DataProfileManager;
.super Landroid/os/Handler;
.source "DataProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;
    }
.end annotation


# instance fields
.field private final blacklist mAllDataProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private final blacklist mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private final blacklist mDataProfileManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mPreferredDataProfile:Landroid/telephony/data/DataProfile;

.field private blacklist mPreferredDataProfileSetId:I

.field private final blacklist mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$4E4HndCKSTuhDtagf-R9tpfYvJ8(ILandroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateInitialAttachDataProfileAtModem$7(ILandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$6pNxHpyrdOtw1T5nDPU6WnUT4Ws(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getPreferredDataProfileFromConfig$5(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BPq-EA0_7JXw5Ft26Dnpjrx-stM(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getDataProfile$13(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$CYwPX0W-mY2zeKuj_x1hd11M9OI(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateDataProfiles$3(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$E_6IQCJiIV4qvc_uwX2BNOvcjE4(Landroid/telephony/data/DataProfile;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateDataProfiles$2(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$KKLvhx9LywyTqXUhp-dSK5Ari6U(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getApnSettingForNetworkRequest$8(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$QgGgtr4eB7Jh93dHbGVoU_NFYo4(ILandroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getPreferredDataProfileFromDb$4(ILandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$YNTJR5QEOXUqqO5gFlmr2rWobGI(ILandroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getApnSettingForNetworkRequest$9(ILandroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ajI9ssvzte9Atd2RItsO7fdL_kI(Landroid/telephony/data/TrafficDescriptor;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getDataProfile$11(Landroid/telephony/data/TrafficDescriptor;Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$ekWH8Bp-UcAmwpndjhi3a885qF4(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getApnSettingForNetworkRequest$10(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$f1nAi1CaQb9GHTcV8evWbfWrw1o(Landroid/telephony/data/DataProfile;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateDataProfiles$1(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$f4zvW-jDwdEIRkYKkNyglM_RDwg(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateInitialAttachDataProfileAtModem$6(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$nnJEwsF4nUJZtu2XS-lHg2HNt8w(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$getDataProfile$12(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zN5nYL1uSez3PTa_mumndSfo4YI(Landroid/telephony/data/DataProfile;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->lambda$updateDataProfiles$0(Landroid/telephony/data/DataProfile;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monInternetDataNetworkConnected(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->onInternetDataNetworkConnected(Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 8

    .line 157
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 97
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 109
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    const/4 p4, 0x0

    .line 112
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 115
    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    const/4 p4, 0x0

    .line 118
    iput p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    .line 121
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DPM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    .line 161
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    .line 162
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 163
    invoke-interface {p4, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->registerAllEvents()V

    return-void
.end method

.method private blacklist bitmaskHasTech1xEvdo(I)Z
    .registers 2

    .line 1036
    invoke-static {p1}, Landroid/telephony/ServiceState;->convertNetworkTypeBitmaskToBearerBitmask(I)I

    move-result p0

    xor-int/lit16 p0, p0, 0x8f8

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private blacklist buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;
    .registers 4

    .line 614
    new-instance p0, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {p0}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 615
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 616
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 617
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 618
    invoke-virtual {p0, p2}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 619
    invoke-virtual {p0, p3}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 620
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    const/4 p1, -0x1

    .line 621
    invoke-virtual {p0, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    move-result-object p0

    .line 622
    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method private blacklist dedupeDataProfiles(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 800
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_6d

    .line 801
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    add-int/lit8 v2, v0, 0x1

    move v3, v2

    .line 803
    :goto_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6b

    .line 804
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/data/DataProfile;

    .line 805
    invoke-static {v1, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->mergeDataProfiles(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Landroid/telephony/data/DataProfile;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 807
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Created a merged profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 809
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Merging data profiles will not be supported anymore. Please directly configure the merged profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " in the APN config."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    .line 812
    invoke-interface {p1, v0, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 813
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_12

    :cond_68
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_6b
    move v0, v2

    goto :goto_1

    :cond_6d
    return-void
.end method

.method private static blacklist getApnProfileID(Ljava/lang/String;)I
    .registers 2

    const-string v0, "ims"

    .line 1062
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x2

    return p0

    :cond_a
    const-string v0, "fota"

    .line 1064
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 p0, 0x3

    return p0

    :cond_14
    const-string v0, "cbs"

    .line 1066
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p0, 0x4

    return p0

    :cond_1e
    const-string v0, "ia"

    .line 1068
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 p0, 0x3ee

    return p0

    :cond_29
    const-string v0, "dun"

    .line 1070
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 p0, 0x1

    return p0

    :cond_33
    const-string v0, "mms"

    .line 1073
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const/4 p0, 0x5

    return p0

    :cond_3d
    const-string v0, "hipri"

    .line 1075
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 p0, 0x7

    return p0

    :cond_47
    const-string v0, "supl"

    .line 1077
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_51

    const/4 p0, 0x6

    return p0

    :cond_51
    const-string v0, "emergency"

    .line 1079
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const/16 p0, 0x3e9

    return p0

    :cond_5c
    const-string v0, "bip"

    .line 1081
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_67

    const/16 p0, 0x3eb

    return p0

    :cond_67
    const-string v0, "xcap"

    .line 1083
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_72

    const/16 p0, 0xe

    return p0

    :cond_72
    const-string v0, "rcs"

    .line 1085
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/16 p0, 0x3f1

    return p0

    :cond_7d
    const-string v0, "mcx"

    .line 1087
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_88

    const/16 p0, 0x3f0

    return p0

    :cond_88
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getApnSettingForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/ApnSetting;
    .registers 10

    const/4 v0, 0x1

    .line 700
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    const-string p1, "Network request does not have APN setting attribute."

    .line 702
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-object v1

    .line 708
    :cond_e
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    .line 709
    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 713
    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;-><init>()V

    .line 714
    invoke-interface {v2, v3}, Ljava/util/Comparator;->thenComparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v2

    .line 713
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 715
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 716
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataProfile;

    .line 717
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Satisfied profile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", last setup="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getLastSetupTimestamp()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->logv(Ljava/lang/String;)V

    goto :goto_41

    .line 720
    :cond_72
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_8d

    .line 721
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find any data profile that can satisfy "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1

    .line 726
    :cond_8d
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda8;-><init>(I)V

    .line 727
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 729
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 730
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c3

    .line 731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t find any data profile for network type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 731
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1

    .line 737
    :cond_c3
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;

    invoke-direct {p2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 738
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 742
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 743
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_f7

    .line 744
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Can\'t find any data profile has APN set id matched. mPreferredDataProfileSetId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1

    :cond_f7
    const/4 p0, 0x0

    .line 749
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getEnterpriseDataProfile()Landroid/telephony/data/DataProfile;
    .registers 8

    .line 226
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->DPC_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    const-string v0, "Cannot access APN database through telephony provider."

    .line 229
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_1d
    move-object p0, v1

    .line 234
    :cond_1e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_51

    .line 235
    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 237
    new-instance p0, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p0}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 238
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    new-instance v3, Landroid/telephony/data/TrafficDescriptor;

    .line 239
    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p0, v3}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    const/4 v2, 0x0

    .line 240
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    const/16 v2, 0x1d

    .line 242
    invoke-virtual {p0, v2}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 247
    :cond_51
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object p0
.end method

.method private blacklist getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDefaultPreferredApn()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_27

    .line 440
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 443
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    .line 444
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/data/DataProfile;

    return-object p0

    :cond_27
    return-object v2
.end method

.method private blacklist getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;
    .registers 8

    .line 412
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 414
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "name ASC"

    .line 412
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    .line 418
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_52

    .line 419
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    .line 420
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 421
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda3;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda3;-><init>(I)V

    .line 422
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 424
    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    .line 425
    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 427
    :cond_52
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 429
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreferredDataProfileFromDb: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist getPreferredDataProfileSetId()I
    .registers 8

    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_SET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 361
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v0, "apn_set_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_30

    const-string v0, "getPreferredDataProfileSetId: cursor is null"

    .line 367
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v2

    .line 372
    :cond_30
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_3d

    const-string v0, "getPreferredDataProfileSetId: no APNs found"

    .line 373
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    goto :goto_48

    .line 376
    :cond_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 377
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 380
    :goto_48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method private blacklist isCdmaApn(I)Z
    .registers 2

    if-eqz p1, :cond_a

    .line 1053
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->bitmaskHasTech1xEvdo(I)Z

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$getApnSettingForNetworkRequest$10(Landroid/telephony/data/DataProfile;)Z
    .registers 4

    .line 738
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 739
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 741
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-ne p1, p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private synthetic blacklist lambda$getApnSettingForNetworkRequest$8(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .registers 2

    .line 713
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$getApnSettingForNetworkRequest$9(ILandroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 727
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 728
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->canSupportNetworkType(I)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static synthetic blacklist lambda$getDataProfile$11(Landroid/telephony/data/TrafficDescriptor;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 924
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/telephony/data/TrafficDescriptor;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$getDataProfile$12(Landroid/telephony/data/DataProfile;)Z
    .registers 4

    .line 931
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 932
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    .line 934
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-ne p1, p0, :cond_1f

    :cond_1d
    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method private static synthetic blacklist lambda$getDataProfile$13(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 935
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$getPreferredDataProfileFromConfig$5(Ljava/lang/String;Landroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 441
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 442
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    .line 441
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method private static synthetic blacklist lambda$getPreferredDataProfileFromDb$4(ILandroid/telephony/data/DataProfile;)Z
    .registers 3

    .line 422
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 423
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    if-ne p1, p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static synthetic blacklist lambda$updateDataProfiles$0(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    const/16 v0, 0x1d

    .line 283
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$updateDataProfiles$1(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    const/4 v0, 0x4

    .line 296
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$updateDataProfiles$2(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    const/16 v0, 0xa

    .line 310
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$updateDataProfiles$3(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 2

    .line 349
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic blacklist lambda$updateInitialAttachDataProfileAtModem$6(Landroid/telephony/data/DataProfile;)Ljava/lang/Boolean;
    .registers 2

    .line 521
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$updateInitialAttachDataProfileAtModem$7(ILandroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 526
    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->apnTypeToNetworkCapability(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->canSatisfy(I)Z

    move-result p0

    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1273
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1281
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 1298
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    .line 1289
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist mergeDataProfiles(Landroid/telephony/data/DataProfile;Landroid/telephony/data/DataProfile;)Landroid/telephony/data/DataProfile;
    .registers 6

    .line 832
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return-object v1

    .line 839
    :cond_16
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_1cc

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-nez v0, :cond_24

    goto/16 :goto_1cc

    .line 842
    :cond_24
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting;->similar(Landroid/telephony/data/ApnSetting;)Z

    move-result v0

    if-nez v0, :cond_33

    return-object v1

    .line 845
    :cond_33
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    .line 846
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    .line 847
    new-instance v1, Landroid/telephony/data/ApnSetting$Builder;

    invoke-direct {v1}, Landroid/telephony/data/ApnSetting$Builder;-><init>()V

    .line 851
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 852
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    const/16 v2, 0x11

    .line 853
    invoke-virtual {p1, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 854
    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting;->canHandleType(I)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 855
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 856
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setEntryName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 860
    :cond_6a
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 861
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7d

    :cond_79
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 860
    :goto_7d
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 862
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8c

    .line 863
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    goto :goto_90

    :cond_8c
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v2

    .line 862
    :goto_90
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 864
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_9e

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v2

    goto :goto_a2

    :cond_9e
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v2

    :goto_a2
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsc(Landroid/net/Uri;)Landroid/telephony/data/ApnSetting$Builder;

    .line 865
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 866
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    goto :goto_b8

    :cond_b4
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v2

    .line 865
    :goto_b8
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyAddress(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 867
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v2

    if-ne v2, v3, :cond_c6

    .line 868
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v2

    goto :goto_ca

    :cond_c6
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMmsProxyPort()I

    move-result v2

    .line 867
    :goto_ca
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMmsProxyPort(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 869
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_dc

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v2

    goto :goto_e0

    :cond_dc
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v2

    :goto_e0
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setUser(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 870
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f2

    .line 871
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    goto :goto_f6

    :cond_f2
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v2

    .line 870
    :goto_f6
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 872
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    if-ne v2, v3, :cond_104

    .line 873
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    goto :goto_108

    :cond_104
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v2

    .line 872
    :goto_108
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setAuthType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 874
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setApnTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 875
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    if-gtz v2, :cond_122

    .line 876
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    goto :goto_126

    :cond_122
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v2

    .line 875
    :goto_126
    invoke-virtual {v1, v2}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV4(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 877
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v2

    if-gtz v2, :cond_134

    .line 878
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result p1

    goto :goto_138

    :cond_134
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result p1

    .line 877
    :goto_138
    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMtuV6(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 882
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnName(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 883
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 884
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setRoamingProtocol(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 885
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierEnabled(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 886
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setNetworkTypeBitmask(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 887
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getLingeringNetworkTypeBitmask()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/telephony/data/ApnSetting$Builder;->setLingeringNetworkTypeBitmask(J)Landroid/telephony/data/ApnSetting$Builder;

    .line 888
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setProfileId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 889
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setPersistent(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 890
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConns()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConns(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 891
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getWaitTime()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setWaitTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 892
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMaxConnsTime()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMaxConnsTime(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 893
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMvnoType()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoType(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 894
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMvnoMatchData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setMvnoMatchData(Ljava/lang/String;)Landroid/telephony/data/ApnSetting$Builder;

    .line 895
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setApnSetId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 896
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getCarrierId()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setCarrierId(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 897
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getSkip464Xlat()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setSkip464Xlat(I)Landroid/telephony/data/ApnSetting$Builder;

    .line 898
    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->isAlwaysOn()Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/telephony/data/ApnSetting$Builder;->setAlwaysOn(Z)Landroid/telephony/data/ApnSetting$Builder;

    .line 900
    new-instance p1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {p1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 901
    invoke-virtual {v1}, Landroid/telephony/data/ApnSetting$Builder;->build()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 902
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 903
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0

    :cond_1cc
    :goto_1cc
    return-object v1
.end method

.method private blacklist onDataConfigUpdated()V
    .registers 2

    const-string v0, "Update data profiles due to config updated."

    .line 214
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles()V

    return-void
.end method

.method private blacklist onInternetDataNetworkConnected(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;)V"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_5

    return-void

    .line 398
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda7;-><init>()V

    .line 399
    invoke-static {v0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 400
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/data/DataProfile;

    .line 402
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    .line 403
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles()V

    return-void
.end method

.method private blacklist registerAllEvents()V
    .registers 5

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$1;

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager$1;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataConfigManager;->registerForConfigUpdate(Landroid/os/Handler;I)V

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Lcom/android/internal/telephony/data/DataProfileManager$2;

    invoke-direct {v3, p0, p0}, Lcom/android/internal/telephony/data/DataProfileManager$2;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private blacklist setApnNeeded(Ljava/lang/Object;)Z
    .registers 6

    .line 1203
    check-cast p1, Landroid/telephony/data/DataProfile;

    .line 1205
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1215
    :cond_a
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getBearerBitmask()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->isCdmaApn(I)Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    .line 1220
    :cond_15
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v0

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_1f

    return v1

    .line 1226
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VZW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 1227
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->isVzwSim()Z

    move-result v0

    if-eqz v0, :cond_39

    return v2

    .line 1232
    :cond_39
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "USC"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1233
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ACG"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5e

    return v2

    .line 1238
    :cond_5e
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->isAlwaysOnPdnRequiredByOperator()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 1239
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->isAlwaysOnPdnRequiredByModem()Z

    move-result p0

    if-eqz p0, :cond_7a

    .line 1240
    :cond_6a
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result p0

    const/16 v0, 0x11

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_7a

    .line 1241
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result p0

    if-eqz p0, :cond_7a

    return v2

    :cond_7a
    return v1
.end method

.method private blacklist setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V
    .registers 5

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredDataProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 459
    sget-object v1, Landroid/provider/Telephony$Carriers;->PREFERRED_APN_URI:Landroid/net/Uri;

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 460
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    .line 461
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz p1, :cond_54

    .line 463
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 464
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 467
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "apn_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_54
    return-void
.end method

.method private blacklist updateDataProfiles()V
    .registers 11

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_8c

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v1, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filtered/subId/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 259
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 258
    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    .line 257
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_47

    const-string v0, "Cannot access APN database through telephony provider."

    .line 261
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return-void

    .line 265
    :cond_47
    :goto_47
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_89

    .line 266
    invoke-static {v1}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_47

    .line 268
    new-instance v5, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v5}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 269
    invoke-virtual {v5, v4}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v5

    new-instance v6, Landroid/telephony/data/TrafficDescriptor;

    .line 270
    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, v3}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {v5, v6}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v4

    .line 271
    invoke-virtual {v4, v2}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v4

    .line 272
    invoke-virtual {v4}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v4

    .line 273
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_47

    .line 277
    :cond_89
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_8c
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda11;-><init>()V

    .line 283
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 284
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 285
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_c2

    .line 287
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getEnterpriseDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v1

    if-eqz v1, :cond_c2

    .line 289
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added enterprise profile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 295
    :cond_c2
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda12;-><init>()V

    .line 296
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 297
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 298
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_103

    .line 300
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    const/16 v4, 0x40

    const-string v5, "DEFAULT IMS"

    const-string v6, "ims"

    .line 301
    invoke-direct {p0, v5, v6, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    new-instance v4, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v4, v6, v3}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    .line 303
    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 300
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Added default IMS data profile."

    .line 305
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 309
    :cond_103
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v4, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda13;-><init>()V

    .line 310
    invoke-interface {v1, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 311
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    if-nez v1, :cond_144

    .line 314
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    const/16 v4, 0x200

    const-string v5, "DEFAULT EIMS"

    const-string v6, "sos"

    .line 315
    invoke-direct {p0, v5, v6, v4}, Lcom/android/internal/telephony/data/DataProfileManager;->buildDefaultApnSetting(Ljava/lang/String;Ljava/lang/String;I)Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    new-instance v4, Landroid/telephony/data/TrafficDescriptor;

    invoke-direct {v4, v6, v3}, Landroid/telephony/data/TrafficDescriptor;-><init>(Ljava/lang/String;[B)V

    .line 317
    invoke-virtual {v1, v4}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object v1

    .line 314
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Added default EIMS data profile."

    .line 319
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 322
    :cond_144
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->dedupeDataProfiles(Ljava/util/List;)V

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data profiles. profiles = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_17c

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_18c

    :cond_17c
    const-string v1, "Data profiles changed."

    .line 328
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 330
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v4

    .line 335
    :cond_18c
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updatePreferredDataProfile()Z

    move-result v0

    or-int/2addr v0, v2

    .line 337
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileSetId()I

    move-result v1

    .line 338
    iget v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    if-eq v1, v2, :cond_1b0

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changed preferred data profile set id to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 340
    iput v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    goto :goto_1b1

    :cond_1b0
    move v4, v0

    .line 344
    :goto_1b1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfilesAtModem()V

    .line 345
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateInitialAttachDataProfileAtModem()V

    if-eqz v4, :cond_1c3

    .line 348
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    :cond_1c3
    return-void
.end method

.method private blacklist updateDataProfilesAtModem()V
    .registers 8

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 558
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v3

    iget v4, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    const/4 v5, -0x1

    if-eq v3, v4, :cond_5e

    .line 559
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v3

    if-ne v3, v5, :cond_2f

    goto :goto_5e

    .line 589
    :cond_2f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDataProfilesAtModem]: APN set id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " does not match the preferred set id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 592
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnSetId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    goto :goto_b

    .line 561
    :cond_5e
    :goto_5e
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataProfileManager;->setApnNeeded(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    goto :goto_b

    .line 564
    :cond_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDataProfilesAtModem]: need to syncProfile : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 565
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZW"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "), isPreferred : "

    const-string v6, "[updateDataProfilesAtModem] add profile ("

    if-eqz v3, :cond_e2

    const-string v3, "persist.radio.pcovalue"

    .line 566
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_e2

    .line 568
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getProfileId()I

    move-result v3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_e2

    .line 569
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_e2

    const-string v3, "[updateDataProfilesAtModem]: Sync APN2 disabled to modem if PCO 5"

    .line 571
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->createDataProfileEnabled(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 573
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 574
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 577
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 580
    :cond_e2
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 581
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getSupportedApnTypesBitmask()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 581
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 584
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 598
    :cond_10d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDataProfilesAtModem: set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data profiles."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 600
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    const/4 v2, 0x0

    .line 599
    invoke-virtual {v1, v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->setDataProfile(Ljava/util/List;ZLandroid/os/Message;)V

    return-void
.end method

.method private blacklist updateInitialAttachDataProfileAtModem()V
    .registers 7

    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 521
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 522
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 524
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->getAllowedInitialAttachApnTypes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 525
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda16;

    invoke-direct {v5, v3}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda16;-><init>(I)V

    .line 526
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 527
    invoke-interface {v3}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v3

    .line 528
    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/data/DataProfile;

    if-eqz v3, :cond_29

    .line 532
    :cond_52
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 533
    iput-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial attach data profile updated as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_85

    .line 538
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 539
    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoamingFromRegistration()Z

    move-result p0

    .line 538
    invoke-virtual {v1, v0, p0, v2}, Lcom/android/internal/telephony/data/DataServiceManager;->setInitialAttachApn(Landroid/telephony/data/DataProfile;ZLandroid/os/Message;)V

    :cond_85
    return-void
.end method

.method private blacklist updatePreferredDataProfile()Z
    .registers 5

    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 481
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 483
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 486
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->setPreferredDataProfile(Landroid/telephony/data/DataProfile;)V

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 493
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 494
    invoke-virtual {v2, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/data/DataProfile;->setPreferred(Z)V

    goto :goto_23

    .line 497
    :cond_37
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 498
    iput-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changed preferred data profile to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->logl(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_59
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist createDataProfileEnabled(Landroid/telephony/data/ApnSetting;Z)Landroid/telephony/data/DataProfile;
    .registers 8

    .line 1096
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProfileId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_2a

    .line 1098
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    const/16 v3, 0x11

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_13

    move v0, v1

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    if-ne v0, v2, :cond_2a

    .line 1102
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1103
    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataProfileManager;->getApnProfileID(Ljava/lang/String;)I

    move-result v0

    .line 1106
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/ApnSetting;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 1110
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getNetworkTypeBitmask()I

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_44

    .line 1114
    :cond_3b
    invoke-static {v3}, Landroid/telephony/ServiceState;->bearerBitmapHasCdma(I)Z

    move-result v1

    if-eqz v1, :cond_43

    const/4 v1, 0x2

    goto :goto_44

    :cond_43
    const/4 v1, 0x1

    .line 1120
    :goto_44
    new-instance v4, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v4}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    .line 1121
    invoke-virtual {v4, v0}, Landroid/telephony/data/DataProfile$Builder;->setProfileId(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1122
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setApn(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1123
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1124
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setAuthType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1125
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setUserName(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1126
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/telephony/data/DataProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1127
    invoke-virtual {v0, v1}, Landroid/telephony/data/DataProfile$Builder;->setType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object v0

    .line 1131
    invoke-virtual {v0, p2}, Landroid/telephony/data/DataProfile$Builder;->enable(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 1132
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setSupportedApnTypesBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 1133
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setRoamingProtocolType(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 1134
    invoke-virtual {p2, v3}, Landroid/telephony/data/DataProfile$Builder;->setBearerBitmask(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 1135
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    if-eq v0, v2, :cond_9c

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v0

    goto :goto_9e

    :cond_9c
    const/16 v0, 0x5dc

    :goto_9e
    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setMtuV4(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 1136
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    if-eq v0, v2, :cond_ad

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getMtuV6()I

    move-result v0

    goto :goto_af

    :cond_ad
    const/16 v0, 0x500

    :goto_af
    invoke-virtual {p2, v0}, Landroid/telephony/data/DataProfile$Builder;->setMtuV6(I)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p2

    .line 1138
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->isPersistent()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/telephony/data/DataProfile$Builder;->setPersistent(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p1

    .line 1139
    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile$Builder;->setPreferred(Z)Landroid/telephony/data/DataProfile$Builder;

    move-result-object p0

    .line 1140
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p0

    return-object p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 1309
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataProfileManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Data profiles for the current carrier:"

    .line 1313
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1315
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/data/DataProfile;

    .line 1316
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", last setup time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1318
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getLastSetupTimestamp()J

    move-result-wide v3

    .line 1317
    invoke-static {v3, v4}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    .line 1320
    :cond_6c
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1322
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile from db="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromDb()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile from config="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->getPreferredDataProfileFromConfig()Landroid/telephony/data/DataProfile;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preferred data profile set id="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfileSetId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1326
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Initial attach data profile="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mInitialAttachDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTetheringDataProfileExisting="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->isTetheringDataProfileExisting(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Local logs:"

    .line 1330
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1331
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1332
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1333
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1334
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getDataProfile(Ljava/lang/String;Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return-object v0

    .line 919
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    if-eqz p2, :cond_22

    .line 923
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/data/TrafficDescriptor;)V

    .line 924
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 925
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/util/List;

    :cond_22
    if-eqz p1, :cond_45

    .line 930
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataProfileManager;)V

    .line 931
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/data/DataProfileManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 936
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    .line 939
    :cond_45
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4c

    goto :goto_54

    :cond_4c
    const/4 p0, 0x0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/telephony/data/DataProfile;

    :goto_54
    return-object v0
.end method

.method public blacklist getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/DataProfile;
    .registers 7

    const/4 v0, 0x1

    .line 635
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 637
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/DataProfileManager;->getApnSettingForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/ApnSetting;

    move-result-object p2

    goto :goto_e

    :cond_d
    move-object p2, v1

    .line 640
    :goto_e
    new-instance v0, Landroid/telephony/data/TrafficDescriptor$Builder;

    invoke-direct {v0}, Landroid/telephony/data/TrafficDescriptor$Builder;-><init>()V

    const/4 v2, 0x2

    .line 641
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_23

    if-eqz p2, :cond_23

    .line 644
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/TrafficDescriptor$Builder;->setDataNetworkName(Ljava/lang/String;)Landroid/telephony/data/TrafficDescriptor$Builder;

    :cond_23
    const/4 v2, 0x4

    .line 648
    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 650
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getOsAppId()Landroid/telephony/data/TrafficDescriptor$OsAppId;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 652
    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/data/TrafficDescriptor$Builder;->setOsAppId([B)Landroid/telephony/data/TrafficDescriptor$Builder;

    .line 658
    :cond_37
    :try_start_37
    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$Builder;->build()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_37 .. :try_end_3b} :catch_90

    .line 668
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/DataProfile;

    .line 669
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v3

    invoke-static {p2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 670
    invoke-virtual {v2}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/telephony/data/TrafficDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    return-object v2

    .line 678
    :cond_62
    new-instance v1, Landroid/telephony/data/DataProfile$Builder;

    invoke-direct {v1}, Landroid/telephony/data/DataProfile$Builder;-><init>()V

    if-eqz p2, :cond_6c

    .line 680
    invoke-virtual {v1, p2}, Landroid/telephony/data/DataProfile$Builder;->setApnSetting(Landroid/telephony/data/ApnSetting;)Landroid/telephony/data/DataProfile$Builder;

    .line 684
    :cond_6c
    invoke-virtual {v1, v0}, Landroid/telephony/data/DataProfile$Builder;->setTrafficDescriptor(Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile$Builder;

    .line 686
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile$Builder;->build()Landroid/telephony/data/DataProfile;

    move-result-object p2

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created data profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object p2

    .line 661
    :catch_90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find a data profile for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_32

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    goto :goto_35

    :cond_20
    const-string p1, "Update data profiles due to SIM refresh."

    .line 197
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles()V

    goto :goto_35

    :cond_29
    const-string p1, "Update data profiles due to APN db updated."

    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    .line 202
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->updateDataProfiles()V

    goto :goto_35

    .line 194
    :cond_32
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->onDataConfigUpdated()V

    :goto_35
    return-void
.end method

.method public blacklist isAlwaysOnPdnRequiredByModem()Z
    .registers 6

    const-string v0, "ro.boot.hardware"

    const-string v1, ""

    .line 1155
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    .line 1158
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "EUR"

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1159
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1160
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "LTN"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_35
    return v2

    :cond_36
    const-string v1, "mt"

    .line 1166
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 1167
    :cond_4f
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataProfileManager;->isSupportingVoWIFI()Z

    move-result v0

    if-eqz v0, :cond_56

    return v1

    .line 1171
    :cond_56
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_67

    return v1

    :cond_67
    return v2
.end method

.method public blacklist isAlwaysOnPdnRequiredByOperator()Z
    .registers 3

    .line 1147
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1148
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isAnyPreferredDataProfileExisting()Z
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mAllDataProfiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataProfile;

    .line 790
    invoke-virtual {v0}, Landroid/telephony/data/DataProfile;->isPreferred()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isDataProfilePreferred(Landroid/telephony/data/DataProfile;)Z
    .registers 2

    .line 759
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPreferredDataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p1, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSupportingVoWIFI()Z
    .registers 4

    .line 1180
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1181
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    .line 1180
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v0

    .line 1182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isSupportingVoWIFI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataProfileManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method public blacklist isTetheringDataProfileExisting(I)Z
    .registers 6

    .line 771
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->isTetheringProfileDisabledForRoaming()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 772
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 776
    :cond_16
    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v3, 0x2

    .line 778
    invoke-virtual {v2, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 779
    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v0, v2, v3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;)V

    .line 780
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfileForNetworkRequest(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Landroid/telephony/data/DataProfile;

    move-result-object p0

    if-eqz p0, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1
.end method

.method public blacklist isVzwSim()Z
    .registers 12

    .line 948
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 950
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    const-string v0, "isVzwSim: failed to get SIM operator"

    .line 951
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->loge(Ljava/lang/String;)V

    return v2

    :cond_13
    const/16 v1, 0x8

    const-string v3, "311480"

    const-string v4, "311270"

    const-string v5, "312770"

    const-string v6, "311390"

    const-string v7, "310028"

    const-string v8, "310004"

    const-string v9, "24681"

    const-string v10, "246081"

    .line 955
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v3

    move v4, v2

    :goto_2a
    const/4 v5, 0x1

    if-ge v4, v1, :cond_39

    .line 965
    aget-object v6, v3, v4

    .line 966
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    return v5

    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 972
    :cond_39
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "VZW"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_63

    const/4 p0, 0x2

    const-string v1, "00101"

    const-string v3, "001010"

    .line 983
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    move v3, v2

    :goto_55
    if-ge v3, p0, :cond_63

    .line 989
    aget-object v4, v1, v3

    .line 990
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    return v5

    :cond_60
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    :cond_63
    return v2
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 2

    .line 1256
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V
    .registers 2

    .line 1265
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataProfileManager;->mDataProfileManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
