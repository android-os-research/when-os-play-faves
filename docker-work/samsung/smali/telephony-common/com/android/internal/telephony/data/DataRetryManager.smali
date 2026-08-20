.class public Lcom/android/internal/telephony/data/DataRetryManager;
.super Landroid/os/Handler;
.source "DataRetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;,
        Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;
    }
.end annotation


# instance fields
.field private final blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private blacklist mDataHandoverRetryRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

.field private final blacklist mDataRetryEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataRetryManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataServiceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDataSetupRetryRuleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDataThrottlingEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRil:Lcom/android/internal/telephony/CommandsInterface;


# direct methods
.method public static synthetic blacklist $r8$lambda$426vvrgEoe6Scgv-3vzh5LI03ro(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$handleMessage$3(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9qeX16RoxSxQcnYhEhP19d-RaI8(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$handleMessage$0(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$A3s9MJMyRrsuJiVKNkAz--qairU(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onDataProfileUnthrottled$18(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$AsR2WE65TN2gfQqbLq9H_uu9V7c(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onEvaluateDataHandoverRetry$6(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Dchee514g1nxDGVUbbFCFfyf2ME(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onReset$9(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FMKc9qWXa5rH58L0q-K8I0unwLY(JLjava/lang/String;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onDataProfileUnthrottled$15(JLjava/lang/String;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$I6Rtdfw-iwcCnwe2ERkmN68yHTI(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onEvaluateDataHandoverRetry$7(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Io5J1HrCUCI7dKclmaZcFFpl_ug(JLandroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onDataProfileUnthrottled$14(JLandroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$JKtLAqLWygB3VbqPKbo4DgqtNJQ(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onCancelPendingHandoverRetry$21(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$Jm8PsZfmeydB_sVrd5wnUqh7KDQ(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$updateThrottleStatus$12(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MCFBI-RBpFks_12R-dHSCtwnelM(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onReset$8(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$RlTE7_92uxTKbkQSNx1vNAmRFog(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$updateThrottleStatus$13(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WKyi5PKysWq3Byu3ScCUdVVT-MM(Lcom/android/internal/telephony/data/DataRetryManager;IILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onDataProfileUnthrottled$16(IILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$a-CEndwerrz9qvE6s1sCV3WcWHY(Lcom/android/internal/telephony/data/DataRetryManager;IJILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$updateThrottleStatus$11(IJILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$bNTLA-0vDcSaWSmQzxzyrecN1P0(Landroid/telephony/data/DataProfile;JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$isDataProfileThrottled$20(Landroid/telephony/data/DataProfile;JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$bu8NUnjlZGfliIgNDaGWMV_pgj0(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$handleMessage$2(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g30Bct-Poj9jyDais3K28hyzO8M(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onDataProfileUnthrottled$17(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nxvgju3TGOYgkJtDrTmy33-lDgQ(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$isAnySetupRetryScheduled$19(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$o-lim-oN-APvhOJymSbftGkGCt8(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$onCancelPendingHandoverRetry$22(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$rHZT3V8PIfyhGaFVnuXtQ1QKwdU(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$isAnyHandoverRetryScheduled$23(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$rJTIE3Xpjxjcmz7m-X6fU4nA1So(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$evaluateDataSetupRetry$4(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vwlqNp0fXQ9fbmRzH0pFXJBKJGw(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$evaluateDataHandoverRetry$5(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wAMlNFeiE7-SrxGc_ZsmYIyjEK0(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$updateThrottleStatus$10(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$zMuDJu502zGij7RvXw5L6AY3yKk(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->lambda$handleMessage$1(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monReset(Lcom/android/internal/telephony/data/DataRetryManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ")V"
        }
    .end annotation

    .line 924
    invoke-direct {p0, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 146
    new-instance p4, Lcom/android/internal/telephony/LocalLog;

    const/16 v0, 0x80

    invoke-direct {p4, v0}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 152
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    .line 164
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    .line 167
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    .line 170
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    .line 177
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    .line 925
    iput-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 926
    iget-object p4, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DRM-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {v0, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 930
    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataServiceManagers:Landroid/util/SparseArray;

    .line 931
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 932
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataProfileManager()Lcom/android/internal/telephony/data/DataProfileManager;

    move-result-object p5

    iput-object p5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    const/4 v0, 0x1

    .line 933
    invoke-virtual {p3, p0, v0}, Lcom/android/internal/telephony/data/DataConfigManager;->registerForConfigUpdate(Landroid/os/Handler;I)V

    .line 935
    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataServiceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v1, 0x6

    .line 936
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForApnUnthrottled(Landroid/os/Handler;I)V

    .line 937
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getAccessNetworksManager()Lcom/android/internal/telephony/data/AccessNetworksManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/AccessNetworksManager;->isInLegacyMode()Z

    move-result v0

    if-nez v0, :cond_85

    .line 938
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataServiceManagers:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataServiceManager;

    .line 939
    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->registerForApnUnthrottled(Landroid/os/Handler;I)V

    .line 941
    :cond_85
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$1;

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$1;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/data/DataProfileManager;->registerCallback(Lcom/android/internal/telephony/data/DataProfileManager$DataProfileManagerCallback;)V

    .line 947
    new-instance p5, Lcom/android/internal/telephony/data/DataRetryManager$2;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;)V

    invoke-direct {p5, p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$2;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, p5}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    const/16 p2, 0x8

    const/4 p5, 0x0

    .line 954
    invoke-interface {p4, p0, p2, p5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 p2, 0x9

    .line 955
    invoke-interface {p4, p0, p2, p5}, Lcom/android/internal/telephony/CommandsInterface;->registerForModemReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 957
    invoke-virtual {p3}, Lcom/android/internal/telephony/data/DataConfigManager;->shouldResetDataThrottlingWhenTacChanges()Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 958
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p0, p2, p5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForAreaCodeChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_b9
    return-void
.end method

.method private blacklist getRetryFailedCount(ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;)I
    .registers 9

    .line 1271
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ltz v0, :cond_80

    .line 1272
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v3, :cond_7d

    .line 1273
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1275
    iget v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7d

    .line 1276
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_56

    const-string v3, "Invalid data retry entry detected"

    .line 1278
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDataRetryEntries="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    const-string v4, "afeab78c-c0b0-49fc-a51f-f766814d7aa6"

    .line 1281
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1283
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v5

    .line 1280
    invoke-static {v4, v3, v5}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    goto :goto_7d

    .line 1286
    :cond_56
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v4

    if-ne v4, p1, :cond_7d

    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    .line 1288
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1289
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_80

    .line 1290
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7b

    goto :goto_80

    :cond_7b
    add-int/lit8 v2, v2, 0x1

    :cond_7d
    :goto_7d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_80
    :goto_80
    return v2
.end method

.method private blacklist getRetryFailedCount(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;)I
    .registers 8

    .line 1244
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_9
    if-ltz v0, :cond_3d

    .line 1245
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz v2, :cond_3a

    .line 1246
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 1247
    iget-object v3, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne v3, p1, :cond_3a

    iget-object v3, v2, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->appliedDataRetryRule:Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;

    .line 1248
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1249
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3d

    .line 1250
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_38

    goto :goto_3d

    :cond_38
    add-int/lit8 v1, v1, 0x1

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_3d
    :goto_3d
    return v1
.end method

.method private synthetic blacklist lambda$evaluateDataHandoverRetry$5(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 5

    .line 1155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->onEvaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    return-void
.end method

.method private synthetic blacklist lambda$evaluateDataSetupRetry$4(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 7

    .line 1043
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$0(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V
    .registers 2

    .line 974
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$1(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 973
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$2(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V
    .registers 2

    .line 981
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkHandoverRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    return-void
.end method

.method private static synthetic blacklist lambda$handleMessage$3(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 980
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda20;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda20;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$isAnyHandoverRetryScheduled$23(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)Z
    .registers 4

    .line 1581
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p1, p0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private static synthetic blacklist lambda$isAnySetupRetryScheduled$19(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)Z
    .registers 5

    .line 1531
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1532
    invoke-virtual {p0, v0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    iget p0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne p0, p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method private static synthetic blacklist lambda$isDataProfileThrottled$20(Landroid/telephony/data/DataProfile;JILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 7

    .line 1547
    iget-object v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    iget-wide v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p1

    if-lez p0, :cond_14

    iget p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p3, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static synthetic blacklist lambda$onCancelPendingHandoverRetry$21(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 3

    .line 1566
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    if-eqz v0, :cond_c

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method private static synthetic blacklist lambda$onCancelPendingHandoverRetry$22(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 2

    .line 1568
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private static synthetic blacklist lambda$onDataProfileUnthrottled$14(JLandroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 7

    .line 1408
    iget-wide v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_14

    iget-object p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1409
    invoke-virtual {p0, p2}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_14

    iget p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p3, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static synthetic blacklist lambda$onDataProfileUnthrottled$15(JLjava/lang/String;ILcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 7

    .line 1416
    iget-wide v0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->expirationTimeMillis:J

    cmp-long p0, v0, p0

    if-lez p0, :cond_24

    iget-object p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1417
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    if-eqz p0, :cond_24

    iget-object p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1418
    invoke-virtual {p0}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_24

    iget p0, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    if-ne p0, p3, :cond_24

    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method private synthetic blacklist lambda$onDataProfileUnthrottled$16(IILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .registers 5

    .line 1445
    new-instance v0, Landroid/telephony/data/ThrottleStatus$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$Builder;-><init>()V

    .line 1446
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/telephony/data/ThrottleStatus$Builder;->setApnType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p3

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1447
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setSlotIndex(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1448
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setNoThrottle()Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1449
    invoke-virtual {p0, p1}, Landroid/telephony/data/ThrottleStatus$Builder;->setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1450
    invoke-virtual {p0, p2}, Landroid/telephony/data/ThrottleStatus$Builder;->setTransportType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1451
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->build()Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$onDataProfileUnthrottled$17(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V
    .registers 2

    .line 1456
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onThrottleStatusChanged(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onDataProfileUnthrottled$18(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 1455
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda21;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onEvaluateDataHandoverRetry$6(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 1197
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkHandoverRetryStopped(Lcom/android/internal/telephony/data/DataNetwork;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onEvaluateDataHandoverRetry$7(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 1196
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda23;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic blacklist lambda$onReset$8(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)Z
    .registers 2

    .line 1220
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static synthetic blacklist lambda$onReset$9(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 2

    const/4 v0, 0x4

    .line 1221
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->setState(I)V

    return-void
.end method

.method private static synthetic blacklist lambda$updateThrottleStatus$10(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;)Z
    .registers 2

    .line 1349
    iget-object p1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataProfile;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic blacklist lambda$updateThrottleStatus$11(IJILjava/lang/Integer;)Landroid/telephony/data/ThrottleStatus;
    .registers 7

    .line 1363
    new-instance v0, Landroid/telephony/data/ThrottleStatus$Builder;

    invoke-direct {v0}, Landroid/telephony/data/ThrottleStatus$Builder;-><init>()V

    .line 1364
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {v0, p5}, Landroid/telephony/data/ThrottleStatus$Builder;->setApnType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p5

    .line 1365
    invoke-virtual {p5, p1}, Landroid/telephony/data/ThrottleStatus$Builder;->setRetryType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1366
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/telephony/data/ThrottleStatus$Builder;->setSlotIndex(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1367
    invoke-virtual {p0, p2, p3}, Landroid/telephony/data/ThrottleStatus$Builder;->setThrottleExpiryTimeMillis(J)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1368
    invoke-virtual {p0, p4}, Landroid/telephony/data/ThrottleStatus$Builder;->setTransportType(I)Landroid/telephony/data/ThrottleStatus$Builder;

    move-result-object p0

    .line 1369
    invoke-virtual {p0}, Landroid/telephony/data/ThrottleStatus$Builder;->build()Landroid/telephony/data/ThrottleStatus;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic blacklist lambda$updateThrottleStatus$12(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V
    .registers 2

    .line 1374
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onThrottleStatusChanged(Ljava/util/List;)V

    return-void
.end method

.method private static synthetic blacklist lambda$updateThrottleStatus$13(Ljava/util/List;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 3

    .line 1373
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda27;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda27;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 1633
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1641
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 1657
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1658
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logv(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private blacklist onCancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 4

    .line 1566
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {v0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1568
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {p0, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private blacklist onDataConfigUpdated()V
    .registers 3

    const/4 v0, 0x5

    .line 1020
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataSetupRetryRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    .line 1022
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getDataHandoverRetryRules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataConfigUpdated: mDataSetupRetryRuleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDataHandoverRetryRuleList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZ)V
    .registers 13

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataProfileUnthrottled: data profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", apn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1390
    invoke-static {p3}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1389
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1393
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1394
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    if-eqz p1, :cond_87

    .line 1401
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataProfileManager:Lcom/android/internal/telephony/data/DataProfileManager;

    .line 1402
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 1403
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v4

    goto :goto_4e

    :cond_4d
    move-object v4, v3

    .line 1404
    :goto_4e
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object p1

    .line 1401
    invoke-virtual {p2, v4, p1}, Lcom/android/internal/telephony/data/DataProfileManager;->getDataProfile(Ljava/lang/String;Landroid/telephony/data/TrafficDescriptor;)Landroid/telephony/data/DataProfile;

    move-result-object p1

    .line 1405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataProfileUnthrottled: getDataProfile="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_a3

    .line 1407
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;

    invoke-direct {v2, v0, v1, p1, p3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda16;-><init>(JLandroid/telephony/data/DataProfile;I)V

    .line 1408
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1411
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    move-object v2, p1

    goto :goto_a3

    :cond_87
    if-eqz p2, :cond_a3

    .line 1415
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda17;

    invoke-direct {v2, v0, v1, p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda17;-><init>(JLjava/lang/String;I)V

    .line 1416
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1420
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    .line 1423
    :cond_a3
    :goto_a3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_af

    const-string p1, "onDataProfileUnthrottled: Nothing to unthrottle."

    .line 1424
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1429
    :cond_af
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 1432
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget v0, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    const/4 v1, 0x1

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-ne v0, v5, :cond_cc

    .line 1433
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget-object v3, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    move p2, v5

    goto :goto_e5

    .line 1435
    :cond_cc
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget v0, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    if-ne v0, v4, :cond_e4

    .line 1436
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    iget-object p2, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v3

    move p2, v4

    goto :goto_e5

    :cond_e4
    move p2, v1

    :goto_e5
    if-eqz v3, :cond_10f

    .line 1443
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 1444
    invoke-virtual {v3}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0, p2, p3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda18;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;II)V

    .line 1445
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 1452
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 1444
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1455
    :cond_10f
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;

    invoke-direct {p3, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda19;-><init>(Ljava/util/List;)V

    invoke-interface {p2, p3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 1458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDataProfileUnthrottled: Removing the following throttling entries. "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1460
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_131
    :goto_131
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_187

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1461
    iget p3, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->retryType:I

    const-wide/16 v6, 0x0

    if-ne p3, v5, :cond_16c

    .line 1463
    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    iget-object v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1464
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p3

    iget v0, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    .line 1465
    invoke-virtual {p3, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p3

    .line 1466
    invoke-virtual {p3, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p3

    iget-object p2, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1467
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p2

    .line 1468
    invoke-virtual {p2, v6, v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1469
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object p2

    .line 1463
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto :goto_131

    :cond_16c
    if-ne p3, v4, :cond_131

    .line 1471
    new-instance p3, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    iget-object p2, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 1472
    invoke-virtual {p3, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p2

    .line 1473
    invoke-virtual {p2, v6, v7}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1474
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p2

    .line 1471
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto :goto_131

    :cond_187
    if-eqz p4, :cond_18e

    .line 1478
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_18e
    return-void
.end method

.method private blacklist onEvaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 14

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvaluateDataHandoverRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-static {p2}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1160
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getTransport()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->getTargetTransport(I)I

    move-result v6

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p3, v0

    if-eqz v0, :cond_123

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-nez v0, :cond_47

    goto/16 :goto_123

    :cond_47
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-eqz v0, :cond_75

    .line 1174
    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    .line 1175
    invoke-virtual {p2, p3, p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p2

    check-cast p2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1176
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object p2

    .line 1177
    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p2

    .line 1179
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 1180
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    const/4 v5, 0x3

    iget-wide v7, p2, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    move-object v1, p0

    move-object v4, p1

    .line 1179
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;->updateThrottleStatus(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    .line 1183
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto/16 :goto_14a

    .line 1188
    :cond_75
    iget-object p3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_7b
    :goto_7b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_14a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;

    .line 1189
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 1190
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getFailCauses()Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 1191
    :cond_9f
    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->getRetryFailedCount(Lcom/android/internal/telephony/data/DataNetwork;Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryRule;)I

    move-result v0

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found matching rule "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", failed count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getMaxRetries()I

    move-result v1

    if-ne v0, v1, :cond_e9

    .line 1194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Data handover retry failed for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " times. Stopped handover retry."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1196
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance p2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;

    invoke-direct {p2, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda22;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    invoke-interface {p0, p2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1201
    :cond_e9
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v1

    .line 1203
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1202
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1201
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1204
    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;-><init>()V

    .line 1205
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1206
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->setDataNetwork(Lcom/android/internal/telephony/data/DataNetwork;)Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    move-result-object v0

    .line 1207
    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p4

    check-cast p4, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;

    .line 1208
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    move-result-object p4

    .line 1204
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto/16 :goto_7b

    .line 1164
    :cond_123
    :goto_123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Network suggested never retry handover for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getDataProfile()Landroid/telephony/data/DataProfile;

    move-result-object v2

    .line 1170
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetwork;->getAttachedNetworkRequestList()Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    move-result-object v3

    const/4 v5, 0x3

    const-wide v7, 0x7fffffffffffffffL

    move-object v1, p0

    move-object v4, p1

    .line 1169
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/data/DataRetryManager;->updateThrottleStatus(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    :cond_14a
    :goto_14a
    return-void
.end method

.method private blacklist onEvaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 15

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEvaluateDataSetupRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    invoke-static {p2}, Landroid/telephony/AccessNetworkConstants;->transportTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1052
    invoke-static {p4}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retryDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1050
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p5, v0

    if-eqz v0, :cond_1c5

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p5, v0

    if-nez v0, :cond_4e

    goto/16 :goto_1c5

    :cond_4e
    const-wide/16 v0, -0x1

    cmp-long v0, p5, v0

    const/4 v1, 0x1

    if-eqz v0, :cond_84

    .line 1067
    new-instance p4, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1068
    invoke-virtual {p4, p5, p6}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p4

    check-cast p4, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1069
    invoke-virtual {p4, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p4

    .line 1070
    invoke-virtual {p4, p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p4

    .line 1071
    invoke-virtual {p4, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p4

    .line 1072
    invoke-virtual {p4, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p4

    .line 1073
    invoke-virtual {p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object p4

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1074
    iget-wide v6, p4, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryElapsedTime:J

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->updateThrottleStatus(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    .line 1077
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    goto/16 :goto_1e7

    .line 1080
    :cond_84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "mDataSetupRetryRuleList="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->logv(Ljava/lang/String;)V

    .line 1083
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p5, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p5}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result p5

    invoke-static {p1, p4, p5}, Landroid/telephony/DataFailCause;->isPermanentFailure(Landroid/content/Context;II)Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 1084
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Stopped timer-based retry. cause="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Landroid/telephony/DataFailCause;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1090
    :cond_c5
    invoke-static {p3}, Lcom/android/internal/telephony/data/DataUtils;->getGroupedNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Ljava/util/List;

    move-result-object p1

    .line 1091
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move p5, p3

    :cond_cf
    :goto_cf
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_1bd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    .line 1092
    invoke-virtual {p6, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v0

    .line 1094
    iget-object v2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_cf

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;

    .line 1095
    invoke-virtual {v3, v0, p4}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;->canBeMatched(II)Z

    move-result v4

    if-eqz v4, :cond_eb

    .line 1098
    invoke-virtual {p6, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 1097
    invoke-virtual {p0, p5, p2}, Lcom/android/internal/telephony/data/DataRetryManager;->isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z

    move-result p5

    if-eqz p5, :cond_122

    .line 1099
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " already had similar retry scheduled."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1104
    :cond_122
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->getRetryFailedCount(ILcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryRule;)I

    move-result p5

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "For capability "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", found matching rule "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", failed count="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getMaxRetries()I

    move-result v2

    if-ne p5, v2, :cond_17a

    .line 1109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Data retry failed for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " times. Stopped timer-based data retry for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1111
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". Condition-based retry will still happen when condition changes."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1109
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    return-void

    .line 1117
    :cond_17a
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v0

    .line 1119
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;->getRetryIntervalsMillis()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1118
    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result p5

    .line 1117
    invoke-interface {v0, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Long;

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1122
    new-instance p5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {p5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    .line 1123
    invoke-virtual {p5, v4, v5}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p5

    check-cast p5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    .line 1124
    invoke-virtual {p5, v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;->setAppliedRetryRule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryRule;)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object p5

    check-cast p5, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    const/4 v0, 0x2

    .line 1125
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p5

    .line 1126
    invoke-virtual {p5, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p5

    .line 1127
    invoke-virtual {p5, p6}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object p5

    .line 1128
    invoke-virtual {p5}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object p5

    .line 1122
    invoke-direct {p0, p5}, Lcom/android/internal/telephony/data/DataRetryManager;->schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V

    move p5, v1

    goto/16 :goto_cf

    :cond_1bd
    if-nez p5, :cond_1e7

    const-string p1, "onEvaluateDataSetupRetry: Did not match any retry rule. Stop timer-based retry."

    .line 1136
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    goto :goto_1e7

    .line 1058
    :cond_1c5
    :goto_1c5
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Network suggested never retry for "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide v6, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v5, p2

    .line 1063
    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager;->updateThrottleStatus(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    :cond_1e7
    :goto_1e7
    return-void
.end method

.method private blacklist onReset(I)V
    .registers 6

    .line 1216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove all retry and throttling entries, reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/internal/telephony/data/DataRetryManager;->resetReasonToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 1217
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x4

    .line 1218
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1219
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda13;-><init>()V

    .line 1220
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda14;-><init>()V

    .line 1221
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1223
    iget-object p1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1224
    iget-object v1, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->dataProfile:Landroid/telephony/data/DataProfile;

    .line 1225
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 1226
    invoke-virtual {v1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    goto :goto_5b

    :cond_5a
    const/4 v2, 0x0

    .line 1227
    :goto_5b
    iget v0, v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;->transport:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZ)V

    goto :goto_3d

    .line 1230
    :cond_62
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static blacklist resetReasonToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1a
    const-string p0, "TAC_CHANGED"

    return-object p0

    :pswitch_1d
    const-string p0, "DATA_CONFIG_CHANGED"

    return-object p0

    :pswitch_20
    const-string p0, "DATA_SERVICE_BOUND"

    return-object p0

    :pswitch_23
    const-string p0, "MODEM_RESTART"

    return-object p0

    :pswitch_26
    const-string p0, "RADIO_ON"

    return-object p0

    :pswitch_29
    const-string p0, "DATA_PROFILES_CHANGED"

    return-object p0

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method private blacklist schedule(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;)V
    .registers 5

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scheduled data retry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1308
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_29

    .line 1311
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1318
    :cond_29
    instance-of v0, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v0, :cond_2f

    const/4 v0, 0x3

    goto :goto_30

    :cond_2f
    const/4 v0, 0x4

    :goto_30
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->retryDelayMillis:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private blacklist updateThrottleStatus(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V
    .registers 23
    .param p4    # I
        .annotation build Landroid/telephony/data/ThrottleStatus$RetryType;
        .end annotation
    .end param

    move-object v6, p0

    .line 1341
    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    move-object v7, v0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, p4

    move-wide/from16 v13, p6

    invoke-direct/range {v7 .. v14}, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;-><init>(Landroid/telephony/data/DataProfile;Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;Lcom/android/internal/telephony/data/DataNetwork;IIJ)V

    .line 1343
    iget-object v1, v6, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_23

    .line 1344
    iget-object v1, v6, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1348
    :cond_23
    iget-object v1, v6, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda24;-><init>(Landroid/telephony/data/DataProfile;)V

    invoke-interface {v1, v2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add throttling entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1353
    iget-object v1, v6, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p6, v0

    if-nez v0, :cond_54

    const/4 v0, 0x1

    move v2, v0

    goto :goto_56

    :cond_54
    move/from16 v2, p4

    .line 1360
    :goto_56
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 1362
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;

    move-object v0, v9

    move-object v1, p0

    move-wide/from16 v3, p6

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda25;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;IJI)V

    .line 1363
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 1370
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 1362
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1373
    :cond_89
    iget-object v0, v6, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda26;

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda26;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public blacklist cancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 3

    const/4 v0, 0x7

    .line 1557
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 1669
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1670
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/internal/telephony/data/DataRetryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Data Setup Retry rules:"

    .line 1672
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1674
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataSetupRetryRuleList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1675
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Data Handover Retry rules:"

    .line 1676
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1678
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataHandoverRetryRuleList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataConfigManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;)V

    invoke-interface {p2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1679
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Retry entries:"

    .line 1681
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1683
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;

    .line 1684
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_6a

    .line 1686
    :cond_7a
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Throttling entries:"

    .line 1688
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1690
    iget-object p2, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataRetryManager$DataThrottlingEntry;

    .line 1691
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_8b

    .line 1693
    :cond_9b
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, "Local logs:"

    .line 1695
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1697
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1698
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1699
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist evaluateDataHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;IJ)V
    .registers 12

    .line 1155
    new-instance v6, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Lcom/android/internal/telephony/data/DataNetwork;IJ)V

    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .registers 16

    .line 1043
    new-instance v8, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/data/DataRetryManager;Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    invoke-virtual {p0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 966
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_a4

    .line 1012
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    goto/16 :goto_a2

    :pswitch_1d
    const/4 p1, 0x6

    .line 993
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    goto/16 :goto_a2

    :pswitch_23
    const/4 p1, 0x3

    .line 990
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    goto/16 :goto_a2

    :pswitch_29
    const/4 p1, 0x2

    .line 987
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onReset(I)V

    goto/16 :goto_a2

    .line 1009
    :pswitch_2f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataNetwork;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->onCancelPendingHandoverRetry(Lcom/android/internal/telephony/data/DataNetwork;)V

    goto/16 :goto_a2

    .line 996
    :pswitch_38
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 997
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1001
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v1, p1, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4e

    .line 1002
    check-cast p1, Ljava/lang/String;

    goto :goto_59

    .line 1003
    :cond_4e
    instance-of v1, p1, Landroid/telephony/data/DataProfile;

    if-eqz v1, :cond_58

    .line 1004
    check-cast p1, Landroid/telephony/data/DataProfile;

    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    goto :goto_59

    :cond_58
    move-object p1, v2

    :goto_59
    const/4 v1, 0x1

    .line 1006
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataProfileUnthrottled(Landroid/telephony/data/DataProfile;Ljava/lang/String;IZ)V

    goto :goto_a2

    .line 977
    :pswitch_5e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    .line 978
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 980
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_a2

    .line 983
    :cond_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handover was cancelled earlier. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->log(Ljava/lang/String;)V

    goto :goto_a2

    .line 971
    :pswitch_8d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 972
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    invoke-interface {p0, v0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_a2

    .line 968
    :pswitch_9f
    invoke-direct {p0}, Lcom/android/internal/telephony/data/DataRetryManager;->onDataConfigUpdated()V

    :goto_a2
    return-void

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_5
        :pswitch_8d
        :pswitch_5e
        :pswitch_5
        :pswitch_38
        :pswitch_2f
        :pswitch_29
        :pswitch_23
        :pswitch_1d
    .end packed-switch
.end method

.method public blacklist isAnyHandoverRetryScheduled(Lcom/android/internal/telephony/data/DataNetwork;)Z
    .registers 4

    .line 1578
    const-class v0, Lcom/android/internal/telephony/data/DataRetryManager$DataHandoverRetryEntry;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1579
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1580
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/DataNetwork;)V

    .line 1581
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isAnySetupRetryScheduled(Landroid/telephony/data/DataProfile;I)Z
    .registers 5

    .line 1528
    const-class v0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 1529
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1530
    new-instance v1, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/data/DataProfile;I)V

    .line 1531
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isDataProfileThrottled(Landroid/telephony/data/DataProfile;I)Z
    .registers 6

    .line 1545
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1546
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataThrottlingEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v2, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/android/internal/telephony/data/DataRetryManager$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/data/DataProfile;JI)V

    invoke-interface {p0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimilarNetworkRequestRetryScheduled(Lcom/android/internal/telephony/data/TelephonyNetworkRequest;I)Z
    .registers 9

    .line 1492
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_75

    .line 1493
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v3, :cond_72

    .line 1494
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    .line 1495
    invoke-virtual {v3}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry;->getState()I

    move-result v4

    if-ne v4, v1, :cond_72

    iget v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->setupRetryType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_72

    .line 1498
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5b

    const-string v2, "Invalid data retry entry detected"

    .line 1500
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/DataRetryManager;->logl(Ljava/lang/String;)V

    .line 1501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDataRetryEntries="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryEntries:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/DataRetryManager;->loge(Ljava/lang/String;)V

    const-string v3, "781af571-f55d-476d-b510-7a5381f633dc"

    .line 1503
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1505
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v4

    .line 1502
    invoke-static {v3, v2, v4}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    goto :goto_72

    .line 1508
    :cond_5b
    iget-object v4, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->networkRequestList:Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v2

    .line 1509
    invoke-virtual {p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getApnTypeNetworkCapability()I

    move-result v4

    if-ne v2, v4, :cond_72

    iget v2, v3, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;->transport:I

    if-ne v2, p2, :cond_72

    return v1

    :cond_72
    :goto_72
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_75
    return v2
.end method

.method public blacklist registerCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    .line 1591
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist unregisterCallback(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .registers 2

    .line 1600
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataRetryManager;->mDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
