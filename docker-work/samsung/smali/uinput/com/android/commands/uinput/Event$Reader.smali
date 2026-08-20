.class public Lcom/android/commands/uinput/Event$Reader;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Event;
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

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance v0, Landroid/util/JsonReader;

    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    .line 215
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 216
    return-void
.end method

.method private consumeRemainingElements()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 442
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 444
    :cond_e
    return-void
.end method

.method private readAbsInfo()Lsrc/com/android/commands/uinput/InputAbsInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    new-instance v0, Lsrc/com/android/commands/uinput/InputAbsInfo;

    invoke-direct {v0}, Lsrc/com/android/commands/uinput/InputAbsInfo;-><init>()V

    .line 364
    .local v0, "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginObject()V

    .line 365
    :goto_a
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 366
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "name":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_c6

    :cond_20
    goto :goto_5c

    :sswitch_21
    const-string v3, "minimum"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x1

    goto :goto_5c

    :sswitch_2b
    const-string v3, "maximum"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x2

    goto :goto_5c

    :sswitch_35
    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x0

    goto :goto_5c

    :sswitch_3f
    const-string v3, "fuzz"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x3

    goto :goto_5c

    :sswitch_49
    const-string v3, "flat"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x4

    goto :goto_5c

    :sswitch_53
    const-string v3, "resolution"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const/4 v2, 0x5

    :goto_5c
    packed-switch v2, :pswitch_data_e0

    .line 387
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    goto :goto_8f

    .line 384
    :pswitch_63
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->resolution:I

    .line 385
    goto :goto_8d

    .line 381
    :pswitch_6a
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->flat:I

    .line 382
    goto :goto_8d

    .line 378
    :pswitch_71
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->fuzz:I

    .line 379
    goto :goto_8d

    .line 375
    :pswitch_78
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->maximum:I

    .line 376
    goto :goto_8d

    .line 372
    :pswitch_7f
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->minimum:I

    .line 373
    goto :goto_8d

    .line 369
    :pswitch_86
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v2

    iput v2, v0, Lsrc/com/android/commands/uinput/InputAbsInfo;->value:I

    .line 370
    nop

    .line 391
    .end local v1    # "name":Ljava/lang/String;
    :goto_8d
    goto/16 :goto_a

    .line 388
    .restart local v1    # "name":Ljava/lang/String;
    :goto_8f
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 389
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key in abs info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .end local p0    # "this":Lcom/android/commands/uinput/Event$Reader;
    throw v2

    .line 392
    .end local v1    # "name":Ljava/lang/String;
    .restart local v0    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .restart local p0    # "this":Lcom/android/commands/uinput/Event$Reader;
    :cond_ad
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endObject()V
    :try_end_b2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_b2} :catch_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_b2} :catch_b4

    .line 397
    nop

    .line 398
    return-object v0

    .line 393
    :catch_b4
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    .line 395
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V

    .line 396
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x5f5e8754 -> :sswitch_53
        0x2fff79 -> :sswitch_49
        0x30244f -> :sswitch_3f
        0x6ac9171 -> :sswitch_35
        0x3259b620 -> :sswitch_2b
        0x3f73900e -> :sswitch_21
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_86
        :pswitch_7f
        :pswitch_78
        :pswitch_71
        :pswitch_6a
        :pswitch_63
    .end packed-switch
.end method

.method private readAbsInfoArray()Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lsrc/com/android/commands/uinput/InputAbsInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 405
    .local v0, "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 406
    :goto_a
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 407
    const/4 v1, 0x0

    .line 408
    .local v1, "type":I
    const/4 v2, 0x0

    .line 409
    .local v2, "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 410
    :goto_19
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 411
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_98

    :cond_2f
    goto :goto_43

    :sswitch_30
    const-string v5, "info"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x1

    goto :goto_43

    :sswitch_3a
    const-string v5, "code"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x0

    :goto_43
    packed-switch v4, :pswitch_data_a2

    .line 420
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    goto :goto_57

    .line 417
    :pswitch_4a
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readAbsInfo()Lsrc/com/android/commands/uinput/InputAbsInfo;

    move-result-object v4

    move-object v2, v4

    .line 418
    goto :goto_56

    .line 414
    :pswitch_50
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v4

    move v1, v4

    .line 415
    nop

    .line 425
    .end local v3    # "name":Ljava/lang/String;
    :goto_56
    goto :goto_19

    .line 421
    .restart local v3    # "name":Ljava/lang/String;
    :goto_57
    iget-object v4, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 422
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in abs info array: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    .end local p0    # "this":Lcom/android/commands/uinput/Event$Reader;
    throw v4

    .line 426
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "infoArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lsrc/com/android/commands/uinput/InputAbsInfo;>;"
    .restart local p0    # "this":Lcom/android/commands/uinput/Event$Reader;
    :cond_75
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 427
    if-eqz v2, :cond_7f

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 430
    .end local v1    # "type":I
    .end local v2    # "absInfo":Lsrc/com/android/commands/uinput/InputAbsInfo;
    :cond_7f
    goto :goto_a

    .line 431
    :cond_80
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_85
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_85} :catch_87
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_85} :catch_87

    .line 436
    nop

    .line 437
    return-object v0

    .line 432
    :catch_87
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    .line 434
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 435
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_98
    .sparse-switch
        0x2eaded -> :sswitch_3a
        0x3164ae -> :sswitch_30
    .end sparse-switch

    :pswitch_data_a2
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4a
    .end packed-switch
