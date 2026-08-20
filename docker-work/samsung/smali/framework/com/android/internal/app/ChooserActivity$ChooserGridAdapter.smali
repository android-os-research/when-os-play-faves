.class public final Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChooserGridAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist NUM_EXPANSIONS_TO_HIDE_AZ_LABEL:I = 0x14

.field private static final blacklist VIEW_TYPE_AZ_LABEL:I = 0x4

.field private static final blacklist VIEW_TYPE_CALLER_AND_RANK:I = 0x5

.field private static final blacklist VIEW_TYPE_CONTENT_PREVIEW:I = 0x2

.field private static final blacklist VIEW_TYPE_COUNT:I = 0x9

.field private static final blacklist VIEW_TYPE_DEVICE:I = 0x8

.field private static final blacklist VIEW_TYPE_DEVICE_GUIDE_LABEL:I = 0x7

.field private static final blacklist VIEW_TYPE_DIRECT_SHARE:I = 0x0

.field private static final blacklist VIEW_TYPE_FOOTER:I = 0x6

.field private static final blacklist VIEW_TYPE_NORMAL:I = 0x1

.field private static final blacklist VIEW_TYPE_PROFILE:I = 0x3


# instance fields
.field private blacklist mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

.field private blacklist mChooserTargetWidth:I

.field private blacklist mColumnCount:I

.field private blacklist mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

.field private blacklist mFooterHeight:I

.field private blacklist mGuideLabelAnimDone:Z

.field private final blacklist mLayoutInflater:Landroid/view/LayoutInflater;

.field private blacklist mLayoutRequested:Z

.field private blacklist mShowAzLabelIfPoss:Z

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChooserListAdapter(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)Lcom/android/internal/app/ChooserListAdapter;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 5959
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 5960
    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    .line 5934
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 5936
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 5938
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 5951
    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mGuideLabelAnimDone:Z

    .line 5954
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mColumnCount:I

    .line 5961
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 5962
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 5964
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    .line 5966
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5979
    return-void
.end method

.method private blacklist canExpandDirectShare()Z
    .registers 2

    .line 6692
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 6221
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090143

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 6212
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x109006b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6213
    .local v0, "profileRow":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v2, 0x10204bb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    .line 6214
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mProfileView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    new-instance v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6215
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->updateProfileViewButton()V

    .line 6216
    return-object v0
.end method

