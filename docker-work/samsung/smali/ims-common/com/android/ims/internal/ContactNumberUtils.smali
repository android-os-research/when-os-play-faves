.class public Lcom/android/ims/internal/ContactNumberUtils;
.super Ljava/lang/Object;
.source "ContactNumberUtils.java"


# static fields
.field private static final blacklist DEBUG:Z

.field public static blacklist NUMBER_EMERGENCY:I = 0x0

.field public static blacklist NUMBER_FREE_PHONE:I = 0x0

.field public static blacklist NUMBER_INVALID:I = 0x0

.field public static blacklist NUMBER_PRELOADED_ENTRY:I = 0x0

.field public static blacklist NUMBER_SHORT_CODE:I = 0x0

.field public static blacklist NUMBER_VALID:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "ContactNumberUtils"

.field private static blacklist sExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Lcom/android/ims/internal/ContactNumberUtils;


# instance fields
.field private blacklist NUMBER_LENGTH_MAX:I

.field private blacklist NUMBER_LENGTH_NORMAL:I

.field private blacklist NUMBER_LENGTH_NO_AREA_CODE:I

.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 129
    const/4 v0, 0x0

    sput v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    .line 130
    const/4 v0, 0x1

    sput v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_EMERGENCY:I

    .line 131
    const/4 v0, 0x2

    sput v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_SHORT_CODE:I

    .line 132
    const/4 v0, 0x3

    sput v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_PRELOADED_ENTRY:I

    .line 133
    const/4 v0, 0x4

    sput v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_FREE_PHONE:I

    .line 134
    const/4 v0, 0x5

    sput v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    .line 280
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/ims/internal/ContactNumberUtils;->DEBUG:Z

    .line 296
    const/4 v0, 0x0

    sput-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sInstance:Lcom/android/ims/internal/ContactNumberUtils;

    .line 341
    sput-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/16 v0, 0x11

    iput v0, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_MAX:I

    .line 290
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NORMAL:I

    .line 291
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NO_AREA_CODE:I

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/internal/ContactNumberUtils;->mContext:Landroid/content/Context;

    .line 303
    sget-boolean v0, Lcom/android/ims/internal/ContactNumberUtils;->DEBUG:Z

    if-eqz v0, :cond_1c

    .line 304
    const-string v0, "ContactNumberUtils"

    const-string v1, "ContactNumberUtils constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1c
    return-void
.end method

.method private blacklist addAreaCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Ljava/lang/String;

    .line 312
    iget-object v0, p0, Lcom/android/ims/internal/ContactNumberUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_10

    .line 313
    sget-boolean v0, Lcom/android/ims/internal/ContactNumberUtils;->DEBUG:Z

    if-eqz v0, :cond_f

    .line 314
    const-string v0, "ContactNumberUtils"

    const-string v1, "mContext is null, please update context."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_f
    return-object p1

    .line 319
    :cond_10
    const/4 v1, 0x0

    .line 320
    .local v1, "mdn":Ljava/lang/String;
    nop

    .line 321
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 322
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_5e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5e

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    goto :goto_5e

    .line 328
    :cond_2f
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NORMAL:I

    if-lt v2, v3, :cond_46

    .line 330
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NORMAL:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    :cond_46
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    return-object p1

    .line 325
    :cond_5e
    :goto_5e
    return-object p1
.end method

.method public static blacklist getDefault()Lcom/android/ims/internal/ContactNumberUtils;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sInstance:Lcom/android/ims/internal/ContactNumberUtils;

    if-nez v0, :cond_b

    .line 58
    new-instance v0, Lcom/android/ims/internal/ContactNumberUtils;

    invoke-direct {v0}, Lcom/android/ims/internal/ContactNumberUtils;-><init>()V

    sput-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sInstance:Lcom/android/ims/internal/ContactNumberUtils;

    .line 61
    :cond_b
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sInstance:Lcom/android/ims/internal/ContactNumberUtils;

    return-object v0