.end method

.method private readBus()Lcom/android/commands/uinput/Event$Bus;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "val":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/commands/uinput/Event$Bus;->valueOf(Ljava/lang/String;)Lcom/android/commands/uinput/Event$Bus;

    move-result-object v1

    return-object v1
.end method

.method private readConfiguration()Landroid/util/SparseArray;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 325
    .local v0, "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 326
    :goto_a
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_92

    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "type":I
    const/4 v2, 0x0

    .line 329
    .local v2, "data":[I
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 330
    :goto_19
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 331
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, "name":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_aa

    :cond_2f
    goto :goto_43

    :sswitch_30
    const-string v5, "type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x0

    goto :goto_43

    :sswitch_3a
    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v4, 0x1

    :goto_43
    packed-switch v4, :pswitch_data_b4

    .line 341
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    goto :goto_68

    .line 337
    :pswitch_4a
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readIntList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/commands/uinput/Event$Reader$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/commands/uinput/Event$Reader$$ExternalSyntheticLambda0;-><init>()V

    .line 338
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    move-object v2, v4

    .line 339
    goto :goto_67

    .line 334
    :pswitch_61
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v4

    move v1, v4

    .line 335
    nop

    .line 346
    .end local v3    # "name":Ljava/lang/String;
    :goto_67
    goto :goto_19

    .line 342
    .restart local v3    # "name":Ljava/lang/String;
    :goto_68
    iget-object v4, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 343
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key in device configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local p0    # "this":Lcom/android/commands/uinput/Event$Reader;
    throw v4

    .line 347
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "configuration":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .restart local p0    # "this":Lcom/android/commands/uinput/Event$Reader;
    :cond_86
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 348
    if-eqz v2, :cond_90

    .line 349
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    .end local v1    # "type":I
    .end local v2    # "data":[I
    :cond_90
    goto/16 :goto_a

    .line 352
    :cond_92
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_97
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_97} :catch_99
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_97} :catch_99

    .line 357
    nop

    .line 358
    return-object v0

    .line 353
    :catch_99
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    .line 355
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 356
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :sswitch_data_aa
    .sparse-switch
        0x2eefaa -> :sswitch_3a
        0x368f3a -> :sswitch_30
    .end sparse-switch

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_61
        :pswitch_4a
    .end packed-switch
.end method

.method private readData()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readIntList()Ljava/util/ArrayList;

    move-result-object v0

    .line 300
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    .line 301
    .local v1, "rawData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2d

    .line 302
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 303
    .local v3, "d":I
    and-int/lit16 v4, v3, 0xff

    if-ne v4, v3, :cond_25

    .line 306
    int-to-byte v4, v3

    aput-byte v4, v1, v2

    .line 301
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 304
    .restart local v3    # "d":I
    :cond_25
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid data, all values must be byte-sized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 308
    .end local v2    # "i":I
    .end local v3    # "d":I
    :cond_2d
    return-object v1
.end method

