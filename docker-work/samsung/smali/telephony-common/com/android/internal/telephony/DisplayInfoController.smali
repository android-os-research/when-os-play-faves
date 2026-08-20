.class public Lcom/android/internal/telephony/DisplayInfoController;
.super Landroid/os/Handler;
.source "DisplayInfoController.java"


# static fields
.field private static final blacklist VALID_DISPLAY_INFO_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mLogTag:Ljava/lang/String;

.field private final blacklist mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

.field private final blacklist mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    const/16 v0, 0xd

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x2

    .line 58
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 57
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const/4 v3, 0x3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 59
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const/4 v4, 0x5

    .line 62
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 61
    invoke-static {v0, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    const/16 v5, 0x14

    .line 65
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    .line 53
    invoke-static {v1, v2, v3, v0, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/DisplayInfoController;->VALID_DISPLAY_INFO_SET:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 4

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-direct {v0}, Lcom/android/internal/telephony/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLogTag:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/NetworkTypeController;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/NetworkTypeController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/DisplayInfoController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    const/4 p0, 0x0

    .line 78
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    .line 173
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 181
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLogTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logel(Ljava/lang/String;)V
    .registers 2

    .line 198
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;->loge(Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logl(Ljava/lang/String;)V
    .registers 2

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DisplayInfoController;->log(Ljava/lang/String;)V

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist validateDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)V
    .registers 5

    .line 124
    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_84

    .line 127
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    if-gez v0, :cond_32

    .line 128
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v0

    const/16 v1, 0x14

    if-gt v0, v1, :cond_17

    goto :goto_32

    .line 129
    :cond_17
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_32
    :goto_32
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v0

    if-eqz v0, :cond_a7

    sget-object v0, Lcom/android/internal/telephony/DisplayInfoController;->VALID_DISPLAY_INFO_SET:Ljava/util/Set;

    .line 134
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 135
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 134
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_a7

    .line 136
    :cond_55
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid network type override "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getOverrideNetworkType()I

    move-result v2

    .line 137
    invoke-static {v2}, Landroid/telephony/TelephonyDisplayInfo;->overrideNetworkTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Landroid/telephony/TelephonyDisplayInfo;->getNetworkType()I

    move-result p1

    .line 139
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_84
    new-instance p1, Ljavax/sip/InvalidArgumentException;

    const-string v0, "LTE_CA is not a valid network type."

    invoke-direct {p1, v0}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8c
    .catch Ljavax/sip/InvalidArgumentException; {:try_start_0 .. :try_end_8c} :catch_8c

    :catch_8c
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DisplayInfoController;->logel(Ljava/lang/String;)V

    const-string v0, "3aa92a2c-94ed-46a0-a744-d6b1dfec2a55"

    .line 144
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Ljavax/sip/InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    .line 144
    invoke-static {v0, p1, p0}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;I)V

    :cond_a7
    :goto_a7
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 206
    new-instance v0, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, "DisplayInfoController:"

    .line 207
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPhone="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTelephonyDisplayInfo="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is5gAvailable="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 211
    invoke-virtual {v1}, Landroid/telephony/TelephonyDisplayInfo;->is5gAvailable()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, "Local logs:"

    .line 214
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 216
    iget-object p2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p2, " ***************************************"

    .line 218
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/NetworkTypeController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public blacklist getTelephonyDisplayInfo()Landroid/telephony/TelephonyDisplayInfo;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    return-object p0
.end method

.method public blacklist registerForTelephonyDisplayInfoChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5

    .line 156
    new-instance v0, Lcom/android/internal/telephony/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/telephony/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 157
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/RegistrantList;->add(Lcom/android/internal/telephony/Registrant;)V

    return-void
.end method

.method public blacklist unregisterForTelephonyDisplayInfoChanged(Landroid/os/Handler;)V
    .registers 2

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist updateTelephonyDisplayInfo()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_14

    .line 96
    :cond_10
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v0

    .line 97
    :goto_14
    new-instance v1, Landroid/telephony/TelephonyDisplayInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 98
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkTypeController;->getOverrideNetworkType()I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/telephony/TelephonyDisplayInfo;-><init>(II)V

    .line 100
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/NetworkTypeController;->getIs5gAvailable()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyDisplayInfo;->set5gAvailable(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyDisplayInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TelephonyDisplayInfo changed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is5gAvailable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 106
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkTypeController;->getIs5gAvailable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", NetworkTypeController.ovrrNtwkType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mNetworkTypeController:Lcom/android/internal/telephony/NetworkTypeController;

    .line 107
    invoke-virtual {v2}, Lcom/android/internal/telephony/NetworkTypeController;->getOverrideNetworkType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", NrState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 108
    invoke-interface {v2}, Lcom/android/internal/telephony/PhoneInternalInterface;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DisplayInfoController;->logl(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DisplayInfoController;->validateDisplayInfo(Landroid/telephony/TelephonyDisplayInfo;)V

    .line 111
    iput-object v1, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/internal/telephony/DisplayInfoController;->mTelephonyDisplayInfo:Landroid/telephony/TelephonyDisplayInfo;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->notifyDisplayInfoChanged(Landroid/telephony/TelephonyDisplayInfo;)V

    :cond_8d
    return-void
.end method
