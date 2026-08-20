.class public Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UsagePerPackage"
.end annotation


# instance fields
.field mTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;->mTable:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addUsage(Ljava/lang/String;IJ)V
    .registers 9
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "freq"    # I
    .param p3, "l"    # J

    .line 235
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_a

    goto :goto_34

    .line 238
    :cond_a
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "words":[Ljava/lang/String;
    array-length v2, v0

    if-ge v2, v1, :cond_14

    .line 240
    return-void

    .line 242
    :cond_14
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "tagWithoutPostfix":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;->mTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;

    .line 244
    .local v2, "boostUsage":Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;
    if-nez v2, :cond_30

    .line 245
    new-instance v3, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;

    invoke-direct {v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;-><init>()V

    move-object v2, v3

    .line 246
    iget-object v3, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;->mTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_30
    invoke-virtual {v2, p2, p3, p4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;->addUsage(IJ)V

    .line 249
    return-void

    .line 236
    .end local v0    # "words":[Ljava/lang/String;
    .end local v1    # "tagWithoutPostfix":Ljava/lang/String;
    .end local v2    # "boostUsage":Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;
    :cond_34
    :goto_34
    return-void
.end method

.method public print(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerPackage;->mTable:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 255
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;>;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 257
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v5, "%40s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;

    invoke-virtual {v4}, Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/ssrm/CustomFrequencyManagerService$UsagePerFreq;>;"
    goto :goto_f

    .line 261
    :cond_56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    return-void
.end method