.method private synthetic blacklist lambda$loadViewsIntoGroup$0(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;Landroid/view/View;)Z
    .registers 8
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "column"    # I
    .param p3, "v"    # Landroid/view/View;
    .param p4, "v1"    # Landroid/view/View;

    .line 6254
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6255
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v1

    .line 6254
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v0

    .line 6256
    .local v0, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mshouldShowTargetDetails(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 6261
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/internal/app/ChooserActivity;->mMultiTargetInfo:Lcom/android/internal/app/chooser/MultiDisplayResolveInfo;

    .line 6262
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmPinTargetInfo(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/chooser/TargetInfo;)V

    .line 6263
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1, p3}, Lcom/android/internal/app/ChooserActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 6266
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method private synthetic blacklist lambda$semCreateDeviceTargetViewHolder$2(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;)Z
    .registers 8
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "column"    # I
    .param p3, "v1"    # Landroid/view/View;

    .line 6784
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6786
    invoke-virtual {p1, p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v2

    .line 6785
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 6784
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 6787
    return v3
.end method

.method private blacklist loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .registers 13
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6228
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 6229
    .local v1, "spec":I
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 6231
    .local v2, "exactSpec":I
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v3

    .line 6233
    .local v3, "columnCount":I
    instance-of v4, p1, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 6235
    .local v4, "isDirectShare":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    if-ge v5, v3, :cond_57

    .line 6236
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p1, v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 6237
    .local v6, "v":Landroid/view/View;
    move v7, v5

    .line 6238
    .local v7, "column":I
    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;

    invoke-direct {v8, p0, p1, v7}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6270
    invoke-virtual {p1, v5, v6}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    .line 6275
    if-eqz v4, :cond_46

    .line 6276
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 6277
    .local v8, "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLines(I)V

    .line 6278
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6279
    iget-object v9, v8, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6283
    .end local v8    # "vh":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    :cond_46
    invoke-virtual {v6, v2, v1}, Landroid/view/View;->measure(II)V

    .line 6284
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-direct {p0, v6, v8, v9}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6235
    .end local v6    # "v":Landroid/view/View;
    .end local v7    # "column":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .line 6287
    .end local v5    # "i":I
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v5

    .line 6290
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    .line 6291
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {p0, v5, v7, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6293
    if-eqz v4, :cond_76

    .line 6294
    move-object v6, p1

    check-cast v6, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 6295
    .local v6, "dsvh":Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
    invoke-virtual {v6, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getRow(I)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->getMinRowHeight()I

    move-result v8

    invoke-direct {p0, v0, v7, v8}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6301
    .end local v6    # "dsvh":Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;
    :cond_76
    invoke-virtual {v5, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6302
    return-object p1
.end method

.method private blacklist semCreateDefaultDeviceTargetView(ILandroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 27
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 6816
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x109015c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6820
    .local v2, "chooserRow":Landroid/view/ViewGroup;
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x105035b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6821
    .local v3, "bottomPadding":I
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v5

    .line 6822
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    .line 6823
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    .line 6824
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v8

    add-int/2addr v8, v3

    .line 6821
    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6826
    new-instance v5, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;

    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v7

    move/from16 v8, p1

    invoke-direct {v5, v6, v2, v7, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetDefaultViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;II)V

    .line 6828
    .local v5, "holder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 6829
    .local v6, "spec":I
    iget v7, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v7, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 6832
    .local v7, "exactSpec":I
    iget-object v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x109015d

    invoke-virtual {v9, v10, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 6835
    .local v9, "parent_item":Landroid/view/View;
    const v10, 0x1020015

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 6836
    .local v11, "iconText":Landroid/widget/TextView;
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v13, 0x1050469

    invoke-virtual {v12, v11, v13}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6838
    const v12, 0x1020573

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 6839
    .local v12, "descriptionPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v12}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 6840
    .local v13, "dlp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    int-to-float v14, v14

    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 6842
    invoke-virtual {v5, v4, v9}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v14

    .line 6843
    .local v14, "row":Landroid/view/ViewGroup;
    new-instance v15, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;

    invoke-direct {v15, v0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$3;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;)V

    invoke-virtual {v9, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6914
    const v15, 0x1020575

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 6915
    .local v15, "v":Landroid/view/View;
    invoke-virtual {v15, v7, v6}, Landroid/view/View;->measure(II)V

    .line 6916
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 6917
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_ae

    .line 6918
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    move-object/from16 v19, v2

    .end local v2    # "chooserRow":Landroid/view/ViewGroup;
    .local v19, "chooserRow":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-direct {v10, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v4, v10

    .line 6919
    invoke-virtual {v15, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_be

    .line 6921
    .end local v19    # "chooserRow":Landroid/view/ViewGroup;
    .restart local v2    # "chooserRow":Landroid/view/ViewGroup;
    :cond_ae
    move-object/from16 v19, v2

    .end local v2    # "chooserRow":Landroid/view/ViewGroup;
    .restart local v19    # "chooserRow":Landroid/view/ViewGroup;
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6922
    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6925
    :goto_be
    const v1, 0x1020574

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6926
    .local v1, "iv":Landroid/widget/ImageView;
    const v2, 0x1020015

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 6927
    .local v2, "iconLabel":Landroid/widget/TextView;
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    if-eqz v10, :cond_f9

    .line 6928
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v18

    move/from16 v20, v3

    .end local v3    # "bottomPadding":I
    .local v20, "bottomPadding":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/android/internal/app/ChooserListAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6929
    .local v3, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6930
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    goto :goto_122

    .line 6931
    .end local v20    # "bottomPadding":I
    .local v3, "bottomPadding":I
    :cond_f9
    move/from16 v20, v3

    .end local v3    # "bottomPadding":I
    .restart local v20    # "bottomPadding":I
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_122

    .line 6932
    iget-object v3, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/android/internal/app/ChooserListAdapter;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 6933
    .local v3, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6934
    iget-object v10, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v10}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_123

    .line 6931
    .end local v3    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_122
    :goto_122
    nop

    .line 6937
    :goto_123
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v3

    .line 6940
    .local v3, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    .line 6941
    const/4 v10, -0x1

    move-object/from16 v18, v1

    .end local v1    # "iv":Landroid/widget/ImageView;
    .local v18, "iv":Landroid/widget/ImageView;
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v1

    invoke-direct {v0, v3, v10, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6944
    const v1, 0x1020576

    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6945
    .local v1, "emptyTextView":Landroid/widget/TextView;
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6947
    const v10, 0x1020014

    invoke-virtual {v14, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 6948
    .local v10, "tv":Landroid/widget/TextView;
    move-object/from16 v21, v1

    .end local v1    # "emptyTextView":Landroid/widget/TextView;
    .local v21, "emptyTextView":Landroid/widget/TextView;
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_16d

    .line 6949
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    move-object/from16 v22, v2

    .end local v2    # "iconLabel":Landroid/widget/TextView;
    .local v22, "iconLabel":Landroid/widget/TextView;
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/android/internal/app/ChooserActivity;->setSpannableLinkText(Landroid/widget/TextView;Ljava/lang/String;)V

    move-object/from16 v23, v4

    goto :goto_1b1

    .line 6950
    .end local v22    # "iconLabel":Landroid/widget/TextView;
    .restart local v2    # "iconLabel":Landroid/widget/TextView;
    :cond_16d
    move-object/from16 v22, v2

    .end local v2    # "iconLabel":Landroid/widget/TextView;
    .restart local v22    # "iconLabel":Landroid/widget/TextView;
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1af

    .line 6951
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getDisplayLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6952
    .local v1, "nearbyShareLabel":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v23, v4

    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v23, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v1, v4, v17

    const-string v17, ""

    const/16 v16, 0x1

    aput-object v17, v4, v16

    move-object/from16 v16, v1

    const v1, 0x1040d1b

    .end local v1    # "nearbyShareLabel":Ljava/lang/String;
    .local v16, "nearbyShareLabel":Ljava/lang/String;
    invoke-virtual {v2, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6953
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6954
    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x1050382

    invoke-virtual {v2, v10, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    goto :goto_1b1

    .line 6950
    .end local v1    # "text":Ljava/lang/String;
    .end local v16    # "nearbyShareLabel":Ljava/lang/String;
    .end local v23    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1af
    move-object/from16 v23, v4

    .line 6957
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v23    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_1b1
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6958
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    return-object v1
.end method

.method private blacklist semCreateDeviceGuideLabelView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 6740
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090146

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 6741
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020543

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 6742
    .local v1, "tv":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v3, 0x1050359

    invoke-virtual {v2, v1, v3}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6743
    return-object v0
.end method

.method private blacklist semShouldShowShareLiveDefaultPanel()Z
    .registers 4

    .line 6734
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetShareLiveDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetNearbyShareDri()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2a

    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6735
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6736
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v0, :cond_2a

    move v1, v2

    goto :goto_2b

    :cond_2a
    nop

    .line 6734
    :goto_2b
    return v1
.end method

.method private blacklist semVisibleItemViewForExif(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;III)V
    .registers 21
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "startType"    # I
    .param p3, "startIndex"    # I
    .param p4, "curIndex"    # I

    .line 6962
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    .line 6963
    .local v4, "exifHolderView":Landroid/view/View;
    if-nez v4, :cond_f

    return-void

    .line 6965
    :cond_f
    const v5, 0x1020583

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 6966
    .local v5, "nearbyLinearLayout":Landroid/widget/LinearLayout;
    const v6, 0x1020584

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 6967
    .local v6, "nearbyProgressView":Landroid/view/View;
    const v7, 0x1020582

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 6968
    .local v7, "nearbyFramelayout":Landroid/widget/FrameLayout;
    const v8, 0x1020553

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 6969
    .local v8, "itemLinearLayout":Landroid/widget/LinearLayout;
    const v9, 0x1020548

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 6970
    .local v9, "itemProgressView":Landroid/view/View;
    const v10, 0x1020616

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 6971
    .local v10, "itemTargetBadge":Landroid/widget/ImageView;
    const v11, 0x1020006

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 6973
    .local v11, "itemIcon":Landroid/widget/ImageView;
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableExifProgress(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v12

    const/4 v13, 0x4

    const/4 v14, -0x1

    const/4 v15, 0x0

    if-eqz v12, :cond_f0

    .line 6974
    if-ne v1, v13, :cond_81

    .line 6975
    if-eqz v5, :cond_af

    if-eqz v6, :cond_af

    if-eqz v7, :cond_af

    .line 6976
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v12

    if-eq v12, v14, :cond_af

    .line 6977
    add-int v12, p3, v2

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v14

    if-ne v12, v14, :cond_af

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_af

    .line 6978
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6979
    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    .line 6980
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_af

    .line 6985
    :cond_81
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v12

    if-eq v12, v14, :cond_af

    if-eqz v8, :cond_af

    if-eqz v9, :cond_af

    if-eqz v11, :cond_af

    if-eqz v10, :cond_af

    .line 6987
    add-int v12, p3, v2

    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v14

    if-ne v12, v14, :cond_af

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_af

    .line 6988
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6989
    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 6990
    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6991
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6996
    :cond_af
    :goto_af
    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v12}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSelectedNearbyIcon(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v12

    const/high16 v14, 0x3f000000    # 0.5f

    if-eqz v12, :cond_c3

    if-eqz v8, :cond_c3

    .line 6997
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6998
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_141

    .line 7000
    :cond_c3
    if-ne v1, v13, :cond_d7

    .line 7001
    if-eqz v6, :cond_141

    if-eqz v5, :cond_141

    .line 7002
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_141

    .line 7003
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 7004
    invoke-virtual {v5, v14}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_141

    .line 7008
    :cond_d7
    if-eqz v9, :cond_141

    if-eqz v8, :cond_141

    .line 7009
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_e8

    .line 7010
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 7011
    invoke-virtual {v8, v14}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_141

    .line 7013
    :cond_e8
    if-eqz v10, :cond_141

    .line 7014
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_141

    .line 7021
    :cond_f0
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    if-ne v1, v13, :cond_119

    .line 7022
    if-eqz v5, :cond_141

    if-eqz v6, :cond_141

    if-eqz v7, :cond_141

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v13

    if-ne v13, v14, :cond_141

    .line 7024
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_141

    .line 7025
    invoke-virtual {v5, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 7026
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 7027
    const/16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7028
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_141

    .line 7032
    :cond_119
    if-eqz v8, :cond_141

    if-eqz v9, :cond_141

    if-eqz v11, :cond_141

    if-eqz v10, :cond_141

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v13

    if-ne v13, v14, :cond_141

    .line 7034
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v13

    if-nez v13, :cond_141

    .line 7035
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 7036
    invoke-virtual {v8, v12}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 7037
    const/16 v12, 0x8

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 7038
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7039
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7044
    :cond_141
    :goto_141
    return-void
.end method

.method private blacklist setViewBounds(Landroid/view/View;II)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "widthPx"    # I
    .param p3, "heightPx"    # I

    .line 6306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 6307
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_10

    .line 6308
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 6309
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14

    .line 6311
    :cond_10
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6312
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6314
    :goto_14
    return-void
.end method


# virtual methods
.method blacklist bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V
    .registers 29
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6414
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 6415
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v3

    .line 6416
    .local v3, "start":I
    invoke-virtual {v0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v4

    .line 6418
    .local v4, "startType":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v5

    .line 6419
    .local v5, "columnCount":I
    add-int v6, v3, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 6420
    .local v6, "end":I
    :goto_18
    invoke-virtual {v0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getRowType(I)I

    move-result v8

    if-eq v8, v4, :cond_23

    if-lt v6, v3, :cond_23

    .line 6421
    add-int/lit8 v6, v6, -0x1

    goto :goto_18

    .line 6424
    :cond_23
    const v8, 0x102056d

    const/4 v9, 0x2

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-ne v4, v7, :cond_be

    if-ne v6, v3, :cond_be

    iget-object v12, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6425
    invoke-virtual {v12, v3}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v12

    instance-of v12, v12, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-eqz v12, :cond_be

    .line 6426
    const v12, 0x1020257

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 6428
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_be

    .line 6430
    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 6431
    .local v13, "progressView":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_54

    .line 6432
    invoke-virtual {v13, v10}, Landroid/view/View;->setVisibility(I)V

    .line 6436
    .end local v13    # "progressView":Landroid/view/View;
    :cond_54
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setAlpha(F)V

    .line 6437
    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6438
    const v14, 0x10402c6

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(I)V

    .line 6440
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v15, 0x105036f

    invoke-virtual {v14, v12, v15}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6443
    new-array v14, v9, [F

    fill-array-data v14, :array_2f8

    const-string v15, "alpha"

    invoke-static {v12, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 6444
    .local v14, "fadeAnim":Landroid/animation/ValueAnimator;
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v15, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6446
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v15}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v8, 0x10500a2

    invoke-virtual {v15, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    .line 6448
    .local v8, "translationInPx":F
    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 6449
    new-array v15, v7, [F

    aput v13, v15, v11

    const-string/jumbo v13, "translationY"

    invoke-static {v12, v13, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 6451
    .local v13, "translateAnim":Landroid/animation/ValueAnimator;
    new-instance v15, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v15, v10}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6453
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 6454
    .local v10, "animSet":Landroid/animation/AnimatorSet;
    move/from16 v17, v8

    .end local v8    # "translationInPx":F
    .local v17, "translationInPx":F
    const-wide/16 v7, 0xc8

    invoke-virtual {v10, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6455
    invoke-virtual {v10, v7, v8}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 6456
    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v14, v7, v11

    const/4 v8, 0x1

    aput-object v13, v7, v8

    invoke-virtual {v10, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 6457
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 6477
    .end local v10    # "animSet":Landroid/animation/AnimatorSet;
    .end local v12    # "textView":Landroid/widget/TextView;
    .end local v13    # "translateAnim":Landroid/animation/ValueAnimator;
    .end local v14    # "fadeAnim":Landroid/animation/ValueAnimator;
    .end local v17    # "translationInPx":F
    :cond_be
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x4

    if-ne v4, v8, :cond_139

    .line 6478
    const v10, 0x102056e

    invoke-virtual {v2, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 6479
    .local v10, "v":Landroid/view/View;
    const v12, 0x102056d

    invoke-virtual {v2, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 6480
    .local v12, "progressView":Landroid/view/View;
    const v13, 0x1020572

    invoke-virtual {v2, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 6482
    .local v13, "shareLiveLayout":Landroid/widget/LinearLayout;
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semShouldShowShareLiveDefaultPanel()Z

    move-result v14

    if-eqz v14, :cond_eb

    .line 6483
    if-eqz v10, :cond_f8

    .line 6484
    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    .line 6485
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14, v11}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;Z)V

    goto :goto_f8

    .line 6488
    :cond_eb
    if-eqz v10, :cond_f8

    .line 6489
    const/16 v14, 0x8

    invoke-virtual {v10, v14}, Landroid/view/View;->setVisibility(I)V

    .line 6490
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;Z)V

    .line 6494
    :cond_f8
    :goto_f8
    sget-boolean v14, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v14, :cond_139

    if-eqz v13, :cond_139

    if-eqz v12, :cond_139

    .line 6495
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableExifProgress(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v14

    if-eqz v14, :cond_129

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semShouldShowShareLiveDefaultPanel()Z

    move-result v14

    if-eqz v14, :cond_129

    .line 6496
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6497
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v14}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSelectedNearbyIcon(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v14

    if-eqz v14, :cond_122

    .line 6498
    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6499
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_139

    .line 6501
    :cond_122
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6502
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    goto :goto_139

    .line 6505
    :cond_129
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_139

    .line 6506
    invoke-virtual {v13, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6507
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6508
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 6515
    .end local v10    # "v":Landroid/view/View;
    .end local v12    # "progressView":Landroid/view/View;
    .end local v13    # "shareLiveLayout":Landroid/widget/LinearLayout;
    :cond_139
    :goto_139
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_13a
    if-ge v10, v5, :cond_2b4

    .line 6516
    invoke-virtual {v1, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    .line 6518
    .local v12, "v":Landroid/view/View;
    add-int v13, v3, v10

    if-gt v13, v6, :cond_290

    .line 6519
    sget-boolean v13, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v13, :cond_276

    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v13}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v13

    if-eqz v13, :cond_276

    instance-of v13, v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    if-eqz v13, :cond_276

    .line 6520
    move-object v13, v1

    check-cast v13, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    .line 6521
    .local v13, "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;
    iget-object v14, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    add-int v15, v3, v10

    invoke-virtual {v14, v15}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v14

    .line 6522
    .local v14, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v15, v14, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v15, :cond_272

    .line 6523
    move-object/from16 v22, v14

    check-cast v22, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    .line 6524
    .local v22, "sti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    const/16 v23, 0x0

    .line 6526
    .local v23, "isUWB":Z
    if-eqz v23, :cond_189

    .line 6527
    invoke-virtual {v13, v10, v11}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setPointerVisibility(II)V

    .line 6528
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->isUWBFocused()Z

    move-result v15

    if-eqz v15, :cond_179

    .line 6529
    const/4 v15, 0x1

    invoke-virtual {v13, v10, v15}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setFocus(IZ)V

    goto :goto_17c

    .line 6531
    :cond_179
    invoke-virtual {v13, v10, v11}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setFocus(IZ)V

    .line 6534
    :goto_17c
    iget-boolean v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mGuideLabelAnimDone:Z

    if-nez v15, :cond_18e

    .line 6535
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v15}, Lcom/android/internal/app/ChooserActivity;->startGuideLabelAnimation()V

    .line 6536
    const/4 v15, 0x1

    iput-boolean v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mGuideLabelAnimDone:Z

    goto :goto_18e

    .line 6539
    :cond_189
    const/16 v15, 0x8

    invoke-virtual {v13, v10, v15}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setPointerVisibility(II)V

    .line 6543
    :cond_18e
    :goto_18e
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v15}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxDeviceTargetCountForAnim(Lcom/android/internal/app/ChooserActivity;)I

    move-result v15

    if-ge v10, v15, :cond_1e6

    .line 6544
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v15

    .line 6546
    .local v15, "deviceId":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v10

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1cc

    .line 6548
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v8

    aput v7, v8, v10

    .line 6549
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v8

    aput-boolean v11, v8, v10

    .line 6550
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v8

    aput-object v15, v8, v10

    .line 6551
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v8

    aget v8, v8, v10

    invoke-virtual {v13, v10, v11, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_1e5

    .line 6553
    :cond_1cc
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v8

    aget-boolean v8, v8, v10

    if-nez v8, :cond_1e2

    .line 6555
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v8

    aget v8, v8, v10

    invoke-virtual {v13, v10, v11, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_1e5

    .line 6557
    :cond_1e2
    invoke-virtual {v1, v10, v11}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6560
    .end local v15    # "deviceId":Ljava/lang/String;
    :goto_1e5
    goto :goto_1e9

    .line 6561
    :cond_1e6
    invoke-virtual {v1, v10, v11}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6564
    :goto_1e9
    move-object v8, v14

    check-cast v8, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v8}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatus()I

    move-result v8

    .line 6565
    .local v8, "deviceStatus":I
    move-object v15, v14

    check-cast v15, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v15}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareProgress()I

    move-result v15

    .line 6566
    .local v15, "deviceProgress":I
    move-object/from16 v16, v14

    check-cast v16, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v7

    .line 6568
    .local v7, "deviceId":Ljava/lang/String;
    iget-object v11, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v11}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceItemViewInfo(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;

    .line 6569
    .local v11, "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    const/4 v9, 0x3

    if-ne v8, v9, :cond_229

    .line 6570
    iget v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    .line 6571
    .local v9, "startProgress":I
    move/from16 v24, v15

    .line 6573
    .local v24, "endProgress":I
    move-object/from16 v25, v14

    move/from16 v14, v24

    .end local v24    # "endProgress":I
    .local v14, "endProgress":I
    .local v25, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    if-lt v14, v9, :cond_227

    .line 6574
    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v14

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    .line 6576
    .end local v9    # "startProgress":I
    .end local v14    # "endProgress":I
    :cond_227
    move v9, v15

    goto :goto_26b

    .line 6577
    .end local v25    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    .local v14, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_229
    move-object/from16 v25, v14

    .end local v14    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    .restart local v25    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    iget v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v14, 0x2

    if-ne v9, v14, :cond_243

    if-ne v8, v14, :cond_243

    .line 6579
    const/16 v18, 0x7

    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v19, v15

    move/from16 v20, v15

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    move v9, v15

    goto :goto_26b

    .line 6580
    :cond_243
    iget v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_25b

    if-ne v8, v14, :cond_25b

    .line 6582
    move v9, v15

    .end local v15    # "deviceProgress":I
    .local v9, "deviceProgress":I
    const/16 v18, 0x6

    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v19, v9

    move/from16 v20, v9

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    goto :goto_26b

    .line 6580
    .end local v9    # "deviceProgress":I
    .restart local v15    # "deviceProgress":I
    :cond_25b
    move v9, v15

    .line 6584
    .end local v15    # "deviceProgress":I
    .restart local v9    # "deviceProgress":I
    move-object/from16 v16, v13

    move/from16 v17, v10

    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v9

    move/from16 v21, v23

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->startShareStatusAnim(IIIIZ)V

    .line 6588
    :goto_26b
    iput-object v7, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceId:Ljava/lang/String;

    .line 6589
    iput v8, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    .line 6590
    iput v9, v11, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    goto :goto_274

    .line 6522
    .end local v7    # "deviceId":Ljava/lang/String;
    .end local v8    # "deviceStatus":I
    .end local v9    # "deviceProgress":I
    .end local v11    # "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    .end local v22    # "sti":Lcom/android/internal/app/chooser/SelectableTargetInfo;
    .end local v23    # "isUWB":Z
    .end local v25    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    .restart local v14    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_272
    move-object/from16 v25, v14

    .line 6592
    .end local v13    # "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;
    .end local v14    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :goto_274
    const/4 v7, 0x0

    goto :goto_27a

    .line 6593
    :cond_276
    const/4 v7, 0x0

    invoke-virtual {v1, v10, v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6595
    :goto_27a
    add-int v8, v3, v10

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setItemIndex(II)V

    .line 6596
    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v9

    invoke-virtual {v8, v9, v12}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 6598
    sget-boolean v8, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v8, :cond_2ab

    .line 6599
    invoke-direct {v0, v1, v4, v3, v10}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semVisibleItemViewForExif(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;III)V

    goto :goto_2ab

    .line 6602
    :cond_290
    move v7, v11

    const/4 v8, 0x4

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    .line 6603
    sget-boolean v8, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v8, :cond_2ab

    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableShareLiveVI(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v8

    if-eqz v8, :cond_2ab

    instance-of v8, v1, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    if-eqz v8, :cond_2ab

    .line 6604
    move-object v8, v1

    check-cast v8, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    invoke-virtual {v8, v10}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;->hideShareStatusAnim(I)V

    .line 6515
    .end local v12    # "v":Landroid/view/View;
    :cond_2ab
    :goto_2ab
    add-int/lit8 v10, v10, 0x1

    move v11, v7

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x4

    const/4 v9, 0x2

    goto/16 :goto_13a

    .line 6612
    .end local v10    # "i":I
    :cond_2b4
    iget-object v7, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v8}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v8

    add-int/2addr v7, v8

    .line 6613
    .local v7, "targetCount":I
    if-lez v7, :cond_2f7

    iget v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mColumnCount:I

    if-ge v7, v8, :cond_2f7

    .line 6614
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2c8
    if-ge v8, v5, :cond_2e0

    .line 6615
    invoke-virtual {v1, v8}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    .line 6616
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_2db

    .line 6617
    const/16 v10, 0x8

    invoke-virtual {v1, v8, v10}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->setViewVisibility(II)V

    goto :goto_2dd

    .line 6616
    :cond_2db
    const/16 v10, 0x8

    .line 6614
    .end local v9    # "v":Landroid/view/View;
    :goto_2dd
    add-int/lit8 v8, v8, 0x1

    goto :goto_2c8

    .line 6621
    .end local v8    # "i":I
    :cond_2e0
    instance-of v8, v2, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_2f7

    .line 6622
    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 6623
    move-object v8, v2

    check-cast v8, Landroid/widget/LinearLayout;

    sub-int v9, v6, v3

    const/4 v10, 0x1

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 6628
    .end local v7    # "targetCount":I
    :cond_2f7
    return-void

    :array_2f8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method blacklist bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V
    .registers 15
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    .line 6369
    iget-object v0, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->itemView:Landroid/view/View;

    .line 6370
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    .line 6371
    .local v1, "listPosition":I
    iput v1, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 6372
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 6374
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v2, :cond_b1

    .line 6375
    const v2, 0x1020553

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 6376
    .local v2, "itemLinearLayout":Landroid/widget/LinearLayout;
    const v3, 0x1020548

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 6377
    .local v3, "itemProgressView":Landroid/view/View;
    const v4, 0x1020006

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 6378
    .local v4, "itemIcon":Landroid/widget/ImageView;
    const v5, 0x1020616

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 6380
    .local v5, "itemTargetBadge":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmEnableExifProgress(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v6

    const/16 v7, 0x8

    const/4 v8, 0x0

    if-eqz v6, :cond_88

    .line 6381
    const/4 v6, 0x0

    .line 6382
    .local v6, "exifBindName":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v9, v1}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v9

    .line 6383
    .local v9, "exifTargetInfo":Lcom/android/internal/app/chooser/TargetInfo;
    if-eqz v9, :cond_4b

    .line 6384
    invoke-interface {v9}, Lcom/android/internal/app/chooser/TargetInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 6386
    :cond_4b
    if-eqz v2, :cond_87

    if-eqz v6, :cond_87

    if-eqz v3, :cond_87

    if-eqz v4, :cond_87

    if-eqz v5, :cond_87

    .line 6388
    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v10}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmSelectedNearbyIcon(Lcom/android/internal/app/ChooserActivity;)Z

    move-result v10

    const/high16 v11, 0x3f000000    # 0.5f

    if-nez v10, :cond_6b

    iget-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v10}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmAllAppsComponentName(Lcom/android/internal/app/ChooserActivity;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    .line 6389
    :cond_6b
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_78

    .line 6390
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6391
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_87

    .line 6393
    :cond_78
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6394
    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6395
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 6396
    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6397
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6400
    .end local v6    # "exifBindName":Landroid/content/ComponentName;
    .end local v9    # "exifTargetInfo":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_87
    :goto_87
    goto :goto_b1

    .line 6401
    :cond_88
    if-eqz v2, :cond_b1

    if-eqz v3, :cond_b1

    if-eqz v4, :cond_b1

    if-eqz v5, :cond_b1

    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmExifSelectedPostion(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    const/4 v9, -0x1

    if-ne v6, v9, :cond_b1

    .line 6402
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_b1

    .line 6403
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6404
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 6405
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6406
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6407
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6411
    .end local v2    # "itemLinearLayout":Landroid/widget/LinearLayout;
    .end local v3    # "itemProgressView":Landroid/view/View;
    .end local v4    # "itemIcon":Landroid/widget/ImageView;
    .end local v5    # "itemTargetBadge":Landroid/widget/ImageView;
    :cond_b1
    :goto_b1
    return-void
.end method

.method public blacklist calculateChooserTargetWidth(I)Z
    .registers 6
    .param p1, "width"    # I

    .line 5992
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5993
    return v0

    .line 5997
    :cond_4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5998
    .local v1, "maxWidth":I
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6000
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    div-int v2, p1, v2

    .line 6001
    .local v2, "newWidth":I
    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    if-eq v2, v3, :cond_25

    .line 6002
    iput v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    .line 6003
    const/4 v0, 0x1

    return v0

    .line 6006
    :cond_25
    return v0
.end method

.method public blacklist consumeLayoutRequest()Z
    .registers 3

    .line 6020
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 6021
    .local v0, "oldValue":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 6022
    return v0
.end method

.method blacklist createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .registers 14
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 6317
    const v0, 0x109015c

    const/4 v1, 0x0

    if-nez p1, :cond_50

    .line 6318
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x109006d

    invoke-virtual {v2, v3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6320
    .local v2, "parentGroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/view/ViewGroup;

    .line 6322
    .local v9, "row1":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6324
    .local v0, "row2":Landroid/view/ViewGroup;
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6329
    new-instance v10, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/view/ViewGroup;

    aput-object v9, v3, v1

    .line 6330
    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 6331
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;)V

    move-object v3, v10

    move-object v4, v2

    move v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;-><init>(Landroid/view/ViewGroup;Ljava/util/List;IILjava/util/function/Supplier;)V

    iput-object v10, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    .line 6332
    invoke-direct {p0, v10}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6334
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    return-object v1

    .line 6336
    .end local v0    # "row2":Landroid/view/ViewGroup;
    .end local v2    # "parentGroup":Landroid/view/ViewGroup;
    .end local v9    # "row1":Landroid/view/ViewGroup;
    :cond_50
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 6338
    .local v0, "row":Landroid/view/ViewGroup;
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    invoke-direct {v1, v0, v2, p1}, Lcom/android/internal/app/ChooserActivity$SingleRowViewHolder;-><init>(Landroid/view/ViewGroup;II)V

    .line 6340
    .local v1, "holder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-direct {p0, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    .line 6342
    return-object v1
.end method

.method public blacklist getAzLabelRowCount()I
    .registers 2

    .line 6100
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mShowAzLabelIfPoss:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public blacklist getCallerAndRankedTargetRowCount()I
    .registers 3

    .line 6082
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6083
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6084
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 6082
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist getFooterRowCount()I
    .registers 2

    .line 6078
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getItemCount()I
    .registers 3

    .line 6105
    nop

    .line 6106
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 6107
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6109
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6110
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6112
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6113
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6114
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6115
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6116
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getFooterRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6105
    return v0
.end method

.method public blacklist getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .line 6179
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    move v1, v0

    .line 6180
    .local v0, "countSum":I
    .local v1, "count":I
    if-lez v1, :cond_b

    if-ge p1, v0, :cond_b

    const/4 v2, 0x2

    return v2

    .line 6182
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6183
    if-lez v1, :cond_17

    if-ge p1, v0, :cond_17

    const/4 v2, 0x3

    return v2

    .line 6185
    :cond_17
    sget-boolean v2, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v2, :cond_34

    .line 6186
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6187
    if-lez v1, :cond_27

    if-ge p1, v0, :cond_27

    const/4 v2, 0x7

    return v2

    .line 6189
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6190
    if-lez v1, :cond_34

    if-ge p1, v0, :cond_34

    const/16 v2, 0x8

    return v2

    .line 6193
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6194
    if-lez v1, :cond_40

    if-ge p1, v0, :cond_40

    const/4 v2, 0x0

    return v2

    .line 6196
    :cond_40
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6197
    if-lez v1, :cond_4c

    if-ge p1, v0, :cond_4c

    const/4 v2, 0x5

    return v2

    .line 6199
    :cond_4c
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    move v1, v2

    add-int/2addr v0, v2

    .line 6200
    if-lez v1, :cond_58

    if-ge p1, v0, :cond_58

    const/4 v2, 0x4

    return v2

    .line 6202
    :cond_58
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne p1, v2, :cond_62

    const/4 v2, 0x6

    return v2

    .line 6204
    :cond_62
    return v3
.end method

.method public blacklist getListAdapter()Lcom/android/internal/app/ChooserListAdapter;
    .registers 2

    .line 6696
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    return-object v0
.end method

.method blacklist getListPosition(I)I
    .registers 10
    .param p1, "position"    # I

    .line 6631
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 6634
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v0

    sub-int/2addr p1, v0

    .line 6636
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    .line 6637
    .local v0, "deviceCount":I
    int-to-float v1, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 6639
    .local v1, "deviceRows":I
    if-ge p1, v1, :cond_2e

    .line 6640
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v2

    mul-int/2addr v2, p1

    return v2

    .line 6643
    :cond_2e
    sub-int/2addr p1, v1

    .line 6645
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 6646
    .local v2, "serviceCount":I
    int-to-float v3, v2

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity;->getMaxRankedTargets()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 6647
    .local v3, "serviceRows":I
    if-ge p1, v3, :cond_5b

    .line 6648
    sget-boolean v4, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v4, :cond_53

    .line 6649
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v4

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    return v4

    .line 6651
    :cond_53
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v4

    mul-int/2addr v4, p1

    return v4

    .line 6655
    :cond_5b
    sub-int/2addr p1, v3

    .line 6657
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserListAdapter;->getCallerTargetCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6658
    invoke-virtual {v5}, Lcom/android/internal/app/ChooserListAdapter;->getRankedTargetCount()I

    move-result v5

    add-int/2addr v4, v5

    .line 6659
    .local v4, "callerAndRankedCount":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v5

    .line 6660
    .local v5, "callerAndRankedRows":I
    if-ge p1, v5, :cond_87

    .line 6661
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v6, :cond_7e

    .line 6662
    add-int v6, v0, v2

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v7

    mul-int/2addr v7, p1

    add-int/2addr v6, v7

    return v6

    .line 6664
    :cond_7e
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v6

    mul-int/2addr v6, p1

    add-int/2addr v6, v2

    return v6

    .line 6668
    :cond_87
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr p1, v6

    .line 6670
    sget-boolean v6, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_NEARBY_SHARING:Z

    if-eqz v6, :cond_96

    .line 6671
    add-int v6, v0, v4

    add-int/2addr v6, v2

    add-int/2addr v6, p1

    return v6

    .line 6673
    :cond_96
    add-int v6, v4, v2

    add-int/2addr v6, p1

    return v6
.end method

.method blacklist getMaxTargetsPerRowLandscape()I
    .registers 2

    .line 6721
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetMAX_TARGETS_PER_ROW_LANDSCAPE(Lcom/android/internal/app/ChooserActivity;)I

    move-result v0

    return v0
.end method

.method blacklist getMaxTargetsPerRowPortrait()I
    .registers 2

    .line 6717
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetMAX_TARGETS_PER_ROW_PORTRAIT(Lcom/android/internal/app/ChooserActivity;)I

    move-result v0

    return v0
.end method

.method public blacklist getProfileRowCount()I
    .registers 3

    .line 6071
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 6072
    return v1

    .line 6074
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getOtherProfile()Lcom/android/internal/app/chooser/DisplayResolveInfo;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public blacklist getRowCount()I
    .registers 5

    .line 6026
    nop

    .line 6027
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getSystemRowCount()I

    move-result v0

    .line 6028
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getProfileRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6030
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceGuideLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6031
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6033
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getServiceTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6034
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getCallerAndRankedTargetRowCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 6035
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6037
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->getAlphaTargetCount()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 6036
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 6026
    return v0
.end method

.method blacklist getRowType(I)I
    .registers 5
    .param p1, "rowPosition"    # I

    .line 6354
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    .line 6355
    .local v0, "positionType":I
    const/4 v1, 0x2

    if-nez v0, :cond_a

    .line 6356
    return v1

    .line 6361
    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getAzLabelRowCount()I

    move-result v2

    if-lez v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_14

    .line 6362
    return v1

    .line 6365
    :cond_14
    return v0
.end method

.method public blacklist getServiceTargetRowCount()I
    .registers 3

    .line 6090
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6091
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6092
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 6093
    const/4 v0, 0x1

    return v0

    .line 6095
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSystemRowCount()I
    .registers 4

    .line 6049
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->shouldShowTabs()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 6050
    return v1

    .line 6053
    :cond_a
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 6054
    return v1

    .line 6057
    :cond_17
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_22

    goto :goto_31

    .line 6062
    :cond_22
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsActivatedShareStar:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-boolean v0, v0, Lcom/android/internal/app/ChooserActivity;->mSStarShowPreview:Z

    if-nez v0, :cond_2f

    .line 6063
    return v1

    .line 6067
    :cond_2f
    const/4 v0, 0x1

    return v0

    .line 6058
    :cond_31
    :goto_31
    return v1
.end method

.method public blacklist getTargetType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 6208
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getListPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserListAdapter;->getPositionTargetType(I)I

    move-result v0

    return v0
.end method

.method public blacklist handleScroll(Landroid/view/View;II)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "y"    # I
    .param p3, "oldy"    # I

    .line 6678
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    .line 6679
    .local v0, "canExpandDirectShare":Z
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v1, :cond_1b

    if-eqz v0, :cond_1b

    .line 6680
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 6681
    invoke-virtual {v2}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v3}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v3

    .line 6680
    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->handleScroll(Lcom/android/internal/widget/RecyclerView;III)V

    .line 6684
    :cond_1b
    return-void
.end method

.method public blacklist hideContentPreview()V
    .registers 2

    .line 6015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutRequested:Z

    .line 6016
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->notifyDataSetChanged()V

    .line 6017
    return-void
.end method

.method synthetic blacklist lambda$semCreateDeviceTargetViewHolder$1$com-android-internal-app-ChooserActivity$ChooserGridAdapter(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;ILandroid/view/View;)V
    .registers 8
    .param p1, "holder"    # Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .param p2, "column"    # I
    .param p3, "v1"    # Landroid/view/View;

    .line 6777
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->SHAREVIA_REMOVE_EXIF:Z

    if-eqz v0, :cond_e

    .line 6778
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    iput-object v1, v0, Lcom/android/internal/app/ChooserActivity;->mExifViewholder:Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    .line 6780
    :cond_e
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {p1, p2}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    .line 6781
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 6159
    move-object v0, p1

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->getViewType()I

    move-result v0

    .line 6160
    .local v0, "viewType":I
    sparse-switch v0, :sswitch_data_1a

    goto :goto_19

    .line 6169
    :sswitch_b
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemViewHolder(ILcom/android/internal/app/ChooserActivity$ItemViewHolder;)V

    .line 6170
    goto :goto_19

    .line 6166
    :sswitch_12
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->bindItemGroupViewHolder(ILcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)V

    .line 6167
    nop

    .line 6173
    :goto_19
    return-void

    :sswitch_data_1a
    .sparse-switch
        0x0 -> :sswitch_12
        0x1 -> :sswitch_b
        0x5 -> :sswitch_12
        0x8 -> :sswitch_12
    .end sparse-switch
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 6122
    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_6a

    .line 6153
    const/4 v0, 0x0

    return-object v0

    .line 6148
    :pswitch_6
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDeviceTargetViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    move-result-object v0

    return-object v0

    .line 6146
    :pswitch_b
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDeviceGuideLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6140
    :pswitch_17
    new-instance v0, Landroid/widget/Space;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 6141
    .local v0, "sp":Landroid/widget/Space;
    new-instance v1, Lcom/android/internal/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    invoke-direct {v1, v2, v3}, Lcom/android/internal/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6143
    new-instance v1, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/app/ChooserActivity$FooterViewHolder;-><init>(Landroid/view/View;I)V

    return-object v1

    .line 6132
    .end local v0    # "sp":Landroid/widget/Space;
    :pswitch_31
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createAzLabelView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6130
    :pswitch_3d
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createProfileView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6125
    :pswitch_49
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msemCreateContentPreviewView(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    return-object v1

    .line 6134
    :pswitch_55
    new-instance v0, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 6135
    invoke-virtual {v2, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    .line 6134
    return-object v0

    .line 6138
    :pswitch_64
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->createItemGroupViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_64
        :pswitch_55
        :pswitch_49
        :pswitch_3d
        :pswitch_31
        :pswitch_64
        :pswitch_17
        :pswitch_b
        :pswitch_6
    .end packed-switch
.end method

.method blacklist semCreateDeviceTargetViewHolder(ILandroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    .registers 23
    .param p1, "viewType"    # I
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 6747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x109015c

    const/4 v3, 0x0

    move-object/from16 v4, p2

    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 6749
    .local v1, "chooserRow":Landroid/view/ViewGroup;
    const v2, 0x102056e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 6750
    .local v2, "defaultView":Landroid/view/ViewGroup;
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semCreateDefaultDeviceTargetView(ILandroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v5

    .line 6751
    .local v5, "row1":Landroid/view/ViewGroup;
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 6753
    iget-object v6, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x105035b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 6754
    .local v6, "bottomPadding":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    .line 6755
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    .line 6756
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v9

    .line 6757
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v10, v6

    .line 6754
    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 6759
    new-instance v7, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;

    iget-object v8, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v8}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v9

    move/from16 v10, p1

    invoke-direct {v7, v8, v1, v9, v10}, Lcom/android/internal/app/ChooserActivity$SemDeviceTargetViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/ViewGroup;II)V

    .line 6761
    .local v7, "holder":Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 6762
    .local v8, "spec":I
    iget v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserTargetWidth:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 6764
    .local v9, "exactSpec":I
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getColumnCount()I

    move-result v11

    .line 6766
    .local v11, "columnCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5f
    if-ge v12, v11, :cond_d5

    .line 6767
    iget-object v13, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v14, 0x109015e

    .line 6768
    invoke-virtual {v7, v12}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getRowByIndex(I)Landroid/view/ViewGroup;

    move-result-object v15

    .line 6767
    invoke-virtual {v13, v14, v15, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v13

    .line 6769
    .local v13, "v":Landroid/view/View;
    new-instance v14, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;

    invoke-direct {v14, v13}, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 6771
    .local v14, "holder2":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    iget-object v15, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v14, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    move-object/from16 v16, v1

    .end local v1    # "chooserRow":Landroid/view/ViewGroup;
    .local v16, "chooserRow":Landroid/view/ViewGroup;
    const v1, 0x1050469

    invoke-virtual {v15, v3, v1}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6772
    iget-object v1, v0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, v14, Lcom/android/internal/app/ResolverListAdapter$ViewHolder;->text2:Landroid/widget/TextView;

    const v15, 0x105046a

    invoke-virtual {v1, v3, v15}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 6773
    invoke-virtual {v13, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6775
    move v1, v12

    .line 6776
    .local v1, "column":I
    new-instance v3, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v7, v1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V

    invoke-virtual {v13, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6790
    invoke-virtual {v7, v12, v13}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->addView(ILandroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 6793
    .local v3, "row":Landroid/view/ViewGroup;
    invoke-virtual {v13, v9, v8}, Landroid/view/View;->measure(II)V

    .line 6794
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .line 6795
    .local v15, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v15, :cond_b9

    .line 6796
    move/from16 v17, v1

    .end local v1    # "column":I
    .local v17, "column":I
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    move-object/from16 v18, v2

    .end local v2    # "defaultView":Landroid/view/ViewGroup;
    .local v18, "defaultView":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v19, v3

    .end local v3    # "row":Landroid/view/ViewGroup;
    .local v19, "row":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 6797
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v13, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_cd

    .line 6799
    .end local v17    # "column":I
    .end local v18    # "defaultView":Landroid/view/ViewGroup;
    .end local v19    # "row":Landroid/view/ViewGroup;
    .local v1, "column":I
    .restart local v2    # "defaultView":Landroid/view/ViewGroup;
    .restart local v3    # "row":Landroid/view/ViewGroup;
    .restart local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b9
    move/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    .end local v1    # "column":I
    .end local v2    # "defaultView":Landroid/view/ViewGroup;
    .end local v3    # "row":Landroid/view/ViewGroup;
    .restart local v17    # "column":I
    .restart local v18    # "defaultView":Landroid/view/ViewGroup;
    .restart local v19    # "row":Landroid/view/ViewGroup;
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6800
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iput v1, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 6766
    .end local v13    # "v":Landroid/view/View;
    .end local v14    # "holder2":Lcom/android/internal/app/ResolverListAdapter$ViewHolder;
    .end local v15    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "column":I
    .end local v19    # "row":Landroid/view/ViewGroup;
    :goto_cd
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    const/4 v3, 0x0

    goto :goto_5f

    .end local v16    # "chooserRow":Landroid/view/ViewGroup;
    .end local v18    # "defaultView":Landroid/view/ViewGroup;
    .local v1, "chooserRow":Landroid/view/ViewGroup;
    .restart local v2    # "defaultView":Landroid/view/ViewGroup;
    :cond_d5
    move-object/from16 v16, v1

    move-object/from16 v18, v2

    .line 6804
    .end local v1    # "chooserRow":Landroid/view/ViewGroup;
    .end local v2    # "defaultView":Landroid/view/ViewGroup;
    .end local v12    # "i":I
    .restart local v16    # "chooserRow":Landroid/view/ViewGroup;
    .restart local v18    # "defaultView":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 6807
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->measure()V

    .line 6808
    const/4 v2, -0x1

    invoke-virtual {v7}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getMeasuredRowHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->setViewBounds(Landroid/view/View;II)V

    .line 6810
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 6811
    return-object v7
.end method

.method public blacklist semGetDeviceGuideLabelRowCount()I
    .registers 2

    .line 6726
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->semGetDeviceTargetRowCount()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist semGetDeviceTargetRowCount()I
    .registers 3

    .line 6730
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmMaxTargetsPerRow(Lcom/android/internal/app/ChooserActivity;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public blacklist setFooterHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 5982
    iput p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mFooterHeight:I

    .line 5983
    return-void
.end method

.method blacklist shouldCellSpan(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 6700
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method blacklist updateDirectShareExpansion()V
    .registers 3

    .line 6704
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    if-eqz v0, :cond_29

    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->canExpandDirectShare()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_29

    .line 6707
    :cond_b
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mChooserMultiProfilePagerAdapter:Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;

    .line 6708
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserMultiProfilePagerAdapter;->getActiveAdapterView()Lcom/android/internal/widget/RecyclerView;

    move-result-object v0

    .line 6709
    .local v0, "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 6710
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->collapse(Lcom/android/internal/widget/RecyclerView;)V

    goto :goto_28

    .line 6712
    :cond_23
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->mDirectShareViewHolder:Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ChooserActivity$DirectShareViewHolder;->expand(Lcom/android/internal/widget/RecyclerView;)V

    .line 6714
    :goto_28
    return-void

    .line 6705
    .end local v0    # "activeAdapterView":Lcom/android/internal/widget/RecyclerView;
    :cond_29
    :goto_29
    return-void
.end method
