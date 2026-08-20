.class public Lcom/android/i18n/phonenumbers/ShortNumberInfo;
.super Ljava/lang/Object;
.source "ShortNumberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    }
.end annotation


# static fields
.field private static final blacklist INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

.field private static final blacklist REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist logger:Ljava/util/logging/Logger;


# instance fields
.field private final blacklist countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 46
    const-class v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    .line 48
    new-instance v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    .line 49
    invoke-static {}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;-><init>(Lcom/android/i18n/phonenumbers/internal/MatcherApi;)V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 56
    const-string v1, "BR"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v1, "CL"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    const-string v1, "NI"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/i18n/phonenumbers/internal/MatcherApi;)V
    .registers 3
    .param p1, "matcherApi"    # Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 89
    nop

    .line 90
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 91
    return-void
.end method

.method public static blacklist getInstance()Lcom/android/i18n/phonenumbers/ShortNumberInfo;
    .registers 1

    .line 72
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->INSTANCE:Lcom/android/i18n/phonenumbers/ShortNumberInfo;

    return-object v0
.end method

.method private static blacklist getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 4
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 544
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    .line 545
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 546
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .end local v1    # "zeros":[C
    :cond_1e
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 549
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 325
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 326
    return-object v1

    .line 327
    :cond_8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    .line 328
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 330
    :cond_17
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 332
    .local v3, "regionCode":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 333
    .local v4, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v4, :cond_3c

    .line 334
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 336
    return-object v3

    .line 338
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v4    # "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3c
    goto :goto_1f

    .line 339
    :cond_3d
    return-object v1
.end method

