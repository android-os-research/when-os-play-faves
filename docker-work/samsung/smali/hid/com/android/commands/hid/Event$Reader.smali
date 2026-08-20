.class public Lcom/android/commands/hid/Event$Reader;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mReader:Landroid/util/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStreamReader;)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStreamReader;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    .line 204
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 205
    return-void
.end method

.method private consumeRemainingElements()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 386
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 388
    :cond_e
    return-void
.end method

.method private readBus()Lcom/android/commands/hid/Event$Bus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/hid/Event$Bus;->valueOf(Ljava/lang/String;)Lcom/android/commands/hid/Event$Bus;

    move-result-object v1

    return-object v1
.end method

.method private readData()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 270
    :goto_a
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 271
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 273
    :cond_20
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_25} :catch_50
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_25} :catch_50

    .line 278
    nop

    .line 279
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 280
    .local v1, "rawData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4f

    .line 281
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 282
    .local v3, "d":I
    and-int/lit16 v4, v3, 0xff

    if-ne v4, v3, :cond_47

    .line 285
    int-to-byte v4, v3

    aput-byte v4, v1, v2

    .line 280
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 283
    .restart local v3    # "d":I
    :cond_47
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid data, all values must be byte-sized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    .end local v2    # "i":I
    .end local v3    # "d":I
    :cond_4f
    return-object v1

    .line 274
    .end local v1    # "rawData":[B
    :catch_50
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 276
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 277
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readFeatureReports()Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 304
    .local v0, "featureReports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 305
    :goto_a
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 308
    const/4 v1, 0x0

    .line 309
    .local v1, "id":I
    const/4 v2, 0x0

    .line 310
    .local v2, "data":[B
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 311
    :goto_19
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 312
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_98

    :cond_2f
    goto :goto_43

    :sswitch_30
    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x1

    goto :goto_43

    :sswitch_3a
    const-string v5, "id"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x0

    :goto_43
    packed-switch v4, :pswitch_data_a2

    .line 321
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    goto :goto_57

    .line 318
    :pswitch_4a
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v4

    move-object v2, v4

    .line 319
    goto :goto_56

    .line 315
    :pswitch_50
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v4

    move v1, v4

    .line 316
    nop

    .line 326
    .end local v3    # "name":Ljava/lang/String;
    :goto_56
    goto :goto_19

    .line 322
    .restart local v3    # "name":Ljava/lang/String;
    :goto_57
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 323
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in feature report: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "featureReports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .end local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    throw v4

    .line 327
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "featureReports":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[B>;"
    .restart local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    :cond_75
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 328
    if-eqz v2, :cond_7f

    .line 329
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 331
    .end local v1    # "id":I
    .end local v2    # "data":[B
    :cond_7f
    goto :goto_a

    .line 332
    :cond_80
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_85
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_85} :catch_87
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_85} :catch_87

    .line 337
    nop

    .line 338
    return-object v0

    .line 333
    :catch_87
    move-exception v1

    .line 334
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 335
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 336
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_98
    .sparse-switch
        0xd1b -> :sswitch_3a
        0x2eefaa -> :sswitch_30
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4a
    .end packed-switch
.end method