.end method

.method private blacklist isInExcludedList(Ljava/lang/String;)Z
    .registers 7
    .param p1, "number"    # Ljava/lang/String;

    .line 344
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    if-nez v0, :cond_56

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    .line 346
    const-string v1, "800"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "822"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "833"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "844"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "855"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "866"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "877"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "880882"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "888"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "900"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    sget-object v0, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    const-string v1, "911"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_56
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/ContactNumberUtils;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "tempNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_62

    .line 361
    return v2

    .line 364
    :cond_62
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    .line 366
    :cond_6f
    const-string v1, "+1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 367
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    :cond_7c
    :goto_7c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 371
    return v2

    .line 374
    :cond_83
    sget-object v1, Lcom/android/ims/internal/ContactNumberUtils;->sExcludes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_89
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 375
    .local v3, "num":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 376
    return v2

    .line 378
    .end local v3    # "num":Ljava/lang/String;
    :cond_9c
    goto :goto_89

    .line 380
    :cond_9d
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist format(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 75
    move-object v0, p1

    .line 76
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 77
    return-object v2

    .line 80
    :cond_9
    const-string v1, "*67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x3

    if-nez v1, :cond_1a

    const-string v1, "*82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 81
    :cond_1a
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 83
    return-object v2

    .line 87
    :cond_25
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 90
    .local v1, "len":I
    iget v4, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NO_AREA_CODE:I

    if-ne v1, v4, :cond_35

    .line 91
    invoke-direct {p0, v0}, Lcom/android/ims/internal/ContactNumberUtils;->addAreaCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_35
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 97
    iget v4, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NORMAL:I

    const-string v5, "+1"

    if-ne v1, v4, :cond_5c

    .line 98
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d0

    .line 101
    :cond_5c
    add-int/lit8 v6, v4, 0x1

    const-string v7, "1"

    const-string v8, "+"

    if-ne v1, v6, :cond_7c

    .line 102
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d0

    .line 105
    :cond_7c
    add-int/lit8 v6, v4, 0x2

    if-lt v1, v6, :cond_d0

    .line 106
    add-int/lit8 v4, v4, 0x4

    if-lt v1, v4, :cond_a1

    const-string v4, "011"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 107
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_a1
    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d0

    .line 111
    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d0

    .line 114
    :cond_bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_d0
    :goto_d0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_MAX:I

    if-le v3, v4, :cond_d9

    .line 120
    return-object v2

    .line 123
    :cond_d9
    return-object v0
.end method

.method public blacklist format(Ljava/util/List;)[Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 209
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_4a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_4a

    .line 213
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 214
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 215
    .local v1, "outContactsArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_49

    .line 216
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 217
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/ims/internal/ContactNumberUtils;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 218
    sget-boolean v4, Lcom/android/ims/internal/ContactNumberUtils;->DEBUG:Z

    if-eqz v4, :cond_46

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outContactsArray["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ContactNumberUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v3    # "number":Ljava/lang/String;
    :cond_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 223
    .end local v2    # "i":I
    :cond_49
    return-object v1

    .line 210
    .end local v0    # "size":I
    .end local v1    # "outContactsArray":[Ljava/lang/String;
    :cond_4a
    :goto_4a
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist format([Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 227
    if-eqz p1, :cond_40

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_40

    .line 231
    :cond_6
    array-length v0, p1

    .line 232
    .local v0, "length":I
    new-array v1, v0, [Ljava/lang/String;

    .line 233
    .local v1, "outContactsArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_3f

    .line 234
    aget-object v3, p1, v2

    .line 235
    .local v3, "number":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/ims/internal/ContactNumberUtils;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 236
    sget-boolean v4, Lcom/android/ims/internal/ContactNumberUtils;->DEBUG:Z

    if-eqz v4, :cond_3c

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "outContactsArray["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ContactNumberUtils"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v3    # "number":Ljava/lang/String;
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 241
    .end local v2    # "i":I
    :cond_3f
    return-object v1

    .line 228
    .end local v0    # "length":I
    .end local v1    # "outContactsArray":[Ljava/lang/String;
    :cond_40
    :goto_40
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    iput-object p1, p0, Lcom/android/ims/internal/ContactNumberUtils;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public blacklist validate(Ljava/lang/String;)I
    .registers 6
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 145
    move-object v0, p1

    .line 146
    .local v0, "number":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 147
    sget v1, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    return v1

    .line 150
    :cond_a
    const-string v1, "*67"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    const-string v1, "*82"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 151
    :cond_1a
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 153
    sget v1, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    return v1

    .line 157
    :cond_28
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 158
    sget v1, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_PRELOADED_ENTRY:I

    return v1

    .line 161
    :cond_33
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 163
    sget v1, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    return v1

    .line 167
    :cond_44
    iget-object v1, p0, Lcom/android/ims/internal/ContactNumberUtils;->mContext:Landroid/content/Context;

    if-nez v1, :cond_51

    .line 168
    const-string v1, "ContactNumberUtils"

    const-string v2, "context is unexpectedly null to provide emergency identification service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .local v1, "isEmergencyNumber":Z
    goto :goto_5e

    .line 171
    .end local v1    # "isEmergencyNumber":Z
    :cond_51
    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 172
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    move v1, v2

    .line 175
    .local v1, "isEmergencyNumber":Z
    :goto_5e
    if-eqz v1, :cond_63

    .line 176
    sget v2, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_EMERGENCY:I

    return v2

    .line 180
    :cond_63
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 181
    sget v2, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_PRELOADED_ENTRY:I

    return v2

    .line 182
    :cond_6e
    invoke-direct {p0, v0}, Lcom/android/ims/internal/ContactNumberUtils;->isInExcludedList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77

    .line 183
    sget v2, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_FREE_PHONE:I

    return v2

    .line 186
    :cond_77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 187
    .local v2, "len":I
    iget v3, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NORMAL:I

    if-ge v2, v3, :cond_82

    .line 188
    sget v3, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    return v3

    .line 191
    :cond_82
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/ContactNumberUtils;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const-string v3, "+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9b

    .line 193
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 195
    iget v3, p0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_LENGTH_NORMAL:I

    add-int/lit8 v3, v3, 0x2

    if-lt v2, v3, :cond_9b

    .line 196
    sget v3, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    return v3

    .line 200
    :cond_9b
    sget v3, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    return v3
.end method

.method public blacklist validate(Ljava/util/List;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 244
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_25

    .line 248
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 249
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_22

    .line 250
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/ContactNumberUtils;->validate(Ljava/lang/String;)I

    move-result v3

    .line 252
    .local v3, "result":I
    sget v4, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    if-eq v3, v4, :cond_1f

    .line 253
    return v3

    .line 249
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 257
    .end local v1    # "i":I
    :cond_22
    sget v1, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    return v1

    .line 245
    .end local v0    # "size":I
    :cond_25
    :goto_25
    sget v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    return v0
.end method

.method public blacklist validate([Ljava/lang/String;)I
    .registers 7
    .param p1, "numbers"    # [Ljava/lang/String;

    .line 261
    if-eqz p1, :cond_1b

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_1b

    .line 265
    :cond_6
    array-length v0, p1

    .line 266
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 267
    aget-object v2, p1, v1

    .line 268
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/ims/internal/ContactNumberUtils;->validate(Ljava/lang/String;)I

    move-result v3

    .line 269
    .local v3, "result":I
    sget v4, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    if-eq v3, v4, :cond_15

    .line 270
    return v3

    .line 266
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 274
    .end local v1    # "i":I
    :cond_18
    sget v1, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_VALID:I

    return v1

    .line 262
    .end local v0    # "length":I
    :cond_1b
    :goto_1b
    sget v0, Lcom/android/ims/internal/ContactNumberUtils;->NUMBER_INVALID:I

    return v0
.end method
