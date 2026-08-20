.class public Landroid/text/PrecomputedText;
.super Ljava/lang/Object;
.source "PrecomputedText.java"

# interfaces
.implements Landroid/text/Spannable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/PrecomputedText$ParagraphInfo;,
        Landroid/text/PrecomputedText$Params;
    }
.end annotation


# static fields
.field private static final greylist-max-o LINE_FEED:C = '\n'


# instance fields
.field private final greylist-max-o mEnd:I

.field private final greylist-max-o mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

.field private final greylist-max-o mParams:Landroid/text/PrecomputedText$Params;

.field private final greylist-max-o mStart:I

.field private final greylist-max-o mText:Landroid/text/SpannableString;


# direct methods
.method private constructor greylist-max-o <init>(Ljava/lang/CharSequence;IILandroid/text/PrecomputedText$Params;[Landroid/text/PrecomputedText$ParagraphInfo;)V
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "params"    # Landroid/text/PrecomputedText$Params;
    .param p5, "paraInfo"    # [Landroid/text/PrecomputedText$ParagraphInfo;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 517
    new-instance v0, Landroid/text/SpannableString;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;Z)V

    iput-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    .line 518
    iput p2, p0, Landroid/text/PrecomputedText;->mStart:I

    .line 519
    iput p3, p0, Landroid/text/PrecomputedText;->mEnd:I

    .line 520
    iput-object p4, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    .line 521
    iput-object p5, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    .line 522
    return-void
.end method