.method private readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private readIntList()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_5
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->beginArray()V

    .line 286
    :goto_a
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 287
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 289
    :cond_20
    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->endArray()V
    :try_end_25
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_25} :catch_27
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_25} :catch_27

    .line 294
    nop

    .line 295
    return-object v0

    .line 290
    :catch_27
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    .line 292
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endArray()V

    .line 293
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Encountered malformed data."

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/uinput/Event;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "e":Lcom/android/commands/uinput/Event;
    :goto_1
    if-nez v0, :cond_135

    iget-object v1, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v1}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_135

    .line 224
    new-instance v1, Lcom/android/commands/uinput/Event$Builder;

    invoke-direct {v1}, Lcom/android/commands/uinput/Event$Builder;-><init>()V

    .line 226
    .local v1, "eb":Lcom/android/commands/uinput/Event$Builder;
    :try_start_12
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    .line 227
    :goto_17
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 228
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "name":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_136

    :cond_2d
    goto/16 :goto_a0

    :sswitch_2f
    const-string v4, "configuration"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x7

    goto/16 :goto_a0

    :sswitch_3a
    const-string v4, "abs_info"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v3, 0x9

    goto :goto_a0

    :sswitch_45
    const-string v4, "ff_effects_max"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v3, 0x8

    goto :goto_a0

    :sswitch_50
    const-string v4, "command"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x1

    goto :goto_a0

    :sswitch_5a
    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x2

    goto :goto_a0

    :sswitch_64
    const-string v4, "vid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x3

    goto :goto_a0

    :sswitch_6e
    const-string v4, "pid"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x4

    goto :goto_a0

    :sswitch_78
    const-string v4, "bus"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x5

    goto :goto_a0

    :sswitch_82
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x0

    goto :goto_a0

    :sswitch_8c
    const-string v4, "events"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v3, 0x6

    goto :goto_a0

    :sswitch_96
    const-string v4, "duration"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/16 v3, 0xa

    :goto_a0
    packed-switch v3, :pswitch_data_164

    .line 266
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    goto/16 :goto_114

    .line 263
    :pswitch_a7
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setDuration(I)V

    .line 264
    goto :goto_117

    .line 260
    :pswitch_af
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readAbsInfoArray()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setAbsInfo(Landroid/util/SparseArray;)V

    .line 261
    goto :goto_117

    .line 257
    :pswitch_b7
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setFfEffectsMax(I)V

    .line 258
    goto :goto_117

    .line 254
    :pswitch_bf
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readConfiguration()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setConfiguration(Landroid/util/SparseArray;)V

    .line 255
    goto :goto_117

    .line 249
    :pswitch_c7
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readIntList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/commands/uinput/Event$Reader$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/commands/uinput/Event$Reader$$ExternalSyntheticLambda0;-><init>()V

    .line 250
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v3

    .line 251
    .local v3, "injections":[I
    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setInjections([I)V

    .line 252
    goto :goto_117

    .line 246
    .end local v3    # "injections":[I
    :pswitch_e0
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readBus()Lcom/android/commands/uinput/Event$Bus;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setBus(Lcom/android/commands/uinput/Event$Bus;)V

    .line 247
    goto :goto_117

    .line 243
    :pswitch_e8
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setPid(I)V

    .line 244
    goto :goto_117

    .line 240
    :pswitch_f0
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setVid(I)V

    .line 241
    goto :goto_117

    .line 237
    :pswitch_f8
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setName(Ljava/lang/String;)V

    .line 238
    goto :goto_117

    .line 234
    :pswitch_102
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->-$$Nest$msetCommand(Lcom/android/commands/uinput/Event$Builder;Ljava/lang/String;)V

    .line 235
    goto :goto_117

    .line 231
    :pswitch_10c
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/commands/uinput/Event$Builder;->setId(I)V

    .line 232
    goto :goto_117

    .line 266
    :goto_114
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V

    .line 268
    .end local v2    # "name":Ljava/lang/String;
    :goto_117
    goto/16 :goto_17

    .line 269
    :cond_119
    iget-object v2, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_11e
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_11e} :catch_125

    .line 275
    nop

    .line 276
    invoke-virtual {v1}, Lcom/android/commands/uinput/Event$Builder;->build()Lcom/android/commands/uinput/Event;

    move-result-object v0

    .line 277
    .end local v1    # "eb":Lcom/android/commands/uinput/Event$Builder;
    goto/16 :goto_1

    .line 270
    .restart local v1    # "eb":Lcom/android/commands/uinput/Event$Builder;
    :catch_125
    move-exception v2

    .line 271
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string v3, "Error reading in object, ignoring."

    invoke-static {v3, v2}, Lcom/android/commands/uinput/Event;->-$$Nest$smerror(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 272
    invoke-direct {p0}, Lcom/android/commands/uinput/Event$Reader;->consumeRemainingElements()V

    .line 273
    iget-object v3, p0, Lcom/android/commands/uinput/Event$Reader;->mReader:Landroid/util/JsonReader;

    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V

    .line 274
    goto/16 :goto_1

    .line 279
    .end local v1    # "eb":Lcom/android/commands/uinput/Event$Builder;
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :cond_135
    return-object v0

    :sswitch_data_136
    .sparse-switch
        -0x76bbb26c -> :sswitch_96
        -0x4cf81ee7 -> :sswitch_8c
        0xd1b -> :sswitch_82
        0x17e80 -> :sswitch_78
        0x1b18b -> :sswitch_6e
        0x1c811 -> :sswitch_64
        0x337a8b -> :sswitch_5a
        0x38a5df4b -> :sswitch_50
        0x459447a8 -> :sswitch_45
        0x661e1c5b -> :sswitch_3a
        0x733374f6 -> :sswitch_2f
    .end sparse-switch

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_10c
        :pswitch_102
        :pswitch_f8
        :pswitch_f0
        :pswitch_e8
        :pswitch_e0
        :pswitch_c7
        :pswitch_bf
        :pswitch_b7
        :pswitch_af
        :pswitch_a7
    .end packed-switch
.end method
