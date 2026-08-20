.class public Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
.super Ljava/lang/Object;
.source "PhoneNumberUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;,
        Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    }
.end annotation


# static fields
.field private static final greylist-max-o ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o CC_STRING:Ljava/lang/String; = "$CC"

.field private static final greylist-max-o COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final greylist-max-o DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final greylist-max-o DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final greylist-max-o EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final greylist-max-o EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final greylist-max-o FG_STRING:Ljava/lang/String; = "$FG"

.field private static final greylist-max-o FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o GEO_MOBILE_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final greylist-max-o MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final greylist-max-o MAX_LENGTH_FOR_NSN:I = 0x11

.field private static final greylist-max-o MIN_LENGTH_FOR_NSN:I = 0x2

.field private static final greylist-max-o MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o NANPA_COUNTRY_CODE:I = 0x1

.field static final greylist-max-o NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o NP_STRING:Ljava/lang/String; = "$NP"

.field static final greylist-max-o PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final greylist-max-o PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o PLUS_SIGN:C = '+'

.field static final greylist-max-o REGEX_FLAGS:I = 0x42

.field public static final blacklist REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final greylist-max-o RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final greylist-max-o RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final greylist-max-o RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final greylist-max-o RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final greylist-max-o SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final greylist-max-o SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final greylist-max-o STAR_SIGN:C = '*'

.field private static final greylist-max-o UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final greylist-max-o UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final greylist-max-o UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o VALID_ALPHA:Ljava/lang/String;

.field private static final greylist-max-o VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final greylist-max-o VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final greylist-max-o VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final greylist-max-o VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final greylist-max-o VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final greylist-max-o VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static greylist-max-o instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private static final greylist-max-o logger:Ljava/util/logging/Logger;


# instance fields
.field private final greylist-max-o countryCallingCodeToRegionCodeMap:Ljava/util/Map;
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

.field private final greylist-max-o countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

.field private final greylist-max-o metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

.field private final greylist-max-o nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

