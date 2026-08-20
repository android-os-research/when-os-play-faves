.class public Lcom/android/service/ims/RcsSettingUtils;
.super Ljava/lang/Object;
.source "RcsSettingUtils.java"


# static fields
.field private static final blacklist DEFAULT_AVAILABILITY_CACHE_EXPIRATION_SEC:I = 0x1e

.field private static final blacklist DEFAULT_CAPABILITY_POLL_LIST_SUB_EXPIRATION_SEC:I = 0x1e

.field private static final blacklist DEFAULT_NUM_ENTRIES_IN_RCL:I = 0x64

.field private static final blacklist DEFAULT_PUBLISH_THROTTLE_MS:I = 0xea60

.field private static final blacklist TIMEOUT_GET_CONFIGURATION_MS:I = 0x1388

.field private static blacklist logger:Lcom/android/ims/internal/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    const-string v0, "RcsSettingUtils"

    invoke-static {v0}, Lcom/android/ims/internal/Logger;->getLogger(Ljava/lang/String;)Lcom/android/ims/internal/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getAvailabilityCacheExpiration(I)I
    .registers 6
    .param p0, "subId"    # I

    .line 236
    const/16 v0, 0x1e

    .line 238
    .local v0, "availabilityCacheExpiration":I
    :try_start_2
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 239
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    move v0, v2

    .line 244
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_2b

    .line 241
    :catch_e
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailabilityCacheExpiration: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2b
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailabilityCacheExpiration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 246
    return v0
.end method

.method public static blacklist getCapabPollListSubExp(I)I
    .registers 6
    .param p0, "subId"    # I

    .line 219
    const/16 v0, 0x1e

    .line 221
    .local v0, "capabPollListSubExp":I
    :try_start_2
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 222
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    move v0, v2

    .line 227
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_2b

    .line 224
    :catch_e
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCapabPollListSubExp: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2b
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapabPollListSubExp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 229
    return v0
.end method

.method public static blacklist getCapabilityDiscoveryEnabled(I)Z
    .registers 6
    .param p0, "subId"    # I

    .line 184
    const/4 v0, 0x0

    .line 186
    .local v0, "capabilityDiscoveryEnabled":Z
    :try_start_1
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 187
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_12

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    move v0, v3

    .line 193
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_2f

    .line 190
    :catch_12
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "capabilityDiscoveryEnabled: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 194
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2f
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capabilityDiscoveryEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 195
    return v0
.end method

.method public static blacklist getDefaultSubscriptionId(Landroid/content/Context;)I
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 361
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 362
    .local v0, "sm":Landroid/telephony/SubscriptionManager;
    const/4 v1, -0x1

    if-nez v0, :cond_c

    return v1

    .line 363
    :cond_c
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 364
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v2, :cond_4a

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_4a

    .line 370
    :cond_19
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v1

    .line 371
    .local v1, "defaultSub":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_27

    .line 373
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 376
    :cond_27
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_49

    .line 377
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 378
    .local v4, "info":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v5

    if-nez v5, :cond_48

    .line 379
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 380
    goto :goto_49

    .line 382
    .end local v4    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_48
    goto :goto_31

    .line 384
    :cond_49
    :goto_49
    return v1

    .line 366
    .end local v1    # "defaultSub":I
    :cond_4a
    :goto_4a
    return v1
.end method

.method public static blacklist getMaxNumbersInRCL(I)I
    .registers 6
    .param p0, "subId"    # I

    .line 202
    const/16 v0, 0x64

    .line 204
    .local v0, "maxNumbersInRCL":I
    :try_start_2
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 205
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_e

    move v0, v2

    .line 210
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_2b

    .line 207
    :catch_e
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMaxNumbersInRCL: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2b
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaxNumbersInRCL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 212
    return v0
.end method

.method public static blacklist getPublishThrottle(I)I
    .registers 6
    .param p0, "subId"    # I

    .line 251
    const v0, 0xea60

    .line 253
    .local v0, "publishThrottle":I
    :try_start_3
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 254
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    move v0, v2

    .line 259
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_2c

    .line 256
    :catch_f
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishThrottle: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 260
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2c
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "publishThrottle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 261
    return v0
.end method

.method public static blacklist getSIPT1Timer(I)I
    .registers 6
    .param p0, "subId"    # I

    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "sipT1Timer":I
    :try_start_1
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 171
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningIntValue(I)I

    move-result v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move v0, v2

    .line 175
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_29

    .line 172
    :catch_c
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSIPT1Timer: exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 176
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_29
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSIPT1Timer="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 177
    return v0
.end method

