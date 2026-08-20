.class public Landroid/inputmethodservice/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/Keyboard$Key;,
        Landroid/inputmethodservice/Keyboard$Row;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist EDGE_BOTTOM:I = 0x8

.field public static final whitelist EDGE_LEFT:I = 0x1

.field public static final whitelist EDGE_RIGHT:I = 0x2

.field public static final whitelist EDGE_TOP:I = 0x4

.field private static final greylist-max-o GRID_HEIGHT:I = 0x5

.field private static final greylist-max-o GRID_SIZE:I = 0x32

.field private static final greylist-max-o GRID_WIDTH:I = 0xa

.field public static final whitelist KEYCODE_ALT:I = -0x6

.field public static final whitelist KEYCODE_CANCEL:I = -0x3

.field public static final whitelist KEYCODE_DELETE:I = -0x5

.field public static final whitelist KEYCODE_DONE:I = -0x4

.field public static final whitelist KEYCODE_MODE_CHANGE:I = -0x2

.field public static final whitelist KEYCODE_SHIFT:I = -0x1

.field private static greylist-max-o SEARCH_DISTANCE:F = 0.0f

.field static final greylist-max-o TAG:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_KEY:Ljava/lang/String; = "Key"

.field private static final greylist-max-o TAG_KEYBOARD:Ljava/lang/String; = "Keyboard"

.field private static final greylist-max-o TAG_ROW:Ljava/lang/String; = "Row"


# instance fields
.field private greylist-max-o mCellHeight:I

.field private greylist-max-o mCellWidth:I

.field private greylist-max-o mDefaultHeight:I

.field private greylist-max-o mDefaultHorizontalGap:I

.field private greylist-max-o mDefaultVerticalGap:I

.field private greylist-max-o mDefaultWidth:I

.field private greylist-max-o mDisplayHeight:I

.field private greylist-max-o mDisplayWidth:I

