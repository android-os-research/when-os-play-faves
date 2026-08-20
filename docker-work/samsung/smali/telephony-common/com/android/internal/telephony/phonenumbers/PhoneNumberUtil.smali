.class public Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    }
.end annotation


# static fields
.field private static final blacklist ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final blacklist EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final blacklist EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final blacklist FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist GEO_MOBILE_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field static final blacklist PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field public static final blacklist REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field static final blacklist SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field static final blacklist UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist VALID_ALPHA:Ljava/lang/String;

.field private static final blacklist VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final blacklist VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static blacklist instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

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

.field private final blacklist countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

.field private final blacklist metadataSource:Lcom/android/internal/telephony/phonenumbers/MetadataSource;

.field private final blacklist nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

.field private final blacklist supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 57
    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x36

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 150
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const-string v3, "9"

    .line 125
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/16 v3, 0x56

    .line 129
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 133
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const/16 v5, 0x34

    .line 148
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 134
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x37

    .line 151
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x3e

    .line 137
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-virtual {v4, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 139
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v2, 0x30

    .line 144
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x31

    .line 145
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x32

    .line 146
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x33

    .line 147
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v7, 0x35

    .line 149
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0x38

    .line 152
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v9, 0x39

    .line 153
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    new-instance v10, Ljava/util/HashMap;

    const/16 v11, 0x28

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(I)V

    const/16 v11, 0x41

    .line 156
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v11, 0x42

    .line 157
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v12, 0x43

    .line 158
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x44

    .line 159
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x45

    .line 160
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x46

    .line 161
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x47

    .line 162
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x48

    .line 163
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x49

    .line 164
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4a

    .line 165
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4b

    .line 166
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4c

    .line 167
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4d

    .line 168
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4e

    .line 169
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4f

    .line 170
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v10, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x50

    .line 171
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x51

    .line 172
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x52

    .line 173
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x53

    .line 174
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x54

    .line 175
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x55

    .line 176
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x57

    .line 178
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x58

    .line 179
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x59

    .line 180
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 181
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {v10}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 184
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 185
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 186
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 190
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v3, 0x2b

    .line 191
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x2a

    .line 192
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0x23

    .line 193
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_224

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 199
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1f9

    .line 202
    :cond_224
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/16 v0, 0x2d

    .line 204
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0d

    .line 205
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2010

    .line 206
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2011

    .line 207
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2012

    .line 208
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2013

    .line 209
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2014

    .line 210
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2015

    .line 211
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2212

    .line 212
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    .line 213
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0f

    .line 214
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x20

    .line 215
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x3000

    .line 216
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x2060

    .line 217
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2e

    .line 218
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xff0e

    .line 219
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    .line 230
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[, \\[\\]]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    const-string v1, "[+\uff0b]+"

    .line 248
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    .line 249
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(\\p{Nd})"

    .line 250
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[+\uff0b\\p{Nd}]"

    .line 259
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[\\\\/] *x"

    .line 267
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    .line 273
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v1, "(?:.*?[A-Za-z]){3}.*"

    .line 277
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\\p{Nd}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    const/4 v1, 0x1

    .line 309
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    const/4 v2, 0x0

    .line 310
    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")$"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v2, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")?"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 408
    invoke-static {v0, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\D+)"

    .line 410
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "(\\$\\d)"

    .line 416
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "\\(?\\$1\\)?"

    .line 426
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 428
    sput-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/phonenumbers/MetadataSource;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/MetadataSource;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 662
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 667
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    .line 672
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 676
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 684
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/internal/telephony/phonenumbers/MetadataSource;

    .line 685
    iput-object p2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 686
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "001"

    if-eqz v0, :cond_6d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 687
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 690
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v1, :cond_67

    const/4 v1, 0x0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 692
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 695
    :cond_67
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_37

    .line 701
    :cond_6d
    iget-object p1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {p1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 702
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {p1, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 705
    :cond_7e
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private blacklist buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 6

    const-string p0, ";phone-context="

    .line 3323
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_45

    add-int/lit8 v0, p0, 0xf

    .line 3328
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_31

    .line 3329
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_31

    const/16 v1, 0x3b

    .line 3333
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_2a

    .line 3335
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 3337
    :cond_2a
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    :goto_31
    const-string v0, "tel:"

    .line 3345
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3c

    add-int/lit8 v0, v0, 0x4

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    .line 3348
    :goto_3d
    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    .line 3352
    :cond_45
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_4c
    const-string p0, ";isub="

    .line 3357
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_5b

    .line 3359
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_5b
    return-void
.end method

.method private blacklist checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    .line 3043
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1c

    if-eqz p1, :cond_1a

    .line 3045
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_1a

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 3046
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p0

    if-nez p0, :cond_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    :cond_1c
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist convertAlphaCharactersInNumber(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 829
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist copyCoreFieldsOnly(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4

    .line 3373
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3374
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3375
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3376
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 3377
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3379
    :cond_24
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v1, 0x1

    .line 3380
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3382
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    :cond_35
    return-object v0
.end method

.method private static blacklist createExtnPattern(Z)Ljava/lang/String;
    .registers 9

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ \u00a0\\t,]*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|anexo)"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(?:[x\uff58#\uff03~\uff5e]|int|\uff49\uff4e\uff54)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x9

    .line 357
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[- ]+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x6

    invoke-static {v7}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p0, :cond_f1

    const-string p0, "[ \u00a0\\t]*"

    .line 383
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "(?:,{2}|;)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xf

    .line 385
    invoke-static {v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(?:,)+"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f1
    return-object v2
.end method

.method public static blacklist createInstance(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    .registers 2

    if-eqz p0, :cond_c

    .line 1173
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/MultiFileMetadataSourceImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)V

    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/internal/telephony/phonenumbers/MetadataSource;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object p0

    return-object p0

    .line 1171
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadataLoader could not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist createInstance(Lcom/android/internal/telephony/phonenumbers/MetadataSource;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    .registers 3

    if-eqz p0, :cond_c

    .line 1192
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    .line 1193
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;-><init>(Lcom/android/internal/telephony/phonenumbers/MetadataSource;Ljava/util/Map;)V

    return-object v0

    .line 1190
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "metadataSource could not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist descHasData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 2

    .line 1082
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1083
    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1084
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private static blacklist descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 4

    .line 1067
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_10

    :cond_f
    move v1, v2

    :cond_10
    return v1
.end method

.method private static blacklist extnDigits(I)Ljava/lang/String;
    .registers 3

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\p{Nd}{1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4

    .line 724
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 725
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 726
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 728
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 729
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 730
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 733
    :cond_2d
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 734
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 735
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_41
    return-object p0

    :cond_42
    const-string p0, ""

    return-object p0
.end method

.method private blacklist formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1913
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    .line 1924
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    .line 1928
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_f

    goto :goto_14

    .line 1930
    :cond_f
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object p2

    goto :goto_18

    .line 1929
    :cond_14
    :goto_14
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object p2

    .line 1931
    :goto_18
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p2

    if-nez p2, :cond_1f

    goto :goto_23

    .line 1934
    :cond_1f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :goto_23
    return-object p1
.end method

.method private blacklist formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 7

    .line 1966
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 1967
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    .line 1968
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1970
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, p1, :cond_41

    if-eqz p4, :cond_41

    .line 1971
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 1972
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_41

    .line 1974
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object p1

    const-string p2, "$CC"

    .line 1975
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1978
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 1979
    invoke-virtual {p2, p1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1980
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_62

    .line 1983
    :cond_41
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object p2

    if-ne p3, p1, :cond_5e

    if-eqz p2, :cond_5e

    .line 1986
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5e

    .line 1987
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1989
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_62

    .line 1991
    :cond_5e
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1994
    :goto_62
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, p1, :cond_82

    .line 1996
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1997
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p2

    if-eqz p2, :cond_78

    const-string p0, ""

    .line 1998
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2001
    :cond_78
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_82
    return-object p0
.end method

.method static blacklist formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .registers 2

    .line 1201
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1202
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method private blacklist getCountryCodeForValidRegion(Ljava/lang/String;)I
    .registers 4

    .line 2446
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2450
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result p0

    return p0

    .line 2448
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid region code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getCountryMobileToken(I)Ljava/lang/String;
    .registers 3

    .line 984
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 985
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method public static declared-synchronized blacklist getInstance()Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    .registers 2

    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1151
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    if-nez v1, :cond_10

    .line 1152
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/MetadataManager;->DEFAULT_METADATA_LOADER:Lcom/android/internal/telephony/phonenumbers/MetadataLoader;

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)V

    .line 1154
    :cond_10
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private blacklist getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    const-string v0, "001"

    .line 1404
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1405
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    goto :goto_11

    .line 1406
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method private blacklist getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 4

    .line 2230
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2231
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2234
    :cond_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2235
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2237
    :cond_1a
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2238
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2240
    :cond_27
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2241
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2243
    :cond_34
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2244
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2246
    :cond_41
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2247
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2249
    :cond_4e
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2250
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2252
    :cond_5b
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2253
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2255
    :cond_68
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2256
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2259
    :cond_75
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_98

    .line 2261
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v0

    if-eqz v0, :cond_88

    .line 2262
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2263
    :cond_88
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    if-eqz p0, :cond_95

    .line 2264
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2266
    :cond_95
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2270
    :cond_98
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v0

    if-nez v0, :cond_ab

    .line 2271
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    if-eqz p0, :cond_ab

    .line 2272
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2274
    :cond_ab
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0
.end method

.method private blacklist getRegionCodeForNumberFromRegionList(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2378
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 2379
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2382
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2383
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2384
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2385
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_8

    return-object v0

    .line 2388
    :cond_33
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v1, v2, :cond_8

    return-object v0

    :cond_3c
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getSupportedTypesForMetadata(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1092
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1093
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 1094
    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_25

    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v5, :cond_18

    goto :goto_25

    .line 1099
    :cond_18
    invoke-virtual {p0, p1, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1100
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1103
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasFormattingPatternForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4

    .line 1741
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1742
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1744
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 1748
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 1750
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method private blacklist hasValidCountryCallingCode(I)Z
    .registers 2

    .line 1236
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isNationalNumberSuffixOfTheOther(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 3

    .line 3449
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 3450
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 3452
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1f

    .line 3453
    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method private blacklist isValidRegionCode(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    .line 1229
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static blacklist isViablePhoneNumber(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 755
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 758
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 759
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private blacklist maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 5

    .line 2172
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result p0

    if-eqz p0, :cond_42

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_42

    .line 2173
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, p0, :cond_21

    const-string p0, ";ext="

    .line 2174
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    .line 2176
    :cond_21
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result p0

    if-eqz p0, :cond_36

    .line 2177
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_42

    :cond_36
    const-string p0, " ext. "

    .line 2179
    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    :goto_42
    return-void
.end method

.method static blacklist normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 5

    .line 779
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 781
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 783
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    return-object p0
.end method

.method public static blacklist normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3

    .line 821
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static blacklist normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .registers 7

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 801
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 802
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    .line 803
    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 805
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    :cond_21
    if-eqz p1, :cond_26

    .line 807
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_29
    return-object v0
.end method

.method public static blacklist normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 796
    invoke-static {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 1006
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1007
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1008
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    if-eqz v3, :cond_28

    .line 1010
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_28
    if-nez p2, :cond_2d

    .line 1012
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1016
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    if-eqz p1, :cond_13b

    .line 3209
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_131

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3215
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3216
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3218
    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_127

    if-eqz p4, :cond_2f

    .line 3225
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_25

    goto :goto_2f

    .line 3226
    :cond_25
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Missing or invalid default region."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    if-eqz p3, :cond_34

    .line 3231
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3235
    :cond_34
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 3236
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_41

    .line 3237
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3240
    :cond_41
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    .line 3243
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p4

    move v6, p3

    move-object v7, p5

    .line 3249
    :try_start_50
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1
    :try_end_54
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_50 .. :try_end_54} :catch_55

    goto :goto_7d

    :catch_55
    move-exception v1

    .line 3252
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 3253
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_119

    .line 3254
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_119

    .line 3256
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    if-eqz v1, :cond_10f

    :goto_7d
    if-eqz v1, :cond_8e

    .line 3268
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 3269
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_a4

    .line 3271
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    goto :goto_a4

    .line 3276
    :cond_8e
    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9f

    .line 3278
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result p2

    .line 3279
    invoke-virtual {p5, p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_a4

    :cond_9f
    if-eqz p3, :cond_a4

    .line 3281
    invoke-virtual {p5}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3284
    :cond_a4
    :goto_a4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const-string v0, "The string supplied is too short to be a phone number."

    const/4 v1, 0x2

    if-lt p2, v1, :cond_107

    if-eqz p1, :cond_dc

    .line 3289
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3291
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 3295
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    .line 3296
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p0, p1, :cond_dc

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p0, p1, :cond_dc

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p0, p1, :cond_dc

    if-eqz p3, :cond_db

    .line 3300
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_db

    .line 3301
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    :cond_db
    move-object p4, v2

    .line 3305
    :cond_dc
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lt p0, v1, :cond_ff

    const/16 p1, 0x11

    if-gt p0, p1, :cond_f5

    .line 3314
    invoke-static {p4, p5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3315
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {p5, p0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return-void

    .line 3311
    :cond_f5
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The string supplied is too long to be a phone number."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3307
    :cond_ff
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3285
    :cond_107
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3260
    :cond_10f
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Could not interpret numbers after plus-sign."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3264
    :cond_119
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3219
    :cond_127
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The string supplied did not seem to be a phone number."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3210
    :cond_131
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The string supplied was too long to parse."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 3207
    :cond_13b
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "The phone number supplied was null."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .registers 6

    .line 2896
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 2897
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_35

    .line 2898
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    .line 2901
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 2902
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_31

    .line 2903
    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0"

    .line 2904
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    return v0

    .line 2908
    :cond_31
    invoke-virtual {p2, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v2

    :cond_35
    return v0
.end method

.method private blacklist prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 6

    .line 1894
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    const/16 v0, 0x2b

    const/4 v1, 0x0

    if-eq p0, p2, :cond_37

    const/4 p2, 0x2

    if-eq p0, p2, :cond_29

    const/4 p2, 0x3

    if-eq p0, p2, :cond_15

    return-void

    :cond_15
    const-string p0, "-"

    .line 1902
    invoke-virtual {p3, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "tel:"

    .line 1903
    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_29
    const-string p0, " "

    .line 1899
    invoke-virtual {p3, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void

    .line 1896
    :cond_37
    invoke-virtual {p3, v1, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    return-void
.end method

.method private blacklist rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1724
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1725
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 1732
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 1731
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0
    :try_end_1b
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_b .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    :cond_1c
    return v1
.end method

.method static declared-synchronized blacklist setInstance(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;)V
    .registers 2

    const-class v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1025
    :try_start_3
    sput-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 1026
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static blacklist setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 6

    .line 3179
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_29

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_29

    .line 3180
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move v0, v1

    .line 3184
    :goto_14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_24

    .line 3185
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_24

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_24
    if-eq v0, v1, :cond_29

    .line 3189
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    :cond_29
    return-void
.end method

.method private blacklist testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 4

    .line 2558
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method private blacklist testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 7

    .line 2567
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2574
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2575
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2577
    :goto_1b
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v0

    .line 2579
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, v2, :cond_7c

    .line 2580
    sget-object p3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p3

    invoke-static {p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p3

    if-nez p3, :cond_36

    .line 2583
    sget-object p3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0

    .line 2585
    :cond_36
    sget-object p3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    .line 2586
    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p3

    if-eqz p3, :cond_7c

    .line 2588
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2592
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v1

    if-nez v1, :cond_56

    .line 2593
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object p2

    goto :goto_5a

    .line 2594
    :cond_56
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object p2

    .line 2592
    :goto_5a
    invoke-interface {p3, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2597
    invoke-static {p3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2599
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6b

    .line 2600
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v0

    goto :goto_7b

    .line 2602
    :cond_6b
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2603
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2604
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, p2

    :goto_7b
    move-object v1, p3

    :cond_7c
    const/4 p0, 0x0

    .line 2612
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_8d

    .line 2613
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2616
    :cond_8d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2619
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9e

    .line 2620
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2623
    :cond_9e
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p1, :cond_ad

    .line 2625
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    :cond_ad
    if-le p0, p1, :cond_b2

    .line 2627
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2628
    :cond_b2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    const/4 p2, 0x1

    sub-int/2addr p0, p2

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ge p0, p1, :cond_c7

    .line 2629
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2632
    :cond_c7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_dc

    .line 2633
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_de

    :cond_dc
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    :goto_de
    return-object p0
.end method


# virtual methods
.method public blacklist canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4

    .line 3551
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 3557
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 3558
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method blacklist chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .line 1939
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1940
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v1

    if-eqz v1, :cond_2c

    .line 1941
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    add-int/lit8 v1, v1, -0x1

    .line 1943
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v1

    .line 1941
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 1943
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1944
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1945
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_41
    const/4 p0, 0x0

    return-object p0
.end method

.method blacklist extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .registers 9

    .line 2775
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_10

    goto :goto_39

    .line 2780
    :cond_10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x1

    :goto_15
    const/4 v3, 0x3

    if-gt v2, v3, :cond_39

    if-gt v2, v0, :cond_39

    .line 2782
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2783
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2784
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v3

    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_39
    :goto_39
    return v1
.end method

.method public blacklist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3145
    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3165
    new-instance v7, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v7
.end method

.method public blacklist format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 7

    .line 1254
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1260
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1261
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    return-object v0

    .line 1265
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1266
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 7

    const/4 v0, 0x0

    .line 1277
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1278
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1279
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1281
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v2, :cond_17

    .line 1284
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    invoke-direct {p0, v0, v2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    return-void

    .line 1289
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_21

    .line 1290
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    .line 1296
    :cond_21
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1300
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1301
    invoke-direct {p0, v1, v2, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1303
    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public blacklist formatByPattern(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1320
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1321
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1322
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v1

    .line 1328
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1331
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1333
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1336
    invoke-virtual {p0, p3, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p3

    if-nez p3, :cond_28

    .line 1339
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 1341
    :cond_28
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v4

    .line 1345
    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1346
    invoke-virtual {p3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object p3

    .line 1347
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_58

    .line 1348
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v5

    .line 1349
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_55

    const-string v6, "$NP"

    .line 1352
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    const-string v5, "$FG"

    const-string v6, "$1"

    .line 1353
    invoke-virtual {p3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1354
    invoke-virtual {v4, p3}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_58

    .line 1357
    :cond_55
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1361
    :cond_58
    :goto_58
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p3

    invoke-virtual {p0, v1, p3, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p3

    .line 1360
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    :goto_63
    invoke-direct {p0, p1, v2, p2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1364
    invoke-direct {p0, v0, p2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatInOriginalFormat(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1626
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1629
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1631
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1632
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1635
    :cond_1e
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_b0

    const/4 p2, 0x3

    if-eq v0, p2, :cond_a5

    .line 1648
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p2

    .line 1651
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 1652
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_bb

    .line 1653
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4f

    goto/16 :goto_bb

    .line 1661
    :cond_4f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v4

    .line 1660
    invoke-direct {p0, v4, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    goto :goto_bb

    .line 1668
    :cond_5a
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1669
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p2

    if-nez p2, :cond_6d

    goto :goto_bb

    .line 1683
    :cond_6d
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    const-string v4, "$1"

    .line 1685
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_7a

    goto :goto_bb

    :cond_7a
    const/4 v5, 0x0

    .line 1691
    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8a

    goto :goto_bb

    .line 1699
    :cond_8a
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v0

    .line 1700
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1701
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1702
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1703
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_bb

    .line 1643
    :cond_a5
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_bb

    .line 1640
    :cond_b0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_bb

    .line 1637
    :cond_b5
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    .line 1707
    :cond_bb
    :goto_bb
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object p0

    if-eqz v3, :cond_d6

    .line 1710
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_d6

    .line 1711
    invoke-static {v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1712
    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 1713
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d6

    move-object v3, p0

    :cond_d6
    return-object v3
.end method

.method public blacklist formatNationalNumberWithCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 8

    .line 1380
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1381
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1382
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    return-object v1

    .line 1389
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1391
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1393
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1394
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v1, v2, v4, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    invoke-direct {p0, p1, v2, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1397
    invoke-direct {p0, v0, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1399
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatNationalNumberWithPreferredCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    .line 1432
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e

    .line 1433
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .line 1428
    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 1957
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatNumberForMobileDialing(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    .line 1451
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1452
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_17

    .line 1453
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    :cond_16
    return-object v2

    .line 1458
    :cond_17
    new-instance v1, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 1459
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1460
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    .line 1461
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_34

    move v4, v6

    goto :goto_35

    :cond_34
    move v4, v5

    .line 1462
    :goto_35
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 1463
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v3, v4, :cond_47

    sget-object v7, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v3, v7, :cond_47

    sget-object v7, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v3, v7, :cond_48

    :cond_47
    move v5, v6

    :cond_48
    const-string v7, "CO"

    .line 1467
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5b

    if-ne v3, v4, :cond_5b

    const-string p2, "3"

    .line 1469
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_58
    move-object v2, p0

    goto/16 :goto_e9

    :cond_5b
    const-string v3, "BR"

    .line 1470
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    if-eqz v5, :cond_75

    .line 1474
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_e9

    .line 1475
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e9

    :cond_75
    if-ne v0, v6, :cond_9b

    .line 1484
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 1486
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p2

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p2, v0, :cond_94

    .line 1488
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_58

    .line 1490
    :cond_94
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_58

    :cond_9b
    const-string p2, "001"

    .line 1496
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_bd

    const-string p2, "MX"

    .line 1510
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_bb

    const-string p2, "CL"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_bb

    const-string p2, "UZ"

    .line 1511
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_ca

    :cond_bb
    if-eqz v5, :cond_ca

    .line 1512
    :cond_bd
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 1513
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_58

    .line 1515
    :cond_ca
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_58

    :cond_d1
    if-eqz v4, :cond_e9

    .line 1518
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p2

    if-eqz p2, :cond_e9

    if-eqz p3, :cond_e2

    .line 1522
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    goto :goto_e8

    .line 1523
    :cond_e2
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    :goto_e8
    return-object p0

    :cond_e9
    :goto_e9
    if-eqz p3, :cond_ec

    goto :goto_f0

    .line 1526
    :cond_ec
    invoke-static {v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_f0
    return-object v2
.end method

.method public blacklist formatOutOfCountryCallingNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 1548
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1549
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to format number from invalid region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". International formatting applied."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1553
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1555
    :cond_2a
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1556
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1557
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_39

    return-object v1

    :cond_39
    const/4 v2, 0x1

    const-string v3, " "

    if-ne v0, v2, :cond_5d

    .line 1561
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1564
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1566
    :cond_5d
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_6a

    .line 1573
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1576
    :cond_6a
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1577
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1583
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 1585
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    goto :goto_8c

    .line 1586
    :cond_7d
    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-eqz p2, :cond_8a

    goto :goto_8c

    :cond_8a
    const-string v2, ""

    .line 1590
    :goto_8c
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object p2

    .line 1593
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p2

    .line 1594
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1595
    invoke-direct {p0, v1, p2, v4}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1597
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1599
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_b9

    const/4 p0, 0x0

    .line 1600
    invoke-virtual {v5, p0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 1601
    invoke-virtual {p1, p0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_bc

    .line 1603
    :cond_b9
    invoke-direct {p0, v0, v4, v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1607
    :goto_bc
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist formatOutOfCountryKeepingAlphaChars(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 1780
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1783
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 1784
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1786
    :cond_f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 1787
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_1a

    return-object v0

    .line 1794
    :cond_1a
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 1799
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1800
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_3c

    .line 1801
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    .line 1803
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1806
    :cond_3c
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    const-string v5, " "

    if-ne v1, v3, :cond_5d

    .line 1808
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1809
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5d
    if-eqz v4, :cond_8c

    .line 1812
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_8c

    .line 1814
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p1

    if-nez p1, :cond_70

    return-object v0

    .line 1820
    :cond_70
    invoke-static {}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object p2

    .line 1821
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;

    const-string p1, "(\\d+)(.*)"

    .line 1823
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    const-string p1, "$1$2"

    .line 1825
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    .line 1831
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object p1

    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8c
    if-eqz v4, :cond_a4

    .line 1838
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 1840
    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9f

    goto :goto_a6

    .line 1842
    :cond_9f
    invoke-virtual {v4}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v2

    goto :goto_a6

    :cond_a4
    const-string v2, ""

    .line 1844
    :goto_a6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1845
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1847
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1848
    sget-object v4, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1850
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_ce

    .line 1851
    invoke-virtual {v3, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 1852
    invoke-virtual {p0, v6, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f4

    .line 1856
    :cond_ce
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f1

    .line 1857
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to format number from invalid region "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". International formatting applied."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1862
    :cond_f1
    invoke-direct {p0, v1, v4, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1866
    :goto_f4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;
    .registers 2

    .line 2767
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getCountryCodeForRegion(Ljava/lang/String;)I
    .registers 5

    .line 2427
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2428
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or missing region code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_18

    const-string p1, "null"

    .line 2430
    :cond_18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2428
    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 2434
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public blacklist getExampleNumber(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3

    .line 2015
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getExampleNumberForNonGeoEntity(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 6

    .line 2141
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-eqz v0, :cond_82

    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    const/4 v2, 0x0

    .line 2147
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 2148
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 2149
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    aput-object v0, v1, v2

    .line 2147
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_42
    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    if-eqz v1, :cond_42

    .line 2151
    :try_start_50
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 2152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZZ"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0
    :try_end_74
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_50 .. :try_end_74} :catch_75

    return-object p0

    :catch_75
    move-exception v1

    .line 2155
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_42

    .line 2159
    :cond_82
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown country calling code provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_9a
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getExampleNumberForType(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 7

    .line 2110
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2111
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    if-eqz v1, :cond_8

    return-object v1

    .line 2117
    :cond_1b
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2119
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2118
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 2121
    :try_start_3b
    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZZ"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0
    :try_end_5f
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_3b .. :try_end_5f} :catch_60

    return-object p0

    :catch_60
    move-exception v1

    .line 2125
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_23

    :cond_6d
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getExampleNumberForType(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 6

    .line 2086
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 2087
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 2090
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p2

    .line 2092
    :try_start_28
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 2093
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p0
    :try_end_36
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_28 .. :try_end_36} :catch_37

    return-object p0

    :catch_37
    move-exception p0

    .line 2096
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_43
    return-object v1
.end method

.method public blacklist getInvalidExampleNumber(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 7

    .line 2030
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 2031
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or unknown region code provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v1

    .line 2038
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2040
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-nez v2, :cond_31

    return-object v1

    .line 2044
    :cond_31
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    .line 2056
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3b
    const/4 v3, 0x2

    if-lt v2, v3, :cond_51

    const/4 v3, 0x0

    .line 2059
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2061
    :try_start_43
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 2062
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4
    :try_end_4b
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_43 .. :try_end_4b} :catch_4e

    if-nez v4, :cond_4e

    return-object v3

    :catch_4e
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_3b

    :cond_51
    return-object v1
.end method

.method public blacklist getLengthOfGeographicalAreaCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 7

    .line 874
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 880
    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v0

    if-nez v0, :cond_19

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 884
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 885
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 886
    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v3, :cond_32

    sget-object v3, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 890
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    return v1

    .line 894
    :cond_32
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v0

    if-nez v0, :cond_39

    return v1

    .line 898
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result p0

    return p0
.end method

.method public blacklist getLengthOfNationalDestinationCode(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 6

    .line 941
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 944
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 945
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 946
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_13

    :cond_12
    move-object v0, p1

    .line 951
    :goto_13
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->format(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 953
    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 957
    array-length v1, v0

    const/4 v2, 0x3

    if-gt v1, v2, :cond_25

    const/4 p0, 0x0

    return p0

    .line 961
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object p0

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v3, 0x2

    if-ne p0, v1, :cond_4c

    .line 967
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    .line 968
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    .line 969
    aget-object p0, v0, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    aget-object p1, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 972
    :cond_4c
    aget-object p0, v0, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method blacklist getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4

    .line 2289
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 2292
    :cond_e
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/internal/telephony/phonenumbers/MetadataSource;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/phonenumbers/MetadataSource;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method blacklist getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3

    .line 2282
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2285
    :cond_8
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/internal/telephony/phonenumbers/MetadataSource;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/phonenumbers/MetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 4

    .line 1878
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1879
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v0

    if-lez v0, :cond_24

    .line 1880
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v0

    new-array v0, v0, [C

    const/16 v1, 0x30

    .line 1881
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1882
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    :cond_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1885
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    .line 2468
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_29

    .line 2470
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or missing region code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_19

    const-string p1, "null"

    .line 2472
    :cond_19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") provided."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2470
    invoke-virtual {p0, p2, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-object v0

    .line 2476
    :cond_29
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object p0

    .line 2478
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_34

    return-object v0

    :cond_34
    if-eqz p2, :cond_3e

    const-string p1, "~"

    const-string p2, ""

    .line 2484
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_3e
    return-object p0
.end method

.method blacklist getNumberDescByType(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3

    .line 2186
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$google$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    packed-switch p0, :pswitch_data_42

    .line 2209
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2207
    :pswitch_10
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2205
    :pswitch_15
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2203
    :pswitch_1a
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2201
    :pswitch_1f
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2199
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2197
    :pswitch_29
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2195
    :pswitch_2e
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2192
    :pswitch_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2190
    :pswitch_38
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    .line 2188
    :pswitch_3d
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object p0

    return-object p0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_2e
        :pswitch_29
        :pswitch_24
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
        :pswitch_10
    .end packed-switch
.end method

.method public blacklist getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 4

    .line 2220
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2221
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2223
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object p0

    .line 2225
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 2226
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegionCodeForCountryCode(I)Ljava/lang/String;
    .registers 2

    .line 2404
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_11

    const-string p0, "ZZ"

    goto :goto_18

    :cond_11
    const/4 p1, 0x0

    .line 2405
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_18
    return-object p0
.end method

.method public blacklist getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 5

    .line 2363
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2364
    iget-object v1, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_31

    .line 2366
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing/invalid country_code ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 2369
    :cond_31
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_40

    const/4 p0, 0x0

    .line 2370
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 2372
    :cond_40
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRegionCodesForCountryCode(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2414
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_14

    .line 2415
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_14
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedCallingCodes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1058
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1045
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedRegions()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1035
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedTypesForNonGeoEntity(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1132
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    if-nez v0, :cond_28

    .line 1134
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown country calling code for a non-geographical entity provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1136
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1138
    :cond_28
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getSupportedTypesForRegion(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 1115
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1116
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 1118
    :cond_28
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isAlphaNumber(Ljava/lang/CharSequence;)Z
    .registers 3

    .line 2509
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2513
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2514
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2515
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public blacklist isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .registers 5

    .line 3569
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p0

    if-nez p0, :cond_20

    .line 3571
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid or unknown region code provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 3574
    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getMobileNumberPortableRegion()Z

    move-result p0

    return p0
.end method

.method public blacklist isNANPACountry(Ljava/lang/String;)Z
    .registers 2

    .line 2495
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z
    .registers 3

    .line 1219
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, p0, :cond_1b

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 1221
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public blacklist isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 3

    .line 1211
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result p0

    return p0
.end method

.method public blacklist isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 6

    .line 3410
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    .line 3411
    invoke-static {p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p2

    .line 3413
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 3414
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 3415
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3417
    :cond_25
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 3418
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    if-eqz v0, :cond_48

    if-eqz v1, :cond_48

    .line 3421
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 3422
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    :cond_3a
    if-ne v0, v1, :cond_45

    .line 3424
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    if-eqz p0, :cond_45

    .line 3428
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3431
    :cond_45
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3435
    :cond_48
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 3437
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 3438
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3440
    :cond_54
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0

    if-eqz p0, :cond_5d

    .line 3441
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0

    .line 3443
    :cond_5d
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0
.end method

.method public blacklist isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 10

    const-string v0, "ZZ"

    .line 3509
    :try_start_2
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 3510
    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_a
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v1

    .line 3512
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne v1, v2, :cond_44

    .line 3516
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 3518
    :try_start_1c
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 3519
    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p2

    .line 3520
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0

    .line 3521
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne p0, p1, :cond_30

    .line 3522
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    :cond_30
    return-object p0

    .line 3528
    :cond_31
    new-instance v6, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v6}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v5, v6

    .line 3529
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3530
    invoke-virtual {p0, p1, v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_43
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_1c .. :try_end_43} :catch_44

    return-object p0

    .line 3538
    :catch_44
    :cond_44
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0
.end method

.method public blacklist isNumberMatch(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 12

    const-string v0, "ZZ"

    .line 3469
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 3470
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_a
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    move-exception v1

    .line 3472
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne v1, v2, :cond_47

    .line 3474
    :try_start_14
    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3475
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_1c
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object p0

    :catch_1d
    move-exception v0

    .line 3477
    invoke-virtual {v0}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;->getErrorType()Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_47

    .line 3479
    :try_start_26
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3480
    new-instance v8, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v7, v0

    .line 3481
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v6, v8

    .line 3482
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3483
    invoke-virtual {p0, v0, v8}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object p0
    :try_end_46
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_26 .. :try_end_46} :catch_47

    return-object p0

    .line 3492
    :catch_47
    :cond_47
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$MatchType;

    return-object p0
.end method

.method blacklist isNumberMatchingDesc(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 7

    .line 2299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2300
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    return v3

    .line 2304
    :cond_1a
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-interface {p0, p1, p2, v3}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isPossibleNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 2

    .line 2530
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    .line 2531
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p0, p1, :cond_f

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public blacklist isPossibleNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 3

    .line 2727
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result p0
    :try_end_8
    .catch Lcom/android/internal/telephony/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isPossibleNumberForType(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .registers 3

    .line 2548
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    .line 2549
    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq p0, p1, :cond_f

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne p0, p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public blacklist isPossibleNumberForTypeWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 5

    .line 2689
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2690
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result p1

    .line 2697
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2698
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object p0

    .line 2700
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 2702
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object p1

    .line 2703
    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isPossibleNumberWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 3

    .line 2658
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 3

    .line 2319
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2320
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist isValidNumberForRegion(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 7

    .line 2340
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2341
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    const-string v3, "001"

    .line 2343
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2344
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result p2

    if-eq v0, p2, :cond_1a

    goto :goto_27

    .line 2349
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object p1

    .line 2350
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p0, p1, :cond_27

    const/4 v2, 0x1

    :cond_27
    :goto_27
    return v2
.end method

.method blacklist maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 2827
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2830
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_14

    .line 2834
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_14
    const-string p1, "NonMatch"

    .line 2838
    :goto_16
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object p1

    if-eqz p4, :cond_1f

    .line 2840
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2842
    :cond_1f
    sget-object v2, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq p1, v2, :cond_48

    .line 2843
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_3e

    .line 2848
    invoke-virtual {p0, v0, p3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result p0

    if-eqz p0, :cond_34

    .line 2850
    invoke-virtual {p5, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return p0

    .line 2856
    :cond_34
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Country calling code supplied was not recognised."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    .line 2844
    :cond_3e
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/NumberParseException;

    sget-object p1, Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;

    const-string p2, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonenumbers/NumberParseException;-><init>(Lcom/android/internal/telephony/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw p0

    :cond_48
    if-eqz p2, :cond_97

    .line 2862
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result p1

    .line 2863
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2865
    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_97

    .line 2866
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2867
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2868
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    const/4 v3, 0x0

    .line 2869
    invoke-virtual {p0, v4, p2, v3}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2874
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-interface {v3, v0, v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v3

    if-nez v3, :cond_81

    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 2875
    invoke-interface {v3, v4, v2, v1}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v2

    if-nez v2, :cond_89

    .line 2876
    :cond_81
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object p0

    sget-object p2, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne p0, p2, :cond_97

    .line 2877
    :cond_89
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_93

    .line 2879
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {p5, p0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2881
    :cond_93
    invoke-virtual {p5, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return p1

    .line 2887
    :cond_97
    invoke-virtual {p5, v1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return v1
.end method

.method blacklist maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 5

    .line 3019
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 3022
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3024
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x1

    :goto_20
    if-gt v1, v0, :cond_3b

    .line 3025
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 3028
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 3029
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->start()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-object v0

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_3b
    const-string p0, ""

    return-object p0
.end method

.method blacklist maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 5

    .line 2930
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 2931
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0

    .line 2934
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2935
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 p0, 0x0

    .line 2936
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2938
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2939
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object p0

    .line 2942
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 2943
    invoke-static {p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2944
    invoke-direct {p0, p2, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 2945
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_37

    .line 2946
    :cond_35
    sget-object p0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    :goto_37
    return-object p0
.end method

.method blacklist maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .registers 12

    .line 2961
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2962
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_a3

    .line 2963
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_a3

    .line 2968
    :cond_13
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2969
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 2970
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 2972
    iget-object v4, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    invoke-interface {v4, p1, v3, v2}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v4

    .line 2976
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v5

    .line 2977
    invoke-virtual {p2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object p2

    const/4 v6, 0x1

    if-eqz p2, :cond_77

    .line 2978
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_77

    .line 2979
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_45

    goto :goto_77

    .line 2994
    :cond_45
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2995
    invoke-virtual {v1, p2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, v2, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_60

    .line 2996
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 2997
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2, v3, v2}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    if-nez p0, :cond_60

    return v2

    :cond_60
    if-eqz p3, :cond_6b

    if-le v5, v6, :cond_6b

    .line 3001
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    :cond_6b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    return v6

    :cond_77
    :goto_77
    if-eqz v4, :cond_8a

    .line 2981
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;

    .line 2983
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 2982
    invoke-interface {p0, p2, v3, v2}, Lcom/android/internal/telephony/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result p0

    if-nez p0, :cond_8a

    return v2

    :cond_8a
    if-eqz p3, :cond_9b

    if-lez v5, :cond_9b

    .line 2986
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9b

    .line 2987
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    :cond_9b
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result p0

    invoke-virtual {p1, v2, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return v6

    :cond_a3
    :goto_a3
    return v2
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3088
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3089
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-object v0
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3099
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-void
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3118
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3119
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-object v0
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/phonenumbers/NumberParseException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 3130
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)V

    return-void
.end method

.method public blacklist truncateTooLongNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8

    .line 2741
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 2744
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2745
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2746
    invoke-virtual {p1}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    :cond_14
    const-wide/16 v4, 0xa

    .line 2748
    div-long/2addr v2, v4

    .line 2749
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    .line 2750
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_33

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_29

    goto :goto_33

    .line 2754
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2755
    invoke-virtual {p1, v2, v3}, Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/internal/telephony/phonenumbers/Phonenumber$PhoneNumber;

    return v1

    :cond_33
    :goto_33
    const/4 p0, 0x0

    return p0
.end method