.method private readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private readOutputs()Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/ByteBuffer;",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 346
    .local v0, "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 347
    :goto_a
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_95

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "output":[B
    const/4 v2, 0x0

    .line 350
    .local v2, "response":[B
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 351
    :goto_19
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_85

    .line 352
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ae

    :cond_2f
    goto :goto_4d

    :sswitch_30
    const-string v5, "response"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x2

    goto :goto_4d

    :sswitch_3a
    const-string v5, "output"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x1

    goto :goto_4d

    :sswitch_44
    const-string v5, "description"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x0

    :goto_4d
    packed-switch v4, :pswitch_data_bc

    .line 365
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    goto :goto_67

    .line 362
    :pswitch_54
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v4

    move-object v2, v4

    .line 363
    goto :goto_66

    .line 359
    :pswitch_5a
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v4

    move-object v1, v4

    .line 360
    goto :goto_66

    .line 356
    :pswitch_60
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    .line 357
    nop

    .line 369
    .end local v3    # "name":Ljava/lang/String;
    :goto_66
    goto :goto_19

    .line 366
    .restart local v3    # "name":Ljava/lang/String;
    :goto_67
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 367
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    .end local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    throw v4

    .line 370
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "outputs":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;[B>;"
    .restart local p0    # "this":Lcom/android/commands/hid/Event$Reader;
    :cond_85
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 371
    if-eqz v1, :cond_93

    .line 372
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    .end local v1    # "output":[B
    .end local v2    # "response":[B
    :cond_93
    goto/16 :goto_a

    .line 375
    :cond_95
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_9a
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_9a} :catch_9c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9a} :catch_9c

    .line 380
    nop

    .line 381
    return-object v0

    .line 376
    :catch_9c
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 378
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 379
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_ae
    .sparse-switch
        -0x66ca7c04 -> :sswitch_44
        -0x3beee6ff -> :sswitch_3a
        -0x1448ebbf -> :sswitch_30
    .end sparse-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_60
        :pswitch_5a
        :pswitch_54
    .end packed-switch
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/hid/Event;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "e":Lcom/android/commands/hid/Event;
    :goto_1
    if-nez v0, :cond_123

    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_123

    .line 210
    new-instance v1, Lcom/android/commands/hid/Event$Builder;

    invoke-direct {v1}, Lcom/android/commands/hid/Event$Builder;-><init>()V

    .line 212
    .local v1, "eb":Lcom/android/commands/hid/Event$Builder;
    :try_start_12
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 213
    :goto_17
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_107

    .line 214
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 215
    .local v2, "name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_124

    :cond_2d
    goto/16 :goto_a0

    :sswitch_2f
    const-string v4, "command"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x1

    goto/16 :goto_a0

    :sswitch_3a
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x3

    goto :goto_a0

    :sswitch_44
    const-string v4, "vid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x4

    goto :goto_a0

    :sswitch_4e
    const-string v4, "pid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x5

    goto :goto_a0

    :sswitch_58
    const-string v4, "bus"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x6

    goto :goto_a0

    :sswitch_62
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x0

    goto :goto_a0

    :sswitch_6c
    const-string v4, "feature_reports"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v3, 0x8

    goto :goto_a0

    :sswitch_77
    const-string v4, "descriptor"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x2

    goto :goto_a0

    :sswitch_81
    const-string v4, "report"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x7

    goto :goto_a0

    :sswitch_8b
    const-string v4, "outputs"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v3, 0x9

    goto :goto_a0

    :sswitch_96
    const-string v4, "duration"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v3, 0xa

    :goto_a0
    packed-switch v3, :pswitch_data_152

    .line 250
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    goto :goto_102

    .line 247
    :pswitch_a6
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setDuration(I)V

    .line 248
    goto :goto_105

    .line 244
    :pswitch_ae
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readOutputs()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setOutputs(Ljava/util/Map;)V

    .line 245
    goto :goto_105

    .line 241
    :pswitch_b6
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readFeatureReports()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setFeatureReports(Landroid/util/SparseArray;)V

    .line 242
    goto :goto_105

    .line 238
    :pswitch_be
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setReport([B)V

    .line 239
    goto :goto_105

    .line 235
    :pswitch_c6
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readBus()Lcom/android/commands/hid/Event$Bus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setBus(Lcom/android/commands/hid/Event$Bus;)V

    .line 236
    goto :goto_105

    .line 232
    :pswitch_ce
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setPid(I)V

    .line 233
    goto :goto_105

    .line 229
    :pswitch_d6
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setVid(I)V

    .line 230
    goto :goto_105

    .line 226
    :pswitch_de
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setName(Ljava/lang/String;)V

    .line 227
    goto :goto_105

    .line 223
    :pswitch_e8
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setDescriptor([B)V

    .line 224
    goto :goto_105

    .line 220
    :pswitch_f0
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/commands/hid/Event$Builder;->-$$Nest$msetCommand(Lcom/android/commands/hid/Event$Builder;Ljava/lang/String;)V

    .line 221
    goto :goto_105

    .line 217
    :pswitch_fa
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/hid/Event$Builder;->setId(I)V

    .line 218
    goto :goto_105

    .line 250
    :goto_102
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V

    .line 252
    .end local v2    # "name":Ljava/lang/String;
    :goto_105
    goto/16 :goto_17

    .line 253
    :cond_107
    iget-object v2, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_10c
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_10c} :catch_113

    .line 259
    nop

    .line 260
    invoke-virtual {v1}, Lcom/android/commands/hid/Event$Builder;->build()Lcom/android/commands/hid/Event;

    move-result-object v0

    .line 261
    .end local v1    # "eb":Lcom/android/commands/hid/Event$Builder;
    goto/16 :goto_1

    .line 254
    .restart local v1    # "eb":Lcom/android/commands/hid/Event$Builder;
    :catch_113
    move-exception v2

    .line 255
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "Error reading in object, ignoring."

    invoke-static {v3, v2}, Lcom/android/commands/hid/Event;->-$$Nest$smerror(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 256
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    .line 257
    iget-object v3, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 258
    goto/16 :goto_1

    .line 263
    .end local v1    # "eb":Lcom/android/commands/hid/Event$Builder;
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :cond_123
    return-object v0

    :sswitch_data_124
    .sparse-switch
        -0x76bbb26c -> :sswitch_96
        -0x41edf86e -> :sswitch_8b
        -0x37b3aacc -> :sswitch_81
        -0x2c9b2c91 -> :sswitch_77
        -0x17e6e28a -> :sswitch_6c
        0xd1b -> :sswitch_62
        0x17e80 -> :sswitch_58
        0x1b18b -> :sswitch_4e
        0x1c811 -> :sswitch_44
        0x337a8b -> :sswitch_3a
        0x38a5df4b -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_fa
        :pswitch_f0
        :pswitch_e8
        :pswitch_de
        :pswitch_d6
        :pswitch_ce
        :pswitch_c6
        :pswitch_be
        :pswitch_b6
        :pswitch_ae
        :pswitch_a6
    .end packed-switch
.end method
