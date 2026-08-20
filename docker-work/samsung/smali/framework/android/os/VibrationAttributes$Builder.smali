.class public final Landroid/os/VibrationAttributes$Builder;
.super Ljava/lang/Object;
.source "VibrationAttributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mFlags:I

.field private blacklist mOriginalAudioUsage:I

.field private blacklist mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUsage:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 406
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 407
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 417
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "audio"    # Landroid/media/AudioAttributes;

    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 406
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 407
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 437
    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setUsage(Landroid/media/AudioAttributes;)V

    .line 438
    invoke-direct {p0, p1}, Landroid/os/VibrationAttributes$Builder;->setFlags(Landroid/media/AudioAttributes;)V

    .line 442
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/VibrationAttributes;)V
    .registers 3
    .param p1, "vib"    # Landroid/os/VibrationAttributes;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 406
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 407
    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 423
    if-eqz p1, :cond_31

    .line 424
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 425
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmOriginalAudioUsage(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 426
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmFlags(Landroid/os/VibrationAttributes;)I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 428
    invoke-static {p1}, Landroid/os/VibrationAttributes;->-$$Nest$fgetmTags(Landroid/os/VibrationAttributes;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    iput-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 431
    :cond_31
    return-void
.end method

.method private blacklist setFlags(Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "audio"    # Landroid/media/AudioAttributes;

    .line 482
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_e

    .line 483
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 485
    :cond_e
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1c

    .line 488
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 490
    :cond_1c
    return-void
.end method

.method private blacklist setUsage(Landroid/media/AudioAttributes;)V
    .registers 3
    .param p1, "audio"    # Landroid/media/AudioAttributes;

    .line 445
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 446
    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    packed-switch v0, :pswitch_data_36

    .line 477
    :pswitch_d
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    goto :goto_34

    .line 467
    :pswitch_11
    const/16 v0, 0x12

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 468
    goto :goto_34

    .line 464
    :pswitch_16
    const/16 v0, 0x42

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 465
    goto :goto_34

    .line 461
    :pswitch_1b
    const/16 v0, 0x21

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 462
    goto :goto_34

    .line 452
    :pswitch_20
    const/16 v0, 0x31

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 453
    goto :goto_34

    .line 470
    :pswitch_25
    const/16 v0, 0x11

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 471
    goto :goto_34

    .line 458
    :pswitch_2a
    const/16 v0, 0x41

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 459
    goto :goto_34

    .line 474
    :pswitch_2f
    const/16 v0, 0x13

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 475
    nop

    .line 479
    :goto_34
    return-void

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2a
        :pswitch_2a
        :pswitch_25
        :pswitch_20
        :pswitch_1b
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_16
        :pswitch_2a
        :pswitch_11
        :pswitch_2f
        :pswitch_d
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public whitelist build()Landroid/os/VibrationAttributes;
    .registers 6

    .line 498
    new-instance v0, Landroid/os/VibrationAttributes;

    iget v1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    iget v2, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    iget v3, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/os/VibrationAttributes;-><init>(IIILandroid/os/VibrationAttributes-IA;)V

    .line 500
    .local v0, "ans":Landroid/os/VibrationAttributes;
    iget-object v1, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-static {v0, v1}, Landroid/os/VibrationAttributes;->-$$Nest$fputmTags(Landroid/os/VibrationAttributes;Ljava/util/HashSet;)V

    .line 501
    iget-object v1, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/VibrationAttributes;->-$$Nest$fputmFormattedTags(Landroid/os/VibrationAttributes;Ljava/lang/String;)V

    .line 503
    return-object v0
.end method

.method public whitelist semAddTag(Ljava/lang/String;)Landroid/os/VibrationAttributes$Builder;
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Landroid/os/VibrationAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 556
    return-object p0
.end method

.method public blacklist setFlags(I)Landroid/os/VibrationAttributes$Builder;
    .registers 3
    .param p1, "flags"    # I

    .line 541
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setFlags(II)Landroid/os/VibrationAttributes$Builder;
    .registers 5
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .line 526
    and-int/lit8 p2, p2, 0x3

    .line 527
    iget v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    not-int v1, p2

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mFlags:I

    .line 528
    return-object p0
.end method

.method public whitelist setUsage(I)Landroid/os/VibrationAttributes$Builder;
    .registers 3
    .param p1, "usage"    # I

    .line 512
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/VibrationAttributes$Builder;->mOriginalAudioUsage:I

    .line 513
    iput p1, p0, Landroid/os/VibrationAttributes$Builder;->mUsage:I

    .line 514
    return-object p0
.end method
