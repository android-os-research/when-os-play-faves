.class final Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;
.super Landroid/os/Handler;
.source "SumeNN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/nn/SumeNN;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final blacklist weak_ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/nn/SumeNN;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/ref/WeakReference;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sume/nn/SumeNN;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 457
    .local p1, "weak_ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/samsung/android/sume/nn/SumeNN;>;"
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 458
    iput-object p1, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;->weak_ref:Ljava/lang/ref/WeakReference;

    .line 459
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$0(Landroid/os/Bundle;)Ljava/util/Optional;
    .registers 2
    .param p0, "e"    # Landroid/os/Bundle;

    .line 477
    const-string/jumbo v0, "runtimes"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$1(I)Lcom/samsung/android/sume/op/OpRuntime;
    .registers 2
    .param p0, "it"    # I

    .line 478
    const-class v0, Lcom/samsung/android/sume/op/OpRuntime;

    invoke-static {v0, p0}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$10(Lcom/samsung/android/sume/ContentStat;Ljava/util/HashSet;)V
    .registers 3
    .param p0, "partStat"    # Lcom/samsung/android/sume/ContentStat;
    .param p1, "it"    # Ljava/util/HashSet;

    .line 559
    invoke-virtual {p0}, Lcom/samsung/android/sume/ContentStat;->getRuntimeId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 560
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$11(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 572
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 573
    const-string v0, "content-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$12(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 577
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 578
    const-string v0, "content-part-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$13(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 591
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 592
    const-string v0, "content-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$14(Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2
    .param p0, "e"    # Ljava/lang/Integer;

    .line 677
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    .line 688
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 686
    :pswitch_d
    const/16 v0, 0x10e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 680
    :pswitch_14
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 683
    :pswitch_1b
    const/16 v0, 0xb4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_1b
        :pswitch_1b
        :pswitch_14
        :pswitch_14
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method static synthetic blacklist lambda$handleMessage$15(IILcom/samsung/android/sume/Reply;Landroid/media/ExifInterface;)V
    .registers 7
    .param p0, "imgWidth"    # I
    .param p1, "imgHeight"    # I
    .param p2, "reply"    # Lcom/samsung/android/sume/Reply;
    .param p3, "exif"    # Landroid/media/ExifInterface;

    .line 663
    const-string v0, "ImageWidth"

    invoke-virtual {p3, v0}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 664
    nop

    .line 666
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 664
    invoke-virtual {p3, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_10
    const-string v0, "ImageLength"

    invoke-virtual {p3, v0}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 668
    nop

    .line 670
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 668
    invoke-virtual {p3, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_20
    const-string v0, "Orientation"

    invoke-virtual {p3, v0}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 672
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda1;-><init>()V

    .line 675
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 690
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 692
    .local v0, "orientation":I
    invoke-virtual {p2}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "orientation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 694
    .end local v0    # "orientation":I
    :cond_51
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$16(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 705
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 706
    const-string v0, "content-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$2([I)Ljava/util/stream/Stream;
    .registers 3
    .param p0, "e"    # [I

    .line 478
    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$3(I)[Lcom/samsung/android/sume/op/OpRuntime;
    .registers 2
    .param p0, "x$0"    # I

    .line 480
    new-array v0, p0, [Lcom/samsung/android/sume/op/OpRuntime;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$4(Landroid/os/Bundle;)Lcom/samsung/android/sume/op/OpRuntimeStat;
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 522
    const-class v0, Lcom/samsung/android/sume/op/OpRuntimeStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 523
    const-string/jumbo v0, "runtime-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/op/OpRuntimeStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$5(Lcom/samsung/android/sume/op/OpRuntimeStat;)V
    .registers 3
    .param p0, "it"    # Lcom/samsung/android/sume/op/OpRuntimeStat;

    .line 524
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "runtime-pool"

    invoke-virtual {p0, v1}, Lcom/samsung/android/sume/op/OpRuntimeStat;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$6(Landroid/os/Bundle;)[I
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 532
    const-string v0, "contents-list"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$7(Lcom/samsung/android/sume/nn/SumeNN;[I)V
    .registers 6
    .param p0, "nn"    # Lcom/samsung/android/sume/nn/SumeNN;
    .param p1, "it"    # [I

    .line 534
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    invoke-static {p0}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->setIdList([I)V

    .line 535
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    array-length v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "content-ids: %s(#%d)"

    invoke-static {v2, v1}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    return-void
.end method

.method static synthetic blacklist lambda$handleMessage$8(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 545
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 546
    const-string v0, "content-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method

.method static synthetic blacklist lambda$handleMessage$9(Landroid/os/Bundle;)Lcom/samsung/android/sume/ContentStat;
    .registers 2
    .param p0, "it"    # Landroid/os/Bundle;

    .line 551
    const-class v0, Lcom/samsung/android/sume/ContentStat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 552
    const-string v0, "content-part-stat"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/ContentStat;

    return-object v0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 462
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-class v2, Lcom/samsung/android/sume/Event;

    iget v3, p1, Landroid/os/Message;->what:I

    .line 463
    invoke-static {v2, v3}, Lcom/samsung/android/sume/ValuedEnum;->fromValue(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 462
    const-string v2, "handleMessage: what=%s, arg1=%d, arg2=%d, data=%s"

    invoke-static {v2, v1}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/SumeLog;->beg(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {p1}, Lcom/samsung/android/sume/Reply;->from(Landroid/os/Message;)Lcom/samsung/android/sume/Reply;

    move-result-object v0

    .line 466
    .local v0, "reply":Lcom/samsung/android/sume/Reply;
    const/4 v1, 0x0

    .line 468
    .local v1, "outBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler;->weak_ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/nn/SumeNN;

    .line 469
    .local v2, "nn":Lcom/samsung/android/sume/nn/SumeNN;
    if-eqz v2, :cond_633

    .line 470
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reply-data="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$3;->$SwitchMap$com$samsung$android$sume$Event:[I

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/Event;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const-string/jumbo v7, "rows"

    const-string v8, "cols"

    packed-switch v6, :pswitch_data_63e

    .line 741
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/Event;->isError()Z

    move-result v3

    if-eqz v3, :cond_601

    .line 742
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 743
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "change to error state"

    invoke-static {v3, v4}, Lcom/samsung/android/sume/SumeLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5f2

    .line 719
    :pswitch_94
    new-instance v5, Lcom/samsung/android/sume/Result;

    invoke-direct {v5, v0}, Lcom/samsung/android/sume/Result;-><init>(Lcom/samsung/android/sume/Reply;)V

    .line 721
    .local v5, "result":Lcom/samsung/android/sume/Result;
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_dc

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "exception"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_dc

    .line 723
    nop

    .line 725
    :try_start_ac
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v8, v3

    .line 726
    invoke-virtual {v6, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    .line 727
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "cause"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 723
    invoke-virtual {v5, v7, v3}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/Result;
    :try_end_d7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ac .. :try_end_d7} :catch_d8
    .catch Ljava/lang/NoSuchMethodException; {:try_start_ac .. :try_end_d7} :catch_d8
    .catch Ljava/lang/IllegalAccessException; {:try_start_ac .. :try_end_d7} :catch_d8
    .catch Ljava/lang/InstantiationException; {:try_start_ac .. :try_end_d7} :catch_d8
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_ac .. :try_end_d7} :catch_d8

    .line 731
    goto :goto_dc

    .line 729
    :catch_d8
    move-exception v3

    .line 730
    .local v3, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v3}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 734
    .end local v3    # "e":Ljava/lang/ReflectiveOperationException;
    :cond_dc
    :goto_dc
    :try_start_dc
    iget-object v3, v2, Lcom/samsung/android/sume/nn/SumeNN;->resultChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v5}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_e1
    .catch Ljava/lang/InterruptedException; {:try_start_dc .. :try_end_e1} :catch_e3

    .line 737
    goto/16 :goto_601

    .line 735
    :catch_e3
    move-exception v3

    .line 736
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 738
    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_601

    .line 712
    .end local v5    # "result":Lcom/samsung/android/sume/Result;
    :pswitch_e9
    :try_start_e9
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getContentsId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->remove(I)V
    :try_end_f4
    .catch Ljava/io/InvalidObjectException; {:try_start_e9 .. :try_end_f4} :catch_f6

    .line 715
    goto/16 :goto_601

    .line 713
    :catch_f6
    move-exception v3

    .line 714
    .local v3, "e":Ljava/io/InvalidObjectException;
    invoke-virtual {v3}, Ljava/io/InvalidObjectException;->printStackTrace()V

    .line 716
    .end local v3    # "e":Ljava/io/InvalidObjectException;
    goto/16 :goto_601

    .line 704
    :pswitch_fc
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 707
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/ContentStat;

    .line 708
    .local v3, "contentStat":Lcom/samsung/android/sume/ContentStat;
    goto/16 :goto_601

    .line 699
    .end local v3    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    :pswitch_11a
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->nnId:I
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$300(Lcom/samsung/android/sume/nn/SumeNN;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "nn destroyed[id=%d]!!!"

    invoke-static {v3, v4}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 700
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->CONNECTED:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 701
    goto/16 :goto_601

    .line 654
    :pswitch_142
    # invokes: Lcom/samsung/android/sume/nn/SumeNN;->hasFlags(I)Z
    invoke-static {v2, v4}, Lcom/samsung/android/sume/nn/SumeNN;->access$1400(Lcom/samsung/android/sume/nn/SumeNN;I)Z

    move-result v3

    if-eqz v3, :cond_601

    .line 655
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "src"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 657
    .local v3, "src":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "path"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 658
    .local v4, "dst":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 659
    .local v5, "imgWidth":I
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 662
    .local v6, "imgHeight":I
    new-instance v7, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;

    invoke-direct {v7, v5, v6, v0}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda11;-><init>(IILcom/samsung/android/sume/Reply;)V

    invoke-static {v3, v4, v7}, Lcom/samsung/android/sume/MetaDataUtil;->copyMetadataAndExif(Ljava/lang/String;Ljava/lang/String;Ljava/util/function/Consumer;)Z

    .line 695
    .end local v3    # "src":Ljava/lang/String;
    .end local v4    # "dst":Ljava/lang/String;
    .end local v5    # "imgWidth":I
    .end local v6    # "imgHeight":I
    goto/16 :goto_601

    .line 639
    :pswitch_19c
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getNNId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "all done[nn-id=%d]!!!"

    invoke-static {v7, v6}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;

    sget-object v7, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    new-array v4, v4, [Ljava/lang/Object;

    .line 642
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    aput-object v6, v4, v3

    .line 641
    const-string v3, "[%s]state should be in \"RUNNING\" before \"IDLE\", when nn finish run"

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 643
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "state changed \"RUNNING\" -> \"IDLE\""

    invoke-static {v3, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :try_start_1d8
    iget-object v3, v2, Lcom/samsung/android/sume/nn/SumeNN;->resultChannel:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lcom/samsung/android/sume/Result;

    invoke-direct {v4, v0}, Lcom/samsung/android/sume/Result;-><init>(Lcom/samsung/android/sume/Reply;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_1d8 .. :try_end_1e2} :catch_1e4

    .line 649
    goto/16 :goto_601

    .line 647
    :catch_1e4
    move-exception v3

    .line 648
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 651
    .end local v3    # "e":Ljava/lang/InterruptedException;
    goto/16 :goto_601

    .line 588
    :pswitch_1ea
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-ne v5, v6, :cond_1f8

    move v5, v4

    goto :goto_1f9

    :cond_1f8
    move v5, v3

    :goto_1f9
    new-array v4, v4, [Ljava/lang/Object;

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "[%s]state should be in \"RUNNING\", when nn full done"

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 590
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda8;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 593
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/ContentStat;

    .line 595
    .local v3, "contentStat":Lcom/samsung/android/sume/ContentStat;
    new-instance v4, Lcom/samsung/android/sume/Result;

    invoke-direct {v4, v0}, Lcom/samsung/android/sume/Result;-><init>(Lcom/samsung/android/sume/Reply;)V

    .line 596
    .local v4, "result":Lcom/samsung/android/sume/Result;
    invoke-virtual {v3}, Lcom/samsung/android/sume/ContentStat;->getStatus()Lcom/samsung/android/sume/Event;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/Result;->setEvent(Lcom/samsung/android/sume/Event;)V

    .line 598
    invoke-virtual {v3}, Lcom/samsung/android/sume/ContentStat;->getExtra()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/samsung/android/sume/Result;

    .line 600
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->outputFormat:Lcom/samsung/android/sume/MediaFormat;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1300(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/MediaFormat;

    move-result-object v5

    if-eqz v5, :cond_2da

    invoke-virtual {v4}, Lcom/samsung/android/sume/Result;->isOk()Z

    move-result v5

    if-eqz v5, :cond_2da

    .line 601
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "handle output buffer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {v3}, Lcom/samsung/android/sume/ContentStat;->getBuffer()Lcom/samsung/android/sume/MediaBuffer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda9;

    invoke-direct {v6}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/MediaBuffer;

    .line 604
    .local v5, "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 606
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    invoke-virtual {v4, v1}, Lcom/samsung/android/sume/Result;->setBuffer(Ljava/nio/ByteBuffer;)V

    .line 609
    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v8, v6}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/Result;

    .line 610
    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/Result;

    .line 611
    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sume/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/ColorFormat;

    move-result-object v6

    const-string v9, "color-format"

    invoke-virtual {v4, v9, v6}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/Result;

    .line 613
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v10

    invoke-virtual {v6, v8, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 614
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 615
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->getFormat()Lcom/samsung/android/sume/MediaFormat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/ColorFormat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sume/ColorFormat;->getValue()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    invoke-virtual {v5}, Lcom/samsung/android/sume/MediaBuffer;->release()V

    .line 619
    .end local v5    # "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    :cond_2da
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->getIdOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "offset"

    invoke-virtual {v4, v6, v5}, Lcom/samsung/android/sume/Result;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/Result;

    .line 620
    invoke-virtual {v3}, Lcom/samsung/android/sume/ContentStat;->getAppliedModels()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/Result;->setAppliedModels(Ljava/util/List;)V

    .line 623
    :try_start_2f2
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getContentsId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->remove(I)V
    :try_end_2fd
    .catch Ljava/io/InvalidObjectException; {:try_start_2f2 .. :try_end_2fd} :catch_2fe

    .line 626
    goto :goto_302

    .line 624
    :catch_2fe
    move-exception v5

    .line 625
    .local v5, "e":Ljava/io/InvalidObjectException;
    invoke-virtual {v5}, Ljava/io/InvalidObjectException;->printStackTrace()V

    .line 629
    .end local v5    # "e":Ljava/io/InvalidObjectException;
    :goto_302
    :try_start_302
    iget-object v5, v2, Lcom/samsung/android/sume/nn/SumeNN;->resultChannel:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_307
    .catch Ljava/lang/InterruptedException; {:try_start_302 .. :try_end_307} :catch_308

    .line 632
    goto :goto_30c

    .line 630
    :catch_308
    move-exception v5

    .line 631
    .local v5, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 634
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_30c
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->debuggable:Z
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1100(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v5

    if-eqz v5, :cond_601

    .line 635
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "full-done"

    invoke-virtual {v3, v6}, Lcom/samsung/android/sume/ContentStat;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_601

    .line 567
    .end local v3    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    .end local v4    # "result":Lcom/samsung/android/sume/Result;
    :pswitch_321
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-ne v5, v6, :cond_32f

    move v5, v4

    goto :goto_330

    :cond_32f
    move v5, v3

    :goto_330
    new-array v4, v4, [Ljava/lang/Object;

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    aput-object v6, v4, v3

    const-string v3, "[%s]state should be in \"RUNNING\", when nn partial done"

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 569
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "success to partial processing"

    invoke-static {v3, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 574
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/ContentStat;

    .line 576
    .restart local v3    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda7;

    invoke-direct {v5}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 579
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/ContentStat;

    .line 581
    .local v4, "partStat":Lcom/samsung/android/sume/ContentStat;
    const-string/jumbo v5, "start-time"

    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/ContentStat;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 582
    .local v8, "startTs":J
    const-string v5, "end-time"

    invoke-virtual {v4, v5}, Lcom/samsung/android/sume/ContentStat;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 584
    .local v5, "endTs":J
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->processingTimeMs:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v7

    invoke-virtual {v4}, Lcom/samsung/android/sume/ContentStat;->getOpRuntime()Lcom/samsung/android/sume/op/OpRuntime;

    move-result-object v10

    sub-long v11, v5, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    goto/16 :goto_601

    .line 541
    .end local v3    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    .end local v4    # "partStat":Lcom/samsung/android/sume/ContentStat;
    .end local v5    # "endTs":J
    .end local v8    # "startTs":J
    :pswitch_3d9
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-ne v5, v6, :cond_3e7

    move v5, v4

    goto :goto_3e8

    :cond_3e7
    move v5, v3

    :goto_3e8
    new-array v4, v4, [Ljava/lang/Object;

    .line 542
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    aput-object v6, v4, v3

    .line 541
    const-string v3, "[%s]state should be in \"RUNNING\", when nn partial start"

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 544
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda19;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 547
    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/ContentStat;

    .line 550
    .restart local v3    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda4;-><init>()V

    .line 553
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/ContentStat;

    .line 555
    .restart local v4    # "partStat":Lcom/samsung/android/sume/ContentStat;
    invoke-virtual {v4, v3}, Lcom/samsung/android/sume/ContentStat;->setParent(Lcom/samsung/android/sume/ContentStat;)V

    .line 558
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->runtimeIDs:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$500(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/sume/ContentStat;->getOpRuntime()Lcom/samsung/android/sume/op/OpRuntime;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashSet;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda5;

    invoke-direct {v6, v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/ContentStat;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 562
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->debuggable:Z
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1100(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v5

    if-eqz v5, :cond_601

    .line 563
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "partial-start"

    invoke-virtual {v4, v6}, Lcom/samsung/android/sume/ContentStat;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_601

    .line 529
    .end local v3    # "contentStat":Lcom/samsung/android/sume/ContentStat;
    .end local v4    # "partStat":Lcom/samsung/android/sume/ContentStat;
    :pswitch_45f
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-eq v5, v6, :cond_47c

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    sget-object v7, Lcom/samsung/android/sume/nn/SumeNN$State;->RUNNING:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47a

    goto :goto_47c

    :cond_47a
    move v5, v3

    goto :goto_47d

    :cond_47c
    :goto_47c
    move v5, v4

    :goto_47d
    new-array v4, v4, [Ljava/lang/Object;

    .line 530
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    aput-object v6, v4, v3

    .line 529
    const-string v3, "[%s]state should be in \"IDLE\" before \"RUNNING\", when nn start run"

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 531
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda17;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda17;-><init>()V

    .line 532
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda18;

    invoke-direct {v4, v2}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda18;-><init>(Lcom/samsung/android/sume/nn/SumeNN;)V

    .line 533
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 537
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v4

    const-string/jumbo v5, "state changed \"IDLE\" -> \"RUNNING\""

    invoke-static {v3, v5, v4}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 538
    goto/16 :goto_601

    .line 519
    :pswitch_4b3
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->debuggable:Z
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1100(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v3

    if-eqz v3, :cond_601

    .line 520
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda15;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda15;-><init>()V

    .line 521
    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda16;

    invoke-direct {v4}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda16;-><init>()V

    .line 524
    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/16 :goto_601

    .line 474
    :pswitch_4d4
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sume/nn/SumeNN$State;->ERROR:Lcom/samsung/android/sume/nn/SumeNN$State;

    if-eq v6, v7, :cond_5b5

    .line 475
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getNNId()I

    move-result v6

    # setter for: Lcom/samsung/android/sume/nn/SumeNN;->nnId:I
    invoke-static {v2, v6}, Lcom/samsung/android/sume/nn/SumeNN;->access$302(Lcom/samsung/android/sume/nn/SumeNN;I)I

    .line 476
    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda2;

    invoke-direct {v7}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda2;-><init>()V

    .line 477
    invoke-virtual {v6, v7}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda10;

    invoke-direct {v7}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda10;-><init>()V

    .line 478
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda13;

    invoke-direct {v7}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda13;-><init>()V

    .line 479
    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/stream/Stream;

    new-instance v7, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda14;

    invoke-direct {v7}, Lcom/samsung/android/sume/nn/SumeNN$IncomingHandler$$ExternalSyntheticLambda14;-><init>()V

    .line 480
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/samsung/android/sume/op/OpRuntime;

    .line 476
    # setter for: Lcom/samsung/android/sume/nn/SumeNN;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;
    invoke-static {v2, v6}, Lcom/samsung/android/sume/nn/SumeNN;->access$402(Lcom/samsung/android/sume/nn/SumeNN;[Lcom/samsung/android/sume/op/OpRuntime;)[Lcom/samsung/android/sume/op/OpRuntime;

    .line 482
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$400(Lcom/samsung/android/sume/nn/SumeNN;)[Lcom/samsung/android/sume/op/OpRuntime;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_520
    if-ge v8, v7, :cond_533

    aget-object v9, v6, v8

    .line 483
    .local v9, "rt":Lcom/samsung/android/sume/op/OpRuntime;
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->runtimeIDs:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$500(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/HashMap;

    move-result-object v10

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .end local v9    # "rt":Lcom/samsung/android/sume/op/OpRuntime;
    add-int/lit8 v8, v8, 0x1

    goto :goto_520

    .line 486
    :cond_533
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->nnId:I
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$300(Lcom/samsung/android/sume/nn/SumeNN;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->supportedOpRuntimes:[Lcom/samsung/android/sume/op/OpRuntime;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$400(Lcom/samsung/android/sume/nn/SumeNN;)[Lcom/samsung/android/sume/op/OpRuntime;

    move-result-object v7

    aput-object v7, v5, v4

    const-string v7, "nn created[id=%d, runtimes=%s]!!!"

    invoke-static {v7, v5}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    invoke-static {v6, v5, v7}, Lcom/samsung/android/sume/SumeLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 487
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/sume/nn/SumeNN$State;->CONNECTED:Lcom/samsung/android/sume/nn/SumeNN$State;

    sget-object v7, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    new-array v6, v4, [Ljava/lang/Object;

    .line 488
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->state:Ljava/util/concurrent/atomic/AtomicReference;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$200(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v7

    aput-object v7, v6, v3

    .line 487
    const-string v7, "[%s]state should be in \"CONNECTED\" before \"IDLE\", when nn created"

    invoke-static {v5, v7, v6}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 489
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "state changed \"CONNECTED\" -> \"IDLE\""

    invoke-static {v5, v6}, Lcom/samsung/android/sume/SumeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->recover:Z
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$600(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v5

    if-eqz v5, :cond_5b5

    .line 493
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->getContentValues()[Landroid/content/ContentValues;

    move-result-object v5

    .line 494
    .local v5, "cv":[Landroid/content/ContentValues;
    if-eqz v5, :cond_5a0

    array-length v6, v5

    if-lez v6, :cond_5a0

    .line 495
    array-length v6, v5

    if-ne v6, v4, :cond_595

    .line 496
    aget-object v3, v5, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sume/nn/SumeNN;->run(Landroid/content/ContentValues;)Ljava/util/concurrent/Future;

    goto :goto_5a0

    .line 498
    :cond_595
    iget-object v3, v2, Lcom/samsung/android/sume/nn/SumeNN;->resultHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/function/Consumer;

    invoke-virtual {v2, v5, v3}, Lcom/samsung/android/sume/nn/SumeNN;->run([Landroid/content/ContentValues;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    .line 501
    :cond_5a0
    :goto_5a0
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->getMediaBuffers()[Lcom/samsung/android/sume/MediaBuffer;

    move-result-object v3

    .line 502
    .local v3, "mb":[Lcom/samsung/android/sume/MediaBuffer;
    if-eqz v3, :cond_5b5

    iget-object v4, v2, Lcom/samsung/android/sume/nn/SumeNN;->resultHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/Consumer;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sume/nn/SumeNN;->run([Lcom/samsung/android/sume/MediaBuffer;Ljava/util/function/Consumer;)Ljava/util/concurrent/Future;

    .line 506
    .end local v3    # "mb":[Lcom/samsung/android/sume/MediaBuffer;
    .end local v5    # "cv":[Landroid/content/ContentValues;
    :cond_5b5
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->recover:Z
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$600(Lcom/samsung/android/sume/nn/SumeNN;)Z

    move-result v3

    if-eqz v3, :cond_5c2

    .line 507
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->dataMap:Lcom/samsung/android/sume/nn/SumeNN$DataMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$700(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$DataMap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/nn/SumeNN$DataMap;->clear()V

    .line 509
    :cond_5c2
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 511
    :try_start_5c9
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1000(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/sume/nn/SumeNN$State;->IDLE:Lcom/samsung/android/sume/nn/SumeNN$State;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/Condition;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    .line 512
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->signalToCondition:Ljava/util/function/Consumer;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$900(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_5e0
    .catchall {:try_start_5c9 .. :try_end_5e0} :catchall_5e9

    .line 514
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 515
    nop

    .line 516
    goto :goto_601

    .line 514
    :catchall_5e9
    move-exception v3

    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$800(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 515
    throw v3

    .line 746
    :goto_5f2
    :try_start_5f2
    iget-object v3, v2, Lcom/samsung/android/sume/nn/SumeNN;->resultChannel:Ljava/util/concurrent/BlockingQueue;

    new-instance v4, Lcom/samsung/android/sume/Result;

    invoke-direct {v4, v0}, Lcom/samsung/android/sume/Result;-><init>(Lcom/samsung/android/sume/Reply;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5fc
    .catch Ljava/lang/InterruptedException; {:try_start_5f2 .. :try_end_5fc} :catch_5fd

    .line 749
    goto :goto_601

    .line 747
    :catch_5fd
    move-exception v3

    .line 748
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 754
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_601
    :goto_601
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1500(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    move-result-object v3

    if-eqz v3, :cond_61a

    .line 755
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->eventListener:Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1500(Lcom/samsung/android/sume/nn/SumeNN;)Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getContentsId()I

    move-result v5

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getData()Landroid/os/Bundle;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/samsung/android/sume/nn/SumeNN$OnEventListener;->onEvent(Lcom/samsung/android/sume/Event;ILandroid/os/Bundle;Ljava/nio/ByteBuffer;)V

    .line 757
    :cond_61a
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->conditionDepot:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$1000(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/sume/Reply;->getEvent()Lcom/samsung/android/sume/Event;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/locks/Condition;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    .line 758
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->signalToCondition:Ljava/util/function/Consumer;
    invoke-static {v2}, Lcom/samsung/android/sume/nn/SumeNN;->access$900(Lcom/samsung/android/sume/nn/SumeNN;)Ljava/util/function/Consumer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 760
    :cond_633
    # getter for: Lcom/samsung/android/sume/nn/SumeNN;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/sume/nn/SumeNN;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "handleMessage"

    invoke-static {v3, v4}, Lcom/samsung/android/sume/SumeLog;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void

    nop

    :pswitch_data_63e
    .packed-switch 0x1
        :pswitch_4d4
        :pswitch_4b3
        :pswitch_45f
        :pswitch_3d9
        :pswitch_321
        :pswitch_1ea
        :pswitch_19c
        :pswitch_142
        :pswitch_11a
        :pswitch_fc
        :pswitch_e9
        :pswitch_94
    .end packed-switch
.end method
