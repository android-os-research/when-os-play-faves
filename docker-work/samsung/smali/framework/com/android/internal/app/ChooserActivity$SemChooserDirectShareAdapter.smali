.class public final Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;
.super Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SemChooserDirectShareAdapter"
.end annotation


# static fields
.field private static final blacklist VIEW_TYPE_DEVICE_TARGET:I = 0x1

.field private static final blacklist VIEW_TYPE_SHORTCUT_TARGET:I = 0x2

.field private static final blacklist VIEW_TYPE_TEXT_DESCRIPTION:I


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "wrappedAdapter"    # Lcom/android/internal/app/ChooserListAdapter;

    .line 11145
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11146
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V

    .line 11148
    new-instance v0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter$1;-><init>(Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;Lcom/android/internal/app/ChooserActivity;)V

    invoke-virtual {p2, v0}, Lcom/android/internal/app/ChooserListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 11155
    return-void
.end method


# virtual methods
.method blacklist bindDeviceItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 14
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11248
    instance-of v0, p2, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    if-eqz v0, :cond_bd

    .line 11249
    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11250
    .local v0, "view":Landroid/view/View;
    move-object v1, p2

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    .line 11251
    .local v1, "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->getListPosition(I)I

    move-result v2

    .line 11252
    .local v2, "listPosition":I
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/internal/app/ChooserListAdapter;->getItem(I)Lcom/android/internal/app/chooser/TargetInfo;

    move-result-object v3

    .line 11254
    .local v3, "ti":Lcom/android/internal/app/chooser/TargetInfo;
    instance-of v4, v3, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    if-eqz v4, :cond_b3

    .line 11255
    move-object v4, v3

    check-cast v4, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareStatus()I

    move-result v4

    .line 11256
    .local v4, "deviceStatus":I
    move-object v5, v3

    check-cast v5, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v5}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareProgress()I

    move-result v5

    .line 11257
    .local v5, "deviceProgress":I
    move-object v6, v3

    check-cast v6, Lcom/android/internal/app/chooser/SelectableTargetInfo;

    invoke-virtual {v6}, Lcom/android/internal/app/chooser/SelectableTargetInfo;->getDeviceShareId()Ljava/lang/String;

    move-result-object v6

    .line 11259
    .local v6, "deviceId":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, p1

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_61

    .line 11261
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v7

    const/high16 v9, 0x3f000000    # 0.5f

    aput v9, v7, p1

    .line 11262
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v7

    aput-boolean v8, v7, p1

    .line 11263
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetIds(Lcom/android/internal/app/ChooserActivity;)[Ljava/lang/String;

    move-result-object v7

    aput-object v6, v7, p1

    .line 11264
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v7

    aget v7, v7, p1

    invoke-virtual {v1, p1, v8, v7}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_7a

    .line 11266
    :cond_61
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmIsDeviceTargetShowAnimEnded(Lcom/android/internal/app/ChooserActivity;)[Z

    move-result-object v7

    aget-boolean v7, v7, p1

    if-nez v7, :cond_77

    .line 11268
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceTargetCurrentAnimValue(Lcom/android/internal/app/ChooserActivity;)[F

    move-result-object v7

    aget v7, v7, p1

    invoke-virtual {v1, p1, v8, v7}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->setViewVisibilityWithAnimation(IIF)V

    goto :goto_7a

    .line 11270
    :cond_77
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 11274
    :goto_7a
    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v7}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmDeviceItemViewInfo(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;

    .line 11275
    .local v7, "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    const/4 v9, 0x3

    if-ne v4, v9, :cond_92

    .line 11276
    iget v9, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    .line 11277
    .local v9, "startProgress":I
    move v10, v5

    .line 11279
    .local v10, "endProgress":I
    if-lt v10, v9, :cond_91

    .line 11280
    invoke-virtual {v1, v4, v9, v10, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    .line 11282
    .end local v9    # "startProgress":I
    .end local v10    # "endProgress":I
    :cond_91
    goto :goto_ad

    .line 11283
    :cond_92
    iget v9, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_9e

    if-ne v4, v10, :cond_9e

    .line 11285
    const/4 v9, 0x7

    invoke-virtual {v1, v9, v5, v5, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    goto :goto_ad

    .line 11286
    :cond_9e
    iget v9, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_aa

    if-ne v4, v10, :cond_aa

    .line 11288
    const/4 v9, 0x6

    invoke-virtual {v1, v9, v5, v5, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    goto :goto_ad

    .line 11290
    :cond_aa
    invoke-virtual {v1, v4, v5, v5, v8}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->startShareStatusAnim(IIIZ)V

    .line 11294
    :goto_ad
    iput-object v6, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceId:Ljava/lang/String;

    .line 11295
    iput v4, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemStatus:I

    .line 11296
    iput v5, v7, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;->deviceItemProgress:I

    .line 11299
    .end local v4    # "deviceStatus":I
    .end local v5    # "deviceProgress":I
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v7    # "deviceItemViewInfo":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewInfo;
    :cond_b3
    move-object v4, p2

    check-cast v4, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    iput v2, v4, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;->mListPosition:I

    .line 11300
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v4, v2, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 11302
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "dth":Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;
    .end local v2    # "listPosition":I
    .end local v3    # "ti":Lcom/android/internal/app/chooser/TargetInfo;
    :cond_bd
    return-void
.end method

.method blacklist bindShortCutItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;

    .line 11238
    instance-of v0, p2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    if-eqz v0, :cond_14

    .line 11239
    iget-object v0, p2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11240
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->getListPosition(I)I

    move-result v1

    .line 11242
    .local v1, "listPosition":I
    move-object v2, p2

    check-cast v2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iput v1, v2, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;->mListPosition:I

    .line 11243
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/app/ChooserListAdapter;->bindView(ILandroid/view/View;)V

    .line 11245
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "listPosition":I
    :cond_14
    return-void
.end method

.method public blacklist getItemCount()I
    .registers 3

    .line 11167
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->isSendAction(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 11168
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11169
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semIsSupportDirectShare()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 11170
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semGetTotalCount()I

    move-result v0

    .line 11171
    .local v0, "count":I
    if-nez v0, :cond_22

    .line 11172
    const/4 v1, 0x1

    return v1

    .line 11174
    :cond_22
    return v0

    .line 11176
    .end local v0    # "count":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getItemViewType(I)I
    .registers 6
    .param p1, "position"    # I

    .line 11182
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semGetTotalCount()I

    move-result v0

    .line 11183
    .local v0, "count":I
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 11184
    return v1

    .line 11185
    :cond_8
    if-lez v0, :cond_3e

    .line 11186
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semDeviceTargetIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semServiceTargetIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 11187
    return v1

    .line 11189
    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semDeviceTargetIsEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v2

    if-ge p1, v2, :cond_27

    .line 11190
    const/4 v1, 0x1

    return v1

    .line 11192
    :cond_27
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v2}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v2

    .line 11193
    .local v2, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semServiceTargetIsEmpty()Z

    move-result v3

    if-nez v3, :cond_3e

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v3}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v3

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_3e

    .line 11194
    const/4 v1, 0x2

    return v1

    .line 11198
    .end local v2    # "offset":I
    :cond_3e
    return v1
.end method

.method blacklist getListPosition(I)I
    .registers 2
    .param p1, "position"    # I

    .line 11234
    return p1
.end method

.method public blacklist onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V
    .registers 6
    .param p1, "recyclerView"    # Lcom/android/internal/widget/RecyclerView;

    .line 11159
    invoke-super {p0, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserHorizontalAdapter;->onAttachedToRecyclerView(Lcom/android/internal/widget/RecyclerView;)V

    .line 11161
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mRecyclerViewParent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 11162
    invoke-virtual {v1}, Lcom/android/internal/app/ChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108026c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 11161
    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 11163
    return-void
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .registers 5
    .param p1, "holder"    # Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 11221
    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    .line 11222
    .local v0, "viewType":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 11223
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->bindDeviceItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_11

    .line 11224
    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 11225
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->bindShortCutItemViewHolder(ILcom/android/internal/widget/RecyclerView$ViewHolder;)V

    .line 11227
    :cond_11
    :goto_11
    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 11203
    if-nez p2, :cond_2e

    .line 11204
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090147

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 11205
    .local v0, "row":Landroid/view/View;
    const v1, 0x1020257

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 11206
    .local v1, "tv":Landroid/widget/TextView;
    const v3, 0x10402c6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 11207
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    const v4, 0x105036f

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/app/ChooserActivity;->semSetTextSizeByMaxFontScale(Landroid/widget/TextView;I)V

    .line 11208
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 11209
    new-instance v2, Lcom/android/internal/app/ChooserActivity$SemSimpleTextViewHolder;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v2, v3, v0}, Lcom/android/internal/app/ChooserActivity$SemSimpleTextViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;)V

    return-object v2

    .line 11210
    .end local v0    # "row":Landroid/view/View;
    .end local v1    # "tv":Landroid/widget/TextView;
    :cond_2e
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3f

    .line 11211
    new-instance v1, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11212
    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$SemDeviceItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    .line 11211
    return-object v1

    .line 11214
    :cond_3f
    new-instance v1, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11215
    invoke-virtual {v3, p1}, Lcom/android/internal/app/ChooserListAdapter;->createView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/android/internal/app/ChooserActivity$ItemViewHolder;-><init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;ZI)V

    .line 11214
    return-object v1
.end method

.method blacklist semDeviceTargetIsEmpty()Z
    .registers 4

    .line 11305
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11306
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-nez v0, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11307
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    move v1, v2

    .line 11305
    :cond_21
    return v1
.end method

.method blacklist semGetTotalCount()I
    .registers 4

    .line 11317
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semDeviceTargetIsEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_f

    :cond_9
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetDeviceTargetCount()I

    move-result v0

    .line 11318
    :goto_f
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->semServiceTargetIsEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_1c

    :cond_16
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    :goto_1c
    add-int/2addr v0, v1

    .line 11317
    return v0
.end method

.method blacklist semServiceTargetIsEmpty()Z
    .registers 4

    .line 11311
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_18

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11312
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->semGetServiceTargets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;

    if-nez v0, :cond_20

    :cond_18
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->mChooserListAdapter:Lcom/android/internal/app/ChooserListAdapter;

    .line 11313
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserListAdapter;->getServiceTargetCount()I

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    move v1, v2

    .line 11311
    :cond_21
    return v1
.end method

.method public blacklist updateRowDivider()V
    .registers 5

    .line 11322
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    if-eqz v0, :cond_30

    .line 11323
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_f

    const/16 v0, 0x8

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 11324
    .local v0, "makeVisible":I
    :goto_10
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v2, 0x1020580

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 11325
    .local v1, "dividerView1":Landroid/view/View;
    if-eqz v1, :cond_20

    .line 11326
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11328
    :cond_20
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemChooserDirectShareAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity;->mResolverDrawerLayout:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v3, 0x1020581

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 11329
    .local v2, "dividerView2":Landroid/view/View;
    if-eqz v2, :cond_30

    .line 11330
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11333
    .end local v0    # "makeVisible":I
    .end local v1    # "dividerView1":Landroid/view/View;
    .end local v2    # "dividerView2":Landroid/view/View;
    :cond_30
    return-void
.end method