.method private blacklist getRegionCodesForCountryCode(I)Ljava/util/List;
    .registers 5
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_16

    .line 101
    :cond_15
    move-object v1, v0

    .line 100
    :goto_16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private blacklist matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "allowPrefixMatch"    # Z

    .line 440
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 441
    .local v0, "possibleNumber":Ljava/lang/CharSequence;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 445
    return v2

    .line 447
    :cond_12
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 448
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency()Z

    move-result v3

    if-nez v3, :cond_1f

    goto :goto_3b

    .line 452
    :cond_1f
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 453
    .local v3, "normalizedNumber":Ljava/lang/String;
    if-eqz p3, :cond_2f

    sget-object v4, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->REGIONS_WHERE_EMERGENCY_NUMBERS_MUST_BE_EXACT:Ljava/util/Set;

    .line 454
    invoke-interface {v4, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    const/4 v2, 0x1

    goto :goto_30

    :cond_2f
    nop

    .line 455
    .local v2, "allowPrefixMatchForRegion":Z
    :goto_30
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getEmergency()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-interface {v4, v3, v5, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v4

    return v4

    .line 449
    .end local v2    # "allowPrefixMatchForRegion":Z
    .end local v3    # "normalizedNumber":Ljava/lang/String;
    :cond_3b
    :goto_3b
    return v2
.end method

.method private blacklist matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 556
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1a

    .line 557
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 558
    return v1

    .line 560
    :cond_1a
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v0, p1, p2, v1}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v0

    return v0
.end method

.method private blacklist regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 111
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public blacklist connectsToEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 419
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method blacklist getExampleShortNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 358
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 359
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 360
    return-object v1

    .line 362
    :cond_9
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 363
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 364
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 366
    :cond_18
    return-object v1
.end method

.method blacklist getExampleShortNumberForCost(Ljava/lang/String;Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;)Ljava/lang/String;
    .registers 8
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "cost"    # Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 379
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 380
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v1, ""

    if-nez v0, :cond_9

    .line 381
    return-object v1

    .line 383
    :cond_9
    const/4 v2, 0x0

    .line 384
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    sget-object v3, Lcom/android/i18n/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$android$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_34

    :pswitch_15
    goto :goto_25

    .line 386
    :pswitch_16
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 387
    goto :goto_25

    .line 389
    :pswitch_1b
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 390
    goto :goto_25

    .line 392
    :pswitch_20
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 393
    nop

    .line 398
    :goto_25
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 399
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 401
    :cond_32
    return-object v1

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_20
        :pswitch_15
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public blacklist getExpectedCost(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 11
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 289
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 290
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    .line 291
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 293
    :cond_11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    .line 294
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v1

    return-object v1

    .line 296
    :cond_24
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 297
    .local v1, "cost":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    move-result-object v4

    .line 299
    .local v4, "costForRegion":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo$1;->$SwitchMap$com$android$i18n$phonenumbers$ShortNumberInfo$ShortNumberCost:[I

    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_70

    .line 314
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognised cost for region: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_6e

    .line 312
    :pswitch_60
    goto :goto_6e

    .line 306
    :pswitch_61
    sget-object v5, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    if-eq v1, v5, :cond_6e

    .line 307
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    goto :goto_6e

    .line 303
    :pswitch_68
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    .line 304
    goto :goto_6e

    .line 301
    :pswitch_6b
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 316
    .end local v3    # "regionCode":Ljava/lang/String;
    .end local v4    # "costForRegion":Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    :cond_6e
    :goto_6e
    goto :goto_2a

    .line 317
    :cond_6f
    return-object v1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_68
        :pswitch_61
        :pswitch_60
    .end packed-switch
.end method

.method public blacklist getExpectedCostForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 231
    sget-object v0, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v0

    .line 234
    :cond_9
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 236
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_12

    .line 237
    sget-object v1, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v1

    .line 240
    :cond_12
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 246
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 251
    :cond_2f
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 252
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 254
    :cond_3c
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getStandardRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 255
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->STANDARD_RATE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 257
    :cond_49
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 258
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 260
    :cond_56
    invoke-virtual {p0, v1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 262
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->TOLL_FREE:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2

    .line 264
    :cond_5f
    sget-object v2, Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;->UNKNOWN_COST:Lcom/android/i18n/phonenumbers/ShortNumberInfo$ShortNumberCost;

    return-object v2
.end method

.method blacklist getSupportedRegions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 346
    invoke-static {}, Lcom/android/i18n/phonenumbers/MetadataManager;->getSupportedShortNumberRegions()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isCarrierSpecific(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 471
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 472
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, "regionCode":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 475
    .local v3, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v3, :cond_22

    .line 477
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    .line 476
    invoke-direct {p0, v2, v4}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x1

    goto :goto_23

    :cond_22
    const/4 v4, 0x0

    .line 475
    :goto_23
    return v4
.end method

.method public blacklist isCarrierSpecificForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 494
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 495
    return v1

    .line 497
    :cond_8
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "nationalNumber":Ljava/lang/String;
    nop

    .line 499
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 500
    .local v2, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1f

    .line 502
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCarrierSpecific()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 501
    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 500
    :goto_20
    return v1
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 435
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesEmergencyNumberHelper(Ljava/lang/CharSequence;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public blacklist isPossibleShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 145
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 147
    .local v1, "shortNumberLength":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "region":Ljava/lang/String;
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 149
    .local v4, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v4, :cond_27

    .line 150
    goto :goto_14

    .line 152
    :cond_27
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 153
    const/4 v2, 0x1

    return v2

    .line 155
    .end local v3    # "region":Ljava/lang/String;
    .end local v4    # "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3b
    goto :goto_14

    .line 156
    :cond_3c
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist isPossibleShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 124
    return v1

    .line 126
    :cond_8
    nop

    .line 127
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 128
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_10

    .line 129
    return v1

    .line 131
    :cond_10
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 132
    .local v1, "numberLength":I
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public blacklist isSmsServiceForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 519
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 520
    return v1

    .line 522
    :cond_8
    nop

    .line 523
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 524
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_1f

    .line 525
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSmsServices()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 525
    invoke-direct {p0, v2, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 524
    :goto_20
    return v1
.end method

.method public blacklist isValidShortNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 196
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 197
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getRegionCodeForShortNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "regionCode":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_16

    if-eqz v1, :cond_16

    .line 201
    return v3

    .line 203
    :cond_16
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->isValidShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public blacklist isValidShortNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 169
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->regionDialingFromMatchesNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 170
    return v1

    .line 172
    :cond_8
    nop

    .line 173
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/MetadataManager;->getShortNumberMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 174
    .local v0, "phoneMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_10

    .line 175
    return v1

    .line 177
    :cond_10
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "shortNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 179
    .local v3, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v3}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 180
    return v1

    .line 182
    :cond_1f
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getShortCode()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 183
    .local v1, "shortNumberDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/ShortNumberInfo;->matchesPossibleNumberAndNationalNumber(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    return v4
.end method
