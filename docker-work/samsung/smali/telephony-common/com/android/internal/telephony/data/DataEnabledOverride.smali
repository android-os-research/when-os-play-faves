.class public Lcom/android/internal/telephony/data/DataEnabledOverride;
.super Ljava/lang/Object;
.source "DataEnabledOverride.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideConditions;,
        Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;
    }
.end annotation


# static fields
.field private static final blacklist OVERRIDE_RULE_ALLOW_DATA_DURING_VOICE_CALL:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

.field private static final blacklist OVERRIDE_RULE_ALWAYS_ALLOW_MMS:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;


# instance fields
.field private final blacklist mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 57
    new-instance v0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    const/16 v1, 0xff

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;-><init>(IILcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule-IA;)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALLOW_DATA_DURING_VOICE_CALL:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;-><init>(IILcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule-IA;)V

    sput-object v0, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALWAYS_ALLOW_MMS:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->updateRules(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist canSatisfyAnyRule(II)Z
    .registers 4

    .line 374
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    .line 375
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;->isSatisfiedByConditions(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getCurrentConditions(Lcom/android/internal/telephony/Phone;)I
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_50

    .line 387
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_c

    const/4 p0, 0x2

    .line 391
    :cond_c
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    .line 393
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    if-eq v1, v0, :cond_1c

    or-int/lit8 p0, p0, 0x1

    :cond_1c
    const/4 v1, -0x1

    if-eq v0, v1, :cond_40

    .line 398
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 400
    :try_start_27
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 401
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->isUserDataEnabled()Z

    move-result v0
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_31} :catch_36

    if-eqz v0, :cond_40

    or-int/lit8 p0, p0, 0x4

    goto :goto_40

    :catch_36
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataEnabledOverride"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    if-eqz p1, :cond_50

    or-int/lit8 p0, p0, 0x8

    :cond_50
    return p0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1c

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 447
    :cond_11
    check-cast p1, Lcom/android/internal/telephony/data/DataEnabledOverride;

    .line 448
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getRules()Ljava/lang/String;
    .registers 3

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 437
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    .line 438
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    const-string p0, ","

    .line 440
    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 453
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isDataAllowedInVoiceCall()Z
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALLOW_DATA_DURING_VOICE_CALL:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isMmsAlwaysAllowed()Z
    .registers 2

    .line 369
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    sget-object v0, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALWAYS_ALLOW_MMS:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist setAlwaysAllowMms(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 336
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    sget-object p1, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALWAYS_ALLOW_MMS:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 338
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    sget-object p1, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALWAYS_ALLOW_MMS:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_11
    return-void
.end method

.method public blacklist setDataAllowedInVoiceCall(Z)V
    .registers 2

    if-eqz p1, :cond_a

    .line 353
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    sget-object p1, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALLOW_DATA_DURING_VOICE_CALL:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 355
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    sget-object p1, Lcom/android/internal/telephony/data/DataEnabledOverride;->OVERRIDE_RULE_ALLOW_DATA_DURING_VOICE_CALL:Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_11
    return-void
.end method

.method public blacklist shouldOverrideDataEnabledSettings(Lcom/android/internal/telephony/Phone;I)Z
    .registers 3

    .line 426
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->getCurrentConditions(Lcom/android/internal/telephony/Phone;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/data/DataEnabledOverride;->canSatisfyAnyRule(II)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataEnabledOverride: [rules=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/DataEnabledOverride;->getRules()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateRules(Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s*,\\s*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 322
    array-length v0, p1

    const/4 v1, 0x0

    :goto_11
    if-ge v1, v0, :cond_28

    aget-object v2, p1, v1

    .line 323
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 324
    iget-object v3, p0, Lcom/android/internal/telephony/data/DataEnabledOverride;->mRules:Ljava/util/Set;

    new-instance v4, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/DataEnabledOverride$OverrideRule;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_28
    return-void
.end method
