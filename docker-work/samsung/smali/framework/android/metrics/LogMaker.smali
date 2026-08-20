.class public Landroid/metrics/LogMaker;
.super Ljava/lang/Object;
.source "LogMaker.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final greylist-max-o MAX_SERIALIZED_SIZE:I = 0xfa0

.field private static final greylist-max-o TAG:Ljava/lang/String; = "LogBuilder"


# instance fields
.field private greylist-max-o entries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "category"    # I

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 52
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 53
    return-void
.end method

.method public constructor whitelist <init>([Ljava/lang/Object;)V
    .registers 3
    .param p1, "items"    # [Ljava/lang/Object;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    .line 57
    if-eqz p1, :cond_10

    .line 58
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->deserialize([Ljava/lang/Object;)V

    goto :goto_14

    .line 60
    :cond_10
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 62
    :goto_14
    return-void
.end method


# virtual methods
.method public whitelist addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "tag"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 243
    if-nez p2, :cond_7

    .line 244
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->clearTaggedData(I)Landroid/metrics/LogMaker;

    move-result-object v0

    return-object v0

    .line 246
    :cond_7
    invoke-virtual {p0, p2}, Landroid/metrics/LogMaker;->isValidValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 250
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_37

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log value too long, omitted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogBuilder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 253
    :cond_37
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    :goto_3c
    return-object p0

    .line 247
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Value must be loggable type - int, long, float, String"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist clearCategory()Landroid/metrics/LogMaker;
    .registers 3

    .line 72
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 73
    return-object p0
.end method

.method public whitelist clearPackageName()Landroid/metrics/LogMaker;
    .registers 3

    .line 148
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 149
    return-object p0
.end method

.method public greylist-max-o clearProcessId()Landroid/metrics/LogMaker;
    .registers 3

    .line 168
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 169
    return-object p0
.end method

.method public whitelist clearSubtype()Landroid/metrics/LogMaker;
    .registers 3

    .line 96
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 97
    return-object p0
.end method

.method public whitelist clearTaggedData(I)Landroid/metrics/LogMaker;
    .registers 3
    .param p1, "tag"    # I

    .line 265
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 266
    return-object p0
.end method

.method public greylist-max-o clearTimestamp()Landroid/metrics/LogMaker;
    .registers 3

    .line 126
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 127
    return-object p0
.end method

.method public whitelist clearType()Landroid/metrics/LogMaker;
    .registers 3

    .line 84
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 85
    return-object p0
.end method

.method public greylist-max-o clearUid()Landroid/metrics/LogMaker;
    .registers 3

    .line 189
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 190
    return-object p0
.end method

.method public whitelist deserialize([Ljava/lang/Object;)V
    .registers 8
    .param p1, "items"    # [Ljava/lang/Object;

    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "i":I
    :goto_1
    if-eqz p1, :cond_4a

    array-length v1, p1

    if-ge v0, v1, :cond_4a

    .line 412
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aget-object v0, p1, v0

    .line 413
    .local v0, "key":Ljava/lang/Object;
    array-length v2, p1

    if-ge v1, v2, :cond_15

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-object v1, p1, v1

    move v5, v2

    move-object v2, v1

    move v1, v5

    goto :goto_16

    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_15
    const/4 v2, 0x0

    .line 414
    .local v2, "value":Ljava/lang/Object;
    :goto_16
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_27

    .line 415
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    move-object v4, v0

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_48

    .line 417
    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_37

    const-string v4, "null"

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LogBuilder"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .end local v0    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_48
    move v0, v1

    goto :goto_1

    .line 420
    .end local v1    # "i":I
    .local v0, "i":I
    :cond_4a
    return-void
.end method

.method public whitelist getCategory()I
    .registers 3

    .line 285
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f5

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 286
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 287
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 289
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCounterBucket()J
    .registers 4

    .line 365
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_14

    .line 367
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 369
    :cond_14
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getCounterName()Ljava/lang/String;
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 357
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 359
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getCounterValue()I
    .registers 3

    .line 381
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x322

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 382
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 383
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 385
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getEntries()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 3

    .line 325
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 326
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 327
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 329
    :cond_10
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getProcessId()I
    .registers 3

    .line 335
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x361

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 336
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 337
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 339
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist getSubtype()I
    .registers 3

    .line 305
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 306
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 307
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 309
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getTaggedData(I)Ljava/lang/Object;
    .registers 3
    .param p1, "tag"    # I

    .line 280
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTimestamp()J
    .registers 4

    .line 315
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x325

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_14

    .line 317
    move-object v1, v0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 319
    :cond_14
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method public whitelist getType()I
    .registers 3

    .line 295
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x2f6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 296
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 297
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 299
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getUid()I
    .registers 3

    .line 345
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x3af

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 346
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_14

    .line 347
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 349
    :cond_14
    const/4 v1, -0x1

    return v1
.end method

.method public whitelist isLongCounterBucket()Z
    .registers 3

    .line 375
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x321

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 376
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Long;

    return v1
.end method

.method public whitelist isSubsetOf(Landroid/metrics/LogMaker;)Z
    .registers 8
    .param p1, "that"    # Landroid/metrics/LogMaker;

    .line 427
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 428
    return v0

    .line 430
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2d

    .line 431
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 432
    .local v2, "key":I
    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 433
    .local v3, "thisValue":Ljava/lang/Object;
    iget-object v4, p1, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 434
    .local v4, "thatValue":Ljava/lang/Object;
    if-nez v3, :cond_23

    if-nez v4, :cond_29

    :cond_23
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 435
    :cond_29
    return v0

    .line 430
    .end local v2    # "key":I
    .end local v3    # "thisValue":Ljava/lang/Object;
    .end local v4    # "thatValue":Ljava/lang/Object;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 437
    .end local v1    # "i":I
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isValidValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 273
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/Long;

    if-nez v0, :cond_13

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method public whitelist serialize()[Ljava/lang/Object;
    .registers 5

    .line 393
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 394
    .local v0, "out":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget-object v2, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 395
    mul-int/lit8 v2, v1, 0x2

    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 396
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 398
    .end local v1    # "i":I
    :cond_30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 399
    .local v1, "size":I
    const/16 v2, 0xfa0

    if-gt v1, v2, :cond_3e

    .line 403
    return-object v0

    .line 400
    :cond_3e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log line too long, did not emit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogBuilder"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
.end method

.method public whitelist setCategory(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "category"    # I

    .line 66
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 67
    return-object p0
.end method

.method public greylist-max-o setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 141
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x326

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 142
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x367

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 143
    return-object p0
.end method

.method public greylist-max-o setCounterBucket(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "bucket"    # I

    .line 211
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x321

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    return-object p0
.end method

.method public greylist-max-o setCounterBucket(J)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "bucket"    # J

    .line 222
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x321

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    return-object p0
.end method

.method public greylist-max-o setCounterName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x31f

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 201
    return-object p0
.end method

.method public greylist-max-o setCounterValue(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "value"    # I

    .line 233
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x322

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 234
    return-object p0
.end method

.method public greylist-max-o setLatency(J)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "milliseconds"    # J

    .line 106
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x54f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    const/16 v1, 0x326

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 133
    return-object p0
.end method

.method public greylist-max-o setProcessId(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "pid"    # I

    .line 160
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x361

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    return-object p0
.end method

.method public whitelist setSubtype(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "subtype"    # I

    .line 90
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    return-object p0
.end method

.method public greylist-max-o setTimestamp(J)Landroid/metrics/LogMaker;
    .registers 6
    .param p1, "timestamp"    # J

    .line 118
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x325

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    return-object p0
.end method

.method public whitelist setType(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "type"    # I

    .line 78
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2f6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    return-object p0
.end method

.method public greylist-max-o setUid(I)Landroid/metrics/LogMaker;
    .registers 5
    .param p1, "uid"    # I

    .line 180
    iget-object v0, p0, Landroid/metrics/LogMaker;->entries:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x3af

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 181
    return-object p0
.end method