.method public static blacklist hasUserEnabledContactDiscovery(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 153
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 154
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "hasUserEnabledContactDiscovery: no valid subscriptions!"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 155
    return v0

    .line 158
    :cond_c
    :try_start_c
    const-class v1, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsManager;

    .line 159
    .local v1, "imsManager":Landroid/telephony/ims/ImsManager;
    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsManager;->getImsRcsManager(I)Landroid/telephony/ims/ImsRcsManager;

    move-result-object v2

    .line 160
    .local v2, "rcsManager":Landroid/telephony/ims/ImsRcsManager;
    invoke-virtual {v2}, Landroid/telephony/ims/ImsRcsManager;->getUceAdapter()Landroid/telephony/ims/RcsUceAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/RcsUceAdapter;->isUceSettingEnabled()Z

    move-result v0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_21

    return v0

    .line 161
    .end local v1    # "imsManager":Landroid/telephony/ims/ImsManager;
    .end local v2    # "rcsManager":Landroid/telephony/ims/ImsRcsManager;
    :catch_21
    move-exception v1

    .line 162
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasUserEnabledContactDiscovery: Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 163
    return v0
.end method

.method public static blacklist isAdvancedCallingEnabledByUser(I)Z
    .registers 5
    .param p0, "subId"    # I

    .line 286
    :try_start_0
    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 287
    .local v0, "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isAdvancedCallingSettingEnabled()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v1

    .line 288
    .end local v0    # "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    :catch_9
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAdvancedCallingEnabledByUser exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 290
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isEabProvisioned(Landroid/content/Context;I)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "isProvisioned":Z
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_d

    .line 112
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    const-string v3, "isEabProvisioned: no valid subscriptions!"

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 113
    return v1

    .line 115
    :cond_d
    nop

    .line 116
    const-string v2, "carrier_config"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 117
    .local v2, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v2, :cond_28

    .line 118
    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 119
    .local v3, "config":Landroid/os/PersistableBundle;
    if-eqz v3, :cond_28

    const-string v4, "carrier_volte_provisioned_bool"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    .line 122
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v3    # "config":Landroid/os/PersistableBundle;
    :cond_28
    :try_start_28
    invoke-static {p1}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v3

    .line 127
    .local v3, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Landroid/telephony/ims/ProvisioningManager;->getRcsProvisioningStatusForCapability(II)Z

    move-result v1
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_31} :catch_33

    move v0, v1

    .line 132
    .end local v3    # "manager":Landroid/telephony/ims/ProvisioningManager;
    goto :goto_50

    .line 130
    :catch_33
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEabProvisioned: exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_50
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isEabProvisioned="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 134
    return v0
.end method

.method public static blacklist isLvcProvisioned(I)Z
    .registers 7
    .param p0, "subId"    # I

    .line 97
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 98
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result v2

    .line 101
    .local v2, "isProvisioned":Z
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLvcProvisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    .line 102
    return v2

    .line 103
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    .end local v2    # "isProvisioned":Z
    :catch_23
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLvcProvisioned, exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 105
    return v0
.end method

.method public static blacklist isPublishEnabled(Landroid/content/Context;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 138
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_c

    .line 139
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    const-string v2, "isPublishEnabled: no valid subscriptions!"

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 140
    return v0

    .line 142
    :cond_c
    nop

    .line 143
    const-string v1, "carrier_config"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 144
    .local v1, "configManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_27

    .line 145
    invoke-virtual {v1, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 146
    .local v2, "config":Landroid/os/PersistableBundle;
    if-eqz v2, :cond_26

    const-string v3, "ims.enable_presence_publish_bool"

    invoke-virtual {v2, v3, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0

    .line 149
    .end local v2    # "config":Landroid/os/PersistableBundle;
    :cond_27
    return v0
.end method

.method public static blacklist isVoLteProvisioned(I)Z
    .registers 7
    .param p0, "subId"    # I

    .line 67
    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v1

    .line 68
    .local v1, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result v2

    .line 71
    .local v2, "isProvisioned":Z
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoLteProvisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    .line 72
    return v2

    .line 73
    .end local v1    # "manager":Landroid/telephony/ims/ProvisioningManager;
    .end local v2    # "isProvisioned":Z
    :catch_23
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoLteProvisioned, exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 75
    return v0
.end method

.method public static blacklist isVoLteSupported(I)Z
    .registers 7
    .param p0, "subId"    # I

    .line 295
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 296
    return v1

    .line 298
    :cond_8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 300
    .local v0, "resultQueue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Boolean;>;"
    :try_start_e
    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    .line 301
    .local v3, "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    new-instance v4, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    .line 302
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0}, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 301
    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_22
    .catch Landroid/telephony/ims/ImsException; {:try_start_e .. :try_end_22} :catch_52

    .line 306
    .end local v3    # "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    nop

    .line 308
    const-wide/16 v2, 0x1388

    :try_start_25
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 309
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_33} :catch_34

    :cond_33
    return v1

    .line 310
    .end local v2    # "result":Ljava/lang/Boolean;
    :catch_34
    move-exception v2

    .line 311
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoLteSupported, InterruptedException="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 312
    return v1

    .line 303
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_52
    move-exception v2

    .line 304
    .local v2, "e":Landroid/telephony/ims/ImsException;
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoLteSupported: ImsException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 305
    return v1
.end method

.method public static blacklist isVoWiFiSupported(I)Z
    .registers 8
    .param p0, "subId"    # I

    .line 317
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 318
    return v1

    .line 320
    :cond_8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 322
    .local v0, "resultQueue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Boolean;>;"
    :try_start_e
    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    .line 323
    .local v3, "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    const/4 v4, 0x2

    new-instance v5, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    .line 324
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 323
    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_23
    .catch Landroid/telephony/ims/ImsException; {:try_start_e .. :try_end_23} :catch_53

    .line 328
    .end local v3    # "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    nop

    .line 330
    const-wide/16 v2, 0x1388

    :try_start_26
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 331
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_34} :catch_35

    :cond_34
    return v1

    .line 332
    .end local v2    # "result":Ljava/lang/Boolean;
    :catch_35
    move-exception v2

    .line 333
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoWiFiSupported, InterruptedException="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 334
    return v1

    .line 325
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_53
    move-exception v2

    .line 326
    .local v2, "e":Landroid/telephony/ims/ImsException;
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoWiFiSupported: ImsException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 327
    return v1
