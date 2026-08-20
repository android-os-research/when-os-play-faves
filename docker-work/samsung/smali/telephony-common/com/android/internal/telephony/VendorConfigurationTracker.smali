.class public Lcom/android/internal/telephony/VendorConfigurationTracker;
.super Landroid/os/Handler;
.source "VendorConfigurationTracker.java"


# static fields
.field public static final blacklist NOT_SUPPORT:Ljava/lang/String; = "0"

.field public static final blacklist SUPPORT:Ljava/lang/String; = "1"


# instance fields
.field private greylist mConfigurationLists:Ljava/util/ArrayList;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLastSetConfiguration:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private greylist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field private blacklist mVendorConfigState:Landroid/telephony/VendorConfigurationState;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/SemCommandsInterface;)V
    .registers 4

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    .line 58
    iput-object p2, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 59
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    .line 60
    new-instance p2, Landroid/telephony/VendorConfigurationState;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    invoke-direct {p2, p1}, Landroid/telephony/VendorConfigurationState;-><init>(I)V

    iput-object p2, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    .line 61
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2, v0}, Lcom/android/internal/telephony/SemCommandsInterface;->registerForVendorConfigurationChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 p1, 0x4

    .line 62
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfiguration(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist getVendorConfiguration(Landroid/os/Message;)V
    .registers 2

    if-nez p1, :cond_7

    const/4 p1, 0x2

    .line 160
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 162
    :cond_7
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->getVendorSpecificConfiguration(Landroid/os/Message;)V

    return-void
.end method

.method private final greylist log(Ljava/lang/String;)V
    .registers 4
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VCT"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist notifySystemConfigChanged(Lcom/android/internal/telephony/SemVendorConfiguration;)V
    .registers 3

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/internal/telephony/SemCommandsInterface;->setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist onVendorConfigurationChanged(Landroid/os/AsyncResult;)V
    .registers 2

    .line 130
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist parseToString(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_5

    const-string p0, "1"

    goto :goto_7

    :cond_5
    const-string p0, "0"

    :goto_7
    return-object p0
.end method

.method private blacklist processVendorConfiguration(Lcom/android/internal/telephony/SemVendorConfiguration;)V
    .registers 3

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationValue()Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setConfiguration(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist processVendorConfigurationList(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_20

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 137
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfiguration(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    goto :goto_b

    :cond_20
    return-void
.end method

.method private blacklist setConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 151
    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/VendorConfigurationState;->setData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setSingleConfigurationData(Lcom/android/internal/telephony/SemVendorConfiguration;)V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 177
    invoke-virtual {p1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/SemVendorConfiguration;->getConfigurationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfiguration(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    .line 179
    iget-object v2, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v2, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setVendorConfiguration(Ljava/util/ArrayList;)V

    goto :goto_6

    :cond_38
    return-void
.end method

.method private blacklist setVendorConfiguration(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/SemVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-eqz p1, :cond_f

    .line 167
    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 168
    iget-object v1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V

    goto :goto_1c

    .line 170
    :cond_f
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v1, p1, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->setVendorSpecificConfiguration(Ljava/util/ArrayList;Landroid/os/Message;)V

    :goto_1c
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/SemCommandsInterface;->unregisterForVendorConfigurationChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;
    .registers 2

    .line 155
    new-instance v0, Landroid/telephony/VendorConfigurationState;

    iget-object p0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-direct {v0, p0}, Landroid/telephony/VendorConfigurationState;-><init>(Landroid/telephony/VendorConfigurationState;)V

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 73
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8b

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-eq v0, v2, :cond_6a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_10

    if-eq v0, v3, :cond_6a

    goto/16 :goto_d9

    .line 107
    :cond_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 108
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_d9

    .line 110
    :try_start_18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastSetConfiguration size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mConfigurationLists.size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_5d

    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_5d

    .line 114
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mLastSetConfiguration:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    goto/16 :goto_d9

    .line 116
    :cond_5d
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V
    :try_end_62
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_62} :catch_64

    goto/16 :goto_d9

    .line 119
    :catch_64
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    goto :goto_d9

    .line 94
    :cond_6a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 95
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7e

    .line 96
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 97
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->processVendorConfigurationList(Ljava/util/ArrayList;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {v0}, Landroid/telephony/VendorConfigurationState;->toString()Ljava/lang/String;

    .line 100
    :cond_7e
    iget p1, p1, Landroid/os/Message;->what:I

    if-ne p1, v3, :cond_d9

    const-string p1, "EVENT_INIT_GET_VENDOR_CONFIGURATION: set framework ready"

    .line 101
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setFrameWorkReady(Z)V

    goto :goto_d9

    .line 75
    :cond_8b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 76
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_d9

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {v0}, Landroid/telephony/VendorConfigurationState;->isCaEnabled()Z

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {v1}, Landroid/telephony/VendorConfigurationState;->getMsimSubmode()I

    move-result v1

    .line 79
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->onVendorConfigurationChanged(Landroid/os/AsyncResult;)V

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_VENDOR_CONFIGURATION_CHANGED: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-nez p1, :cond_c1

    goto :goto_d9

    .line 85
    :cond_c1
    iget-object v2, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {v2}, Landroid/telephony/VendorConfigurationState;->isCaEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_d1

    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mVendorConfigState:Landroid/telephony/VendorConfigurationState;

    invoke-virtual {v0}, Landroid/telephony/VendorConfigurationState;->getMsimSubmode()I

    move-result v0

    if-eq v1, v0, :cond_d9

    :cond_d1
    const-string v0, "Vendor Configuration value is changed"

    .line 86
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->log(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Lcom/android/internal/telephony/ServiceStateTracker;->vendorConfigurationChanged()V

    :cond_d9
    :goto_d9
    return-void
.end method

.method public blacklist needInitVendorConfiguration()Z
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/VendorConfigurationTracker;->mConfigurationLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 v0, 0x4

    .line 228
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfiguration(Landroid/os/Message;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist notifyCarrierChanged(Ljava/lang/String;)V
    .registers 4

    .line 206
    new-instance v0, Lcom/android/internal/telephony/SemVendorConfiguration;

    const-string v1, "CARRIER_CHANGED"

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->notifySystemConfigChanged(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    return-void
.end method

.method public blacklist setFrameWorkReady(Z)V
    .registers 4

    .line 188
    new-instance v0, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->parseToString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "FW_READY"

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setSingleConfigurationData(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    return-void
.end method

.method public blacklist setIsCtc(Z)V
    .registers 4

    .line 194
    new-instance v0, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 195
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->parseToString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "IS_CTC"

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setSingleConfigurationData(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    return-void
.end method

.method public blacklist setVolte911Call(Z)V
    .registers 4

    .line 200
    new-instance v0, Lcom/android/internal/telephony/SemVendorConfiguration;

    .line 201
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/VendorConfigurationTracker;->parseToString(Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, "VOLTE_911_CALL"

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/VendorConfigurationTracker;->setSingleConfigurationData(Lcom/android/internal/telephony/SemVendorConfiguration;)V

    return-void
.end method
