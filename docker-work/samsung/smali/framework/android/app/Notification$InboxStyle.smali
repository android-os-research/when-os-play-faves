.class public Landroid/app/Notification$InboxStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboxStyle"
.end annotation


# static fields
.field private static final greylist-max-o NUMBER_OF_HISTORY_ALLOWED_UNTIL_REDUCTION:I = 0x1


# instance fields
.field private greylist-max-o mTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 9114
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9112
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 9115
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9121
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9112
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    .line 9122
    invoke-virtual {p0, p1}, Landroid/app/Notification$InboxStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 9123
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9161
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 9163
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 9164
    .local v0, "a":[Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    const-string v2, "android.textLines"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 9165
    return-void
.end method

.method public whitelist addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 4
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 9146
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9147
    return-object p0
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 10
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 9262
    const/4 v0, 0x1

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_44

    .line 9265
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$InboxStyle;

    .line 9267
    .local v1, "newS":Landroid/app/Notification$InboxStyle;
    invoke-virtual {p0}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object v2

    .line 9268
    .local v2, "myLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v1}, Landroid/app/Notification$InboxStyle;->getLines()Ljava/util/ArrayList;

    move-result-object v3

    .line 9269
    .local v3, "newLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 9270
    .local v4, "n":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_24

    .line 9271
    return v0

    .line 9274
    :cond_24
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v4, :cond_42

    .line 9275
    nop

    .line 9276
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 9277
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 9275
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 9278
    return v0

    .line 9274
    :cond_3f
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 9281
    .end local v5    # "i":I
    :cond_42
    const/4 v0, 0x0

    return v0

    .line 9263
    .end local v1    # "newS":Landroid/app/Notification$InboxStyle;
    .end local v2    # "myLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v3    # "newLines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v4    # "n":I
    :cond_44
    :goto_44
    return v0
.end method

.method public greylist-max-o getLines()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 9154
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .registers 21

    .line 9184
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v1, v1, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v1}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 9185
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9186
    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 9187
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    new-instance v3, Landroid/app/Notification$TemplateBindResult;

    invoke-direct {v3, v2}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    move-object v2, v3

    .line 9188
    .local v2, "result":Landroid/app/Notification$TemplateBindResult;
    iget-object v3, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetInboxLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/Notification$InboxStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 9190
    .local v3, "contentView":Landroid/widget/RemoteViews;
    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_12a

    move-object v10, v4

    .line 9194
    .local v10, "rowIds":[I
    array-length v4, v10

    const/4 v11, 0x0

    move v5, v11

    :goto_35
    if-ge v5, v4, :cond_41

    aget v6, v10, v5

    .line 9195
    .local v6, "rowId":I
    const/16 v7, 0x8

    invoke-virtual {v3, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9194
    .end local v6    # "rowId":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_35

    .line 9198
    :cond_41
    const/4 v4, 0x0

    .line 9199
    .local v4, "i":I
    iget-object v5, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v5}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105028f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 9201
    .local v12, "topPadding":I
    const/4 v5, 0x1

    .line 9202
    .local v5, "first":Z
    const/4 v6, 0x0

    .line 9203
    .local v6, "onlyViewId":I
    array-length v7, v10

    .line 9204
    .local v7, "maxRows":I
    iget-object v8, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_64

    .line 9205
    add-int/lit8 v7, v7, -0x1

    .line 9207
    :cond_64
    iget-object v8, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v8}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v8

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-class v9, Landroid/app/RemoteInputHistoryItem;

    const-string v13, "android.remoteInputHistoryItems"

    invoke-static {v8, v13, v9}, Landroid/app/Notification;->-$$Nest$smgetParcelableArrayFromBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v8

    move-object v13, v8

    check-cast v13, [Landroid/app/RemoteInputHistoryItem;

    .line 9210
    .local v13, "remoteInputHistory":[Landroid/app/RemoteInputHistoryItem;
    if-eqz v13, :cond_a5

    array-length v8, v13

    const/4 v9, 0x1

    if-le v8, v9, :cond_a5

    .line 9214
    array-length v8, v13

    const/4 v14, 0x3

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 9216
    .local v8, "numRemoteInputs":I
    iget-object v14, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v14, v8

    sub-int/2addr v14, v9

    .line 9218
    .local v14, "totalNumRows":I
    if-le v14, v7, :cond_a5

    .line 9219
    sub-int v9, v14, v7

    .line 9220
    .local v9, "overflow":I
    iget-object v15, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-le v15, v7, :cond_9e

    .line 9223
    sub-int/2addr v7, v9

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move v9, v7

    goto :goto_aa

    .line 9226
    :cond_9e
    move v4, v9

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move v9, v7

    goto :goto_aa

    .line 9230
    .end local v8    # "numRemoteInputs":I
    .end local v9    # "overflow":I
    .end local v14    # "totalNumRows":I
    :cond_a5
    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move v9, v7

    .end local v4    # "i":I
    .end local v5    # "first":Z
    .end local v6    # "onlyViewId":I
    .end local v7    # "maxRows":I
    .local v9, "maxRows":I
    .local v14, "i":I
    .local v15, "first":Z
    .local v16, "onlyViewId":I
    :goto_aa
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v14, v4, :cond_109

    if-ge v14, v9, :cond_109

    .line 9231
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Ljava/lang/CharSequence;

    .line 9232
    .local v8, "str":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_ff

    .line 9233
    aget v4, v10, v14

    invoke-virtual {v3, v4, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9234
    aget v4, v10, v14

    iget-object v5, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9235
    invoke-static {v6, v8}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/Notification$Builder;->-$$Nest$mprocessTextSpans(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 9234
    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 9236
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    aget v5, v10, v14

    invoke-static {v4, v3, v5, v1}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9237
    aget v5, v10, v14

    const/4 v6, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v4, v3

    move v7, v12

    move-object/from16 v19, v8

    .end local v8    # "str":Ljava/lang/CharSequence;
    .local v19, "str":Ljava/lang/CharSequence;
    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "maxRows":I
    .local v17, "maxRows":I
    move/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 9238
    if-eqz v15, :cond_f9

    .line 9239
    aget v4, v10, v14

    .end local v16    # "onlyViewId":I
    .local v4, "onlyViewId":I
    goto :goto_fa

    .line 9241
    .end local v4    # "onlyViewId":I
    .restart local v16    # "onlyViewId":I
    :cond_f9
    const/4 v4, 0x0

    .line 9243
    .end local v16    # "onlyViewId":I
    .restart local v4    # "onlyViewId":I
    :goto_fa
    const/4 v5, 0x0

    move/from16 v16, v4

    move v15, v5

    .end local v15    # "first":Z
    .restart local v5    # "first":Z
    goto :goto_103

    .line 9232
    .end local v4    # "onlyViewId":I
    .end local v5    # "first":Z
    .end local v17    # "maxRows":I
    .end local v19    # "str":Ljava/lang/CharSequence;
    .restart local v8    # "str":Ljava/lang/CharSequence;
    .restart local v9    # "maxRows":I
    .restart local v15    # "first":Z
    .restart local v16    # "onlyViewId":I
    :cond_ff
    move-object/from16 v19, v8

    move/from16 v17, v9

    .line 9245
    .end local v8    # "str":Ljava/lang/CharSequence;
    .end local v9    # "maxRows":I
    .restart local v17    # "maxRows":I
    .restart local v19    # "str":Ljava/lang/CharSequence;
    :goto_103
    nop

    .end local v19    # "str":Ljava/lang/CharSequence;
    add-int/lit8 v14, v14, 0x1

    .line 9246
    move/from16 v9, v17

    goto :goto_aa

    .line 9230
    .end local v17    # "maxRows":I
    .restart local v9    # "maxRows":I
    :cond_109
    move/from16 v17, v9

    .line 9247
    .end local v9    # "maxRows":I
    .restart local v17    # "maxRows":I
    if-eqz v16, :cond_128

    .line 9249
    iget-object v4, v0, Landroid/app/Notification$InboxStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502a8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 9251
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move/from16 v5, v16

    move v7, v12

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 9254
    :cond_128
    return-object v3

    nop

    :array_12a
    .array-data 4
        0x102035f
        0x1020360
        0x1020361
        0x1020362
        0x1020363
        0x1020364
        0x1020365
    .end array-data
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 9172
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 9174
    iget-object v0, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 9175
    const-string v0, "android.textLines"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 9176
    iget-object v1, p0, Landroid/app/Notification$InboxStyle;->mTexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 9178
    :cond_19
    return-void
.end method

.method public whitelist setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 9130
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 9131
    return-object p0
.end method

.method public whitelist setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 9138
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$InboxStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 9139
    return-object p0
.end method