.end method

.method public static blacklist isVowifiProvisioned(I)Z
    .registers 6
    .param p0, "subId"    # I

    .line 82
    :try_start_0
    invoke-static {p0}, Landroid/telephony/ims/ProvisioningManager;->createForSubscriptionId(I)Landroid/telephony/ims/ProvisioningManager;

    move-result-object v0

    .line 83
    .local v0, "manager":Landroid/telephony/ims/ProvisioningManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/telephony/ims/ProvisioningManager;->getProvisioningStatusForCapability(II)Z

    move-result v1

    .line 86
    .local v1, "isProvisioned":Z
    sget-object v2, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVowifiProvisioned="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 87
    return v1

    .line 88
    .end local v0    # "manager":Landroid/telephony/ims/ProvisioningManager;
    .end local v1    # "isProvisioned":Z
    :catch_22
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVowifiProvisioned, exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->debug(Ljava/lang/String;)V

    .line 90
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isVtEnabledByUser(I)Z
    .registers 5
    .param p0, "subId"    # I

    .line 266
    :try_start_0
    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 267
    .local v0, "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVtSettingEnabled()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v1

    .line 268
    .end local v0    # "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    :catch_9
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVtEnabledByUser exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 270
    const/4 v1, 0x0

    return v1
.end method

.method public static blacklist isVtSupported(I)Z
    .registers 8
    .param p0, "subId"    # I

    .line 339
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 340
    return v1

    .line 342
    :cond_8
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 344
    .local v0, "resultQueue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Boolean;>;"
    :try_start_e
    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    .line 345
    .local v3, "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    const/4 v4, 0x2

    new-instance v5, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/ims/ImsEcbmStateListener$$ExternalSyntheticLambda0;-><init>()V

    .line 346
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/android/service/ims/RcsSettingUtils$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    .line 345
    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/telephony/ims/ImsMmTelManager;->isSupported(IILjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    :try_end_23
    .catch Landroid/telephony/ims/ImsException; {:try_start_e .. :try_end_23} :catch_53

    .line 350
    .end local v3    # "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    nop

    .line 352
    const-wide/16 v2, 0x1388

    :try_start_26
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 353
    .local v2, "result":Ljava/lang/Boolean;
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_34
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_34} :catch_35

    :cond_34
    return v1

    .line 354
    .end local v2    # "result":Ljava/lang/Boolean;
    :catch_35
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVtSupported, InterruptedException="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 356
    return v1

    .line 347
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_53
    move-exception v2

    .line 348
    .local v2, "e":Landroid/telephony/ims/ImsException;
    sget-object v3, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoWiFiSupported: ImsException = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 349
    return v1
.end method

.method public static blacklist isWfcEnabledByUser(I)Z
    .registers 5
    .param p0, "subId"    # I

    .line 276
    :try_start_0
    invoke-static {p0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    .line 277
    .local v0, "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsMmTelManager;->isVoWiFiSettingEnabled()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return v1

    .line 278
    .end local v0    # "mmTelManager":Landroid/telephony/ims/ImsMmTelManager;
    :catch_9
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/service/ims/RcsSettingUtils;->logger:Lcom/android/ims/internal/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWfcEnabledByUser exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ims/internal/Logger;->warn(Ljava/lang/String;)V

    .line 280
    const/4 v1, 0x0

    return v1
.end method
