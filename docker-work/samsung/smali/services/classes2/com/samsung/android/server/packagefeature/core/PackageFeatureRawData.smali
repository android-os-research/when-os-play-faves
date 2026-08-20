.class Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;
.super Lcom/samsung/android/server/packagefeature/PackageFeatureData;
.source "PackageFeatureRawData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static sShowPackageName:Z = false

.field private static final serialVersionUID:J = 0x2f146becfaL


# instance fields
.field private final mSerial:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->mSerial:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static setShowPackageName(Z)V
    .registers 2

    .line 43
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v0, :cond_5

    return-void

    .line 46
    :cond_5
    sput-boolean p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->sShowPackageName:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    .line 61
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 62
    sget-boolean v1, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->sShowPackageName:Z

    if-eqz v1, :cond_e

    const/4 v1, 0x5

    goto :goto_10

    :cond_e
    const/16 v1, 0xa

    :goto_10
    const/4 v2, 0x0

    .line 63
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_71

    add-int/lit8 v3, v2, 0x1

    .line 64
    rem-int/2addr v2, v1

    if-nez v2, :cond_22

    .line 65
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 66
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 68
    :cond_22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    sget-boolean v5, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->sShowPackageName:Z

    if-nez v5, :cond_3a

    .line 71
    iget-object v5, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->mSerial:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 73
    :cond_3a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    sget-object v4, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_64

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 78
    :cond_64
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, ", "

    .line 79
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6f
    move v2, v3

    goto :goto_11

    .line 82
    :cond_71
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-nez p1, :cond_4

    const-string p1, "null"

    .line 55
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/core/PackageFeatureRawData;->mSerial:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-super {p0, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->put(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