.method public static whitelist create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;
    .registers 12
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "params"    # Landroid/text/PrecomputedText$Params;

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, "paraInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    instance-of v1, p0, Landroid/text/PrecomputedText;

    const/4 v2, 0x1

    if-eqz v1, :cond_43

    .line 414
    move-object v1, p0

    check-cast v1, Landroid/text/PrecomputedText;

    .line 415
    .local v1, "hintPct":Landroid/text/PrecomputedText;
    invoke-virtual {v1}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v9

    .line 416
    .local v9, "hintParams":Landroid/text/PrecomputedText$Params;
    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmPaint(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmTextDir(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmBreakStrategy(Landroid/text/PrecomputedText$Params;)I

    move-result v6

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/PrecomputedText$Params;)I

    move-result v7

    invoke-static {p1}, Landroid/text/PrecomputedText$Params;->-$$Nest$fgetmLineBreakConfig(Landroid/text/PrecomputedText$Params;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v8

    .line 417
    move-object v3, v9

    invoke-virtual/range {v3 .. v8}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v3

    .line 420
    .local v3, "checkResult":I
    packed-switch v3, :pswitch_data_5e

    goto :goto_43

    .line 422
    :pswitch_2a
    return-object v1

    .line 426
    :pswitch_2b
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v9}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v5

    if-ne v4, v5, :cond_43

    .line 427
    invoke-virtual {p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v4

    .line 428
    invoke-virtual {v9}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v5

    if-ne v4, v5, :cond_43

    .line 429
    invoke-static {v1, p1, v2}, Landroid/text/PrecomputedText;->createMeasuredParagraphsFromPrecomputedText(Landroid/text/PrecomputedText;Landroid/text/PrecomputedText$Params;Z)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    .line 439
    .end local v1    # "hintPct":Landroid/text/PrecomputedText;
    .end local v3    # "checkResult":I
    .end local v9    # "hintParams":Landroid/text/PrecomputedText$Params;
    :cond_43
    :goto_43
    if-nez v0, :cond_4e

    .line 440
    const/4 v1, 0x0

    .line 441
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 440
    invoke-static {p0, p1, v1, v3, v2}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v0

    .line 443
    :cond_4e
    new-instance v7, Landroid/text/PrecomputedText;

    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object v1, v7

    move-object v2, p0

    move-object v5, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/text/PrecomputedText;-><init>(Ljava/lang/CharSequence;IILandroid/text/PrecomputedText$Params;[Landroid/text/PrecomputedText$ParagraphInfo;)V

    return-object v7

    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
    .end packed-switch
.end method

.method public static greylist-max-o createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 23
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "params"    # Landroid/text/PrecomputedText$Params;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "computeLayout"    # Z

    .line 479
    move/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/PrecomputedText$ParagraphInfo;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    .line 484
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v2

    if-eqz v2, :cond_1c

    move v2, v3

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 486
    .local v2, "needHyphenation":Z
    :goto_1d
    if-eqz v2, :cond_2e

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v4

    invoke-static {v4}, Landroid/text/PrecomputedText;->isFastHyphenation(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 488
    const/4 v3, 0x2

    goto :goto_2c

    .line 489
    :cond_2b
    nop

    :goto_2c
    nop

    .local v3, "hyphenationMode":I
    goto :goto_2f

    .line 491
    .end local v3    # "hyphenationMode":I
    :cond_2e
    const/4 v3, 0x0

    .line 494
    .restart local v3    # "hyphenationMode":I
    :goto_2f
    const/4 v4, 0x0

    .line 495
    .local v4, "paraEnd":I
    move/from16 v5, p2

    move v14, v5

    .local v14, "paraStart":I
    :goto_33
    if-ge v14, v0, :cond_78

    .line 496
    const/16 v5, 0xa

    move-object/from16 v15, p0

    invoke-static {v15, v5, v14, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    .line 497
    if-gez v4, :cond_43

    .line 500
    move/from16 v4, p3

    move v13, v4

    goto :goto_46

    .line 502
    :cond_43
    add-int/lit8 v4, v4, 0x1

    move v13, v4

    .line 505
    .end local v4    # "paraEnd":I
    .local v13, "paraEnd":I
    :goto_46
    new-instance v12, Landroid/text/PrecomputedText$ParagraphInfo;

    .line 506
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v5

    .line 507
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 505
    move-object/from16 v6, p0

    move v7, v14

    move v8, v13

    move v10, v3

    move/from16 v11, p4

    move-object v0, v12

    move-object/from16 v12, v16

    move/from16 v16, v2

    move v2, v13

    .end local v13    # "paraEnd":I
    .local v2, "paraEnd":I
    .local v16, "needHyphenation":Z
    move-object/from16 v13, v17

    invoke-static/range {v4 .. v13}, Landroid/text/MeasuredParagraph;->buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Landroid/text/PrecomputedText$ParagraphInfo;-><init>(ILandroid/text/MeasuredParagraph;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    move v14, v2

    move/from16 v0, p3

    move v4, v2

    move/from16 v2, v16

    goto :goto_33

    .line 510
    .end local v14    # "paraStart":I
    .end local v16    # "needHyphenation":Z
    .local v2, "needHyphenation":Z
    .restart local v4    # "paraEnd":I
    :cond_78
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method private static blacklist createMeasuredParagraphsFromPrecomputedText(Landroid/text/PrecomputedText;Landroid/text/PrecomputedText$Params;Z)[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 21
    .param p0, "pct"    # Landroid/text/PrecomputedText;
    .param p1, "params"    # Landroid/text/PrecomputedText$Params;
    .param p2, "computeLayout"    # Z

    .line 453
    move-object/from16 v10, p0

    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getBreakStrategy()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    move v11, v0

    .line 456
    .local v11, "needHyphenation":Z
    if-eqz v11, :cond_25

    .line 457
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getHyphenationFrequency()I

    move-result v0

    invoke-static {v0}, Landroid/text/PrecomputedText;->isFastHyphenation(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 458
    const/4 v1, 0x2

    goto :goto_22

    .line 459
    :cond_21
    nop

    :goto_22
    move v0, v1

    move v12, v0

    .local v0, "hyphenationMode":I
    goto :goto_27

    .line 461
    .end local v0    # "hyphenationMode":I
    :cond_25
    const/4 v0, 0x0

    move v12, v0

    .line 463
    .local v12, "hyphenationMode":I
    :goto_27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 464
    .local v13, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/PrecomputedText$ParagraphInfo;>;"
    const/4 v0, 0x0

    move v14, v0

    .local v14, "i":I
    :goto_2f
    invoke-virtual/range {p0 .. p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    if-ge v14, v0, :cond_71

    .line 465
    invoke-virtual {v10, v14}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v15

    .line 466
    .local v15, "paraStart":I
    invoke-virtual {v10, v14}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v9

    .line 467
    .local v9, "paraEnd":I
    new-instance v8, Landroid/text/PrecomputedText$ParagraphInfo;

    .line 468
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/text/PrecomputedText$Params;->getTextDirection()Landroid/text/TextDirectionHeuristic;

    move-result-object v5

    .line 470
    invoke-virtual {v10, v14}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v16

    const/16 v17, 0x0

    .line 467
    move-object/from16 v2, p0

    move v3, v15

    move v4, v9

    move v6, v12

    move/from16 v7, p2

    move-object v10, v8

    move-object/from16 v8, v16

    move/from16 v16, v11

    move v11, v9

    .end local v9    # "paraEnd":I
    .local v11, "paraEnd":I
    .local v16, "needHyphenation":Z
    move-object/from16 v9, v17

    invoke-static/range {v0 .. v9}, Landroid/text/MeasuredParagraph;->buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    invoke-direct {v10, v11, v0}, Landroid/text/PrecomputedText$ParagraphInfo;-><init>(ILandroid/text/MeasuredParagraph;)V

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v11    # "paraEnd":I
    .end local v15    # "paraStart":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, p0

    move/from16 v11, v16

    goto :goto_2f

    .line 472
    .end local v14    # "i":I
    .end local v16    # "needHyphenation":Z
    .local v11, "needHyphenation":Z
    :cond_71
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method private static blacklist isFastHyphenation(I)Z
    .registers 2
    .param p0, "frequency"    # I

    .line 447
    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist test-api charAt(I)C
    .registers 3
    .param p1, "index"    # I

    .line 810
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->charAt(I)C

    move-result v0

    return v0
.end method

.method public blacklist checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I
    .registers 15
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "strategy"    # I
    .param p6, "frequency"    # I
    .param p7, "lbConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 596
    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    if-ne v0, p1, :cond_15

    iget v0, p0, Landroid/text/PrecomputedText;->mEnd:I

    if-eq v0, p2, :cond_9

    goto :goto_15

    .line 599
    :cond_9
    iget-object v1, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    move-object v2, p4

    move-object v3, p3

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-virtual/range {v1 .. v6}, Landroid/text/PrecomputedText$Params;->checkResultUsable(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v0

    return v0

    .line 597
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o findParaIndex(I)I
    .registers 6
    .param p1, "pos"    # I

    .line 607
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_10

    .line 608
    aget-object v1, v1, v0

    iget v1, v1, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    if-ge p1, v1, :cond_d

    .line 609
    return v0

    .line 607
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 612
    .end local v0    # "i":I
    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pos must be less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iget v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gave "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getBounds(IILandroid/graphics/Rect;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 659
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string/jumbo v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 660
    if-ltz p2, :cond_21

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_21

    move v2, v0

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    const-string/jumbo v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 661
    if-gt p1, p2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    const-string/jumbo v2, "start offset can not be larger than end offset"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 662
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    if-ne p1, p2, :cond_3b

    .line 664
    invoke-virtual {p3, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 665
    return-void

    .line 667
    :cond_3b
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 668
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 669
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 670
    .local v2, "paraEnd":I
    if-lt p1, v1, :cond_57

    if-lt v2, p2, :cond_57

    .line 675
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    sub-int v5, p2, v1

    invoke-virtual {v3, v4, v5, p3}, Landroid/text/MeasuredParagraph;->getBounds(IILandroid/graphics/Rect;)V

    .line 676
    return-void

    .line 671
    :cond_57
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), request: ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public blacklist getCharWidthAt(I)F
    .registers 7
    .param p1, "offset"    # I

    .line 718
    if-ltz p1, :cond_c

    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    const-string/jumbo v1, "invalid offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 719
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 720
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 721
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 722
    .local v2, "paraEnd":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    invoke-virtual {v3, v4}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v3

    return v3
.end method

.method public greylist-max-o getEnd()I
    .registers 2

    .line 545
    iget v0, p0, Landroid/text/PrecomputedText;->mEnd:I

    return v0
.end method

.method public whitelist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 11
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 690
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string/jumbo v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 691
    if-ltz p2, :cond_21

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_21

    move v2, v0

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    const-string/jumbo v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 692
    if-gt p1, p2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    const-string/jumbo v1, "start offset can not be larger than end offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 693
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    if-ne p1, p2, :cond_41

    .line 695
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    invoke-virtual {v0}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 696
    return-void

    .line 698
    :cond_41
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 699
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 700
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 701
    .local v2, "paraEnd":I
    if-lt p1, v1, :cond_5d

    if-lt v2, p2, :cond_5d

    .line 706
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    sub-int v5, p2, v1

    invoke-virtual {v3, v4, v5, p3}, Landroid/text/MeasuredParagraph;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 708
    return-void

    .line 702
    :cond_5d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), request: ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public greylist-max-o getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;
    .registers 3
    .param p1, "paraIndex"    # I

    .line 580
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    return-object v0
.end method

.method public greylist-max-o getMemoryUsage()I
    .registers 4

    .line 732
    const/4 v0, 0x0

    .line 733
    .local v0, "r":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 734
    invoke-virtual {p0, v1}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/MeasuredParagraph;->getMemoryUsage()I

    move-result v2

    add-int/2addr v0, v2

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 736
    .end local v1    # "i":I
    :cond_14
    return v0
.end method

.method public whitelist getParagraphCount()I
    .registers 2

    .line 559
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    array-length v0, v0

    return v0
.end method

.method public whitelist getParagraphEnd(I)I
    .registers 5
    .param p1, "paraIndex"    # I

    .line 574
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "paraIndex"

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 575
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    aget-object v0, v0, p1

    iget v0, v0, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    return v0
.end method

.method public greylist-max-o getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;
    .registers 2

    .line 585
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParagraphInfo:[Landroid/text/PrecomputedText$ParagraphInfo;

    return-object v0
.end method

.method public whitelist getParagraphStart(I)I
    .registers 5
    .param p1, "paraIndex"    # I

    .line 566
    invoke-virtual {p0}, Landroid/text/PrecomputedText;->getParagraphCount()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "paraIndex"

    invoke-static {p1, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 567
    if-nez p1, :cond_10

    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    goto :goto_16

    :cond_10
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v0

    :goto_16
    return v0
.end method

.method public whitelist getParams()Landroid/text/PrecomputedText$Params;
    .registers 2

    .line 552
    iget-object v0, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    return-object v0
.end method

.method public whitelist getSpanEnd(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 785
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanFlags(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 790
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpanStart(Ljava/lang/Object;)I
    .registers 3
    .param p1, "tag"    # Ljava/lang/Object;

    .line 780
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 775
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getStart()I
    .registers 2

    .line 537
    iget v0, p0, Landroid/text/PrecomputedText;->mStart:I

    return v0
.end method

.method public greylist-max-o getText()Ljava/lang/CharSequence;
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public whitelist getWidth(II)F
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 629
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_e

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p1, v2, :cond_e

    move v2, v0

    goto :goto_f

    :cond_e
    move v2, v1

    :goto_f
    const-string/jumbo v3, "invalid start offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 630
    if-ltz p2, :cond_21

    iget-object v2, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    if-gt p2, v2, :cond_21

    move v2, v0

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    const-string/jumbo v3, "invalid end offset"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 631
    if-gt p1, p2, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    const-string/jumbo v1, "start offset can not be larger than end offset"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 633
    if-ne p1, p2, :cond_36

    .line 634
    const/4 v0, 0x0

    return v0

    .line 636
    :cond_36
    invoke-virtual {p0, p1}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v0

    .line 637
    .local v0, "paraIndex":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v1

    .line 638
    .local v1, "paraStart":I
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v2

    .line 639
    .local v2, "paraEnd":I
    if-lt p1, v1, :cond_53

    if-lt v2, p2, :cond_53

    .line 644
    invoke-virtual {p0, v0}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v3

    sub-int v4, p1, v1

    sub-int v5, p2, v1

    invoke-virtual {v3, v4, v5}, Landroid/text/MeasuredParagraph;->getWidth(II)F

    move-result v3

    return v3

    .line 640
    :cond_53
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot measured across the paragraph:para: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "), request: ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist test-api length()I
    .registers 2

    .line 805
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    return v0
.end method

.method public whitelist nextSpanTransition(IILjava/lang/Class;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "limit"    # I
    .param p3, "type"    # Ljava/lang/Class;

    .line 795
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3}, Landroid/text/SpannableString;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    return v0
.end method

.method public whitelist removeSpan(Ljava/lang/Object;)V
    .registers 4
    .param p1, "what"    # Ljava/lang/Object;

    .line 761
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_a

    .line 765
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 766
    return-void

    .line 762
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetricAffectingSpan can not be removed from PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSpan(Ljava/lang/Object;III)V
    .registers 7
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 749
    instance-of v0, p1, Landroid/text/style/MetricAffectingSpan;

    if-nez v0, :cond_a

    .line 753
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 754
    return-void

    .line 750
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MetricAffectingSpan can not be set to PrecomputedText."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api subSequence(II)Ljava/lang/CharSequence;
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 815
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0, p1, p2}, Landroid/text/SpannableString;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/text/PrecomputedText;->mParams:Landroid/text/PrecomputedText$Params;

    invoke-static {v0, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 820
    iget-object v0, p0, Landroid/text/PrecomputedText;->mText:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
