.class public final Lorg/apache/commons/logging/impl/WeakHashtable;
.super Ljava/util/Hashtable;
.source "WeakHashtable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;,
        Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;,
        Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MAX_CHANGES_BEFORE_PURGE:I = 0x64

.field private static final PARTIAL_PURGE_COUNT:I = 0xa


# instance fields
.field private changeCount:I

.field private queue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 138
    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    .line 130
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    .line 138
    return-void
.end method

.method private purge()V
    .registers 4

    .line 326
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v0

    .line 328
    :goto_3
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    move-object v2, v1

    .local v2, "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    if-eqz v1, :cond_16

    .line 329
    invoke-static {v2}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->-$$Nest$mgetReferenced(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v1

    invoke-super {p0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 331
    .end local v2    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :cond_16
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private purgeOne()V
    .registers 4

    .line 340
    iget-object v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    monitor-enter v0

    .line 341
    :try_start_3
    iget-object v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;

    .line 342
    .local v1, "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    if-eqz v1, :cond_14

    .line 343
    invoke-static {v1}, Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;->-$$Nest$mgetReferenced(Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;)Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    move-result-object v2

    invoke-super {p0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    .end local v1    # "key":Lorg/apache/commons/logging/impl/WeakHashtable$WeakKey;
    :cond_14
    monitor-exit v0

    .line 346
    return-void

    .line 345
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 146
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced-IA;)V

    .line 147
    .local v0, "referenced":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public elements()Ljava/util/Enumeration;
    .registers 2

    .line 154
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 155
    invoke-super {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 10

    .line 162
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 163
    invoke-super {p0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 164
    .local v0, "referencedEntries":Ljava/util/Set;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 165
    .local v1, "unreferencedEntries":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 166
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 167
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 168
    .local v4, "referencedKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v4}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->-$$Nest$mgetValue(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v5

    .line 169
    .local v5, "key":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 170
    .local v6, "value":Ljava/lang/Object;
    if-eqz v5, :cond_35

    .line 171
    new-instance v7, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v6, v8}, Lorg/apache/commons/logging/impl/WeakHashtable$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Entry-IA;)V

    .line 172
    .local v7, "dereferencedEntry":Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "referencedKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "dereferencedEntry":Lorg/apache/commons/logging/impl/WeakHashtable$Entry;
    :cond_35
    goto :goto_10

    .line 175
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_36
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 183
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced-IA;)V

    .line 184
    .local v0, "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .registers 2

    .line 292
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 293
    invoke-super {p0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 6

    .line 209
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 210
    invoke-super {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 211
    .local v0, "referencedKeys":Ljava/util/Set;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 212
    .local v1, "unreferencedKeys":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 213
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    .line 214
    .local v3, "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-static {v3}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;->-$$Nest$mgetValue(Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;)Ljava/lang/Object;

    move-result-object v4

    .line 215
    .local v4, "keyValue":Ljava/lang/Object;
    if-eqz v4, :cond_25

    .line 216
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v3    # "referenceKey":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    .end local v4    # "keyValue":Ljava/lang/Object;
    :cond_25
    goto :goto_10

    .line 219
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_26
    return-object v1
.end method

.method public keys()Ljava/util/Enumeration;
    .registers 3

    .line 191
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 192
    invoke-super {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 193
    .local v0, "enumer":Ljava/util/Enumeration;
    new-instance v1, Lorg/apache/commons/logging/impl/WeakHashtable$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/logging/impl/WeakHashtable$1;-><init>(Lorg/apache/commons/logging/impl/WeakHashtable;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 227
    if-eqz p1, :cond_32

    .line 230
    if-eqz p2, :cond_2a

    .line 236
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_15

    .line 237
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    goto :goto_1c

    .line 241
    :cond_15
    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_1c

    .line 242
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    .line 245
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    .line 246
    .local v0, "result":Ljava/lang/Object;
    new-instance v1, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    iget-object v2, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced-IA;)V

    .line 247
    .local v1, "keyRef":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    invoke-super {p0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 231
    .end local v0    # "result":Ljava/lang/Object;
    .end local v1    # "keyRef":Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null values are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null keys are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 7
    .param p1, "t"    # Ljava/util/Map;

    .line 254
    if-eqz p1, :cond_22

    .line 255
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 256
    .local v0, "entrySet":Ljava/util/Set;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 258
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/logging/impl/WeakHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v2    # "entry":Ljava/util/Map$Entry;
    goto :goto_a

    .line 261
    .end local v0    # "entrySet":Ljava/util/Set;
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_22
    return-void
.end method

.method protected rehash()V
    .registers 1

    .line 317
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 318
    invoke-super {p0}, Ljava/util/Hashtable;->rehash()V

    .line 319
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 277
    iget v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_11

    .line 278
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 279
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/logging/impl/WeakHashtable;->changeCount:I

    goto :goto_18

    .line 282
    :cond_11
    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_18

    .line 283
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purgeOne()V

    .line 285
    :cond_18
    :goto_18
    new-instance v0, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/logging/impl/WeakHashtable$Referenced;-><init>(Ljava/lang/Object;Lorg/apache/commons/logging/impl/WeakHashtable$Referenced-IA;)V

    invoke-super {p0, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 300
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 301
    invoke-super {p0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 308
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 309
    invoke-super {p0}, Ljava/util/Hashtable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 2

    .line 267
    invoke-direct {p0}, Lorg/apache/commons/logging/impl/WeakHashtable;->purge()V

    .line 268
    invoke-super {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
