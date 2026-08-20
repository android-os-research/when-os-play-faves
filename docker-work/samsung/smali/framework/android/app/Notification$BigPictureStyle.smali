.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# static fields
.field public static final greylist-max-o MIN_ASHMEM_BITMAP_SIZE:I = 0x20000


# instance fields
.field private greylist-max-o mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mBigLargeIconSet:Z

.field private blacklist mPictureContentDescription:Ljava/lang/CharSequence;

.field private blacklist mPictureIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mShowBigPictureWhenCollapsed:Z


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 7562
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 7558
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 7563
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Notification$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 7569
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 7558
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 7570
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 7571
    return-void
.end method

.method private static blacklist areIconsObviouslyDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z
    .registers 9
    .param p0, "a"    # Landroid/graphics/drawable/Icon;
    .param p1, "b"    # Landroid/graphics/drawable/Icon;

    .line 7867
    const/4 v0, 0x0

    if-ne p0, p1, :cond_4

    .line 7868
    return v0

    .line 7870
    :cond_4
    const/4 v1, 0x1

    if-eqz p0, :cond_55

    if-nez p1, :cond_a

    goto :goto_55

    .line 7873
    :cond_a
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->sameAs(Landroid/graphics/drawable/Icon;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 7874
    return v0

    .line 7876
    :cond_11
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v2

    .line 7877
    .local v2, "aType":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v3

    if-eq v2, v3, :cond_1c

    .line 7878
    return v1

    .line 7880
    :cond_1c
    if-eq v2, v1, :cond_23

    const/4 v3, 0x5

    if-ne v2, v3, :cond_22

    goto :goto_23

    .line 7888
    :cond_22
    return v1

    .line 7881
    :cond_23
    :goto_23
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7882
    .local v3, "aBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 7883
    .local v4, "bBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_53

    .line 7884
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_53

    .line 7885
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    if-ne v5, v6, :cond_53

    .line 7886
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v6

    if-eq v5, v6, :cond_54

    :cond_53
    move v0, v1

    .line 7883
    :cond_54
    return v0

    .line 7871
    .end local v2    # "aType":I
    .end local v3    # "aBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "bBitmap":Landroid/graphics/Bitmap;
    :cond_55
    :goto_55
    return v1
.end method

.method public static blacklist getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;
    .registers 4
    .param p0, "extras"    # Landroid/os/Bundle;

    .line 7832
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 7836
    :cond_4
    const-class v0, Landroid/graphics/Bitmap;

    const-string v1, "android.picture"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 7837
    .local v0, "bitmapPicture":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_15

    .line 7838
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 7840
    :cond_15
    const-class v1, Landroid/graphics/drawable/Icon;

    const-string v2, "android.pictureIcon"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    return-object v1
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7784
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 7786
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_e

    .line 7787
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.largeIcon.big"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7789
    :cond_e
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_17

    .line 7790
    const-string v1, "android.pictureContentDescription"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 7793
    :cond_17
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    const-string v1, "android.showBigPictureWhenCollapsed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7798
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    const-string v1, "android.pictureIcon"

    const/4 v2, 0x0

    const-string v3, "android.picture"

    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3b

    .line 7799
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7800
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_43

    .line 7802
    :cond_3b
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7803
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 7805
    :goto_43
    return-void
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 5
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 7859
    if-eqz p1, :cond_1d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_d

    goto :goto_1d

    .line 7862
    :cond_d
    move-object v0, p1

    check-cast v0, Landroid/app/Notification$BigPictureStyle;

    .line 7863
    .local v0, "otherS":Landroid/app/Notification$BigPictureStyle;
    invoke-virtual {p0}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Notification$BigPictureStyle;->getBigPicture()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Notification$BigPictureStyle;->areIconsObviouslyDifferent(Landroid/graphics/drawable/Icon;Landroid/graphics/drawable/Icon;)Z

    move-result v1

    return v1

    .line 7860
    .end local v0    # "otherS":Landroid/app/Notification$BigPictureStyle;
    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 7647
    if-eqz p1, :cond_7

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 7655
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 7656
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 7657
    return-object p0
.end method

.method public whitelist bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 7618
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    :cond_4
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_8
    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 7619
    return-object p0
.end method

.method public whitelist bigPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 7627
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 7628
    return-object p0
.end method

.method public blacklist getBigPicture()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 7607
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5

    .line 7608
    return-object v0

    .line 7610
    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o hasSummaryInHeader()Z
    .registers 2

    .line 7849
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .registers 8

    .line 7743
    const/4 v0, 0x0

    .line 7744
    .local v0, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    const/4 v1, 0x0

    .line 7745
    .local v1, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2c

    .line 7746
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 7747
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v2, v4}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 7751
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v1, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7752
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iput-object v3, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7755
    :cond_2c
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, v2, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v2}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    sget v4, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    .line 7756
    invoke-virtual {v2, v4}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v4}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v2

    .line 7757
    .local v2, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$mgetBigPictureLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v4

    invoke-virtual {p0, v4, v2, v3}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 7759
    .local v3, "contentView":Landroid/widget/RemoteViews;
    iget-boolean v4, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryTextSet:Z

    if-eqz v4, :cond_6b

    .line 7760
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, p0, Landroid/app/Notification$BigPictureStyle;->mSummaryText:Ljava/lang/CharSequence;

    .line 7761
    invoke-static {v5, v6}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 7760
    invoke-static {v4, v5}, Landroid/app/Notification$Builder;->-$$Nest$mprocessTextSpans(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x1020617

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 7762
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v3, v5, v2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 7763
    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7766
    :cond_6b
    iget-boolean v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v4, :cond_80

    .line 7767
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/app/Notification;->-$$Nest$fputmLargeIcon(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)V

    .line 7768
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iput-object v1, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 7771
    :cond_80
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    const v5, 0x1020220

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 7773
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8f

    .line 7774
    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 7777
    :cond_8f
    return-object v3
.end method

.method public blacklist makeContentView(Z)Landroid/widget/RemoteViews;
    .registers 5
    .param p1, "increasedHeight"    # Z

    .line 7707
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    if-nez v0, :cond_9

    goto :goto_2f

    .line 7711
    :cond_9
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    .line 7712
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 7713
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 7714
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7715
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 7708
    .end local v0    # "p":Landroid/app/Notification$StandardTemplateParams;
    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 5
    .param p1, "increasedHeight"    # Z

    .line 7723
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_2f

    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    if-nez v0, :cond_9

    goto :goto_2f

    .line 7727
    :cond_9
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v0, v0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    .line 7728
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 7729
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 7730
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->promotedPicture(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 7731
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetHeadsUpBaseLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Notification$BigPictureStyle;->getStandardView(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1

    .line 7724
    .end local v0    # "p":Landroid/app/Notification$StandardTemplateParams;
    :cond_2f
    :goto_2f
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o purgeResources()V
    .registers 2

    .line 7668
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 7669
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_a

    .line 7670
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 7672
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_11

    .line 7673
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 7675
    :cond_11
    return-void
.end method

.method public greylist-max-o reduceImageSizes(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 7682
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 7683
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 7684
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 7685
    .local v1, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_2e

    .line 7686
    if-eqz v1, :cond_15

    .line 7687
    const v2, 0x1050259

    goto :goto_18

    .line 7688
    :cond_15
    const v2, 0x1050258

    .line 7686
    :goto_18
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7689
    .local v2, "maxPictureWidth":I
    if-eqz v1, :cond_22

    .line 7690
    const v3, 0x105025b

    goto :goto_25

    .line 7691
    :cond_22
    const v3, 0x105025a

    .line 7689
    :goto_25
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 7692
    .local v3, "maxPictureHeight":I
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 7694
    .end local v2    # "maxPictureWidth":I
    .end local v3    # "maxPictureHeight":I
    :cond_2e
    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_44

    .line 7695
    if-eqz v1, :cond_38

    .line 7696
    const v2, 0x10502a0

    goto :goto_3b

    .line 7697
    :cond_38
    const v2, 0x105029f

    .line 7695
    :goto_3b
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 7698
    .local v2, "rightIconSize":I
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 7700
    .end local v2    # "rightIconSize":I
    :cond_44
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 7812
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 7814
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 7815
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 7816
    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 7819
    :cond_18
    const-string v0, "android.pictureContentDescription"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 7820
    nop

    .line 7821
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    .line 7824
    :cond_27
    const-string v0, "android.showBigPictureWhenCollapsed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    .line 7826
    invoke-static {p1}, Landroid/app/Notification$BigPictureStyle;->getPictureIcon(Landroid/os/Bundle;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPictureIcon:Landroid/graphics/drawable/Icon;

    .line 7827
    return-void
.end method

.method public whitelist setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 7579
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 7580
    return-object p0
.end method

.method public whitelist setContentDescription(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .line 7598
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPictureContentDescription:Ljava/lang/CharSequence;

    .line 7599
    return-object p0
.end method

.method public whitelist setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .registers 3
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 7588
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 7589
    return-object p0
.end method

.method public whitelist showBigPictureWhenCollapsed(Z)Landroid/app/Notification$BigPictureStyle;
    .registers 2
    .param p1, "show"    # Z

    .line 7638
    iput-boolean p1, p0, Landroid/app/Notification$BigPictureStyle;->mShowBigPictureWhenCollapsed:Z

    .line 7639
    return-object p0
.end method