.field private greylist-max-o mGridNeighbors:[[I

.field private greylist-max-o mKeyHeight:I

.field private greylist-max-o mKeyWidth:I

.field private greylist-max-o mKeyboardMode:I

.field private greylist-max-o mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mLabel:Ljava/lang/CharSequence;

.field private greylist mModifierKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProximityThreshold:I

.field private greylist-max-o mShiftKeyIndices:[I

.field private greylist-max-o mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private greylist-max-o mShifted:Z

.field private greylist mTotalHeight:I

.field private greylist mTotalWidth:I

.field private greylist-max-o rows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHeight(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultHorizontalGap(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultVerticalGap(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaultWidth(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I
    .registers 1

    iget p0, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    const v0, 0x3fe66666    # 1.8f

    sput v0, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I

    .line 533
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    .line 534
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I

    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_56

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 569
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 570
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 573
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 574
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 575
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 576
    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 578
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 579
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 581
    return-void

    nop

    :array_56
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;IIII)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlLayoutResId"    # I
    .param p3, "modeId"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/inputmethodservice/Keyboard$Key;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iput-object v1, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    .line 111
    new-array v0, v0, [I

    fill-array-data v0, :array_48

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    .line 547
    iput p4, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    .line 548
    iput p5, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    .line 550
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 551
    div-int/lit8 v0, p4, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 552
    iput v2, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 553
    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    .line 555
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    .line 556
    iput p3, p0, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/inputmethodservice/Keyboard;->loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    .line 558
    return-void

    nop

    :array_48
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutTemplateResId"    # I
    .param p3, "characters"    # Ljava/lang/CharSequence;
    .param p4, "columns"    # I
    .param p5, "horizontalPadding"    # I

    .line 599
    move-object v0, p0

    invoke-direct/range {p0 .. p2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, "x":I
    const/4 v2, 0x0

    .line 602
    .local v2, "y":I
    const/4 v3, 0x0

    .line 603
    .local v3, "column":I
    const/4 v4, 0x0

    iput v4, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 605
    new-instance v5, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v5, p0}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/inputmethodservice/Keyboard;)V

    .line 606
    .local v5, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    .line 607
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    .line 608
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    .line 609
    iget v6, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    .line 610
    const/16 v6, 0xc

    iput v6, v5, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    .line 611
    const/4 v6, -0x1

    move/from16 v7, p4

    if-ne v7, v6, :cond_2c

    const v6, 0x7fffffff

    goto :goto_2d

    :cond_2c
    move v6, v7

    .line 612
    .local v6, "maxColumns":I
    :goto_2d
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v8, v9, :cond_7d

    .line 613
    move-object/from16 v9, p3

    invoke-interface {v9, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 614
    .local v10, "c":C
    if-ge v3, v6, :cond_45

    iget v11, v0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    add-int/2addr v11, v1

    add-int v11, v11, p5

    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    if-le v11, v12, :cond_4d

    .line 616
    :cond_45
    const/4 v1, 0x0

    .line 617
    iget v11, v0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v11, v12

    add-int/2addr v2, v11

    .line 618
    const/4 v3, 0x0

    .line 620
    :cond_4d
    new-instance v11, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {v11, v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/inputmethodservice/Keyboard$Row;)V

    .line 621
    .local v11, "key":Landroid/inputmethodservice/Keyboard$Key;
    iput v1, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 622
    iput v2, v11, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 623
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    .line 624
    const/4 v12, 0x1

    new-array v13, v12, [I

    aput v10, v13, v4

    iput-object v13, v11, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 625
    add-int/2addr v3, v12

    .line 626
    iget v12, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v13, v11, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v12, v13

    add-int/2addr v1, v12

    .line 627
    iget-object v12, v0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    iget-object v12, v5, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget v12, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v1, v12, :cond_7a

    .line 630
    iput v1, v0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 612
    .end local v10    # "c":C
    .end local v11    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :cond_7a
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e

    :cond_7d
    move-object/from16 v9, p3

    .line 633
    .end local v8    # "i":I
    iget v4, v0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 634
    iget-object v4, v0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method private greylist-max-o computeNearestNeighbors()V
    .registers 12

    .line 751
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    .line 752
    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    .line 753
    const/16 v0, 0x32

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    .line 754
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 755
    .local v0, "indices":[I
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    mul-int/lit8 v1, v1, 0xa

    .line 756
    .local v1, "gridWidth":I
    iget v2, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    mul-int/lit8 v2, v2, 0x5

    .line 757
    .local v2, "gridHeight":I
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_2f
    if-ge v3, v1, :cond_9d

    .line 758
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_32
    if-ge v4, v2, :cond_99

    .line 759
    const/4 v5, 0x0

    .line 760
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_36
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_82

    .line 761
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 762
    .local v7, "key":Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {v7, v3, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    .line 763
    invoke-virtual {v7, v8, v4}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, -0x1

    .line 764
    invoke-virtual {v7, v8, v9}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-lt v8, v9, :cond_7a

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    .line 766
    invoke-virtual {v7, v3, v8}, Landroid/inputmethodservice/Keyboard$Key;->squaredDistanceFrom(II)I

    move-result v8

    iget v9, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    if-ge v8, v9, :cond_7f

    .line 767
    :cond_7a
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "count":I
    .local v8, "count":I
    aput v6, v0, v5

    move v5, v8

    .line 760
    .end local v7    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v8    # "count":I
    .restart local v5    # "count":I
    :cond_7f
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 770
    .end local v6    # "i":I
    :cond_82
    new-array v6, v5, [I

    .line 771
    .local v6, "cell":[I
    const/4 v7, 0x0

    invoke-static {v0, v7, v6, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    iget-object v7, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    iget v8, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v9, v4, v8

    mul-int/lit8 v9, v9, 0xa

    iget v10, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v10, v3, v10

    add-int/2addr v9, v10

    aput-object v6, v7, v9

    .line 758
    .end local v5    # "count":I
    .end local v6    # "cell":[I
    add-int/2addr v4, v8

    goto :goto_32

    .line 757
    .end local v4    # "y":I
    :cond_99
    iget v4, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    add-int/2addr v3, v4

    goto :goto_2f

    .line 775
    .end local v3    # "x":I
    :cond_9d
    return-void
.end method

.method static greylist-max-o getDimensionOrFraction(Landroid/content/res/TypedArray;III)I
    .registers 7
    .param p0, "a"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "defValue"    # I

    .line 909
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 910
    .local v0, "value":Landroid/util/TypedValue;
    if-nez v0, :cond_7

    return p3

    .line 911
    :cond_7
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_11

    .line 912
    invoke-virtual {p0, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    return v1

    .line 913
    :cond_11
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_20

    .line 915
    int-to-float v1, p3

    invoke-virtual {p0, p1, p2, p2, v1}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    .line 917
    :cond_20
    return p3
.end method

.method private greylist-max-o loadKeyboard(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .registers 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 805
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    const-string v9, "Keyboard"

    const/4 v0, 0x0

    .line 806
    .local v0, "inKey":Z
    const/4 v1, 0x0

    .line 807
    .local v1, "inRow":Z
    const/4 v10, 0x0

    .line 808
    .local v10, "leftMostKey":Z
    const/4 v2, 0x0

    .line 809
    .local v2, "row":I
    const/4 v3, 0x0

    .line 810
    .local v3, "x":I
    const/4 v4, 0x0

    .line 811
    .local v4, "y":I
    const/4 v5, 0x0

    .line 812
    .local v5, "key":Landroid/inputmethodservice/Keyboard$Key;
    const/4 v6, 0x0

    .line 813
    .local v6, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 814
    .local v11, "res":Landroid/content/res/Resources;
    const/4 v12, 0x0

    move v13, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v12

    move v12, v1

    move v1, v0

    move-object/from16 v23, v6

    move-object v6, v5

    move-object/from16 v5, v23

    .line 818
    .end local v0    # "inKey":Z
    .end local v2    # "row":I
    .end local v3    # "x":I
    .end local v4    # "y":I
    .local v1, "inKey":Z
    .local v5, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v6, "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v12, "inRow":Z
    .local v13, "row":I
    .local v14, "x":I
    .local v15, "y":I
    .local v16, "skipRow":Z
    :goto_1f
    :try_start_1f
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v4, v0

    .local v4, "event":I
    const/4 v3, 0x1

    if-eq v0, v3, :cond_15e

    .line 819
    const/4 v0, 0x2

    if-ne v4, v0, :cond_119

    .line 820
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "tag":Ljava/lang/String;
    const-string v2, "Row"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_34} :catch_16a

    const/16 v17, 0x0

    if-eqz v2, :cond_86

    .line 822
    const/4 v2, 0x1

    .line 823
    .end local v12    # "inRow":Z
    .local v2, "inRow":Z
    const/4 v12, 0x0

    .line 824
    .end local v14    # "x":I
    .local v12, "x":I
    :try_start_3a
    invoke-virtual {v7, v11, v8}, Landroid/inputmethodservice/Keyboard;->createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;

    move-result-object v14

    move-object v5, v14

    .line 825
    iget-object v14, v7, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget v14, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    if-eqz v14, :cond_50

    iget v14, v5, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    iget v3, v7, Landroid/inputmethodservice/Keyboard;->mKeyboardMode:I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4c} :catch_7d

    if-eq v14, v3, :cond_50

    const/4 v3, 0x1

    goto :goto_52

    :cond_50
    move/from16 v3, v17

    .line 827
    .end local v16    # "skipRow":Z
    .local v3, "skipRow":Z
    :goto_52
    if-eqz v3, :cond_70

    .line 828
    :try_start_54
    invoke-direct {v7, v8}, Landroid/inputmethodservice/Keyboard;->skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_65

    .line 829
    const/4 v2, 0x0

    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move/from16 v22, v15

    move v12, v2

    move v10, v4

    goto/16 :goto_111

    .line 869
    .end local v0    # "tag":Ljava/lang/String;
    .end local v4    # "event":I
    :catch_65
    move-exception v0

    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move v12, v2

    goto/16 :goto_175

    .line 827
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v4    # "event":I
    :cond_70
    move/from16 v16, v3

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move/from16 v22, v15

    move v12, v2

    move v10, v4

    goto/16 :goto_111

    .line 869
    .end local v0    # "tag":Ljava/lang/String;
    .end local v3    # "skipRow":Z
    .end local v4    # "event":I
    .restart local v16    # "skipRow":Z
    :catch_7d
    move-exception v0

    move/from16 v20, v10

    move v14, v12

    move/from16 v21, v13

    move v12, v2

    goto/16 :goto_175

    .line 831
    .end local v2    # "inRow":Z
    .restart local v0    # "tag":Ljava/lang/String;
    .restart local v4    # "event":I
    .local v12, "inRow":Z
    .restart local v14    # "x":I
    :cond_86
    :try_start_86
    const-string v2, "Key"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8c} :catch_16a

    if-eqz v2, :cond_fd

    .line 832
    const/16 v19, 0x1

    .line 833
    .end local v1    # "inKey":Z
    .local v19, "inKey":Z
    move-object/from16 v1, p0

    move-object v2, v11

    const/16 v18, 0x1

    move-object v3, v5

    move/from16 v20, v10

    move v10, v4

    .end local v4    # "event":I
    .local v10, "event":I
    .local v20, "leftMostKey":Z
    move v4, v14

    move/from16 v21, v13

    move-object v13, v5

    .end local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v13, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v21, "row":I
    move v5, v15

    move/from16 v22, v15

    move-object v15, v6

    .end local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v15, "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v22, "y":I
    move-object/from16 v6, p2

    :try_start_a3
    invoke-virtual/range {v1 .. v6}, Landroid/inputmethodservice/Keyboard;->createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a7} :catch_f4

    .line 834
    .end local v15    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v1, "key":Landroid/inputmethodservice/Keyboard$Key;
    :try_start_a7
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 835
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v17

    const/4 v3, -0x1

    if-ne v2, v3, :cond_d5

    .line 837
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b4
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v4, v3

    if-ge v2, v4, :cond_cf

    .line 838
    aget-object v4, v3, v2

    if-nez v4, :cond_cc

    .line 839
    aput-object v1, v3, v2

    .line 840
    iget-object v3, v7, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    iget-object v4, v7, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aput v4, v3, v2

    .line 841
    goto :goto_cf

    .line 837
    :cond_cc
    add-int/lit8 v2, v2, 0x1

    goto :goto_b4

    .line 844
    .end local v2    # "i":I
    :cond_cf
    :goto_cf
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e1

    .line 845
    :cond_d5
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v17

    const/4 v3, -0x6

    if-ne v2, v3, :cond_e1

    .line 846
    iget-object v2, v7, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :cond_e1
    :goto_e1
    iget-object v2, v13, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_e6} :catch_eb

    move-object v6, v1

    move-object v5, v13

    move/from16 v1, v19

    goto :goto_111

    .line 869
    .end local v0    # "tag":Ljava/lang/String;
    .end local v10    # "event":I
    :catch_eb
    move-exception v0

    move-object v6, v1

    move-object v5, v13

    move/from16 v1, v19

    move/from16 v15, v22

    goto/16 :goto_175

    .end local v1    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v15    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :catch_f4
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move/from16 v1, v19

    move/from16 v15, v22

    goto/16 :goto_175

    .line 849
    .end local v19    # "inKey":Z
    .end local v20    # "leftMostKey":Z
    .end local v21    # "row":I
    .end local v22    # "y":I
    .restart local v0    # "tag":Ljava/lang/String;
    .local v1, "inKey":Z
    .restart local v4    # "event":I
    .restart local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v10, "leftMostKey":Z
    .local v13, "row":I
    .local v15, "y":I
    :cond_fd
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    .end local v4    # "event":I
    .end local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v10, "event":I
    .local v13, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v15, "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v20    # "leftMostKey":Z
    .restart local v21    # "row":I
    .restart local v22    # "y":I
    :try_start_106
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 850
    invoke-direct {v7, v11, v8}, Landroid/inputmethodservice/Keyboard;->parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V

    .line 852
    .end local v0    # "tag":Ljava/lang/String;
    :cond_10f
    move-object v5, v13

    move-object v6, v15

    .end local v13    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v15    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    :goto_111
    move/from16 v10, v20

    move/from16 v13, v21

    move/from16 v15, v22

    goto/16 :goto_1f

    .end local v20    # "leftMostKey":Z
    .end local v21    # "row":I
    .end local v22    # "y":I
    .restart local v4    # "event":I
    .local v10, "leftMostKey":Z
    .local v13, "row":I
    .local v15, "y":I
    :cond_119
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    .end local v4    # "event":I
    .end local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v10, "event":I
    .local v13, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v15, "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v20    # "leftMostKey":Z
    .restart local v21    # "row":I
    .restart local v22    # "y":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_154

    .line 853
    if-eqz v1, :cond_13b

    .line 854
    const/4 v1, 0x0

    .line 855
    iget v0, v15, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    iget v2, v15, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v0, v2

    add-int/2addr v14, v0

    .line 856
    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    if-le v14, v0, :cond_154

    .line 857
    iput v14, v7, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    goto :goto_154

    .line 869
    .end local v10    # "event":I
    :catch_135
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move/from16 v15, v22

    goto :goto_175

    .line 859
    .restart local v10    # "event":I
    :cond_13b
    if-eqz v12, :cond_154

    .line 860
    const/4 v12, 0x0

    .line 861
    iget v0, v13, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I
    :try_end_140
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_140} :catch_135

    add-int v2, v22, v0

    .line 862
    .end local v22    # "y":I
    .local v2, "y":I
    :try_start_142
    iget v0, v13, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I
    :try_end_144
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_144} :catch_14f

    add-int/2addr v0, v2

    .line 863
    .end local v2    # "y":I
    .local v0, "y":I
    add-int/lit8 v2, v21, 0x1

    move-object v5, v13

    move-object v6, v15

    move/from16 v10, v20

    move v15, v0

    move v13, v2

    .end local v21    # "row":I
    .local v2, "row":I
    goto/16 :goto_1f

    .line 869
    .end local v0    # "y":I
    .end local v10    # "event":I
    .local v2, "y":I
    .restart local v21    # "row":I
    :catch_14f
    move-exception v0

    move-object v5, v13

    move-object v6, v15

    move v15, v2

    goto :goto_175

    .line 818
    .end local v2    # "y":I
    .restart local v22    # "y":I
    :cond_154
    :goto_154
    move-object v5, v13

    move-object v6, v15

    move/from16 v10, v20

    move/from16 v13, v21

    move/from16 v15, v22

    goto/16 :goto_1f

    .end local v20    # "leftMostKey":Z
    .end local v21    # "row":I
    .end local v22    # "y":I
    .restart local v4    # "event":I
    .restart local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .local v10, "leftMostKey":Z
    .local v13, "row":I
    .local v15, "y":I
    :cond_15e
    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move v10, v4

    move-object v13, v5

    move-object v15, v6

    .line 872
    .end local v4    # "event":I
    .end local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .end local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .end local v10    # "leftMostKey":Z
    .local v13, "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .local v15, "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v20    # "leftMostKey":Z
    .restart local v21    # "row":I
    .restart local v22    # "y":I
    move/from16 v15, v22

    goto :goto_18e

    .line 869
    .end local v20    # "leftMostKey":Z
    .end local v21    # "row":I
    .end local v22    # "y":I
    .restart local v5    # "currentRow":Landroid/inputmethodservice/Keyboard$Row;
    .restart local v6    # "key":Landroid/inputmethodservice/Keyboard$Key;
    .restart local v10    # "leftMostKey":Z
    .local v13, "row":I
    .local v15, "y":I
    :catch_16a
    move-exception v0

    move/from16 v20, v10

    move/from16 v21, v13

    move/from16 v22, v15

    move-object v13, v5

    move-object v15, v6

    move/from16 v15, v22

    .line 870
    .end local v10    # "leftMostKey":Z
    .end local v13    # "row":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v20    # "leftMostKey":Z
    .restart local v21    # "row":I
    :goto_175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 873
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_18e
    iget v0, v7, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    sub-int v0, v15, v0

    iput v0, v7, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    .line 874
    return-void
.end method

.method private greylist-max-o parseKeyboardAttributes(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)V
    .registers 8
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 888
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 891
    .local v0, "a":Landroid/content/res/TypedArray;
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    div-int/lit8 v2, v1, 0xa

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 894
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/4 v2, 0x1

    const/16 v4, 0x32

    invoke-static {v0, v2, v1, v4}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 897
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayWidth:I

    const/4 v2, 0x2

    invoke-static {v0, v2, v1, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 900
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDisplayHeight:I

    const/4 v2, 0x3

    invoke-static {v0, v2, v1, v3}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 903
    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    int-to-float v1, v1

    sget v2, Landroid/inputmethodservice/Keyboard;->SEARCH_DISTANCE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 904
    mul-int/2addr v1, v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard;->mProximityThreshold:I

    .line 905
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 906
    return-void
.end method

.method private greylist-max-o skipToEndOfRow(Landroid/content/res/XmlResourceParser;)V
    .registers 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    :cond_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "event":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    .line 880
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    .line 881
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 885
    :cond_17
    return-void
.end method


# virtual methods
.method protected whitelist createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 13
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parent"    # Landroid/inputmethodservice/Keyboard$Row;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 801
    new-instance v6, Landroid/inputmethodservice/Keyboard$Key;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    return-object v6
.end method

.method protected whitelist createRowFromXml(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Row;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 796
    new-instance v0, Landroid/inputmethodservice/Keyboard$Row;

    invoke-direct {v0, p1, p0, p2}, Landroid/inputmethodservice/Keyboard$Row;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 714
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalHeight:I

    return v0
.end method

.method protected whitelist getHorizontalGap()I
    .registers 2

    .line 678
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    return v0
.end method

.method protected whitelist getKeyHeight()I
    .registers 2

    .line 694
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    return v0
.end method

.method protected whitelist getKeyWidth()I
    .registers 2

    .line 702
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    return v0
.end method

.method public whitelist getKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMinWidth()I
    .registers 2

    .line 718
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    return v0
.end method

.method public whitelist getModifierKeys()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation

    .line 674
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mModifierKeys:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getNearestKeys(II)[I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 785
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/inputmethodservice/Keyboard;->computeNearestNeighbors()V

    .line 786
    :cond_7
    if-ltz p1, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v0

    if-ge p1, v0, :cond_2b

    if-ltz p2, :cond_2b

    invoke-virtual {p0}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_2b

    .line 787
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mCellHeight:I

    div-int v0, p2, v0

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Landroid/inputmethodservice/Keyboard;->mCellWidth:I

    div-int v1, p1, v1

    add-int/2addr v0, v1

    .line 788
    .local v0, "index":I
    const/16 v1, 0x32

    if-ge v0, v1, :cond_2b

    .line 789
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard;->mGridNeighbors:[[I

    aget-object v1, v1, v0

    return-object v1

    .line 792
    .end local v0    # "index":I
    :cond_2b
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public whitelist getShiftKeyIndex()I
    .registers 3

    .line 746
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public greylist-max-o getShiftKeyIndices()[I
    .registers 2

    .line 742
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeyIndices:[I

    return-object v0
.end method

.method protected whitelist getVerticalGap()I
    .registers 2

    .line 686
    iget v0, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    return v0
.end method

.method public whitelist isShifted()Z
    .registers 2

    .line 735
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    return v0
.end method

.method final greylist-max-p resize(II)V
    .registers 15
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .line 639
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 640
    .local v0, "numRows":I
    const/4 v1, 0x0

    .local v1, "rowIndex":I
    :goto_7
    if-ge v1, v0, :cond_59

    .line 641
    iget-object v2, p0, Landroid/inputmethodservice/Keyboard;->rows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Row;

    .line 642
    .local v2, "row":Landroid/inputmethodservice/Keyboard$Row;
    iget-object v3, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 643
    .local v3, "numKeys":I
    const/4 v4, 0x0

    .line 644
    .local v4, "totalGap":I
    const/4 v5, 0x0

    .line 645
    .local v5, "totalWidth":I
    const/4 v6, 0x0

    .local v6, "keyIndex":I
    :goto_1a
    if-ge v6, v3, :cond_2f

    .line 646
    iget-object v7, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/Keyboard$Key;

    .line 647
    .local v7, "key":Landroid/inputmethodservice/Keyboard$Key;
    if-lez v6, :cond_29

    .line 648
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v4, v8

    .line 650
    :cond_29
    iget v8, v7, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v5, v8

    .line 645
    .end local v7    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    .line 652
    .end local v6    # "keyIndex":I
    :cond_2f
    add-int v6, v4, v5

    if-le v6, p1, :cond_56

    .line 653
    const/4 v6, 0x0

    .line 654
    .local v6, "x":I
    sub-int v7, p1, v4

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    .line 655
    .local v7, "scaleFactor":F
    const/4 v8, 0x0

    .local v8, "keyIndex":I
    :goto_3a
    if-ge v8, v3, :cond_56

    .line 656
    iget-object v9, v2, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    .line 657
    .local v9, "key":Landroid/inputmethodservice/Keyboard$Key;
    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iput v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    .line 658
    iput v6, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 659
    iget v10, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v11, v9, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 655
    .end local v9    # "key":Landroid/inputmethodservice/Keyboard$Key;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3a

    .line 640
    .end local v2    # "row":Landroid/inputmethodservice/Keyboard$Row;
    .end local v3    # "numKeys":I
    .end local v4    # "totalGap":I
    .end local v5    # "totalWidth":I
    .end local v6    # "x":I
    .end local v7    # "scaleFactor":F
    .end local v8    # "keyIndex":I
    :cond_56
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 663
    .end local v1    # "rowIndex":I
    :cond_59
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mTotalWidth:I

    .line 667
    return-void
.end method

.method protected whitelist setHorizontalGap(I)V
    .registers 2
    .param p1, "gap"    # I

    .line 682
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHorizontalGap:I

    .line 683
    return-void
.end method

.method protected whitelist setKeyHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 698
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultHeight:I

    .line 699
    return-void
.end method

.method protected whitelist setKeyWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 706
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultWidth:I

    .line 707
    return-void
.end method

.method public whitelist setShifted(Z)Z
    .registers 7
    .param p1, "shiftState"    # Z

    .line 722
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_10

    aget-object v4, v0, v3

    .line 723
    .local v4, "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v4, :cond_d

    .line 724
    iput-boolean p1, v4, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    .line 722
    .end local v4    # "shiftKey":Landroid/inputmethodservice/Keyboard$Key;
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 727
    :cond_10
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    if-eq v0, p1, :cond_18

    .line 728
    iput-boolean p1, p0, Landroid/inputmethodservice/Keyboard;->mShifted:Z

    .line 729
    const/4 v0, 0x1

    return v0

    .line 731
    :cond_18
    return v2
.end method

.method protected whitelist setVerticalGap(I)V
    .registers 2
    .param p1, "gap"    # I

    .line 690
    iput p1, p0, Landroid/inputmethodservice/Keyboard;->mDefaultVerticalGap:I

    .line 691
    return-void
.end method
