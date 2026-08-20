.class public Lcom/android/server/enterprise/firewall/EnforceDnsManager;
.super Ljava/lang/Object;
.source "EnforceDnsManager.java"


# static fields
.field public static final DNS_RESOLVER_DEFAULT_MAX_SAMPLES:I = 0x40

.field public static final DNS_RESOLVER_DEFAULT_MIN_SAMPLES:I = 0x8

.field public static final DNS_RESOLVER_DEFAULT_SAMPLE_VALIDITY_SECONDS:I = 0x708

.field public static final DNS_RESOLVER_DEFAULT_SUCCESS_THRESHOLD_PERCENT:I = 0x19

.field public static final TAG:Ljava/lang/String; = "EnforceDnsManager"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

.field public mEnforceDnsUid:Z

.field public final mLinkPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/net/LinkProperties;",
            ">;"
        }
    .end annotation
.end field

.field public mMaxSamples:I

.field public mMinSamples:I

.field public mSampleValidity:I

.field public mSuccessThreshold:I

.field public final mTransportsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;)V
    .registers 4

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    return-void
.end method

.method public static getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    goto :goto_10

    :cond_a
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_10
    return-object p0
.end method


# virtual methods
.method public flushVmDnsCache()V
    .registers 5

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.action.CLEAR_DNS_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 146
    :try_start_15
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_20

    .line 148
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0
.end method

.method public final getIntSetting(Ljava/lang/String;I)I
    .registers 3

    .line 183
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final makeStrings(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 193
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 195
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    add-int/lit8 v2, v0, 0x1

    .line 196
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    move v0, v2

    goto :goto_b

    :cond_21
    return-object p0
.end method

.method public noteDnsServersForNetwork(ILandroid/net/LinkProperties;)V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    return-void
.end method

.method public removeNetwork(Landroid/net/Network;)V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/net/Network;->getNetId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendDnsConfigurationForNetwork(I)V
    .registers 6

    .line 101
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mLinkPropertiesMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkProperties;

    .line 102
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    if-eqz v0, :cond_d8

    if-nez v1, :cond_1e

    goto/16 :goto_d8

    .line 104
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->updateParametersSettings()V

    .line 105
    new-instance v2, Landroid/net/ResolverParamsParcel;

    invoke-direct {v2}, Landroid/net/ResolverParamsParcel;-><init>()V

    .line 107
    iput p1, v2, Landroid/net/ResolverParamsParcel;->netId:I

    .line 108
    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    .line 109
    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 110
    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->minSamples:I

    .line 111
    iget p1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    iput p1, v2, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 112
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getDomainStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    const-string p1, ""

    .line 114
    iput-object p1, v2, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/String;

    .line 115
    iput-object v0, v2, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 116
    new-instance v0, Landroid/net/ResolverOptionsParcel;

    invoke-direct {v0}, Landroid/net/ResolverOptionsParcel;-><init>()V

    iput-object v0, v2, Landroid/net/ResolverParamsParcel;->resolverOptions:Landroid/net/ResolverOptionsParcel;

    .line 117
    iget-boolean v3, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    iput-boolean v3, v0, Landroid/net/ResolverOptionsParcel;->enforceDnsUid:Z

    .line 118
    iput-object v1, v2, Landroid/net/ResolverParamsParcel;->transportTypes:[I

    .line 120
    sget-object v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, v2, Landroid/net/ResolverParamsParcel;->netId:I

    .line 121
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x1

    iget-object v3, v2, Landroid/net/ResolverParamsParcel;->servers:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x2

    iget-object v3, v2, Landroid/net/ResolverParamsParcel;->domains:[Ljava/lang/String;

    .line 122
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x3

    iget v3, v2, Landroid/net/ResolverParamsParcel;->sampleValiditySeconds:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x4

    iget v3, v2, Landroid/net/ResolverParamsParcel;->successThreshold:I

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x5

    iget v3, v2, Landroid/net/ResolverParamsParcel;->minSamples:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x6

    iget v3, v2, Landroid/net/ResolverParamsParcel;->maxSamples:I

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/4 p1, 0x7

    iget v3, v2, Landroid/net/ResolverParamsParcel;->baseTimeoutMsec:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/16 p1, 0x8

    iget v3, v2, Landroid/net/ResolverParamsParcel;->retryCount:I

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, p1

    const/16 p1, 0x9

    iget-object v3, v2, Landroid/net/ResolverParamsParcel;->tlsName:Ljava/lang/String;

    aput-object v3, v1, p1

    const/16 p1, 0xa

    iget-object v3, v2, Landroid/net/ResolverParamsParcel;->tlsServers:[Ljava/lang/String;

    .line 126
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, p1

    const-string/jumbo p1, "sendDnsConfigurationForNetwork(%d, %s, %s, %d, %d, %d, %d, %d, %d, %s, %s)"

    .line 120
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mDnsResolverAdapter:Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;

    invoke-interface {p0, v2}, Lcom/android/server/enterprise/adapter/IDnsResolverAdapter;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V

    :cond_d8
    :goto_d8
    return-void
.end method

.method public updateDnsUidForNetwork(IZ)V
    .registers 3

    .line 93
    iput-boolean p2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mEnforceDnsUid:Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    return-void
.end method

.method public final updateParametersSettings()V
    .registers 7

    const-string v0, "dns_resolver_sample_validity_seconds"

    const/16 v1, 0x708

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    const-string v2, ", using default="

    if-ltz v0, :cond_13

    const v3, 0xffff

    if-le v0, v3, :cond_33

    .line 157
    :cond_13
    sget-object v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sampleValidity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSampleValidity:I

    :cond_33
    const-string v0, "dns_resolver_success_threshold_percent"

    const/16 v1, 0x19

    .line 162
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    if-ltz v0, :cond_43

    const/16 v3, 0x64

    if-le v0, v3, :cond_63

    .line 166
    :cond_43
    sget-object v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid successThreshold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iput v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mSuccessThreshold:I

    :cond_63
    const-string v0, "dns_resolver_min_samples"

    const/16 v1, 0x8

    .line 171
    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    const-string v0, "dns_resolver_max_samples"

    const/16 v2, 0x40

    .line 172
    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->getIntSetting(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    .line 173
    iget v3, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    if-ltz v3, :cond_7f

    if-gt v3, v0, :cond_7f

    if-le v0, v2, :cond_b8

    .line 174
    :cond_7f
    sget-object v0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid sample count (min, max)=("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), using default=("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput v1, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMinSamples:I

    .line 178
    iput v2, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mMaxSamples:I

    :cond_b8
    return-void
.end method

.method public updateTransportsForNetwork(I[I)V
    .registers 5

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->mTransportsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/EnforceDnsManager;->sendDnsConfigurationForNetwork(I)V

    return-void
.end method
