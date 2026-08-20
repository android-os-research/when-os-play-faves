.class final Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;,
        Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist INNER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final blacklist LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final blacklist MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final blacklist PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final blacklist SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final blacklist TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final blacklist TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

.field private final blacklist leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field private blacklist maxTries:J

.field private final blacklist phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

.field private final blacklist preferredRegion:Ljava/lang/String;

.field private final blacklist regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

.field private blacklist searchIndex:I

.field private blacklist state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

.field private final blacklist text:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 15

    .line 68
    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    .line 74
    nop

    .line 75
    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    .line 81
    nop

    .line 82
    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, ":[0-5]\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    .line 104
    const-string v1, "/+(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 107
    const-string v1, "(\\([^(]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 110
    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 114
    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 116
    const-string v1, "\\.+\\p{Z}*([^.]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 118
    const-string v1, "\\p{Z}+(\\P{Z}+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    .line 130
    const-string v0, "(\\[\uff08\uff3b"

    .line 131
    .local v0, "openingParens":Ljava/lang/String;
    const-string v1, ")\\]\uff09\uff3d"

    .line 132
    .local v1, "closingParens":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "nonParens":Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "bracketPairLimit":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(?:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "])?(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "+["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "])?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "+(?:["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "])"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 148
    invoke-static {v2, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "leadLimit":Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "punctuationLimit":Ljava/lang/String;
    const/16 v9, 0x14

    .line 158
    .local v9, "digitBlockLimit":I
    invoke-static {v2, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    .local v2, "blockLimit":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 163
    .local v10, "punctuation":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\p{Nd}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "digitSequence":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+\uff0b"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 166
    .local v11, "leadClassChars":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "leadClass":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 170
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x42

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    .line 175
    .end local v0    # "openingParens":Ljava/lang/String;
    .end local v1    # "closingParens":Ljava/lang/String;
    .end local v2    # "blockLimit":Ljava/lang/String;
    .end local v3    # "digitSequence":Ljava/lang/String;
    .end local v4    # "leadLimit":Ljava/lang/String;
    .end local v5    # "bracketPairLimit":Ljava/lang/String;
    .end local v6    # "punctuationLimit":Ljava/lang/String;
    .end local v7    # "nonParens":Ljava/lang/String;
    .end local v8    # "leadClass":Ljava/lang/String;
    .end local v9    # "digitBlockLimit":I
    .end local v10    # "punctuation":Ljava/lang/String;
    .end local v11    # "leadClassChars":Ljava/lang/String;
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .registers 9
    .param p1, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "leniency"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p5, "maxTries"    # J

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 215
    new-instance v0, Lcom/android/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/android/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 235
    if-eqz p1, :cond_37

    if-eqz p4, :cond_37

    .line 238
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_31

    .line 241
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 242
    if-eqz p2, :cond_26

    move-object v0, p2

    goto :goto_28

    :cond_26
    const-string v0, ""

    :goto_28
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 243
    iput-object p3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 244
    iput-object p4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 245
    iput-wide p5, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 246
    return-void

    .line 239
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 236
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static blacklist allNumberGroupsAreExactlyPresent(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .registers 11
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .line 506
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 507
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "candidateGroups":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    goto :goto_17

    :cond_15
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 514
    .local v1, "candidateNumberGroupIndex":I
    :goto_17
    array-length v3, v0

    if-eq v3, v2, :cond_4d

    aget-object v3, v0, v1

    .line 516
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 515
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_4d

    .line 521
    :cond_27
    array-length v3, p3

    sub-int/2addr v3, v2

    .line 522
    .local v3, "formattedNumberGroupIndex":I
    :goto_29
    const/4 v4, 0x0

    if-lez v3, :cond_3e

    if-ltz v1, :cond_3e

    .line 524
    aget-object v5, v0, v1

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 526
    return v4

    .line 523
    :cond_39
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 531
    .end local v3    # "formattedNumberGroupIndex":I
    :cond_3e
    if-ltz v1, :cond_4b

    aget-object v3, v0, v1

    aget-object v5, p3, v4

    .line 532
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v4

    .line 531
    :goto_4c
    return v2

    .line 517
    :cond_4d
    :goto_4d
    return v2
.end method

.method static blacklist allNumberGroupsRemainGrouped(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .registers 9
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "fromIndex":I
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    sget-object v2, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v2, :cond_1b

    .line 465
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    .local v1, "countryCode":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 470
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_1b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    array-length v2, p3

    if-ge v1, v2, :cond_69

    .line 473
    aget-object v2, p3, v1

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 474
    if-gez v0, :cond_29

    .line 475
    const/4 v2, 0x0

    return v2

    .line 478
    :cond_29
    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 479
    if-nez v1, :cond_66

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_66

    .line 484
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 485
    .local v2, "region":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_66

    .line 486
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 490
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    aget-object v4, p3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 491
    return v4

    .line 470
    .end local v2    # "region":Ljava/lang/String;
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 499
    .end local v1    # "i":I
    :cond_69
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method static blacklist containsMoreThanOneSlashInNationalNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .registers 8
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;

    .line 602
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 603
    .local v1, "firstSlashInBodyIndex":I
    const/4 v2, 0x0

    if-gez v1, :cond_a

    .line 605
    return v2

    .line 608
    :cond_a
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 609
    .local v0, "secondSlashInBodyIndex":I
    if-gez v0, :cond_13

    .line 611
    return v2

    .line 615
    :cond_13
    nop

    .line 616
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_28

    .line 617
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_26

    goto :goto_28

    :cond_26
    move v3, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v3, v5

    .line 618
    .local v3, "candidateHasCountryCode":Z
    :goto_29
    if-eqz v3, :cond_4e

    .line 619
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 620
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 622
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 624
    :cond_4e
    return v5
.end method

.method static blacklist containsOnlyValidXChars(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .registers 10
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 634
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_45

    .line 635
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 636
    .local v1, "charAtIndex":C
    const/16 v3, 0x58

    const/16 v4, 0x78

    if-eq v1, v4, :cond_15

    if-ne v1, v3, :cond_43

    .line 637
    :cond_15
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 638
    .local v5, "charAtNextIndex":C
    const/4 v6, 0x0

    if-eq v5, v4, :cond_34

    if-ne v5, v3, :cond_21

    goto :goto_34

    .line 647
    :cond_21
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 648
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 647
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    .line 649
    return v6

    .line 641
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, 0x1

    .line 642
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v3, v4, :cond_43

    .line 643
    return v6

    .line 634
    .end local v1    # "charAtIndex":C
    .end local v5    # "charAtNextIndex":C
    :cond_43
    add-int/2addr v0, v2

    goto :goto_1

    .line 653
    .end local v0    # "index":I
    :cond_45
    return v2
.end method

.method private blacklist extractInnerMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .registers 16
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 355
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_5b

    aget-object v4, v0, v3

    .line 356
    .local v4, "possibleInnerMatch":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 357
    .local v5, "groupMatcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x1

    .line 358
    .local v6, "isFirstMatch":Z
    :goto_e
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_58

    iget-wide v7, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_58

    .line 359
    const-wide/16 v7, 0x1

    if-eqz v6, :cond_3b

    .line 361
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 363
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-interface {p1, v2, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 361
    invoke-static {v9, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 364
    .local v9, "group":Ljava/lang/CharSequence;
    invoke-direct {p0, v9, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v10

    .line 365
    .local v10, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v10, :cond_35

    .line 366
    return-object v10

    .line 368
    :cond_35
    iget-wide v11, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v11, v7

    iput-wide v11, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 369
    const/4 v6, 0x0

    .line 371
    .end local v9    # "group":Ljava/lang/CharSequence;
    .end local v10    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_3b
    sget-object v9, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 372
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 371
    invoke-static {v9, v11}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 373
    .restart local v9    # "group":Ljava/lang/CharSequence;
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    add-int/2addr v10, p2

    invoke-direct {p0, v9, v10}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v10

    .line 374
    .restart local v10    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v10, :cond_52

    .line 375
    return-object v10

    .line 377
    :cond_52
    iget-wide v11, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v11, v7

    iput-wide v11, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 378
    .end local v9    # "group":Ljava/lang/CharSequence;
    .end local v10    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    goto :goto_e

    .line 355
    .end local v4    # "possibleInnerMatch":Ljava/util/regex/Pattern;
    .end local v5    # "groupMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "isFirstMatch":Z
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 380
    :cond_5b
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist extractMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .registers 6
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 323
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 324
    return-object v1

    .line 328
    :cond_e
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 329
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "followingText":Ljava/lang/String;
    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 331
    return-object v1

    .line 336
    .end local v0    # "followingText":Ljava/lang/String;
    :cond_36
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    .line 337
    .local v0, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v0, :cond_3d

    .line 338
    return-object v0

    .line 343
    :cond_3d
    invoke-direct {p0, p1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    return-object v1
.end method

.method private blacklist find(I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .registers 10
    .param p1, "index"    # I

    .line 256
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 257
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_8
    iget-wide v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3f

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 258
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 259
    .local v1, "start":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 264
    .local v2, "candidate":Ljava/lang/CharSequence;
    sget-object v3, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 266
    invoke-direct {p0, v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 267
    .local v3, "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_31

    .line 268
    return-object v3

    .line 271
    :cond_31
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p1, v1, v4

    .line 272
    iget-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 273
    .end local v1    # "start":I
    .end local v2    # "candidate":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    goto :goto_8

    .line 275
    :cond_3f
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .registers 7
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 543
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "rfc3966Format":Ljava/lang/String;
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 547
    .local v1, "endIndex":I
    if-gez v1, :cond_12

    .line 548
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 551
    :cond_12
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 552
    .local v2, "startIndex":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static blacklist getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .registers 6
    .param p0, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "formattingPattern"    # Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 565
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 564
    return-object v1
.end method

.method private static blacklist isInvalidPunctuationSymbol(C)Z
    .registers 3
    .param p0, "character"    # C

    .line 311
    const/16 v0, 0x25

    if-eq p0, v0, :cond_f

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method static blacklist isLatinLetter(C)Z
    .registers 4
    .param p0, "letter"    # C

    .line 298
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_f

    .line 299
    return v1

    .line 301
    :cond_f
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 302
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 307
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_43
    const/4 v1, 0x1

    .line 302
    :cond_44
    return v1
.end method

.method static blacklist isNationalPrefixPresentIfRequired(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;)Z
    .registers 9
    .param p0, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    .line 659
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_a

    .line 660
    return v2

    .line 662
    :cond_a
    nop

    .line 663
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 664
    .local v0, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 665
    .local v1, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_1a

    .line 666
    return v2

    .line 669
    :cond_1a
    invoke-virtual {p1, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 670
    .local v3, "nationalNumber":Ljava/lang/String;
    nop

    .line 671
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 674
    .local v4, "formatRule":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v4, :cond_59

    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_59

    .line 675
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 678
    return v2

    .line 680
    :cond_3a
    nop

    .line 681
    invoke-virtual {v4}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 680
    invoke-static {v5}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 683
    return v2

    .line 686
    :cond_46
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 687
    .local v2, "rawInputCopy":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 690
    .local v5, "rawInput":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v1, v6}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v6

    return v6

    .line 692
    .end local v2    # "rawInputCopy":Ljava/lang/String;
    .end local v5    # "rawInput":Ljava/lang/StringBuilder;
    :cond_59
    return v2
.end method

.method private static blacklist limit(II)Ljava/lang/String;
    .registers 4
    .param p0, "lower"    # I
    .param p1, "upper"    # I

    .line 179
    if-ltz p0, :cond_2a

    if-lez p1, :cond_2a

    if-lt p1, p0, :cond_2a

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 180
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist parseAndVerify(Ljava/lang/CharSequence;I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .registers 7
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 396
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_8e

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto/16 :goto_8e

    .line 402
    :cond_1b
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v2, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_68

    .line 405
    if-lez p2, :cond_48

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_48

    .line 406
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 408
    .local v1, "previousChar":C
    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v2

    if-nez v2, :cond_47

    invoke-static {v1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 409
    :cond_47
    return-object v0

    .line 412
    .end local v1    # "previousChar":C
    :cond_48
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 413
    .local v1, "lastCharIndex":I
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_68

    .line 414
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 415
    .local v2, "nextChar":C
    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v3

    if-nez v3, :cond_67

    invoke-static {v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 416
    :cond_67
    return-object v0

    .line 421
    .end local v1    # "lastCharIndex":I
    .end local v2    # "nextChar":C
    :cond_68
    iget-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 423
    .local v1, "number":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-object v3, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v1, p1, v3, p0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 427
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 428
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 429
    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 430
    new-instance v2, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_8c
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_8c} :catch_8f

    return-object v2

    .line 434
    .end local v1    # "number":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_8d
    goto :goto_90

    .line 397
    :cond_8e
    :goto_8e
    return-object v0

    .line 432
    :catch_8f
    move-exception v1

    .line 435
    :goto_90
    return-object v0
.end method

.method private static blacklist trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .line 283
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 284
    .local v0, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 285
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 287
    :cond_13
    return-object p1
.end method


# virtual methods
.method blacklist checkNumberGroupingIsValid(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .registers 15
    .param p1, "number"    # Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .param p4, "checker"    # Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;

    .line 571
    nop

    .line 572
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 573
    .local v1, "normalizedCandidate":Ljava/lang/StringBuilder;
    invoke-static {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, "formattedNumberGroups":[Ljava/lang/String;
    invoke-interface {p4, p3, p1, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 575
    return v0

    .line 578
    :cond_11
    nop

    .line 579
    invoke-virtual {p1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Lcom/android/i18n/phonenumbers/MetadataManager;->getAlternateFormatsForCountry(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 580
    .local v3, "alternateFormats":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p3, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, "nationalSignificantNumber":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_5c

    .line 582
    invoke-virtual {v3}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 583
    .local v7, "alternateFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v8

    if-lez v8, :cond_50

    .line 585
    iget-object v8, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->regexCache:Lcom/android/i18n/phonenumbers/internal/RegexCache;

    .line 586
    invoke-virtual {v7, v5}, Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 587
    .local v8, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-nez v9, :cond_50

    .line 589
    goto :goto_29

    .line 592
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    :cond_50
    invoke-static {p3, p1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v2

    .line 593
    invoke-interface {p4, p3, p1, v1, v2}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/android/i18n/phonenumbers/PhoneNumberUtil;Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 594
    return v0

    .line 596
    .end local v7    # "alternateFormat":Lcom/android/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_5b
    goto :goto_29

    .line 598
    :cond_5c
    return v5
.end method

.method public whitelist test-api hasNext()Z
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_1f

    .line 698
    iget v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->find(I)Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 699
    if-nez v0, :cond_15

    .line 700
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_1f

    .line 702
    :cond_15
    invoke-virtual {v0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 703
    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 706
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return v0
.end method

.method public blacklist next()Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    .registers 3

    .line 712
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 717
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 718
    .local v0, "result":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    .line 719
    sget-object v1, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/android/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 720
    return-object v0

    .line 713
    .end local v0    # "result":Lcom/android/i18n/phonenumbers/PhoneNumberMatch;
    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 44
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/PhoneNumberMatcher;->next()Lcom/android/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 728
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
