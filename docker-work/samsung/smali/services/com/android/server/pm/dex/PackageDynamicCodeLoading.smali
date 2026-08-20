.class public Lcom/android/server/pm/dex/PackageDynamicCodeLoading;
.super Lcom/android/server/pm/AbstractStatsBase;
.source "PackageDynamicCodeLoading.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;,
        Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/pm/AbstractStatsBase<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final FIELD_SEPARATOR:C = ':'

.field public static final FILE_TYPE_DEX:I = 0x44

.field public static final FILE_TYPE_NATIVE:I = 0x4e

.field public static final FILE_VERSION_HEADER:Ljava/lang/String; = "DCL1"

.field public static final MAX_FILES_PER_OWNER:I = 0x64
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

.field public static final PACKAGE_PREFIX:Ljava/lang/String; = "P:"

.field public static final PACKAGE_SEPARATOR:Ljava/lang/String; = ","

.field public static final TAG:Ljava/lang/String; = "PackageDynamicCodeLoading"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public mPackageMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "([A-Z]):([0-9]+):([^:]*):(.*)"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const-string/jumbo v0, "package-dcl.list"

    const-string v1, "PackageDynamicCodeLoading_DiskWriter"

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/pm/AbstractStatsBase;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    return-void
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x5c

    .line 435
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0xd

    const/16 v3, 0xa

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_1a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_1a

    return-object p0

    .line 439
    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    .line 440
    :goto_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4d

    .line 443
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_45

    if-eq v5, v2, :cond_3f

    if-eq v5, v0, :cond_39

    .line 455
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_39
    const-string v5, "\\\\"

    .line 446
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_3f
    const-string v5, "\\r"

    .line 452
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    :cond_45
    const-string v5, "\\n"

    .line 449
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4a
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 459
    :cond_4d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isValidFileType(I)Z
    .registers 2

    const/16 v0, 0x44

    if-eq p0, v0, :cond_b

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public static read(Ljava/io/InputStream;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 374
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DCL1"

    .line 375
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_68

    .line 379
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    const-string v1, "P:"

    if-eqz p0, :cond_3c

    .line 380
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    goto :goto_3c

    .line 381
    :cond_25
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3c
    :goto_3c
    if-eqz p0, :cond_67

    const/4 v2, 0x2

    .line 385
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 387
    new-instance v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode-IA;)V

    .line 389
    :goto_49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 390
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    goto :goto_5a

    .line 393
    :cond_56
    invoke-static {v3, v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->readFileInfo(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V

    goto :goto_49

    .line 396
    :cond_5a
    :goto_5a
    iget-object v4, v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_65

    .line 397
    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    move-object p0, v3

    goto :goto_3c

    :cond_67
    return-void

    .line 376
    :cond_68
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect version line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static readFileInfo(Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    :try_start_0
    sget-object v0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->PACKAGE_LINE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_a} :catch_8b

    const-string v2, "Malformed line: "

    if-eqz v1, :cond_76

    const/4 v1, 0x1

    .line 409
    :try_start_f
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v3, 0x2

    .line 410
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    .line 411
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 412
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    array-length v5, v4

    if-eqz v5, :cond_61

    .line 417
    invoke-static {v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->isValidFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 421
    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    new-instance v2, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;-><init>(CI[Ljava/lang/String;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile-IA;)V

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 418
    :cond_4a
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown file type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 415
    :cond_61
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 406
    :cond_76
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8b
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_8b} :catch_8b

    :catch_8b
    move-exception p1

    .line 425
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x5c

    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_a

    return-object p0

    .line 476
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x0

    .line 478
    :cond_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_69

    .line 482
    invoke-virtual {v3, p0, v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    .line 483
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v0, :cond_52

    const/16 v5, 0x6e

    if-eq v4, v5, :cond_4c

    const/16 v5, 0x72

    if-ne v4, v5, :cond_35

    const/16 v4, 0xd

    .line 488
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 494
    :cond_35
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad escape in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const/16 v4, 0xa

    .line 491
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 485
    :cond_52
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_55
    add-int/lit8 v4, v1, 0x2

    .line 498
    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v2, :cond_14

    .line 500
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, p0, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 480
    :cond_69
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected \\ in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static write(Ljava/io/OutputStream;Ljava/util/Map;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, p0}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    const-string p0, "DCL1"

    .line 304
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    const-string v1, "P:"

    .line 306
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 307
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 309
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    iget-object p1, p1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    .line 310
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 312
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;

    .line 314
    iget-char v3, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mFileType:C

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    const/16 v3, 0x3a

    .line 315
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 316
    iget v4, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mUserId:I

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 317
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 320
    iget-object v1, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$DynamicCodeFile;->mLoadingPackages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v4, ""

    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_83

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 321
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, ","

    goto :goto_6e

    .line 326
    :cond_83
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 327
    invoke-static {v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3c

    .line 331
    :cond_8e
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 332
    invoke-virtual {v0}, Ljava/io/PrintWriter;->checkError()Z

    move-result p0

    if-nez p0, :cond_98

    return-void

    .line 333
    :cond_98
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Writer failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 159
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getAllPackagesWithDynamicCodeLoading()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_3
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_10
    move-exception p0

    .line 138
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public getPackageDynamicCodeInfo(Ljava/lang/String;)Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 p1, 0x0

    if-nez p0, :cond_f

    goto :goto_15

    .line 149
    :cond_f
    new-instance v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode-IA;)V

    move-object p1, v1

    :goto_15
    monitor-exit v0

    return-object p1

    :catchall_17
    move-exception p0

    .line 150
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public maybeWriteAsync()V
    .registers 2

    const/4 v0, 0x0

    .line 244
    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->maybeWriteAsync(Ljava/lang/Object;)Z

    return-void
.end method

.method public read()V
    .registers 2

    const/4 v0, 0x0

    .line 341
    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->read(Ljava/lang/Object;)V

    return-void
.end method

.method public read(Ljava/io/InputStream;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    invoke-static {p1, v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read(Ljava/io/InputStream;Ljava/util/Map;)V

    .line 365
    iget-object p1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 366
    :try_start_b
    iput-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    .line 367
    monitor-exit p1

    return-void

    :catchall_f
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_f

    throw p0
.end method

.method public bridge synthetic readInternal(Ljava/lang/Object;)V
    .registers 2

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->readInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public final readInternal(Ljava/lang/Void;)V
    .registers 4

    .line 346
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    const/4 v0, 0x0

    .line 350
    :try_start_5
    invoke-virtual {p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->read(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_c} :catch_1c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_f
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    goto :goto_1c

    :catchall_d
    move-exception p0

    goto :goto_18

    :catch_f
    move-exception p0

    :try_start_10
    const-string p1, "PackageDynamicCodeLoading"

    const-string v1, "Failed to parse dynamic usage for secondary code files."

    .line 355
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_d

    goto :goto_1c

    .line 357
    :goto_18
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 358
    throw p0

    .line 357
    :catch_1c
    :goto_1c
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public record(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Z
    .registers 9

    .line 113
    invoke-static {p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->isValidFileType(I)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 116
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    if-nez v1, :cond_1e

    .line 119
    new-instance v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode-IA;)V

    .line 120
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    int-to-char p0, p3

    .line 122
    invoke-static {v1, p2, p0, p4, p5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->-$$Nest$madd(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;CILjava/lang/String;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_25
    move-exception p0

    .line 123
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_25

    throw p0

    .line 114
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad file type: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeFile(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    .line 199
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 202
    monitor-exit v0

    return v2

    .line 204
    :cond_10
    invoke-static {v1, p2, p3}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->-$$Nest$mremoveFile(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 205
    iget-object p2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 206
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const/4 p0, 0x1

    .line 208
    monitor-exit v0

    return p0

    .line 210
    :cond_26
    monitor-exit v0

    return v2

    :catchall_28
    move-exception p0

    .line 212
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public removePackage(Ljava/lang/String;)Z
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 168
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 169
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public removeUserPackage(Ljava/lang/String;I)Z
    .registers 6

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 180
    monitor-exit v0

    return v2

    .line 182
    :cond_10
    invoke-static {v1, p2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->-$$Nest$mremoveUser(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;I)Z

    move-result p2

    if-eqz p2, :cond_26

    .line 183
    iget-object p2, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_23

    .line 184
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    const/4 p0, 0x1

    .line 186
    monitor-exit v0

    return p0

    .line 188
    :cond_26
    monitor-exit v0

    return v2

    :catchall_28
    move-exception p0

    .line 190
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public syncData(Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 224
    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 225
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 226
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-nez v2, :cond_29

    .line 228
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 230
    :cond_29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    .line 231
    invoke-static {v1, p1, v2}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->-$$Nest$msyncData(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Ljava/util/Map;Ljava/util/Set;)V

    .line 232
    iget-object v1, v1, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;->mFileUsageMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 233
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 237
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public write(Ljava/io/OutputStream;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_3
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 274
    iget-object p0, p0, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->mPackageMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 275
    new-instance v3, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;-><init>(Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode;Lcom/android/server/pm/dex/PackageDynamicCodeLoading$PackageDynamicCode-IA;)V

    .line 276
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 278
    :cond_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3f

    .line 280
    invoke-static {p1, v1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->write(Ljava/io/OutputStream;Ljava/util/Map;)V

    return-void

    :catchall_3f
    move-exception p0

    .line 278
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw p0
.end method

.method public bridge synthetic writeInternal(Ljava/lang/Object;)V
    .registers 2

    .line 51
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->writeInternal(Ljava/lang/Void;)V

    return-void
.end method

.method public final writeInternal(Ljava/lang/Void;)V
    .registers 3

    .line 256
    invoke-virtual {p0}, Lcom/android/server/pm/AbstractStatsBase;->getFile()Landroid/util/AtomicFile;

    move-result-object p1

    .line 259
    :try_start_4
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_11

    .line 260
    :try_start_8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/dex/PackageDynamicCodeLoading;->write(Ljava/io/OutputStream;)V

    .line 261
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_1d

    :catch_f
    move-exception p0

    goto :goto_13

    :catch_11
    move-exception p0

    const/4 v0, 0x0

    .line 263
    :goto_13
    invoke-virtual {p1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string p1, "PackageDynamicCodeLoading"

    const-string v0, "Failed to write dynamic usage for secondary code files."

    .line 264
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public writeNow()V
    .registers 2

    const/4 v0, 0x0

    .line 251
    invoke-super {p0, v0}, Lcom/android/server/pm/AbstractStatsBase;->writeNow(Ljava/lang/Object;)V

    return-void
.end method