.field private final greylist-max-o supportedRegions:Ljava/util/Set;
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
    .registers 16

    .line 59
    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 152
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 127
    const-string v3, "9"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    .line 130
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 131
    .local v3, "geoMobileCountriesWithoutMobileAreaCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v4, 0x56

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    nop

    .line 133
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 135
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v5, "geoMobileCountries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/16 v6, 0x34

    .line 150
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    const/16 v2, 0x37

    .line 153
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    const/16 v2, 0x3e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 141
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 145
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 146
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v8, 0x30

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v2, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v8, 0x31

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v2, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v2, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const/16 v9, 0x33

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v2, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v2, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v10, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-virtual {v2, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-virtual {v2, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v2, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    invoke-virtual {v2, v12, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v13, Ljava/util/HashMap;

    const/16 v14, 0x28

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(I)V

    .line 158
    .local v13, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v14, 0x41

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    invoke-virtual {v13, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v14, 0x42

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v13, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v15, 0x43

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v15

    invoke-virtual {v13, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v8, 0x44

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v13, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v8, 0x45

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v13, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v8, 0x46

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v13, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v8, 0x47

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v13, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v8, 0x48

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v13, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v8, 0x49

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v13, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v7, 0x4a

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v13, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v7, 0x4b

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v13, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v7, 0x4c

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v13, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v7, 0x4d

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v13, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v7, 0x4e

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v13, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v7, 0x4f

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v13, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/16 v1, 0x52

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/16 v1, 0x57

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/16 v1, 0x58

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/16 v1, 0x59

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v13, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 186
    new-instance v4, Ljava/util/HashMap;

    const/16 v6, 0x64

    invoke-direct {v4, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 187
    .local v4, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 188
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 189
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 191
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 192
    .local v6, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 193
    const/16 v7, 0x2b

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const/16 v7, 0x2a

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const/16 v7, 0x23

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    invoke-virtual {v6, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v7

    sput-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 198
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 200
    .local v7, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1fa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_225

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Character;

    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    .line 201
    .local v8, "c":C
    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .end local v8    # "c":C
    goto :goto_1fa

    .line 204
    :cond_225
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 206
    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const v8, 0xff0d

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v8, 0x2010

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/16 v8, 0x2011

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v8, 0x2012

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const/16 v8, 0x2013

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const/16 v8, 0x2014

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/16 v8, 0x2015

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const/16 v8, 0x2212

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const v8, 0xff0f

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const/16 v8, 0x3000

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const/16 v8, 0x2060

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const v8, 0xff0e

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {v7}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 231
    .end local v0    # "mobileTokenMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v2    # "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v3    # "geoMobileCountriesWithoutMobileAreaCodes":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v4    # "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v5    # "geoMobileCountries":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v6    # "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v7    # "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    .end local v13    # "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    nop

    .line 232
    const-string v0, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 246
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

    move-result-object v0

    .line 247
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA:Ljava/lang/String;

    .line 250
    const-string v1, "[+\uff0b]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 251
    const-string v1, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 252
    const-string v1, "(\\p{Nd})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 261
    const-string v1, "[+\uff0b\\p{Nd}]"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 269
    const-string v1, "[\\\\/] *x"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 275
    const-string v1, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 279
    const-string v1, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 311
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 312
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createExtnPattern(Z)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(?:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")$"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-static {v2, v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    sput-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    invoke-static {v0, v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 412
    const-string v0, "(\\D+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 418
    const-string v0, "(\\$\\d)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 428
    const-string v0, "\\(?\\$1\\)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 430
    const/4 v0, 0x0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    return-void
.end method

.method constructor greylist-max-o <init>(Lcom/android/i18n/phonenumbers/MetadataSource;Ljava/util/Map;)V
    .registers 9
    .param p1, "metadataSource"    # Lcom/android/i18n/phonenumbers/MetadataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/MetadataSource;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 716
    .local p2, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    invoke-static {}, Lcom/android/i18n/phonenumbers/internal/RegexBasedMatcher;->create()Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 695
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    .line 700
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 705
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    .line 709
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 717
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

    .line 718
    iput-object p2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 719
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "001"

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 720
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 723
    .local v4, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v2, :cond_69

    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 725
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 728
    :cond_69
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v2, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 730
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6e
    goto :goto_37

    .line 734
    :cond_6f
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 735
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v0, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 738
    :cond_80
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 739
    return-void
.end method

.method private greylist-max-o buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 8
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .line 3368
    const-string v0, ";phone-context="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3369
    .local v1, "indexOfPhoneContext":I
    if-ltz v1, :cond_4b

    .line 3370
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 3373
    .local v0, "phoneContextStart":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_34

    .line 3374
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_34

    .line 3378
    const/16 v2, 0x3b

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3379
    .local v2, "phoneContextEnd":I
    if-lez v2, :cond_2d

    .line 3380
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 3382
    :cond_2d
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3390
    .end local v2    # "phoneContextEnd":I
    :cond_34
    :goto_34
    const-string v2, "tel:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3391
    .local v3, "indexOfRfc3966Prefix":I
    if-ltz v3, :cond_42

    .line 3392
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    goto :goto_43

    :cond_42
    const/4 v2, 0x0

    .line 3393
    .local v2, "indexOfNationalNumber":I
    :goto_43
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3394
    .end local v0    # "phoneContextStart":I
    .end local v2    # "indexOfNationalNumber":I
    .end local v3    # "indexOfRfc3966Prefix":I
    goto :goto_52

    .line 3397
    :cond_4b
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3402
    :goto_52
    const-string v0, ";isub="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3403
    .local v0, "indexOfIsdn":I
    if-lez v0, :cond_61

    .line 3404
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3410
    :cond_61
    return-void
.end method

.method private greylist-max-o checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .line 3087
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3089
    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 3090
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3091
    :cond_1a
    const/4 v0, 0x0

    return v0

    .line 3094
    :cond_1c
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist convertAlphaCharactersInNumber(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 862
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o copyCoreFieldsOnly(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p0, "phoneNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3418
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3419
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3420
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3421
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    .line 3422
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3424
    :cond_24
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3425
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3427
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3429
    :cond_35
    return-object v0
.end method

.method private static blacklist createExtnPattern(Z)Ljava/lang/String;
    .registers 22
    .param p0, "forParsing"    # Z

    .line 332
    const/16 v0, 0x14

    .line 333
    .local v0, "extLimitAfterExplicitLabel":I
    const/16 v1, 0xf

    .line 334
    .local v1, "extLimitAfterLikelyLabel":I
    const/16 v2, 0x9

    .line 335
    .local v2, "extLimitAfterAmbiguousChar":I
    const/4 v3, 0x6

    .line 337
    .local v3, "extLimitWhenNotSure":I
    const-string v4, "[ \u00a0\\t,]*"

    .line 339
    .local v4, "possibleSeparatorsBetweenNumberAndExtLabel":Ljava/lang/String;
    const-string v5, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    .line 340
    .local v5, "possibleCharsAfterExtLabel":Ljava/lang/String;
    const-string v6, "#?"

    .line 346
    .local v6, "optionalExtnSuffix":Ljava/lang/String;
    const-string v7, "(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|\u0434\u043e\u0431|anexo)"

    .line 350
    .local v7, "explicitExtLabels":Ljava/lang/String;
    const-string v8, "(?:[x\uff58#\uff03~\uff5e]|int|\uff49\uff4e\uff54)"

    .line 352
    .local v8, "ambiguousExtLabels":Ljava/lang/String;
    const-string v9, "[- ]+"

    .line 354
    .local v9, "ambiguousSeparator":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ";ext="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 355
    .local v10, "rfcExtn":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 356
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 358
    .local v11, "explicitExtn":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 359
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, "ambiguousExtn":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 370
    .local v13, "americanStyleExtnWithSuffix":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 376
    .local v14, "extensionPattern":Ljava/lang/String;
    if-eqz p0, :cond_120

    .line 379
    move/from16 v16, v0

    .end local v0    # "extLimitAfterExplicitLabel":I
    .local v16, "extLimitAfterExplicitLabel":I
    const-string v0, "[ \u00a0\\t]*"

    .line 383
    .local v0, "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    move/from16 v17, v3

    .end local v3    # "extLimitWhenNotSure":I
    .local v17, "extLimitWhenNotSure":I
    const-string v3, "(?:,{2}|;)"

    .line 385
    .local v3, "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    move-object/from16 v18, v4

    .end local v4    # "possibleSeparatorsBetweenNumberAndExtLabel":Ljava/lang/String;
    .local v18, "possibleSeparatorsBetweenNumberAndExtLabel":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 387
    move-object/from16 v19, v3

    .end local v3    # "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    .local v19, "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, "autoDiallingExtn":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v20, v0

    .end local v0    # "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    .local v20, "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    const-string v0, "(?:,)+"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 389
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extnDigits(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "onlyCommasExtn":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 399
    .end local v16    # "extLimitAfterExplicitLabel":I
    .end local v17    # "extLimitWhenNotSure":I
    .end local v18    # "possibleSeparatorsBetweenNumberAndExtLabel":Ljava/lang/String;
    .end local v19    # "autoDiallingAndExtLabelsFound":Ljava/lang/String;
    .end local v20    # "possibleSeparatorsNumberExtLabelNoComma":Ljava/lang/String;
    .local v0, "extLimitAfterExplicitLabel":I
    .local v3, "extLimitWhenNotSure":I
    .restart local v4    # "possibleSeparatorsBetweenNumberAndExtLabel":Ljava/lang/String;
    :cond_120
    return-object v14
.end method

.method public static blacklist createInstance(Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 3
    .param p0, "metadataLoader"    # Lcom/android/i18n/phonenumbers/MetadataLoader;

    .line 1204
    if-eqz p0, :cond_c

    .line 1207
    new-instance v0, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;

    invoke-direct {v0, p0}, Lcom/android/i18n/phonenumbers/MultiFileMetadataSourceImpl;-><init>(Lcom/android/i18n/phonenumbers/MetadataLoader;)V

    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/i18n/phonenumbers/MetadataSource;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    return-object v0

    .line 1205
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataLoader could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o createInstance(Lcom/android/i18n/phonenumbers/MetadataSource;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 3
    .param p0, "metadataSource"    # Lcom/android/i18n/phonenumbers/MetadataSource;

    .line 1223
    if-eqz p0, :cond_c

    .line 1226
    new-instance v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 1227
    invoke-static {}, Lcom/android/i18n/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;-><init>(Lcom/android/i18n/phonenumbers/MetadataSource;Ljava/util/Map;)V

    .line 1226
    return-object v0

    .line 1224
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataSource could not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o descHasData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 2
    .param p0, "desc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 1115
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1116
    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1117
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1115
    :goto_16
    return v0
.end method

.method private static greylist-max-o descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 5
    .param p0, "desc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 1100
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_f

    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLength(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_10

    :cond_f
    move v1, v2

    :cond_10
    return v1
.end method

.method private static blacklist extnDigits(I)Ljava/lang/String;
    .registers 3
    .param p0, "maxLength"    # I

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\p{Nd}{1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o extractPossibleNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 6
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 757
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 758
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_42

    .line 759
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 761
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 762
    .local v1, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 763
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p0, v3, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 766
    :cond_2d
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 767
    .local v2, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 768
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-interface {p0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    .line 770
    :cond_41
    return-object p0

    .line 772
    .end local v1    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "secondNumber":Ljava/util/regex/Matcher;
    :cond_42
    const-string v1, ""

    return-object v1
.end method

.method private greylist-max-o formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1950
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/CharSequence;

    .line 1961
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v0

    .line 1965
    .local v0, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v1, :cond_f

    goto :goto_14

    .line 1967
    :cond_f
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getIntlNumberFormatList()Ljava/util/List;

    move-result-object v1

    goto :goto_18

    .line 1966
    :cond_14
    :goto_14
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v1

    .line 1967
    :goto_18
    nop

    .line 1968
    .local v1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p0, v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 1969
    .local v2, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_21

    .line 1970
    move-object v3, p1

    goto :goto_25

    .line 1971
    :cond_21
    invoke-direct {p0, p1, v2, p3, p4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1969
    :goto_25
    return-object v3
.end method

.method private greylist-max-o formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 11
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/CharSequence;

    .line 2003
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 2004
    .local v0, "numberFormatRule":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 2005
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2006
    .local v1, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 2007
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_43

    if-eqz p4, :cond_43

    .line 2008
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 2009
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_43

    .line 2011
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 2012
    .local v3, "carrierCodeFormattingRule":Ljava/lang/String;
    const-string v4, "$CC"

    invoke-virtual {v3, v4, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 2015
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2016
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2017
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2018
    .end local v3    # "carrierCodeFormattingRule":Ljava/lang/String;
    goto :goto_67

    .line 2020
    :cond_43
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 2021
    .local v3, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v4, :cond_63

    if-eqz v3, :cond_63

    .line 2023
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_63

    .line 2024
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2025
    .local v4, "firstGroupMatcher":Ljava/util/regex/Matcher;
    nop

    .line 2026
    invoke-virtual {v4, v3}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2027
    .end local v4    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    goto :goto_67

    .line 2028
    :cond_63
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2031
    .end local v3    # "nationalPrefixFormattingRule":Ljava/lang/String;
    :goto_67
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v3, :cond_87

    .line 2033
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2034
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 2035
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2038
    :cond_7d
    invoke-virtual {v3, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2040
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    :cond_87
    return-object v2
.end method

.method static greylist-max-o formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .registers 2
    .param p0, "nationalPrefixFormattingRule"    # Ljava/lang/String;

    .line 1235
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1236
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 1235
    :goto_16
    return v0
.end method

.method private greylist-max-o getCountryCodeForValidRegion(Ljava/lang/String;)I
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2487
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2488
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_b

    .line 2491
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1

    .line 2489
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist getCountryMobileToken(I)Ljava/lang/String;
    .registers 3
    .param p0, "countryCallingCode"    # I

    .line 1017
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->MOBILE_TOKEN_MAPPINGS:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1018
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1020
    :cond_17
    const-string v0, ""

    return-object v0
.end method

.method public static declared-synchronized greylist getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .registers 2

    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1185
    :try_start_3
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    if-nez v1, :cond_10

    .line 1186
    sget-object v1, Lcom/android/i18n/phonenumbers/MetadataManager;->DEFAULT_METADATA_LOADER:Lcom/android/i18n/phonenumbers/MetadataLoader;

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->createInstance(Lcom/android/i18n/phonenumbers/MetadataLoader;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->setInstance(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)V

    .line 1188
    :cond_10
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v0

    return-object v1

    .line 1184
    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private greylist-max-o getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 1439
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1440
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_11

    .line 1441
    :cond_d
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1439
    :goto_11
    return-object v0
.end method

.method private greylist-max-o getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 5
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 2268
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2269
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2272
    :cond_d
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2273
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PREMIUM_RATE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2275
    :cond_1a
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2276
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->TOLL_FREE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2278
    :cond_27
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2279
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->SHARED_COST:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2281
    :cond_34
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 2282
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOIP:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2284
    :cond_41
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2285
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PERSONAL_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2287
    :cond_4e
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 2288
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2290
    :cond_5b
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2291
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UAN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2293
    :cond_68
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 2294
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->VOICEMAIL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v0

    .line 2297
    :cond_75
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v0

    .line 2298
    .local v0, "isFixedLine":Z
    if-eqz v0, :cond_98

    .line 2299
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 2300
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2301
    :cond_88
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 2302
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2304
    :cond_95
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2308
    :cond_98
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSameMobileAndFixedLinePattern()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 2309
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 2310
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1

    .line 2312
    :cond_ab
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v1
.end method

.method private greylist-max-o getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
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

    .line 2418
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2419
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2422
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2423
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2424
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 2425
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 2426
    return-object v2

    .line 2428
    :cond_33
    invoke-direct {p0, v0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_3c

    .line 2429
    return-object v2

    .line 2431
    .end local v2    # "regionCode":Ljava/lang/String;
    .end local v3    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_3c
    goto :goto_8

    .line 2432
    :cond_3d
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o getSupportedTypesForMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;
    .registers 8
    .param p1, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1125
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 1126
    .local v0, "types":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;>;"
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->values()[Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 1127
    .local v4, "type":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_25

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v4, v5, :cond_18

    .line 1130
    goto :goto_25

    .line 1132
    :cond_18
    invoke-virtual {p0, p1, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    invoke-static {v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1133
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1126
    .end local v4    # "type":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    :cond_25
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 1136
    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1777
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1778
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 1779
    .local v1, "phoneNumberRegion":Ljava/lang/String;
    nop

    .line 1780
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1781
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v3, 0x0

    if-nez v2, :cond_11

    .line 1782
    return v3

    .line 1784
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 1785
    .local v4, "nationalNumber":Ljava/lang/String;
    nop

    .line 1786
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1787
    .local v5, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v5, :cond_21

    const/4 v3, 0x1

    :cond_21
    return v3
.end method

.method private greylist-max-o hasValidCountryCallingCode(I)Z
    .registers 4
    .param p1, "countryCallingCode"    # I

    .line 1270
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3495
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3496
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3498
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 3499
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v2, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v2, 0x1

    .line 3498
    :goto_20
    return v2
.end method

.method private greylist-max-o isValidRegionCode(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 1263
    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static greylist-max-o isViablePhoneNumber(Ljava/lang/CharSequence;)Z
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 788
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    .line 789
    const/4 v0, 0x0

    return v0

    .line 791
    :cond_9
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 792
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private greylist-max-o maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .line 2209
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_45

    .line 2210
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p3, v0, :cond_22

    .line 2211
    const-string v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 2213
    :cond_22
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 2214
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_45

    .line 2216
    :cond_38
    const-string v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2220
    :cond_45
    :goto_45
    return-void
.end method

.method static greylist-max-o normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 6
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .line 812
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 813
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 814
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    .line 816
    :cond_1c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-static {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    :goto_27
    return-object p0
.end method

.method public static blacklist normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 3
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 854
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p1, "keepNonDigits"    # Z

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 834
    .local v0, "normalizedDigits":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 835
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 836
    .local v2, "c":C
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 837
    .local v3, "digit":I
    const/4 v4, -0x1

    if-eq v3, v4, :cond_21

    .line 838
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 839
    :cond_21
    if-eqz p1, :cond_26

    .line 840
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 834
    .end local v2    # "c":C
    .end local v3    # "digit":I
    :cond_26
    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 843
    .end local v1    # "i":I
    :cond_29
    return-object v0
.end method

.method public static blacklist normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 2
    .param p0, "number"    # Ljava/lang/CharSequence;

    .line 829
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;
    .registers 7
    .param p0, "number"    # Ljava/lang/CharSequence;
    .param p2, "removeNonMatches"    # Z
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

    .line 1038
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1039
    .local v0, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1040
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1041
    .local v2, "character":C
    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    .line 1042
    .local v3, "newDigit":Ljava/lang/Character;
    if-eqz v3, :cond_28

    .line 1043
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 1044
    :cond_28
    if-nez p2, :cond_2d

    .line 1045
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1039
    .end local v2    # "character":C
    .end local v3    # "newDigit":Ljava/lang/Character;
    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1049
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 23
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3251
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    if-eqz p1, :cond_14d

    .line 3254
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xfa

    if-gt v0, v1, :cond_143

    .line 3259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v0

    .line 3260
    .local v10, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3261
    .local v11, "numberBeingParsed":Ljava/lang/String;
    invoke-direct {v7, v11, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3263
    invoke-static {v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_139

    .line 3270
    if-eqz p4, :cond_36

    invoke-direct {v7, v10, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->checkRegionForParsing(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_36

    .line 3271
    :cond_2c
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "Missing or invalid default region."

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 3275
    :cond_36
    :goto_36
    if-eqz p3, :cond_3b

    .line 3276
    invoke-virtual {v9, v11}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3280
    :cond_3b
    invoke-virtual {v7, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v12

    .line 3281
    .local v12, "extension":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_48

    .line 3282
    invoke-virtual {v9, v12}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3285
    :cond_48
    invoke-virtual {v7, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v13

    .line 3288
    .local v13, "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v14, v0

    .line 3289
    .local v14, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 3294
    .local v15, "countryCode":I
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v13

    move-object v4, v14

    move/from16 v5, p3

    move-object/from16 v6, p5

    :try_start_5c
    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v0
    :try_end_60
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_5c .. :try_end_60} :catch_61

    .line 3311
    .end local v15    # "countryCode":I
    .local v0, "countryCode":I
    goto :goto_8f

    .line 3296
    .end local v0    # "countryCode":I
    .restart local v15    # "countryCode":I
    :catch_61
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 3297
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 3298
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v1, v2, :cond_12b

    .line 3299
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_12b

    .line 3301
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object v3, v13

    move-object v4, v14

    move/from16 v5, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    .line 3304
    .end local v15    # "countryCode":I
    .local v1, "countryCode":I
    if-eqz v1, :cond_121

    move v0, v1

    .line 3312
    .end local v1    # "countryCode":I
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    .local v0, "countryCode":I
    :goto_8f
    if-eqz v0, :cond_a0

    .line 3313
    invoke-virtual {v7, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 3314
    .local v1, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 3316
    invoke-direct {v7, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v13

    .line 3318
    .end local v1    # "phoneNumberRegion":Ljava/lang/String;
    :cond_9f
    goto :goto_b6

    .line 3321
    :cond_a0
    invoke-static {v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3322
    if-eqz v8, :cond_b1

    .line 3323
    invoke-virtual {v13}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v0

    .line 3324
    invoke-virtual {v9, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_b6

    .line 3325
    :cond_b1
    if-eqz p3, :cond_b6

    .line 3326
    invoke-virtual/range {p5 .. p5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3329
    :cond_b6
    :goto_b6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const-string v2, "The string supplied is too short to be a phone number."

    const/4 v3, 0x2

    if-lt v1, v3, :cond_119

    .line 3333
    if-eqz v13, :cond_ee

    .line 3334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3335
    .local v1, "carrierCode":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3336
    .local v4, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v7, v4, v13, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 3340
    invoke-direct {v7, v4, v13}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v5

    .line 3341
    .local v5, "validationResult":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v5, v6, :cond_ee

    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v5, v6, :cond_ee

    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v5, v6, :cond_ee

    .line 3344
    move-object v14, v4

    .line 3345
    if-eqz p3, :cond_ee

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_ee

    .line 3346
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3350
    .end local v1    # "carrierCode":Ljava/lang/StringBuilder;
    .end local v4    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v5    # "validationResult":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    :cond_ee
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3351
    .local v1, "lengthOfNationalNumber":I
    if-lt v1, v3, :cond_111

    .line 3355
    const/16 v2, 0x11

    if-gt v1, v2, :cond_107

    .line 3359
    invoke-static {v14, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3360
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v9, v2, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3361
    return-void

    .line 3356
    :cond_107
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v4, "The string supplied is too long to be a phone number."

    invoke-direct {v2, v3, v4}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3352
    :cond_111
    new-instance v3, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v4, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {v3, v4, v2}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v3

    .line 3330
    .end local v1    # "lengthOfNationalNumber":I
    :cond_119
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    invoke-direct {v1, v3, v2}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 3305
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .local v1, "countryCode":I
    .restart local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_121
    new-instance v2, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v4, "Could not interpret numbers after plus-sign."

    invoke-direct {v2, v3, v4}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3309
    .end local v1    # "countryCode":I
    .restart local v15    # "countryCode":I
    :cond_12b
    new-instance v1, Lcom/android/i18n/phonenumbers/NumberParseException;

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v1

    .line 3264
    .end local v0    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v12    # "extension":Ljava/lang/String;
    .end local v13    # "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v14    # "normalizedNationalNumber":Ljava/lang/StringBuilder;
    .end local v15    # "countryCode":I
    .end local v16    # "matcher":Ljava/util/regex/Matcher;
    :cond_139
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The string supplied did not seem to be a phone number."

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 3255
    .end local v10    # "nationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "numberBeingParsed":Ljava/lang/String;
    :cond_143
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The string supplied was too long to parse."

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0

    .line 3252
    :cond_14d
    new-instance v0, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v1, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v2, "The phone number supplied was null."

    invoke-direct {v0, v1, v2}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .registers 10
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .line 2940
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2941
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 2942
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    .line 2945
    .local v1, "matchEnd":I
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2946
    .local v3, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_31

    .line 2947
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2948
    .local v4, "normalizedGroup":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 2949
    return v2

    .line 2952
    .end local v4    # "normalizedGroup":Ljava/lang/String;
    :cond_31
    invoke-virtual {p2, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2953
    return v5

    .line 2955
    .end local v1    # "matchEnd":I
    .end local v3    # "digitMatcher":Ljava/util/regex/Matcher;
    :cond_35
    return v2
.end method

.method private greylist-max-o prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 7
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .line 1931
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$android$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberFormat:[I

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_3a

    .line 1944
    return-void

    .line 1939
    :pswitch_f
    const-string v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1940
    const-string v1, "tel:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1941
    return-void

    .line 1936
    :pswitch_23
    const-string v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1937
    return-void

    .line 1933
    :pswitch_31
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 1934
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_31
        :pswitch_23
        :pswitch_f
    .end packed-switch
.end method

.method private greylist-max-o rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .line 1760
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1761
    .local v0, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    .line 1767
    nop

    .line 1768
    :try_start_c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 1767
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v1
    :try_end_1c
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_c .. :try_end_1c} :catch_1d

    return v1

    .line 1769
    :catch_1d
    move-exception v1

    .line 1770
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    return v2

    .line 1773
    .end local v1    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_1f
    return v2
.end method

.method static declared-synchronized greylist-max-o setInstance(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)V
    .registers 2
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    const-class v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    monitor-enter v0

    .line 1058
    :try_start_3
    sput-object p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->instance:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    .line 1059
    monitor-exit v0

    return-void

    .line 1057
    .end local p0    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :catchall_7
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static greylist-max-o setItalianLeadingZerosForPhoneNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 6
    .param p0, "nationalNumber"    # Ljava/lang/CharSequence;
    .param p1, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3224
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_29

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_29

    .line 3225
    invoke-virtual {p1, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3226
    const/4 v0, 0x1

    .line 3229
    .local v0, "numberOfLeadingZeros":I
    :goto_14
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge v0, v3, :cond_24

    .line 3230
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ne v3, v2, :cond_24

    .line 3231
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 3233
    :cond_24
    if-eq v0, v1, :cond_29

    .line 3234
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNumberOfLeadingZeros(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3237
    .end local v0    # "numberOfLeadingZeros":I
    :cond_29
    return-void
.end method

.method private greylist-max-o testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 4
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 2600
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 11
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2609
    invoke-virtual {p0, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2616
    .local v0, "descForType":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2617
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    goto :goto_1b

    :cond_17
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2619
    .local v1, "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1b
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v2

    .line 2621
    .local v2, "localLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p3, v3, :cond_7c

    .line 2622
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 2625
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v3

    return-object v3

    .line 2627
    :cond_36
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    .line 2628
    .local v3, "mobileDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->descHasPossibleNumberData(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 2630
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v1, v4

    .line 2634
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v4

    if-nez v4, :cond_57

    .line 2635
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v4

    goto :goto_5b

    .line 2636
    :cond_57
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v4

    .line 2634
    :goto_5b
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2639
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2641
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2642
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v2

    goto :goto_7c

    .line 2644
    :cond_6c
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v4

    .line 2645
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2646
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2654
    .end local v3    # "mobileDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_7c
    :goto_7c
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8d

    .line 2655
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v3

    .line 2658
    :cond_8d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 2661
    .local v4, "actualLength":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 2662
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v3

    .line 2665
    :cond_9e
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2666
    .local v3, "minimumLength":I
    if-ne v3, v4, :cond_ad

    .line 2667
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v5

    .line 2668
    :cond_ad
    if-le v3, v4, :cond_b2

    .line 2669
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v5

    .line 2670
    :cond_b2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v5, v4, :cond_c7

    .line 2671
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v5

    .line 2674
    :cond_c7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1, v6, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_dc

    .line 2675
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    goto :goto_de

    :cond_dc
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_LENGTH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    .line 2674
    :goto_de
    return-object v5
.end method


# virtual methods
.method public blacklist canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3597
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3598
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 3601
    return v1

    .line 3603
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 3604
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    xor-int/2addr v1, v3

    return v1
.end method

.method greylist-max-o chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .registers 8
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .line 1976
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1977
    .local v1, "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v2

    .line 1978
    .local v2, "size":I
    if-eqz v2, :cond_2c

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    add-int/lit8 v4, v2, -0x1

    .line 1980
    invoke-virtual {v1, v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v4

    .line 1978
    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1980
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1981
    :cond_2c
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1982
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1983
    return-object v1

    .line 1986
    .end local v1    # "numFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "size":I
    .end local v3    # "m":Ljava/util/regex/Matcher;
    :cond_41
    goto :goto_4

    .line 1987
    :cond_42
    const/4 v0, 0x0

    return-object v0
.end method

.method greylist-max-o extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .registers 9
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .line 2819
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-ne v0, v2, :cond_10

    goto :goto_3a

    .line 2824
    :cond_10
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2825
    .local v0, "numberLength":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_15
    const/4 v3, 0x3

    if-gt v2, v3, :cond_39

    if-gt v2, v0, :cond_39

    .line 2826
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2827
    .local v3, "potentialCountryCode":I
    iget-object v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2828
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    return v3

    .line 2825
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2832
    .end local v2    # "i":I
    .end local v3    # "potentialCountryCode":I
    :cond_39
    return v1

    .line 2821
    .end local v0    # "numberLength":I
    :cond_3a
    :goto_3a
    return v1
.end method

.method public blacklist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3189
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public greylist findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)Ljava/lang/Iterable;
    .registers 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "leniency"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p4, "maxTries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
            "J)",
            "Ljava/lang/Iterable<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .line 3210
    new-instance v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$1;-><init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V

    return-object v7
.end method

.method public greylist format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 7
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1289
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1295
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .local v0, "rawInput":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1b

    .line 1297
    return-object v0

    .line 1300
    .end local v0    # "rawInput":Ljava/lang/String;
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1301
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .line 1312
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1313
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1314
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    if-ne p2, v2, :cond_19

    .line 1319
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1320
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1322
    return-void

    .line 1324
    :cond_19
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1325
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1326
    return-void

    .line 1331
    :cond_23
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1334
    .local v2, "regionCode":Ljava/lang/String;
    nop

    .line 1335
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1336
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v1, v3, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    invoke-direct {p0, p1, v3, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1338
    invoke-direct {p0, v0, p2, p3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1339
    return-void
.end method

.method public blacklist formatByPattern(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .registers 15
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1355
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1356
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1357
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1358
    return-object v1

    .line 1363
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1365
    .local v2, "regionCode":Ljava/lang/String;
    nop

    .line 1366
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1368
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1370
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    nop

    .line 1371
    invoke-virtual {p0, p3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 1372
    .local v5, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_2a

    .line 1374
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_67

    .line 1376
    :cond_2a
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v6

    .line 1380
    .local v6, "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v6, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1381
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v7

    .line 1382
    .local v7, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5b

    .line 1383
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v8

    .line 1384
    .local v8, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_58

    .line 1386
    nop

    .line 1387
    const-string v9, "$NP"

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1388
    const-string v9, "$FG"

    const-string v10, "$1"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1389
    invoke-virtual {v6, v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_5b

    .line 1392
    :cond_58
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1395
    .end local v8    # "nationalPrefix":Ljava/lang/String;
    :cond_5b
    :goto_5b
    nop

    .line 1396
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v8

    invoke-virtual {p0, v1, v8, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1395
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1398
    .end local v6    # "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .end local v7    # "nationalPrefixFormattingRule":Ljava/lang/String;
    :goto_67
    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1399
    invoke-direct {p0, v0, p2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1400
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public greylist formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .line 1662
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasFormattingPatternForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1665
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1667
    :cond_11
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1668
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1671
    :cond_1e
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$android$i18n$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_e6

    .line 1684
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1687
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 1688
    .local v2, "nationalPrefix":Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    .line 1689
    .local v3, "nationalFormat":Ljava/lang/String;
    if-eqz v2, :cond_c8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_64

    goto/16 :goto_c8

    .line 1679
    .end local v0    # "regionCode":Ljava/lang/String;
    .end local v2    # "nationalPrefix":Ljava/lang/String;
    .end local v3    # "nationalFormat":Ljava/lang/String;
    :pswitch_4a
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1680
    .local v0, "formattedNumber":Ljava/lang/String;
    goto/16 :goto_ca

    .line 1676
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1677
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_ca

    .line 1673
    .end local v0    # "formattedNumber":Ljava/lang/String;
    :pswitch_5c
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 1674
    .restart local v0    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_ca

    .line 1696
    .local v0, "regionCode":Ljava/lang/String;
    .restart local v2    # "nationalPrefix":Ljava/lang/String;
    .restart local v3    # "nationalFormat":Ljava/lang/String;
    :cond_64
    nop

    .line 1697
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v4

    .line 1696
    invoke-direct {p0, v4, v2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1699
    move-object v1, v3

    .line 1700
    .local v1, "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1704
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_72
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 1705
    .local v4, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v5

    .line 1706
    .local v5, "nationalNumber":Ljava/lang/String;
    nop

    .line 1707
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v6

    .line 1711
    .local v6, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v6, :cond_88

    .line 1712
    move-object v1, v3

    .line 1713
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1719
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_88
    invoke-virtual {v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v7

    .line 1721
    .local v7, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string v8, "$1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 1722
    .local v8, "indexOfFirstGroup":I
    if-gtz v8, :cond_97

    .line 1723
    move-object v1, v3

    .line 1724
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1726
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_97
    const/4 v9, 0x0

    .line 1727
    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1728
    invoke-static {v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1729
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_a9

    .line 1731
    move-object v1, v3

    .line 1732
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    goto :goto_ca

    .line 1735
    .end local v1    # "formattedNumber":Ljava/lang/String;
    :cond_a9
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v9

    .line 1736
    .local v9, "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v9, v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1737
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->clearNationalPrefixFormattingRule()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1738
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v10

    .line 1739
    .local v1, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {v9}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1740
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v10, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatByPattern(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .local v10, "formattedNumber":Ljava/lang/String;
    goto :goto_ca

    .line 1692
    .end local v1    # "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v4    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v5    # "nationalNumber":Ljava/lang/String;
    .end local v6    # "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v7    # "candidateNationalPrefixRule":Ljava/lang/String;
    .end local v8    # "indexOfFirstGroup":I
    .end local v9    # "numFormatCopy":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .end local v10    # "formattedNumber":Ljava/lang/String;
    :cond_c8
    :goto_c8
    move-object v1, v3

    .line 1693
    .local v1, "formattedNumber":Ljava/lang/String;
    move-object v0, v1

    .line 1743
    .end local v1    # "formattedNumber":Ljava/lang/String;
    .end local v2    # "nationalPrefix":Ljava/lang/String;
    .end local v3    # "nationalFormat":Ljava/lang/String;
    .local v0, "formattedNumber":Ljava/lang/String;
    :goto_ca
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1746
    .local v1, "rawInput":Ljava/lang/String;
    if-eqz v0, :cond_e5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_e5

    .line 1747
    invoke-static {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1748
    .local v2, "normalizedFormattedNumber":Ljava/lang/String;
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1749
    .local v3, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e5

    .line 1750
    move-object v0, v1

    .line 1753
    .end local v2    # "normalizedFormattedNumber":Ljava/lang/String;
    .end local v3    # "normalizedRawInput":Ljava/lang/String;
    :cond_e5
    return-object v0

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_5c
        :pswitch_56
        :pswitch_4a
    .end packed-switch
.end method

.method public blacklist formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/CharSequence;

    .line 1415
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1416
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1417
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_f

    .line 1418
    return-object v1

    .line 1424
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1428
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1429
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v1, v3, v5, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v3, v5, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1432
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v5, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1434
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public blacklist formatNationalNumberWithPreferredCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/CharSequence;

    .line 1463
    nop

    .line 1467
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 1468
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    .line 1469
    :cond_10
    move-object v0, p2

    .line 1463
    :goto_11
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .registers 5
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1994
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist formatNumberForMobileDialing(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    .line 1486
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1487
    .local v0, "countryCallingCode":I
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_17

    .line 1488
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    :cond_16
    return-object v2

    .line 1491
    :cond_17
    const-string v1, ""

    .line 1493
    .local v1, "formattedNumber":Ljava/lang/String;
    new-instance v3, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v3, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 1494
    .local v3, "numberNoExt":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1495
    .local v4, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v5

    .line 1496
    .local v5, "numberType":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v5, v6, :cond_36

    move v6, v8

    goto :goto_37

    :cond_36
    move v6, v7

    .line 1497
    .local v6, "isValidNumber":Z
    :goto_37
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d8

    .line 1498
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v5, v9, :cond_49

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v5, v9, :cond_49

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v5, v9, :cond_4a

    :cond_49
    move v7, v8

    .line 1502
    .local v7, "isFixedLineOrMobile":Z
    :cond_4a
    const-string v9, "CO"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v5, v9, :cond_5f

    .line 1503
    nop

    .line 1504
    const-string v2, "3"

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_d7

    .line 1505
    :cond_5f
    const-string v9, "BR"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    if-eqz v7, :cond_7c

    .line 1509
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_79

    .line 1510
    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNationalNumberWithPreferredCarrierCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    goto :goto_7a

    .line 1514
    :cond_79
    nop

    :goto_7a
    move-object v1, v2

    goto :goto_d7

    .line 1515
    :cond_7c
    if-ne v0, v8, :cond_a2

    .line 1519
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1520
    .local v2, "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 1521
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v8, v9, :cond_9b

    .line 1523
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_a1

    .line 1525
    :cond_9b
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1527
    .end local v2    # "regionMetadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    :goto_a1
    goto :goto_d7

    .line 1531
    :cond_a2
    const-string v2, "001"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 1545
    const-string v2, "MX"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    const-string v2, "CL"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c2

    .line 1546
    const-string v2, "UZ"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d1

    :cond_c2
    if-eqz v7, :cond_d1

    .line 1547
    :cond_c4
    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1548
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d7

    .line 1550
    :cond_d1
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1553
    .end local v7    # "isFixedLineOrMobile":Z
    :cond_d7
    :goto_d7
    goto :goto_f0

    :cond_d8
    if-eqz v6, :cond_d7

    invoke-virtual {p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->canBeInternationallyDialled(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_d7

    .line 1557
    if-eqz p3, :cond_e9

    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    goto :goto_ef

    .line 1558
    :cond_e9
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 1557
    :goto_ef
    return-object v2

    .line 1560
    :goto_f0
    if-eqz p3, :cond_f4

    move-object v2, v1

    goto :goto_f8

    .line 1561
    :cond_f4
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDiallableCharsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1560
    :goto_f8
    return-object v2
.end method

.method public blacklist formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .line 1583
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1584
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to format number from invalid region "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". International formatting applied."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1588
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1590
    :cond_2d
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1591
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 1592
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_3c

    .line 1593
    return-object v1

    .line 1595
    :cond_3c
    const/4 v2, 0x1

    const-string v3, " "

    if-ne v0, v2, :cond_63

    .line 1596
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_70

    .line 1599
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1601
    :cond_63
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_70

    .line 1608
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1611
    :cond_70
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1612
    .local v2, "metadataForRegionCallingFrom":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1617
    .local v4, "internationalPrefix":Ljava/lang/String;
    const-string v5, ""

    .line 1618
    .local v5, "internationalPrefixForFormatting":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v6

    if-eqz v6, :cond_86

    .line 1619
    nop

    .line 1620
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v5

    goto :goto_93

    .line 1621
    :cond_86
    sget-object v6, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_93

    .line 1622
    move-object v5, v4

    .line 1625
    :cond_93
    :goto_93
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 1627
    .local v6, "regionCode":Ljava/lang/String;
    nop

    .line 1628
    invoke-direct {p0, v0, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 1629
    .local v7, "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    .line 1630
    invoke-direct {p0, v1, v7, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsn(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 1631
    .local v8, "formattedNationalNumber":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v9, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v7, v10, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1634
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c3

    .line 1635
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1636
    invoke-virtual {v3, v10, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 1638
    :cond_c3
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v0, v3, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1642
    :goto_c8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public blacklist formatOutOfCountryKeepingAlphaChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .line 1816
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, "rawInput":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 1820
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatOutOfCountryCallingNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1822
    :cond_f
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 1823
    .local v1, "countryCode":I
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1824
    return-object v0

    .line 1830
    :cond_1a
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeHelper(Ljava/lang/CharSequence;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    .line 1835
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1836
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-le v4, v5, :cond_3c

    .line 1837
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1838
    .local v4, "firstNationalNumberDigit":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_3c

    .line 1839
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1842
    .end local v4    # "firstNationalNumberDigit":I
    :cond_3c
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 1843
    .local v4, "metadataForRegionCallingFrom":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const-string v5, " "

    if-ne v1, v3, :cond_60

    .line 1844
    invoke-virtual {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNANPACountry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 1845
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1847
    :cond_60
    if-eqz v4, :cond_90

    .line 1848
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_90

    .line 1849
    nop

    .line 1850
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v3

    .line 1852
    .local v3, "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v3, :cond_74

    .line 1854
    return-object v0

    .line 1856
    :cond_74
    invoke-static {}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    move-result-object v5

    .line 1857
    .local v5, "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    invoke-virtual {v5, v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;

    .line 1859
    const-string v6, "(\\d+)(.*)"

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1861
    const-string v6, "$1$2"

    invoke-virtual {v5, v6}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->setFormat(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 1867
    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;->build()Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v6, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1869
    .end local v3    # "formattingPattern":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    .end local v5    # "newFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat$Builder;
    :cond_90
    const-string v3, ""

    .line 1873
    .local v3, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v4, :cond_ab

    .line 1874
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 1876
    .local v7, "internationalPrefix":Ljava/lang/String;
    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SINGLE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_a6

    .line 1877
    move-object v8, v7

    goto :goto_aa

    .line 1878
    :cond_a6
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v8

    :goto_aa
    move-object v3, v8

    .line 1880
    .end local v7    # "internationalPrefix":Ljava/lang/String;
    :cond_ab
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1881
    .local v7, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1883
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 1884
    .local v9, "metadataForRegion":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v10, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, p1, v9, v10, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeAppendFormattedExtension(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1886
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d3

    .line 1887
    invoke-virtual {v7, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v5}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1888
    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_fe

    .line 1892
    :cond_d3
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f9

    .line 1893
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Trying to format number from invalid region "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". International formatting applied."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v6, v10}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1898
    :cond_f9
    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-direct {p0, v1, v5, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->prefixNumberWithCountryCallingCode(ILcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1902
    :goto_fe
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public greylist getAsYouTypeFormatter(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2811
    new-instance v0, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcom/android/i18n/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getCountryCodeForRegion(Ljava/lang/String;)I
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2468
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2469
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or missing region code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2471
    if-nez p1, :cond_1a

    const-string v3, "null"

    goto :goto_1b

    :cond_1a
    move-object v3, p1

    :goto_1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2469
    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2473
    const/4 v0, 0x0

    return v0

    .line 2475
    :cond_2e
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public blacklist getExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2052
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExampleNumberForNonGeoEntity(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "countryCallingCode"    # I

    .line 2178
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2179
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v0, :cond_88

    .line 2184
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 2185
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 2186
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2184
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_42
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 2188
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    if-eqz v2, :cond_85

    :try_start_50
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 2189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1
    :try_end_77
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_50 .. :try_end_77} :catch_78

    return-object v1

    .line 2191
    :catch_78
    move-exception v3

    .line 2192
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_86

    .line 2193
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_85
    nop

    .line 2194
    .end local v2    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_86
    goto :goto_42

    :cond_87
    goto :goto_a2

    .line 2196
    :cond_88
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown country calling code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2199
    :goto_a2
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getExampleNumberForType(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2147
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedRegions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2148
    .local v1, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 2149
    .local v2, "exampleNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    if-eqz v2, :cond_1b

    .line 2150
    return-object v2

    .line 2152
    .end local v1    # "regionCode":Ljava/lang/String;
    .end local v2    # "exampleNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1b
    goto :goto_8

    .line 2154
    :cond_1c
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2155
    .local v1, "countryCallingCode":I
    nop

    .line 2156
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2155
    invoke-virtual {p0, v2, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    .line 2158
    .local v2, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_3d
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0
    :try_end_64
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_3d .. :try_end_64} :catch_66

    return-object v0

    .line 2163
    :cond_65
    goto :goto_72

    .line 2161
    :catch_66
    move-exception v3

    .line 2162
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2164
    .end local v1    # "countryCallingCode":I
    .end local v2    # "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_72
    goto :goto_24

    .line 2166
    :cond_73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getExampleNumberForType(Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2123
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 2124
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2125
    return-object v1

    .line 2127
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2129
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_2a
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 2130
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1
    :try_end_38
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2a .. :try_end_38} :catch_3a

    return-object v1

    .line 2134
    :cond_39
    goto :goto_46

    .line 2132
    :catch_3a
    move-exception v2

    .line 2133
    .local v2, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2135
    .end local v2    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :goto_46
    return-object v1
.end method

.method public blacklist getInvalidExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2067
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    .line 2068
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2069
    return-object v1

    .line 2075
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, v0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2077
    .local v0, "desc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v2

    if-nez v2, :cond_33

    .line 2079
    return-object v1

    .line 2081
    :cond_33
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v2

    .line 2093
    .local v2, "exampleNumber":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 2094
    .local v3, "phoneNumberLength":I
    :goto_3d
    const/4 v4, 0x2

    if-lt v3, v4, :cond_55

    .line 2096
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2098
    .local v4, "numberToTry":Ljava/lang/String;
    :try_start_45
    invoke-virtual {p0, v4, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    .line 2099
    .local v5, "possiblyValidNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v6
    :try_end_4d
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_45 .. :try_end_4d} :catch_51

    if-nez v6, :cond_50

    .line 2100
    return-object v5

    .line 2105
    .end local v5    # "possiblyValidNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_50
    goto :goto_52

    .line 2102
    :catch_51
    move-exception v5

    .line 2095
    .end local v4    # "numberToTry":Ljava/lang/String;
    :goto_52
    add-int/lit8 v3, v3, -0x1

    goto :goto_3d

    .line 2108
    .end local v3    # "phoneNumberLength":I
    :cond_55
    return-object v1
.end method

.method public blacklist getLengthOfGeographicalAreaCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 907
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 908
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 909
    return v1

    .line 913
    :cond_c
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    if-nez v2, :cond_19

    .line 914
    return v1

    .line 917
    :cond_19
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v2

    .line 918
    .local v2, "type":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 919
    .local v3, "countryCallingCode":I
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v2, v4, :cond_32

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES_WITHOUT_MOBILE_AREA_CODES:Ljava/util/Set;

    .line 923
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 924
    return v1

    .line 927
    :cond_32
    invoke-virtual {p0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v4

    if-nez v4, :cond_39

    .line 928
    return v1

    .line 931
    :cond_39
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    return v1
.end method

.method public blacklist getLengthOfNationalDestinationCode(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 974
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 977
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 978
    .local v0, "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 979
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_13

    .line 981
    .end local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_12
    move-object v0, p1

    .line 984
    .restart local v0    # "copiedProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_13
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->INTERNATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 986
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, "numberGroups":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x3

    if-gt v3, v4, :cond_25

    .line 991
    const/4 v3, 0x0

    return v3

    .line 994
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    const/4 v6, 0x2

    if-ne v3, v5, :cond_4c

    .line 1000
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "mobileToken":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1002
    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v5, v4

    return v5

    .line 1005
    .end local v3    # "mobileToken":Ljava/lang/String;
    :cond_4c
    aget-object v3, v2, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    return v3
.end method

.method greylist-max-o getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 4
    .param p1, "countryCallingCode"    # I

    .line 2327
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 2328
    const/4 v0, 0x0

    return-object v0

    .line 2330
    :cond_e
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/MetadataSource;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2320
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2321
    const/4 v0, 0x0

    return-object v0

    .line 2323
    :cond_8
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->metadataSource:Lcom/android/i18n/phonenumbers/MetadataSource;

    invoke-interface {v0, p1}, Lcom/android/i18n/phonenumbers/MetadataSource;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public greylist getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1916
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    if-lez v1, :cond_24

    .line 1917
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNumberOfLeadingZeros()I

    move-result v1

    new-array v1, v1, [C

    .line 1918
    .local v1, "zeros":[C
    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 1919
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    .end local v1    # "zeros":[C
    :cond_24
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1922
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .line 2509
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2510
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v1, 0x0

    if-nez v0, :cond_2e

    .line 2511
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid or missing region code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2513
    if-nez p1, :cond_1b

    const-string v5, "null"

    goto :goto_1c

    :cond_1b
    move-object v5, p1

    :goto_1c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") provided."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2511
    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2515
    return-object v1

    .line 2517
    :cond_2e
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v2

    .line 2519
    .local v2, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_39

    .line 2520
    return-object v1

    .line 2522
    :cond_39
    if-eqz p2, :cond_43

    .line 2525
    const-string v1, "~"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 2527
    :cond_43
    return-object v2
.end method

.method greylist-max-o getNumberDescByType(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 5
    .param p1, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2223
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$2;->$SwitchMap$com$android$i18n$phonenumbers$PhoneNumberUtil$PhoneNumberType:[I

    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_42

    .line 2246
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2244
    :pswitch_10
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2242
    :pswitch_15
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2240
    :pswitch_1a
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2238
    :pswitch_1f
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2236
    :pswitch_24
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2234
    :pswitch_29
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2232
    :pswitch_2e
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2229
    :pswitch_33
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2227
    :pswitch_38
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

    .line 2225
    :pswitch_3d
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    return-object v0

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

.method public greylist getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .registers 6
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2258
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2259
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2260
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_11

    .line 2261
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    return-object v2

    .line 2263
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2264
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v3

    return-object v3
.end method

.method public blacklist getRegionCodeForCountryCode(I)Ljava/lang/String;
    .registers 4
    .param p1, "countryCallingCode"    # I

    .line 2444
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2445
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_11

    const-string v1, "ZZ"

    goto :goto_18

    :cond_11
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_18
    return-object v1
.end method

.method public greylist getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2403
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2404
    .local v0, "countryCode":I
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2405
    .local v1, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_34

    .line 2406
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Missing/invalid country_code ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2407
    const/4 v2, 0x0

    return-object v2

    .line 2409
    :cond_34
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_43

    .line 2410
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 2412
    :cond_43
    invoke-direct {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumberFromRegionList(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist getRegionCodesForCountryCode(I)Ljava/util/List;
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

    .line 2454
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2455
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_15

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_16

    .line 2456
    :cond_15
    move-object v1, v0

    .line 2455
    :goto_16
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getSupportedCallingCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1078
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedRegions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1068
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->supportedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedTypesForNonGeoEntity(I)Ljava/util/Set;
    .registers 7
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForNonGeographicalRegion(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1166
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_2a

    .line 1167
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown country calling code for a non-geographical entity provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1169
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1171
    :cond_2a
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getSupportedTypesForRegion(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "regionCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;",
            ">;"
        }
    .end annotation

    .line 1147
    invoke-direct {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1148
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or unknown region code provided: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1149
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1151
    :cond_2a
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1152
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getSupportedTypesForMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public blacklist isAlphaNumber(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p1, "number"    # Ljava/lang/CharSequence;

    .line 2550
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2552
    const/4 v0, 0x0

    return v0

    .line 2554
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2555
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2556
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public blacklist isMobileNumberPortableRegion(Ljava/lang/String;)Z
    .registers 7
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 3615
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3616
    .local v0, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_22

    .line 3617
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid or unknown region code provided: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3618
    const/4 v1, 0x0

    return v1

    .line 3620
    :cond_22
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getMobileNumberPortableRegion()Z

    move-result v1

    return v1
.end method

.method public blacklist isNANPACountry(Ljava/lang/String;)Z
    .registers 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .line 2536
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z
    .registers 5
    .param p1, "phoneNumberType"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    .param p2, "countryCallingCode"    # I

    .line 1253
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->GEO_MOBILE_COUNTRIES:Ljava/util/Set;

    .line 1255
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 1253
    :goto_1c
    return v0
.end method

.method public blacklist isNumberGeographical(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 1245
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v0

    return v0
.end method

.method public greylist isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 8
    .param p1, "firstNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3456
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3457
    .local v0, "firstNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-static {p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->copyCoreFieldsOnly(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 3459
    .local v1, "secondNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 3460
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 3461
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v2

    .line 3463
    :cond_25
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 3464
    .local v2, "firstNumberCountryCode":I
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 3466
    .local v3, "secondNumberCountryCode":I
    if-eqz v2, :cond_48

    if-eqz v3, :cond_48

    .line 3467
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 3468
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3469
    :cond_3a
    if-ne v2, v3, :cond_45

    .line 3470
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 3474
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3477
    :cond_45
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3481
    :cond_48
    invoke-virtual {v0, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 3483
    invoke-virtual {v0, v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 3484
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3486
    :cond_54
    invoke-direct {p0, v0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNationalNumberSuffixOfTheOther(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 3487
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->SHORT_NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3489
    :cond_5d
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4
.end method

.method public blacklist isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 12
    .param p1, "firstNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/CharSequence;

    .line 3555
    const-string v0, "ZZ"

    :try_start_2
    invoke-virtual {p0, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 3556
    .local v1, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0
    :try_end_a
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 3557
    .end local v1    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_b
    move-exception v1

    .line 3558
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_46

    .line 3562
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 3564
    .local v2, "firstNumberRegion":Ljava/lang/String;
    :try_start_1c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 3565
    invoke-virtual {p0, p2, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3566
    .local v0, "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3

    .line 3567
    .local v3, "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v3, v4, :cond_31

    .line 3568
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v4

    .line 3570
    :cond_31
    return-object v3

    .line 3574
    .end local v0    # "secondNumberWithFirstNumberRegion":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v3    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :cond_32
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3575
    .local v0, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v8, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3576
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3
    :try_end_44
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1c .. :try_end_44} :catch_45

    return-object v3

    .line 3578
    .end local v0    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_45
    move-exception v0

    .line 3584
    .end local v1    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v2    # "firstNumberRegion":Ljava/lang/String;
    :cond_46
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method

.method public blacklist isNumberMatch(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .registers 14
    .param p1, "firstNumber"    # Ljava/lang/CharSequence;
    .param p2, "secondNumber"    # Ljava/lang/CharSequence;

    .line 3515
    const-string v0, "ZZ"

    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 3516
    .local v1, "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v0
    :try_end_a
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 3517
    .end local v1    # "firstNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_b
    move-exception v1

    .line 3518
    .local v1, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_49

    .line 3520
    :try_start_14
    invoke-virtual {p0, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    .line 3521
    .local v0, "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v2
    :try_end_1c
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_14 .. :try_end_1c} :catch_1d

    return-object v2

    .line 3522
    .end local v0    # "secondNumberAsProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1d
    move-exception v0

    .line 3523
    .local v0, "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/NumberParseException;->getErrorType()Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_49

    .line 3525
    :try_start_26
    new-instance v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3526
    .local v2, "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v3, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    move-object v10, v3

    .line 3527
    .local v10, "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3528
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p2

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3529
    invoke-virtual {p0, v2, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3
    :try_end_47
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_26 .. :try_end_47} :catch_48

    return-object v3

    .line 3530
    .end local v2    # "firstNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v10    # "secondNumberProto":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_48
    move-exception v2

    .line 3538
    .end local v0    # "e2":Lcom/android/i18n/phonenumbers/NumberParseException;
    .end local v1    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_49
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NOT_A_NUMBER:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    return-object v0
.end method

.method greylist-max-o isNumberMatchingDesc(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 7
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 2337
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2338
    .local v0, "actualLength":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthList()Ljava/util/List;

    move-result-object v1

    .line 2339
    .local v1, "possibleLengths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_1a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2340
    return v3

    .line 2342
    :cond_1a
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v2, p1, p2, v3}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v2

    return v2
.end method

.method public greylist isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2572
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    .line 2573
    .local v0, "result":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public blacklist isPossibleNumber(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .registers 5
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .line 2770
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0
    :try_end_8
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 2771
    :catch_9
    move-exception v0

    .line 2772
    .local v0, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isPossibleNumberForType(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .registers 5
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2590
    invoke-virtual {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    .line 2591
    .local v0, "result":Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v0, v1, :cond_f

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE_LOCAL_ONLY:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v1, 0x1

    :goto_10
    return v1
.end method

.method public blacklist isPossibleNumberForTypeWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "type"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 2732
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2733
    .local v0, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 2740
    .local v1, "countryCode":I
    invoke-direct {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->hasValidCountryCallingCode(I)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2741
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    return-object v2

    .line 2743
    :cond_11
    invoke-virtual {p0, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 2745
    .local v2, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 2746
    .local v3, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v0, v3, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    return-object v4
.end method

.method public greylist isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .registers 3
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2701
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberForTypeWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v0

    return-object v0
.end method

.method public greylist isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 4
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2358
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2359
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public blacklist isValidNumberForRegion(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 9
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .line 2379
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2380
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2381
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v2, 0x0

    if-eqz v1, :cond_28

    .line 2382
    const-string v3, "001"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 2383
    invoke-direct {p0, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v3

    if-eq v0, v3, :cond_1a

    goto :goto_28

    .line 2388
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2389
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNumberTypeHelper(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq v4, v5, :cond_27

    const/4 v2, 0x1

    :cond_27
    return v2

    .line 2386
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_28
    :goto_28
    return v2
.end method

.method greylist-max-o maybeExtractCountryCode(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)I
    .registers 22
    .param p1, "number"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegionMetadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 2871
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_10

    .line 2872
    return v5

    .line 2874
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v6, p1

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 2876
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string v7, "NonMatch"

    .line 2877
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz v1, :cond_1f

    .line 2878
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 2881
    :cond_1f
    nop

    .line 2882
    invoke-virtual {v0, v4, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v8

    .line 2883
    .local v8, "countryCodeSource":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_29

    .line 2884
    invoke-virtual {v3, v8}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2886
    :cond_29
    sget-object v9, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v8, v9, :cond_52

    .line 2887
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v9, 0x2

    if-le v5, v9, :cond_48

    .line 2892
    invoke-virtual {v0, v4, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v5

    .line 2893
    .local v5, "potentialCountryCode":I
    if-eqz v5, :cond_3e

    .line 2894
    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2895
    return v5

    .line 2900
    :cond_3e
    new-instance v9, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v10, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v11, "Country calling code supplied was not recognised."

    invoke-direct {v9, v10, v11}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v9

    .line 2888
    .end local v5    # "potentialCountryCode":I
    :cond_48
    new-instance v5, Lcom/android/i18n/phonenumbers/NumberParseException;

    sget-object v9, Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;

    const-string v10, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v5, v9, v10}, Lcom/android/i18n/phonenumbers/NumberParseException;-><init>(Lcom/android/i18n/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v5

    .line 2902
    :cond_52
    if-eqz v1, :cond_a1

    .line 2906
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 2907
    .local v9, "defaultCountryCode":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    .line 2908
    .local v10, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2909
    .local v11, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a1

    .line 2910
    new-instance v12, Ljava/lang/StringBuilder;

    .line 2911
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2912
    .local v12, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v13

    .line 2913
    .local v13, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    const/4 v14, 0x0

    invoke-virtual {v0, v12, v1, v14}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 2918
    iget-object v14, v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v14, v4, v13, v5}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v14

    if-nez v14, :cond_8b

    iget-object v14, v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 2919
    invoke-interface {v14, v12, v13, v5}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v14

    if-nez v14, :cond_93

    .line 2920
    :cond_8b
    invoke-direct {v0, v4, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->testNumberLength(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v14

    sget-object v15, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v14, v15, :cond_a1

    .line 2921
    :cond_93
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2922
    if-eqz p4, :cond_9d

    .line 2923
    sget-object v5, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2925
    :cond_9d
    invoke-virtual {v3, v9}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2926
    return v9

    .line 2931
    .end local v9    # "defaultCountryCode":I
    .end local v10    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v11    # "normalizedNumber":Ljava/lang/String;
    .end local v12    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v13    # "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_a1
    invoke-virtual {v3, v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2932
    return v5
.end method

.method greylist-max-o maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .registers 8
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .line 3063
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3066
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_3b

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isViablePhoneNumber(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3068
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_20
    if-gt v1, v2, :cond_3b

    .line 3069
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 3072
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 3073
    .local v3, "extension":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3074
    return-object v3

    .line 3068
    .end local v3    # "extension":Ljava/lang/String;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 3078
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_3b
    const-string v1, ""

    return-object v1
.end method

.method greylist-max-o maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .registers 6
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .line 2974
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 2975
    sget-object v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v0

    .line 2978
    :cond_9
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2979
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 2980
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2982
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2983
    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    return-object v1

    .line 2986
    :cond_23
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v1, p2}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 2987
    .local v1, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalize(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 2988
    invoke-direct {p0, v1, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2989
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_37

    .line 2990
    :cond_35
    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 2988
    :goto_37
    return-object v2
.end method

.method greylist-max-o maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .registers 16
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    .line 3005
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 3006
    .local v0, "numberLength":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v1

    .line 3007
    .local v1, "possibleNationalPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_a4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_a4

    .line 3012
    :cond_13
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    invoke-virtual {v3, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3013
    .local v3, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 3014
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v4

    .line 3016
    .local v4, "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    invoke-interface {v5, p1, v4, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v5

    .line 3020
    .local v5, "isViableOriginalNumber":Z
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    .line 3021
    .local v6, "numOfGroups":I
    invoke-virtual {p2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v7

    .line 3022
    .local v7, "transformRule":Ljava/lang/String;
    const/4 v8, 0x1

    if-eqz v7, :cond_77

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_77

    .line 3023
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_45

    goto :goto_77

    .line 3038
    :cond_45
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3039
    .local v9, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v0, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3040
    if-eqz v5, :cond_60

    iget-object v10, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 3041
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v4, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v10

    if-nez v10, :cond_60

    .line 3042
    return v2

    .line 3044
    :cond_60
    if-eqz p3, :cond_6b

    if-le v6, v8, :cond_6b

    .line 3045
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3047
    :cond_6b
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v2, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3048
    return v8

    .line 3025
    .end local v9    # "transformedNumber":Ljava/lang/StringBuilder;
    :cond_77
    :goto_77
    if-eqz v5, :cond_8a

    iget-object v9, p0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->matcherApi:Lcom/android/i18n/phonenumbers/internal/MatcherApi;

    .line 3027
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 3026
    invoke-interface {v9, v10, v4, v2}, Lcom/android/i18n/phonenumbers/internal/MatcherApi;->matchNationalNumber(Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;Z)Z

    move-result v9

    if-nez v9, :cond_8a

    .line 3028
    return v2

    .line 3030
    :cond_8a
    if-eqz p3, :cond_9b

    if-lez v6, :cond_9b

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9b

    .line 3031
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    :cond_9b
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v9

    invoke-virtual {p1, v2, v9}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3034
    return v8

    .line 3051
    .end local v4    # "generalDesc":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v5    # "isViableOriginalNumber":Z
    .end local v6    # "numOfGroups":I
    .end local v7    # "transformRule":Ljava/lang/String;
    :cond_a3
    return v2

    .line 3009
    .end local v3    # "prefixMatcher":Ljava/util/regex/Matcher;
    :cond_a4
    :goto_a4
    return v2
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3132
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3133
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3134
    return-object v0
.end method

.method public blacklist parse(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3143
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3144
    return-void
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .registers 4
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3162
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3163
    .local v0, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3164
    return-object v0
.end method

.method public blacklist parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    .registers 10
    .param p1, "numberToParse"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/i18n/phonenumbers/NumberParseException;
        }
    .end annotation

    .line 3174
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseHelper(Ljava/lang/CharSequence;Ljava/lang/String;ZZLcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3175
    return-void
.end method

.method public blacklist truncateTooLongNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z
    .registers 8
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2784
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 2785
    return v1

    .line 2787
    :cond_8
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 2788
    .local v0, "numberCopy":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2789
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    .line 2791
    .local v2, "nationalNumber":J
    :cond_14
    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    .line 2792
    invoke-virtual {v0, v2, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2793
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_SHORT:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v4, v5, :cond_33

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_29

    goto :goto_33

    .line 2797
    :cond_29
    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 2798
    invoke-virtual {p1, v2, v3}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 2799
    return v1

    .line 2795
    :cond_33
    :goto_33
    const/4 v1, 0x0

    return v1
.end method
