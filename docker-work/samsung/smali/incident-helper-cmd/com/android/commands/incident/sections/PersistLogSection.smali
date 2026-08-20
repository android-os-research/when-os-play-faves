.class public Lcom/android/commands/incident/sections/PersistLogSection;
.super Ljava/lang/Object;
.source "PersistLogSection.java"

# interfaces
.implements Lcom/android/commands/incident/Section;


# static fields
.field private static final BUFFER_BEGIN_RE:Ljava/util/regex/Pattern;

.field private static final DEFAULT_BUFFER:Ljava/lang/String; = "main"

.field private static final LOG_DIR:Ljava/lang/String; = "/data/misc/logd/"

.field private static final LOG_FILE_RE:Ljava/util/regex/Pattern;

.field private static final LOG_PRIORITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SECTION_NAME_TO_ID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "IH_PersistLog"


# instance fields
.field private mCurrFieldId:J

.field private mEpochTimeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxBytes:J

.field private mProto:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public static synthetic $r8$lambda$twrdK9MDtGeQ1tkLaq7mukbkOoQ(Lcom/android/commands/incident/sections/PersistLogSection;Ljava/io/File;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/commands/incident/sections/PersistLogSection;->processFile(Ljava/io/File;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 54
    const-string v0, "logcat(\\.\\d+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/incident/sections/PersistLogSection;->LOG_FILE_RE:Ljava/util/regex/Pattern;

    .line 55
    nop

    .line 56
    const-string v0, "--------- (?:beginning of|switch to) (.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/commands/incident/sections/PersistLogSection;->BUFFER_BEGIN_RE:Ljava/util/regex/Pattern;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/incident/sections/PersistLogSection;->SECTION_NAME_TO_ID:Ljava/util/Map;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/commands/incident/sections/PersistLogSection;->LOG_PRIORITY_MAP:Ljava/util/Map;

    .line 62
    const-wide v2, 0x20b00000001L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "main"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-wide v2, 0x20b00000002L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "radio"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-wide v2, 0x20b00000003L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "events"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-wide v2, 0x20b00000004L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "system"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-wide v2, 0x20b00000005L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "crash"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-wide v2, 0x20b00000008L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "kernel"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/16 v0, 0x56

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const/16 v0, 0x44

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const/16 v0, 0x49

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v0, 0x57

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 v0, 0x45

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/16 v0, 0x46

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v0, 0x53

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mEpochTimeCache:Ljava/util/Map;

    .line 88
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mMaxBytes:J

    return-void
.end method

.method private static getDigit(Ljava/lang/String;I)I
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "pos"    # I

    .line 276
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 277
    .local v0, "digit":I
    if-ltz v0, :cond_d

    const/16 v1, 0x9

    if-gt v0, v1, :cond_d

    .line 280
    return v0

    .line 278
    :cond_d
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is not a digit."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getEpochSec(Ljava/lang/String;)J
    .registers 15
    .param p1, "line"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xa

    mul-int/2addr v0, v1

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 242
    .local v0, "month":I
    const/4 v2, 0x3

    invoke-static {p1, v2}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x4

    invoke-static {p1, v3}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 244
    .local v2, "day":I
    mul-int/lit8 v3, v0, 0x64

    add-int/2addr v3, v2

    .line 245
    .local v3, "mmdd":I
    iget-object v4, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mEpochTimeCache:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v2}, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 261
    .local v4, "epochSecBase":J
    const/4 v6, 0x6

    invoke-static {p1, v6}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v6

    mul-int/2addr v6, v1

    const/4 v7, 0x7

    invoke-static {p1, v7}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v7

    add-int/2addr v6, v7

    .line 262
    .local v6, "hh":I
    const/16 v7, 0x9

    invoke-static {p1, v7}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v7

    mul-int/2addr v7, v1

    invoke-static {p1, v1}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v8

    add-int/2addr v7, v8

    .line 263
    .local v7, "mm":I
    const/16 v8, 0xc

    invoke-static {p1, v8}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v8

    mul-int/2addr v8, v1

    const/16 v1, 0xd

    invoke-static {p1, v1}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v8, v1

    .line 264
    .local v8, "ss":I
    mul-int/lit16 v1, v6, 0xe10

    int-to-long v9, v1

    add-long/2addr v9, v4

    mul-int/lit8 v1, v7, 0x3c

    int-to-long v11, v1

    add-long/2addr v9, v11

    int-to-long v11, v8

    add-long/2addr v9, v11

    return-wide v9
.end method

.method static synthetic lambda$getEpochSec$1(IILjava/lang/Integer;)Ljava/lang/Long;
    .registers 10
    .param p0, "month"    # I
    .param p1, "day"    # I
    .param p2, "key"    # Ljava/lang/Integer;

    .line 246
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 247
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    add-int/lit8 v1, p0, 0xc

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0xc

    rem-int/2addr v1, v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 248
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 249
    const/16 v1, 0xb

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 250
    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 251
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 252
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 255
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-lez v1, :cond_37

    .line 256
    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 258
    :cond_37
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$run$0(Ljava/util/regex/Matcher;Ljava/io/File;)Z
    .registers 3
    .param p0, "logFileRe"    # Ljava/util/regex/Matcher;
    .param p1, "f"    # Ljava/io/File;

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/commands/incident/sections/PersistLogSection;->match(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private static match(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .registers 3
    .param p0, "matcher"    # Ljava/util/regex/Matcher;
    .param p1, "text"    # Ljava/lang/String;

    .line 284
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 285
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method private static nextNonBlank(Ljava/lang/String;I)I
    .registers 5
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "start"    # I

    .line 228
    move v0, p1

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 229
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_10

    .line 230
    return v0

    .line 228
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    .end local v0    # "i":I
    :cond_13
    const/4 v0, -0x1

    return v0
.end method

.method private parseArgs(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 135
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "--limit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "sizeStr":Ljava/lang/String;
    const-string v3, "mb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    const-string v5, ""

    const-wide/16 v6, 0x400

    if-eqz v4, :cond_41

    .line 140
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v6

    mul-long/2addr v3, v6

    iput-wide v3, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mMaxBytes:J

    goto :goto_5b

    .line 141
    :cond_41
    const-string v3, "kb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 142
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v6

    iput-wide v3, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mMaxBytes:J

    goto :goto_5b

    .line 144
    :cond_55
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mMaxBytes:J

    .line 146
    .end local v2    # "sizeStr":Ljava/lang/String;
    :goto_5b
    nop

    .line 149
    .end local v1    # "arg":Ljava/lang/String;
    goto :goto_4

    .line 147
    .restart local v1    # "arg":Ljava/lang/String;
    :cond_5d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v1    # "arg":Ljava/lang/String;
    :cond_76
    return-void
.end method

.method private static parseInt(Ljava/lang/String;II)I
    .registers 7
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "num":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_f

    .line 270
    mul-int/lit8 v2, v0, 0xa

    invoke-static {p0, v1}, Lcom/android/commands/incident/sections/PersistLogSection;->getDigit(Ljava/lang/String;I)I

    move-result v3

    add-int v0, v2, v3

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 272
    .end local v1    # "i":I
    :cond_f
    return v0
.end method

.method private parseLine(Ljava/lang/String;)V
    .registers 18
    .param p1, "line"    # Ljava/lang/String;

    .line 190
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    iget-wide v3, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mCurrFieldId:J

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 192
    .local v3, "token":J
    const-wide v7, 0x10900000007L

    const-wide v9, 0x10e00000003L

    const-wide/16 v11, 0x3e8

    const-wide v13, 0x10400000001L

    :try_start_1d
    iget-object v0, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    invoke-direct/range {p0 .. p1}, Lcom/android/commands/incident/sections/PersistLogSection;->getEpochSec(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v0, v13, v14, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 194
    iget-object v0, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    const-wide v5, 0x10400000002L

    const/16 v15, 0xf

    const/16 v13, 0x15

    invoke-static {v2, v15, v13}, Lcom/android/commands/incident/sections/PersistLogSection;->parseInt(Ljava/lang/String;II)I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v14, v11

    invoke-virtual {v0, v5, v6, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 196
    invoke-static {v2, v13}, Lcom/android/commands/incident/sections/PersistLogSection;->nextNonBlank(Ljava/lang/String;I)I

    move-result v0

    .line 197
    .local v0, "start":I
    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x20

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 198
    .local v5, "end":I
    iget-object v13, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    const-wide v14, 0x10500000005L

    invoke-static {v2, v0, v5}, Lcom/android/commands/incident/sections/PersistLogSection;->parseInt(Ljava/lang/String;II)I

    move-result v11

    invoke-virtual {v13, v14, v15, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 200
    invoke-static {v2, v5}, Lcom/android/commands/incident/sections/PersistLogSection;->nextNonBlank(Ljava/lang/String;I)I

    move-result v11

    move v0, v11

    .line 201
    add-int/lit8 v11, v0, 0x1

    invoke-virtual {v2, v6, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v5, v6

    .line 202
    iget-object v6, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    const-wide v11, 0x10500000006L

    invoke-static {v2, v0, v5}, Lcom/android/commands/incident/sections/PersistLogSection;->parseInt(Ljava/lang/String;II)I

    move-result v13

    invoke-virtual {v6, v11, v12, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 204
    invoke-static {v2, v5}, Lcom/android/commands/incident/sections/PersistLogSection;->nextNonBlank(Ljava/lang/String;I)I

    move-result v6

    move v0, v6

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 206
    .local v6, "priority":C
    iget-object v11, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    sget-object v12, Lcom/android/commands/incident/sections/PersistLogSection;->LOG_PRIORITY_MAP:Ljava/util/Map;

    .line 207
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 206
    invoke-virtual {v11, v9, v10, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 209
    add-int/lit8 v11, v0, 0x1

    invoke-static {v2, v11}, Lcom/android/commands/incident/sections/PersistLogSection;->nextNonBlank(Ljava/lang/String;I)I

    move-result v11

    move v0, v11

    .line 210
    const-string v11, ": "

    invoke-virtual {v2, v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v11

    move v5, v11

    .line 211
    iget-object v11, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v7, v8, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 212
    iget-object v11, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    add-int/lit8 v12, v5, 0x2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-wide v13, 0x10900000008L

    invoke-virtual {v11, v13, v14, v12}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_c4} :catch_c5

    .line 221
    .end local v0    # "start":I
    .end local v5    # "end":I
    .end local v6    # "priority":C
    goto :goto_10f

    .line 213
    :catch_c5
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v5, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    const-wide v13, 0x10400000001L

    invoke-virtual {v5, v13, v14, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 217
    iget-object v5, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    const/4 v6, 0x6

    invoke-virtual {v5, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 218
    iget-object v5, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    const-string v6, "IH_PersistLog"

    invoke-virtual {v5, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 219
    iget-object v5, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 220
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    const-wide v7, 0x10900000008L

    invoke-virtual {v5, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 222
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_10f
    iget-object v0, v1, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 223
    return-void
.end method

.method private processFile(Ljava/io/File;)V
    .registers 8
    .param p1, "file"    # Ljava/io/File;

    .line 153
    const-string v0, "IH_PersistLog"

    sget-object v1, Lcom/android/commands/incident/sections/PersistLogSection;->BUFFER_BEGIN_RE:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 154
    .local v1, "bufferBeginRe":Ljava/util/regex/Matcher;
    :try_start_a
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->newBufferedReader(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/io/BufferedReader;

    move-result-object v2
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_14} :catch_41

    .line 158
    .local v2, "reader":Ljava/io/BufferedReader;
    :goto_14
    :try_start_14
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_2f

    .line 159
    invoke-static {v1, v4}, Lcom/android/commands/incident/sections/PersistLogSection;->match(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v3

    move-object v5, v3

    .local v5, "m":Ljava/util/regex/Matcher;
    if-eqz v3, :cond_2b

    .line 160
    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/commands/incident/sections/PersistLogSection;->setCurrentSection(Ljava/lang/String;)V

    .line 161
    goto :goto_14

    .line 163
    :cond_2b
    invoke-direct {p0, v4}, Lcom/android/commands/incident/sections/PersistLogSection;->parseLine(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_14 .. :try_end_2e} :catchall_35

    goto :goto_14

    .line 165
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "m":Ljava/util/regex/Matcher;
    :cond_2f
    if-eqz v2, :cond_34

    :try_start_31
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_41

    .line 168
    .end local v2    # "reader":Ljava/io/BufferedReader;
    :cond_34
    goto :goto_67

    .line 154
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_35
    move-exception v3

    if-eqz v2, :cond_40

    :try_start_38
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_40

    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "bufferBeginRe":Ljava/util/regex/Matcher;
    .end local p0    # "this":Lcom/android/commands/incident/sections/PersistLogSection;
    .end local p1    # "file":Ljava/io/File;
    :cond_40
    :goto_40
    throw v3
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_41} :catch_41

    .line 165
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferBeginRe":Ljava/util/regex/Matcher;
    .restart local p0    # "this":Lcom/android/commands/incident/sections/PersistLogSection;
    .restart local p1    # "file":Ljava/io/File;
    :catch_41
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/IOException;
    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    :goto_67
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finished reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private setCurrentSection(Ljava/lang/String;)V
    .registers 7
    .param p1, "sectionName"    # Ljava/lang/String;

    .line 173
    sget-object v0, Lcom/android/commands/incident/sections/PersistLogSection;->SECTION_NAME_TO_ID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 174
    .local v1, "sectionId":Ljava/lang/Long;
    if-nez v1, :cond_2c

    .line 175
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Section does not exist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IH_PersistLog"

    invoke-static {v2, v4, v3}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "main"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    .line 178
    :cond_2c
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mCurrFieldId:J

    .line 179
    return-void
.end method


# virtual methods
.method public run(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/util/List;)V
    .registers 15
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/incident/ExecutionException;
        }
    .end annotation

    .line 92
    .local p3, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p3}, Lcom/android/commands/incident/sections/PersistLogSection;->parseArgs(Ljava/util/List;)V

    .line 93
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "/data/misc/logd/"

    invoke-static {v2, v1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v1

    .line 94
    .local v1, "logDirPath":Ljava/nio/file/Path;
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v0}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    const-string v2, "Skip dump. "

    const/4 v3, 0x5

    const-string v4, "IH_PersistLog"

    if-nez v0, :cond_34

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " does not exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_34
    invoke-static {v1}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not readable."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_55
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    .line 103
    const-string v0, "main"

    invoke-direct {p0, v0}, Lcom/android/commands/incident/sections/PersistLogSection;->setCurrentSection(Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/android/commands/incident/sections/PersistLogSection;->LOG_FILE_RE:Ljava/util/regex/Pattern;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 107
    .local v0, "logFileRe":Ljava/util/regex/Matcher;
    :try_start_69
    invoke-static {v1}, Ljava/nio/file/Files;->list(Ljava/nio/file/Path;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0}, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda2;-><init>(Ljava/util/regex/Matcher;)V

    .line 108
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda3;-><init>()V

    .line 109
    invoke-static {v3}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v2
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_90} :catch_124
    .catchall {:try_start_69 .. :try_end_90} :catchall_122

    .line 110
    .local v2, "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/io/File;>;"
    :try_start_90
    invoke-interface {v2}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 111
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, "filesToProcess":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    const-wide/16 v6, 0x0

    .line 113
    .local v6, "sumBytes":J
    :goto_9b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b8

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 115
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v6, v9

    .line 116
    iget-wide v9, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mMaxBytes:J

    cmp-long v9, v6, v9

    if-lez v9, :cond_b3

    .line 117
    goto :goto_b8

    .line 119
    :cond_b3
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    nop

    .end local v8    # "file":Ljava/io/File;
    goto :goto_9b

    .line 121
    :cond_b8
    :goto_b8
    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Limit # log files to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v4, v9}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda3;-><init>()V

    .line 123
    invoke-static {v9}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda4;

    invoke-direct {v9, p0}, Lcom/android/commands/incident/sections/PersistLogSection$$ExternalSyntheticLambda4;-><init>(Lcom/android/commands/incident/sections/PersistLogSection;)V

    .line 124
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V
    :try_end_ec
    .catchall {:try_start_90 .. :try_end_ec} :catchall_116

    .line 125
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    .end local v5    # "filesToProcess":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v6    # "sumBytes":J
    if-eqz v2, :cond_f1

    :try_start_ee
    invoke-interface {v2}, Ljava/util/stream/Stream;->close()V
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_ee .. :try_end_f1} :catch_124
    .catchall {:try_start_ee .. :try_end_f1} :catchall_122

    .line 128
    .end local v2    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/io/File;>;"
    :cond_f1
    iget-object v2, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 129
    nop

    .line 130
    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bytes written: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/android/commands/incident/IncidentHelper;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 107
    .restart local v2    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/io/File;>;"
    :catchall_116
    move-exception v3

    if-eqz v2, :cond_121

    :try_start_119
    invoke-interface {v2}, Ljava/util/stream/Stream;->close()V
    :try_end_11c
    .catchall {:try_start_119 .. :try_end_11c} :catchall_11d

    goto :goto_121

    :catchall_11d
    move-exception v4

    :try_start_11e
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "logFileRe":Ljava/util/regex/Matcher;
    .end local v1    # "logDirPath":Ljava/nio/file/Path;
    .end local p0    # "this":Lcom/android/commands/incident/sections/PersistLogSection;
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "out":Ljava/io/OutputStream;
    .end local p3    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_121
    :goto_121
    throw v3
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_122} :catch_124
    .catchall {:try_start_11e .. :try_end_122} :catchall_122

    .line 128
    .end local v2    # "stream":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/io/File;>;"
    .restart local v0    # "logFileRe":Ljava/util/regex/Matcher;
    .restart local v1    # "logDirPath":Ljava/nio/file/Path;
    .restart local p0    # "this":Lcom/android/commands/incident/sections/PersistLogSection;
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "out":Ljava/io/OutputStream;
    .restart local p3    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_122
    move-exception v2

    goto :goto_12b

    .line 125
    :catch_124
    move-exception v2

    .line 126
    .local v2, "e":Ljava/io/IOException;
    :try_start_125
    new-instance v3, Lcom/android/commands/incident/ExecutionException;

    invoke-direct {v3, v2}, Lcom/android/commands/incident/ExecutionException;-><init>(Ljava/lang/Exception;)V

    .end local v0    # "logFileRe":Ljava/util/regex/Matcher;
    .end local v1    # "logDirPath":Ljava/nio/file/Path;
    .end local p0    # "this":Lcom/android/commands/incident/sections/PersistLogSection;
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "out":Ljava/io/OutputStream;
    .end local p3    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    throw v3
    :try_end_12b
    .catchall {:try_start_125 .. :try_end_12b} :catchall_122

    .line 128
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "logFileRe":Ljava/util/regex/Matcher;
    .restart local v1    # "logDirPath":Ljava/nio/file/Path;
    .restart local p0    # "this":Lcom/android/commands/incident/sections/PersistLogSection;
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "out":Ljava/io/OutputStream;
    .restart local p3    # "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_12b
    iget-object v3, p0, Lcom/android/commands/incident/sections/PersistLogSection;->mProto:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 129
    throw v2
.end method
