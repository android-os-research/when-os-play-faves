.class Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectShareData"
.end annotation


# instance fields
.field blacklist imageCount:I

.field blacklist resolver:Landroid/content/ContentResolver;

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field blacklist totalCount:I

.field blacklist videoCount:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;)V
    .registers 2

    .line 13861
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13865
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$MultiSelectShareData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;-><init>(Lcom/android/internal/app/ChooserActivity;)V

    return-void
.end method


# virtual methods
.method blacklist append(Landroid/net/Uri;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;

    .line 13868
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semIsVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 13869
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_1b

    .line 13871
    :cond_15
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    .line 13873
    :goto_1b
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->totalCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->totalCount:I

    .line 13874
    return-void
.end method

.method blacklist getImageVideoCount(I)V
    .registers 6
    .param p1, "key"    # I

    .line 13877
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_50

    .line 13878
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 13879
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ChooserActivity;->semIsVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 13880
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_4e

    .line 13882
    :cond_48
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    .line 13884
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_4e
    goto :goto_27

    :cond_4f
    goto :goto_b1

    .line 13886
    :cond_50
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 13887
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmGalleryImageInfoHash(Lcom/android/internal/app/ChooserActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;

    iget v0, v0, Lcom/android/internal/app/ChooserActivity$GalleryImageInfo;->mediaType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7c

    .line 13888
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_b1

    .line 13890
    :cond_7c
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    goto :goto_b1

    .line 13893
    :cond_83
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->resolver:Landroid/content/ContentResolver;

    iget-object v2, v0, Lcom/android/internal/app/ChooserActivity;->mIsCheckedUri:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->semIsVideoType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 13894
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->videoCount:I

    goto :goto_b1

    .line 13896
    :cond_ab
    iget v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ChooserActivity$MultiSelectShareData;->imageCount:I

    .line 13900
    :goto_b1
    return-void
.end method
