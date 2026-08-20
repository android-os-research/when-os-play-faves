.class public Lcom/android/internal/telephony/RatRatcheter;
.super Ljava/lang/Object;
.source "RatRatcheter.java"


# instance fields
.field private blacklist mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private final blacklist mRatFamilyMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mresetRatFamilyMap(Lcom/android/internal/telephony/RatRatcheter;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    .line 186
    new-instance v0, Lcom/android/internal/telephony/RatRatcheter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/RatRatcheter$1;-><init>(Lcom/android/internal/telephony/RatRatcheter;)V

    iput-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    :try_start_1d
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 87
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    .line 89
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1d .. :try_end_36} :catch_37

    goto :goto_52

    :catch_37
    move-exception p1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package name not found: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RilRatcheter"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_52
    invoke-direct {p0}, Lcom/android/internal/telephony/RatRatcheter;->resetRatFamilyMap()V

    return-void
.end method

.method private blacklist isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z
    .registers 9

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 156
    :try_start_5
    invoke-virtual {p1, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 158
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    .line 155
    invoke-static {v3}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v3

    .line 160
    invoke-virtual {p2, v1, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v1

    .line 159
    invoke-static {v1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v1

    const/16 v4, 0x13

    const/16 v5, 0xe

    if-ne v3, v5, :cond_2a

    .line 169
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p1

    if-eqz p1, :cond_2a

    move v3, v4

    :cond_2a
    if-ne v1, v5, :cond_33

    .line 174
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p1

    if-eqz p1, :cond_33

    move v1, v4

    :cond_33
    if-ne v3, v1, :cond_37

    .line 178
    monitor-exit v0

    return v2

    .line 179
    :cond_37
    iget-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_42

    .line 180
    monitor-exit v0

    return p2

    .line 182
    :cond_42
    iget-object p1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p1, p0, :cond_51

    goto :goto_52

    :cond_51
    move v2, p2

    :goto_52
    monitor-exit v0

    return v2

    :catchall_54
    move-exception p0

    .line 183
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    throw p0
.end method

.method private blacklist ratchetRat(II)I
    .registers 6

    .line 99
    invoke-static {p1}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result p1

    .line 100
    invoke-static {p2}, Landroid/telephony/ServiceState;->networkTypeToRilRadioTechnology(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 102
    :try_start_b
    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseIntArray;

    if-nez v2, :cond_17

    .line 104
    monitor-exit v1

    return p2

    .line 107
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseIntArray;

    if-eq p0, v2, :cond_23

    .line 109
    monitor-exit v1

    return p2

    :cond_23
    const/4 p2, -0x1

    .line 113
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 114
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-le v2, p0, :cond_2f

    goto :goto_30

    :cond_2f
    move p1, v0

    .line 115
    :goto_30
    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_36
    move-exception p0

    .line 117
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_36

    throw p0
.end method

.method private blacklist resetRatFamilyMap()V
    .registers 14

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 200
    iget-object v1, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 201
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_1a

    .line 202
    monitor-exit v0

    return-void

    .line 203
    :cond_1a
    iget-object v2, p0, Lcom/android/internal/telephony/RatRatcheter;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_28

    .line 204
    monitor-exit v0

    return-void

    :cond_28
    const-string v2, "ratchet_rat_families"

    .line 211
    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_32

    .line 212
    monitor-exit v0

    return-void

    .line 213
    :cond_32
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_35
    if-ge v4, v2, :cond_9f

    aget-object v5, v1, v4

    const-string v6, ","

    .line 214
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 215
    array-length v6, v5

    const/4 v7, 0x2

    if-ge v6, v7, :cond_44

    goto :goto_9c

    .line 216
    :cond_44
    new-instance v6, Landroid/util/SparseIntArray;

    array-length v7, v5

    invoke-direct {v6, v7}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 218
    array-length v7, v5

    move v8, v3

    move v9, v8

    :goto_4d
    if-ge v8, v7, :cond_9c

    aget-object v10, v5, v8
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_a1

    .line 221
    :try_start_51
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_59} :catch_86
    .catchall {:try_start_51 .. :try_end_59} :catchall_a1

    .line 226
    :try_start_59
    iget-object v12, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_78

    const-string v5, "RilRatcheter"

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RAT listed twice: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    :cond_78
    add-int/lit8 v10, v9, 0x1

    .line 230
    invoke-virtual {v6, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    iget-object v9, p0, Lcom/android/internal/telephony/RatRatcheter;->mRatFamilyMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v11, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    move v9, v10

    goto :goto_4d

    :catch_86
    const-string v5, "RilRatcheter"

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException on "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    :goto_9c
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 234
    :cond_9f
    monitor-exit v0

    return-void

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_59 .. :try_end_a3} :catchall_a1

    throw p0
.end method

.method public static blacklist updateBandwidths([ILandroid/telephony/ServiceState;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 69
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->sum()I

    move-result v1

    .line 70
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    if-le v2, v1, :cond_1f

    .line 73
    invoke-virtual {p1, p0}, Landroid/telephony/ServiceState;->setCellBandwidths([I)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0
.end method


# virtual methods
.method public blacklist ratchet(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)V
    .registers 11

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RatRatcheter;->isSameRatFamily(Landroid/telephony/ServiceState;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string p0, "RilRatcheter"

    const-string p1, "Same cell cannot have different RAT Families. Likely bug."

    .line 128
    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 132
    fill-array-data v1, :array_48

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v0, :cond_40

    .line 134
    aget v3, v1, v2

    const/4 v4, 0x1

    .line 135
    invoke-virtual {p1, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    .line 137
    invoke-virtual {p2, v3, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    .line 140
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v6

    .line 141
    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v7

    .line 140
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RatRatcheter;->ratchetRat(II)I

    move-result v6

    .line 142
    invoke-virtual {v3, v6}, Landroid/telephony/NetworkRegistrationInfo;->setAccessNetworkTechnology(I)V

    .line 143
    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-virtual {v3, v4}, Landroid/telephony/NetworkRegistrationInfo;->setIsUsingCarrierAggregation(Z)V

    .line 144
    :cond_3a
    invoke-virtual {p2, v3}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 148
    :cond_40
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    return-void

    :array_48
    .array-data 4
        0x1
        0x2
    .end array-data
.end method
