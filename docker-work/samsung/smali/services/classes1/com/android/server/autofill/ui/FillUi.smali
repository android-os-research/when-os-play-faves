.class public final Lcom/android/server/autofill/ui/FillUi;
.super Ljava/lang/Object;
.source "FillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;,
        Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;,
        Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;,
        Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;,
        Lcom/android/server/autofill/ui/FillUi$ViewItem;,
        Lcom/android/server/autofill/ui/FillUi$Callback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FillUi"

.field public static final THEME_ID_DARK:I = 0x1030419

.field public static final THEME_ID_LIGHT:I = 0x1030427

.field public static final sTempTypedValue:Landroid/util/TypedValue;


# instance fields
.field public final mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

.field public mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

.field public final mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

.field public mContentHeight:I

.field public mContentWidth:I

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public mFilterText:Ljava/lang/String;

.field public final mFooter:Landroid/view/View;

.field public final mFullScreen:Z

.field public final mHeader:Landroid/view/View;

.field public final mListView:Landroid/widget/ListView;

.field public final mTempPoint:Landroid/graphics/Point;

.field public final mThemeId:I

.field public final mVisibleDatasetsMaxCount:I

.field public final mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

.field public final mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;


# direct methods
.method public static synthetic $r8$lambda$2A7RVYSf7iezfvVOvigpc8I6Stg(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IKp4uKqNFLpaXAxRtiMd5BMeoyc(Lcom/android/server/autofill/ui/FillUi;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$applyNewFilterText$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$MrOAnboCzueaBwwduk80mo8t6J4(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$2(Landroid/service/autofill/FillResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NF5rvu5N1l5MX2BQjA47GeeRk2E(Lcom/android/server/autofill/ui/FillUi;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$SH5dN9HLV36TOOqlc7SAkzUv7f4(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/autofill/ui/FillUi;->lambda$applyCancelAction$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZhjG8qGs6-3x399s8W_lMnqAVS4(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$newInteractionBlocker$5(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iEAZXWQl6gLozTSZpVOzRHjgaYs(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/ui/FillUi;->lambda$new$0(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/autofill/ui/FillUi;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListView(Lcom/android/server/autofill/ui/FillUi;)Landroid/widget/ListView;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindow(Lcom/android/server/autofill/ui/FillUi;)Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;
    .registers 1

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mannounceSearchResultIfNeeded(Lcom/android/server/autofill/ui/FillUi;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->announceSearchResultIfNeeded()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/OverlayControl;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ZLcom/android/server/autofill/ui/FillUi$Callback;)V
    .registers 33

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v0, p8

    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, v1, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 99
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6}, Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter-IA;)V

    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    .line 139
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    const-string v7, "FillUi"

    if-eqz v5, :cond_35

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "nightMode: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz v0, :cond_3b

    const v0, 0x1030419

    goto :goto_3e

    :cond_3b
    const v0, 0x1030427

    .line 140
    :goto_3e
    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    move-object/from16 v5, p9

    .line 141
    iput-object v5, v1, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    .line 142
    invoke-static/range {p1 .. p1}, Lcom/android/server/autofill/ui/FillUi;->isFullScreen(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    .line 143
    new-instance v9, Landroid/view/ContextThemeWrapper;

    move-object/from16 v10, p1

    invoke-direct {v9, v10, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v9, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    .line 145
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getHeader()Landroid/widget/RemoteViews;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v11

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getFooter()Landroid/widget/RemoteViews;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v12

    if-eqz v8, :cond_73

    const v13, 0x109004b

    .line 152
    invoke-virtual {v10, v13, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_8b

    :cond_73
    if-nez v11, :cond_82

    if-eqz v12, :cond_78

    goto :goto_82

    :cond_78
    const v13, 0x109004a

    .line 157
    invoke-virtual {v10, v13, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    goto :goto_8b

    :cond_82
    :goto_82
    const v13, 0x109004c

    .line 154
    invoke-virtual {v10, v13, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    :goto_8b
    const/4 v13, 0x1

    .line 159
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    const v14, 0x102020a

    .line 160
    invoke-virtual {v10, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/4 v15, 0x0

    if-eqz v14, :cond_a9

    const v6, 0x104023d

    new-array v5, v13, [Ljava/lang/Object;

    aput-object p6, v5, v15

    .line 162
    invoke-virtual {v9, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a9
    const v5, 0x1020207

    .line 164
    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_b9

    move-object/from16 v6, p7

    .line 166
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b9
    if-eqz v8, :cond_f0

    .line 172
    invoke-virtual {v9}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v5, -0x1

    .line 174
    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 175
    iget v5, v4, Landroid/graphics/Point;->y:I

    div-int/lit8 v5, v5, 0x2

    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 176
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_f0

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initialized fillscreen LayoutParams "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_f0
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;

    invoke-direct {v5, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v10, v5}, Landroid/view/ViewGroup;->addOnUnhandledKeyEventListener(Landroid/view/View$OnUnhandledKeyEventListener;)V

    .line 200
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v5

    if-lez v5, :cond_11e

    .line 201
    invoke-static {}, Lcom/android/server/autofill/AutofillManagerService;->getVisibleDatasetsMaxCount()I

    move-result v5

    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 202
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_12b

    .line 203
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "overriding maximum visible datasets to "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    .line 206
    :cond_11e
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0004

    .line 207
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    .line 210
    :cond_12b
    :goto_12b
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v6

    const-string v14, "Error inflating remote views"

    if-eqz v6, :cond_1c0

    const/4 v6, 0x0

    .line 218
    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    .line 219
    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 220
    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 221
    iput-object v6, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v2, 0x1020209

    .line 224
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 227
    :try_start_14a
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v6

    if-eqz v6, :cond_1ad

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getPresentation()Landroid/widget/RemoteViews;

    move-result-object v6

    invoke-virtual {v6, v9, v10, v5, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    .line 232
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_15f
    .catch Ljava/lang/RuntimeException; {:try_start_14a .. :try_end_15f} :catch_1b5

    .line 239
    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 240
    new-instance v5, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;

    move-object/from16 v6, p2

    invoke-direct {v5, v1, v6}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/service/autofill/FillResponse;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez v8, :cond_1a1

    .line 244
    invoke-static {v9, v4}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v5, -0x2

    if-eqz v8, :cond_17b

    iget v6, v4, Landroid/graphics/Point;->x:I

    goto :goto_17c

    :cond_17b
    move v6, v5

    .line 247
    :goto_17c
    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 248
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 249
    iget v2, v4, Landroid/graphics/Point;->x:I

    const/high16 v5, -0x80000000

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 251
    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 254
    invoke-virtual {v10, v2, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 255
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v1, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v1, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 259
    :cond_1a1
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v10, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto/16 :goto_37e

    .line 228
    :cond_1ad
    :try_start_1ad
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Permission error accessing RemoteView"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b5
    .catch Ljava/lang/RuntimeException; {:try_start_1ad .. :try_end_1b5} :catch_1b5

    :catch_1b5
    move-exception v0

    .line 234
    invoke-interface/range {p9 .. p9}, Lcom/android/server/autofill/ui/FillUi$Callback;->onCanceled()V

    .line 235
    invoke-static {v7, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    .line 236
    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    return-void

    :cond_1c0
    move-object/from16 v6, p2

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 263
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_1ec

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Number datasets: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " max visible: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ec
    if-eqz v11, :cond_21d

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v8

    const/4 v13, 0x0

    .line 271
    invoke-virtual {v11, v9, v13, v8, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    const v13, 0x1020206

    .line 274
    invoke-virtual {v10, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v15

    invoke-virtual {v1, v11, v15}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 276
    sget-boolean v15, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v15, :cond_212

    const-string v15, "adding header"

    invoke-static {v7, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_212
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v11, 0x0

    .line 278
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v16, v8

    const/4 v8, 0x0

    goto :goto_222

    :cond_21d
    const/4 v8, 0x0

    .line 280
    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    move-object/from16 v16, v8

    :goto_222
    if-eqz v12, :cond_259

    const v11, 0x1020205

    .line 285
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_256

    if-nez v16, :cond_235

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v16

    :cond_235
    move-object/from16 v13, v16

    .line 290
    invoke-virtual {v12, v9, v8, v13, v0}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v8

    invoke-virtual {v1, v0, v8}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 294
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v8, :cond_24d

    const-string v8, "adding footer"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_24d
    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    .line 296
    invoke-virtual {v11, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v8, 0x0

    goto :goto_25b

    .line 298
    :cond_256
    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    goto :goto_25b

    .line 301
    :cond_259
    iput-object v8, v1, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    .line 304
    :goto_25b
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v11, 0x0

    :goto_261
    if-ge v11, v4, :cond_347

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/Dataset;

    .line 307
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-ltz v9, :cond_33f

    .line 310
    invoke-virtual {v0, v9}, Landroid/service/autofill/Dataset;->getFieldPresentation(I)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 309
    invoke-static {v12}, Lcom/android/server/autofill/Helper;->sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v12

    if-nez v12, :cond_2a0

    .line 312
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "not displaying UI on field "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " because service didn\'t provide a presentation for it on "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_33f

    .line 318
    :cond_2a0
    :try_start_2a0
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_2b9

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setting remote view for "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v7, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_2b9
    iget-object v13, v1, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I
    :try_end_2bd
    .catch Ljava/lang/RuntimeException; {:try_start_2a0 .. :try_end_2bd} :catch_338

    move/from16 p6, v4

    const/4 v4, 0x0

    :try_start_2c0
    invoke-virtual {v12, v13, v4, v5, v15}, Landroid/widget/RemoteViews;->applyWithTheme(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;I)Landroid/view/View;

    move-result-object v12
    :try_end_2c4
    .catch Ljava/lang/RuntimeException; {:try_start_2c0 .. :try_end_2c4} :catch_336

    .line 327
    invoke-virtual {v0, v9}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v4

    if-nez v4, :cond_2f1

    .line 332
    invoke-virtual {v0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillValue;

    if-eqz v4, :cond_2e9

    .line 333
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v9

    if-eqz v9, :cond_2e9

    .line 334
    invoke-virtual {v4}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    goto :goto_2ea

    :cond_2e9
    const/4 v4, 0x0

    :goto_2ea
    move-object/from16 v21, v4

    const/16 v19, 0x0

    const/16 v20, 0x1

    goto :goto_320

    .line 337
    :cond_2f1
    iget-object v4, v4, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez v4, :cond_31a

    .line 339
    sget-boolean v13, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v13, :cond_315

    .line 340
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Explicitly disabling filter at id "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " for dataset #"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_315
    move-object/from16 v19, v4

    const/16 v20, 0x0

    goto :goto_31e

    :cond_31a
    move-object/from16 v19, v4

    const/16 v20, 0x1

    :goto_31e
    const/16 v21, 0x0

    .line 347
    :goto_320
    invoke-virtual/range {p2 .. p2}, Landroid/service/autofill/FillResponse;->getCancelIds()[I

    move-result-object v4

    invoke-virtual {v1, v12, v4}, Lcom/android/server/autofill/ui/FillUi;->applyCancelAction(Landroid/view/View;[I)V

    .line 348
    new-instance v4, Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-object/from16 v17, v4

    move-object/from16 v18, v0

    move-object/from16 v22, v12

    invoke-direct/range {v17 .. v22}, Lcom/android/server/autofill/ui/FillUi$ViewItem;-><init>(Landroid/service/autofill/Dataset;Ljava/util/regex/Pattern;ZLjava/lang/String;Landroid/view/View;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_341

    :catch_336
    move-exception v0

    goto :goto_33b

    :catch_338
    move-exception v0

    move/from16 p6, v4

    .line 322
    :goto_33b
    invoke-static {v7, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_341

    :cond_33f
    :goto_33f
    move/from16 p6, v4

    :goto_341
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p6

    goto/16 :goto_261

    .line 352
    :cond_347
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-direct {v0, v1, v8}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;-><init>(Lcom/android/server/autofill/ui/FillUi;Ljava/util/List;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const v2, 0x1020208

    .line 354
    invoke-virtual {v10, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    .line 355
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v4, 0x0

    .line 356
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 357
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-nez p4, :cond_36e

    const/4 v2, 0x0

    .line 363
    iput-object v2, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    goto :goto_374

    .line 365
    :cond_36e
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 368
    :goto_374
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    .line 369
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-direct {v0, v1, v10, v3}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;-><init>(Lcom/android/server/autofill/ui/FillUi;Landroid/view/View;Lcom/android/server/autofill/ui/OverlayControl;)V

    iput-object v0, v1, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    :goto_37e
    return-void
.end method

.method public static isFullScreen(Landroid/content/Context;)Z
    .registers 2

    .line 128
    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_27

    .line 129
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_20

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forcing full-screen mode to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FillUi"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_20
    sget-object p0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 132
    :cond_27
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$applyCancelAction$4(Landroid/view/View;)V
    .registers 4

    .line 396
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_1f

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Cancelling session after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " clicked"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FillUi"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1f
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->cancelSession()V

    return-void
.end method

.method private synthetic lambda$applyNewFilterText$6(II)V
    .registers 5

    .line 421
    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    if-gtz p2, :cond_36

    .line 425
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_30

    .line 426
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-nez p1, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 427
    :goto_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No dataset matches filter with "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " chars"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FillUi"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_30
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    goto :goto_67

    .line 431
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->updateContentSize()Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 432
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    .line 434
    :cond_3f
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result p2

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-le p2, v1, :cond_55

    .line 435
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 436
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->onVisibilityAggregated(Z)V

    goto :goto_5a

    .line 438
    :cond_55
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 440
    :goto_5a
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p2}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result p2

    if-eq p2, p1, :cond_67

    .line 441
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_67
    :goto_67
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4

    .line 184
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/16 v0, 0x42

    if-eq p1, v0, :cond_19

    const/16 v0, 0x6f

    if-eq p1, v0, :cond_19

    packed-switch p1, :pswitch_data_1c

    .line 195
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/autofill/ui/FillUi$Callback;->dispatchUnhandledKey(Landroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_19
    :pswitch_19
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_1c
    .packed-switch 0x13
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
    .end packed-switch
.end method

.method private synthetic lambda$new$1(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 4

    if-eqz p2, :cond_b

    .line 212
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_b
    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$2(Landroid/service/autofill/FillResponse;Landroid/view/View;)V
    .registers 3

    .line 240
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onResponsePicked(Landroid/service/autofill/FillResponse;)V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6

    .line 358
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, p3}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object p1

    .line 359
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget-object p1, p1, Lcom/android/server/autofill/ui/FillUi$ViewItem;->dataset:Landroid/service/autofill/Dataset;

    invoke-interface {p0, p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDatasetPicked(Landroid/service/autofill/Dataset;)V

    return-void
.end method

.method public static synthetic lambda$newInteractionBlocker$5(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .registers 3

    .line 413
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p1, :cond_1a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring click on "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FillUi"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    const/4 p0, 0x1

    return p0
.end method

.method public static resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V
    .registers 6

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 572
    sget-object v0, Lcom/android/server/autofill/ui/FillUi;->sTempTypedValue:Landroid/util/TypedValue;

    .line 573
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1120014

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 575
    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 576
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v1, 0x1120013

    invoke-virtual {p0, v1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 578
    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public final announceSearchResultIfNeeded()V
    .registers 3

    .line 812
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 813
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    if-nez v0, :cond_18

    .line 814
    new-instance v0, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;-><init>(Lcom/android/server/autofill/ui/FillUi;Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult-IA;)V

    iput-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    .line 816
    :cond_18
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mAnnounceFilterResult:Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi$AnnounceFilterResult;->post()V

    :cond_1d
    return-void
.end method

.method public final applyCancelAction(Landroid/view/View;[I)V
    .registers 8

    if-nez p2, :cond_3

    return-void

    .line 378
    :cond_3
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v1, "FillUi"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill UI has "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " actions"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_23
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_3c

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cannot apply actions because fill UI root is not a ViewGroup: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 386
    :cond_3c
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 387
    :goto_3f
    array-length v2, p2

    if-ge v0, v2, :cond_72

    .line 388
    aget v2, p2, v0

    .line 389
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_67

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring cancel action for view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " because it\'s not on "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    .line 395
    :cond_67
    new-instance v2, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/autofill/ui/FillUi;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_6f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_72
    return-void
.end method

.method public final applyNewFilterText()V
    .registers 5

    .line 419
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    new-instance v3, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/FillUi;I)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public destroy(Z)V
    .registers 4

    .line 475
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 476
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 477
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->hide(Z)V

    .line 479
    :cond_b
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {v0}, Lcom/android/server/autofill/ui/FillUi$Callback;->onDestroy()V

    if-eqz p1, :cond_17

    .line 481
    iget-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p1}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    :cond_17
    const/4 p1, 0x1

    .line 483
    iput-boolean p1, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 757
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 758
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFullScreen: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 759
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVisibleDatasetsMaxCount: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 761
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_43

    .line 762
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHeader: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 764
    :cond_43
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_55

    .line 765
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mListView: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 767
    :cond_55
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v0, :cond_67

    .line 768
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFooter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 770
    :cond_67
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-eqz v0, :cond_79

    .line 771
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdapter: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 773
    :cond_79
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    if-eqz v0, :cond_8b

    .line 774
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFilterText: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/server/autofill/Helper;->printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V

    .line 777
    :cond_8b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentWidth: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 778
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContentHeight: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 779
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDestroyed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 780
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "theme id: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 781
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mThemeId:I

    const v3, 0x1030419

    if-eq v0, v3, :cond_db

    const v3, 0x1030427

    if-eq v0, v3, :cond_d5

    const-string v0, "(UNKNOWN_MODE)"

    .line 789
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e0

    :cond_d5
    const-string v0, " (light)"

    .line 786
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e0

    :cond_db
    const-string v0, " (dark)"

    .line 783
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 792
    :goto_e0
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    if-eqz v0, :cond_170

    .line 793
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWindow: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 795
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 796
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "showing: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowing(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 797
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "view: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_13f

    .line 799
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "params: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {v0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmShowParams(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 801
    :cond_13f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "screen coordinates: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 802
    iget-object p2, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {p2}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_156

    const-string p0, "N/A"

    .line 803
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_170

    .line 805
    :cond_156
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindow:Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;

    invoke-static {p0}, Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;->-$$Nest$fgetmContentView(Lcom/android/server/autofill/ui/FillUi$AnchoredWindow;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p0

    .line 806
    aget p2, p0, v2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo p2, "x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    :cond_170
    :goto_170
    return-void
.end method

.method public final newInteractionBlocker()Landroid/widget/RemoteViews$InteractionHandler;
    .registers 1

    .line 412
    new-instance p0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda1;-><init>()V

    return-object p0
.end method

.method public requestShowFillUi()V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    iget v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mWindowPresenter:Lcom/android/server/autofill/ui/FillUi$AutofillWindowPresenter;

    invoke-interface {v0, v1, v2, p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 3

    .line 448
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->throwIfDestroyed()V

    .line 449
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    if-nez v0, :cond_17

    .line 452
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 453
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->requestShowFillUi()V

    goto :goto_16

    .line 455
    :cond_11
    iget-object p0, p0, Lcom/android/server/autofill/ui/FillUi;->mCallback:Lcom/android/server/autofill/ui/FillUi$Callback;

    invoke-interface {p0}, Lcom/android/server/autofill/ui/FillUi$Callback;->requestHideFillUi()V

    :goto_16
    return-void

    :cond_17
    if-nez p1, :cond_1b

    const/4 p1, 0x0

    goto :goto_1f

    .line 463
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 466
    :goto_1f
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    .line 469
    :cond_28
    iput-object p1, p0, Lcom/android/server/autofill/ui/FillUi;->mFilterText:Ljava/lang/String;

    .line 471
    invoke-virtual {p0}, Lcom/android/server/autofill/ui/FillUi;->applyNewFilterText()V

    return-void
.end method

.method public final throwIfDestroyed()V
    .registers 2

    .line 565
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/FillUi;->mDestroyed:Z

    if-nez p0, :cond_5

    return-void

    .line 566
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot interact with a destroyed instance"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final updateContentSize()Z
    .registers 9

    .line 487
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 490
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFullScreen:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_c

    return v3

    .line 495
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_24

    .line 496
    iget v0, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eqz v0, :cond_1a

    .line 497
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    move v0, v3

    goto :goto_1b

    :cond_1a
    move v0, v1

    .line 500
    :goto_1b
    iget v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    if-eqz v2, :cond_22

    .line 501
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    goto :goto_23

    :cond_22
    move v3, v0

    :goto_23
    return v3

    .line 507
    :cond_24
    iget-object v0, p0, Lcom/android/server/autofill/ui/FillUi;->mTempPoint:Landroid/graphics/Point;

    .line 508
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/server/autofill/ui/FillUi;->resolveMaxWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 510
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    .line 511
    iput v1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    .line 513
    iget v2, v0, Landroid/graphics/Point;->x:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 515
    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 517
    iget-object v4, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v4}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getCount()I

    move-result v4

    .line 519
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    if-eqz v5, :cond_59

    .line 520
    invoke-virtual {v5, v2, v3}, Landroid/view/View;->measure(II)V

    .line 521
    iget-object v5, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v5, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v5

    or-int/2addr v5, v1

    .line 522
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v5, v6

    goto :goto_5a

    :cond_59
    move v5, v1

    :goto_5a
    if-ge v1, v4, :cond_78

    .line 526
    iget-object v6, p0, Lcom/android/server/autofill/ui/FillUi;->mAdapter:Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;

    invoke-virtual {v6, v1}, Lcom/android/server/autofill/ui/FillUi$ItemsAdapter;->getItem(I)Lcom/android/server/autofill/ui/FillUi$ViewItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/autofill/ui/FillUi$ViewItem;->view:Landroid/view/View;

    .line 527
    invoke-virtual {v6, v2, v3}, Landroid/view/View;->measure(II)V

    .line 528
    invoke-virtual {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v7

    or-int/2addr v5, v7

    .line 529
    iget v7, p0, Lcom/android/server/autofill/ui/FillUi;->mVisibleDatasetsMaxCount:I

    if-ge v1, v7, :cond_75

    .line 530
    invoke-virtual {p0, v6, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_75
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 534
    :cond_78
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    if-eqz v1, :cond_8e

    .line 535
    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 536
    iget-object v1, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/ui/FillUi;->updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result v1

    or-int/2addr v1, v5

    .line 537
    iget-object v2, p0, Lcom/android/server/autofill/ui/FillUi;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/autofill/ui/FillUi;->updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z

    move-result p0

    or-int v5, v1, p0

    :cond_8e
    return v5
.end method

.method public final updateHeight(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 3

    .line 555
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 556
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    add-int/2addr p1, p2

    if-eq p1, p2, :cond_13

    .line 558
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentHeight:I

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final updateWidth(Landroid/view/View;Landroid/graphics/Point;)Z
    .registers 3

    .line 544
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget p2, p2, Landroid/graphics/Point;->x:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 545
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 546
    iget p2, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    if-eq p1, p2, :cond_18

    .line 547
    iput p1, p0, Lcom/android/server/autofill/ui/FillUi;->mContentWidth:I

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method
