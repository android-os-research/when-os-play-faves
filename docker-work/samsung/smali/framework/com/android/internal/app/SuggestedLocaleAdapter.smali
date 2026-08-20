.class public Lcom/android/internal/app/SuggestedLocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SuggestedLocaleAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
    }
.end annotation


# static fields
.field private static final blacklist APP_LANGUAGE_PICKER_TYPE_COUNT:I = 0x6

.field private static final blacklist MIN_REGIONS_FOR_SUGGESTIONS:I = 0x6

.field private static final blacklist SYSTEM_LANGUAGE_TYPE_COUNT:I = 0x3

.field private static final blacklist SYSTEM_LANGUAGE_WITHOUT_HEADER_TYPE_COUNT:I = 0x1

.field private static final blacklist TYPE_CURRENT_LOCALE:I = 0x4

.field private static final blacklist TYPE_HEADER_ALL_OTHERS:I = 0x1

.field private static final blacklist TYPE_HEADER_SUGGESTED:I = 0x0

.field private static final blacklist TYPE_HEADER_SUGGESTED_SEC:I = 0x3

.field private static final blacklist TYPE_LOCALE:I = 0x2

.field private static final blacklist TYPE_SYSTEM_LANGUAGE_FOR_APP_LANGUAGE_PICKER:I = 0x5


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mContextOverride:Landroid/content/Context;

.field private final blacklist mCountryMode:Z

.field private blacklist mDisplayLocale:Ljava/util/Locale;

.field private blacklist mInflater:Landroid/view/LayoutInflater;

.field private blacklist mIsShowAll:Z

.field private blacklist mLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLocaleOptionsforShowAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOriginalLocaleOptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSecSuggestionCount:I

.field private blacklist mSubheaderColor:I

.field private blacklist mSuggestionCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCountryMode(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsShowAll(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mOriginalLocaleOptions:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;Z)V
    .registers 4
    .param p2, "countryMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 94
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;-><init>(Ljava/util/Set;ZLjava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Set;ZLjava/lang/String;)V
    .registers 7
    .param p2, "countryMode"    # Z
    .param p3, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 98
    .local p1, "localeOptions":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 81
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 99
    iput-boolean p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    .line 101
    iput-object p3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mAppPackageName:Ljava/lang/String;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    .line 108
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 111
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 112
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    goto :goto_5d

    .line 113
    :cond_4d
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v2, :cond_5d

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 114
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    .line 117
    :cond_5d
    :goto_5d
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v2, :cond_67

    .line 118
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 119
    :cond_67
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-nez v2, :cond_73

    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 120
    :cond_73
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_78
    :goto_78
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_34

    .line 135
    :cond_7e
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-nez v0, :cond_89

    .line 136
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 139
    :cond_89
    return-void
.end method

.method private blacklist addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;

    .line 842
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "description":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/View;->setStateDescription(Ljava/lang/CharSequence;)V

    .line 844
    return-void
.end method

.method private blacklist getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;
    .registers 16
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "itemType"    # I
    .param p4, "position"    # I

    .line 463
    move-object v0, p1

    .line 465
    .local v0, "updatedView":Landroid/view/View;
    const v1, 0x109012b

    const/16 v2, 0x8

    const v3, 0x10203a4

    const v4, 0x10202e1

    const v5, 0x10203b8

    const v6, 0x10202c5

    const/4 v7, 0x1

    const/4 v8, 0x0

    packed-switch p3, :pswitch_data_152

    .line 549
    :pswitch_17
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d1

    .line 550
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d1

    .line 551
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_d1

    move v1, v7

    goto/16 :goto_d2

    .line 489
    :pswitch_2a
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v9}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v9

    if-eqz v9, :cond_65

    .line 490
    instance-of v5, p1, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_41

    .line 491
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_41

    goto :goto_42

    :cond_41
    move v7, v8

    :goto_42
    move v5, v7

    .line 492
    .local v5, "shouldReuseView":Z
    if-nez v5, :cond_150

    .line 493
    iget-object v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v1, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 496
    invoke-direct {p0, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V

    .line 499
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 500
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 501
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 503
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 505
    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_150

    .line 509
    .end local v5    # "shouldReuseView":Z
    :cond_65
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_70

    .line 510
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_70

    goto :goto_71

    :cond_70
    move v7, v8

    :goto_71
    move v5, v7

    .line 511
    .restart local v5    # "shouldReuseView":Z
    if-nez v5, :cond_150

    .line 512
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x10900ac

    invoke-virtual {v1, v2, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 515
    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_150

    .line 522
    .end local v5    # "shouldReuseView":Z
    :pswitch_82
    instance-of v5, p1, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_8d

    .line 523
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8d

    goto :goto_8e

    :cond_8d
    move v7, v8

    :goto_8e
    move v5, v7

    .line 528
    .restart local v5    # "shouldReuseView":Z
    if-nez v5, :cond_150

    .line 529
    iget-object v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v7, v1, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 531
    invoke-direct {p0, v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->addStateDescriptionIntoCurrentLocaleItem(Landroid/view/View;)V

    .line 535
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 536
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 537
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 539
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 541
    invoke-direct {p0, v0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->semApplyRoundedCorner(Landroid/view/View;I)V

    goto/16 :goto_150

    .line 472
    .end local v5    # "shouldReuseView":Z
    :pswitch_b1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_bf

    const v1, 0x1020531

    .line 473
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_bf

    goto :goto_c0

    :cond_bf
    move v7, v8

    :goto_c0
    move v5, v7

    .line 474
    .restart local v5    # "shouldReuseView":Z
    if-nez v5, :cond_150

    .line 475
    new-instance v1, Lcom/android/internal/app/LocalePickerItemView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v1, v2, v8, v3}, Lcom/android/internal/app/LocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    move-object v0, v1

    goto/16 :goto_150

    .line 551
    .end local v5    # "shouldReuseView":Z
    :cond_d1
    move v1, v8

    .line 552
    .local v1, "shouldReuseView":Z
    :goto_d2
    if-nez v1, :cond_e0

    .line 553
    new-instance v3, Lcom/android/internal/app/LocalePickerItemView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v9, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {v3, v4, v7, v9}, Lcom/android/internal/app/LocalePickerItemView;-><init>(Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    move-object v0, v3

    .line 558
    :cond_e0
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 559
    .local v3, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p4}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 560
    .local v4, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 561
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 562
    iget-boolean v5, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 565
    .local v5, "divder":Landroid/view/View;
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 567
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v6

    .line 569
    .local v6, "layoutDir":I
    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutDirection(I)V

    .line 570
    if-ne v6, v7, :cond_11b

    .line 571
    const/4 v8, 0x4

    goto :goto_11c

    .line 572
    :cond_11b
    const/4 v8, 0x3

    .line 570
    :goto_11c
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 574
    const/4 v8, 0x0

    .line 575
    .local v8, "isTopCorner":Z
    const/4 v9, 0x0

    .line 577
    .local v9, "corners":I
    if-eq p4, v7, :cond_12b

    iget v10, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v10, :cond_12d

    add-int/lit8 v10, v10, 0x2

    if-ne p4, v10, :cond_12d

    .line 578
    :cond_12b
    const/4 v9, 0x3

    .line 579
    const/4 v8, 0x1

    .line 582
    :cond_12d
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v10

    sub-int/2addr v10, v7

    if-eq p4, v10, :cond_13a

    iget v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v7, :cond_145

    if-ne p4, v7, :cond_145

    .line 583
    :cond_13a
    if-eqz v8, :cond_13f

    const/16 v7, 0xf

    goto :goto_141

    :cond_13f
    const/16 v7, 0xc

    :goto_141
    move v9, v7

    .line 584
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 587
    :cond_145
    invoke-virtual {v0, v9}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 588
    if-eqz v9, :cond_14f

    .line 589
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    invoke-virtual {v0, v9, v2}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 600
    .end local v3    # "text":Landroid/widget/TextView;
    .end local v4    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v5    # "divder":Landroid/view/View;
    .end local v6    # "layoutDir":I
    .end local v8    # "isTopCorner":Z
    .end local v9    # "corners":I
    :cond_14f
    move v5, v1

    .end local v1    # "shouldReuseView":Z
    .local v5, "shouldReuseView":Z
    :cond_150
    :goto_150
    return-object v0

    nop

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_b1
        :pswitch_17
        :pswitch_b1
        :pswitch_82
        :pswitch_2a
    .end packed-switch
.end method

.method private blacklist semApplyRoundedCorner(Landroid/view/View;I)V
    .registers 11
    .param p1, "updatedView"    # Landroid/view/View;
    .param p2, "position"    # I

    .line 612
    const v0, 0x10203b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 613
    .local v0, "text":Landroid/widget/TextView;
    invoke-virtual {p0, p2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 614
    .local v1, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 616
    iget-boolean v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 618
    const v2, 0x10202c5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 619
    .local v2, "divder":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 622
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "und"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 623
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    .local v3, "layoutDir":I
    goto :goto_51

    .line 625
    .end local v3    # "layoutDir":I
    :cond_49
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    .line 628
    .restart local v3    # "layoutDir":I
    :goto_51
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 629
    const/4 v4, 0x1

    if-ne v3, v4, :cond_59

    .line 630
    const/4 v5, 0x4

    goto :goto_5a

    .line 631
    :cond_59
    const/4 v5, 0x3

    .line 629
    :goto_5a
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 633
    const/4 v5, 0x0

    .line 634
    .local v5, "isTopCorner":Z
    const/4 v6, 0x0

    .line 636
    .local v6, "corners":I
    if-eq p2, v4, :cond_69

    iget v7, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v7, :cond_6b

    add-int/lit8 v7, v7, 0x2

    if-ne p2, v7, :cond_6b

    .line 638
    :cond_69
    const/4 v6, 0x3

    .line 640
    const/4 v5, 0x1

    .line 643
    :cond_6b
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getCount()I

    move-result v7

    sub-int/2addr v7, v4

    if-eq p2, v7, :cond_78

    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-lez v4, :cond_85

    if-ne p2, v4, :cond_85

    .line 645
    :cond_78
    if-eqz v5, :cond_7d

    const/16 v4, 0xf

    goto :goto_7f

    .line 647
    :cond_7d
    const/16 v4, 0xc

    :goto_7f
    move v6, v4

    .line 648
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 651
    :cond_85
    invoke-virtual {p1, v6}, Landroid/view/View;->semSetRoundedCorners(I)V

    .line 652
    if-eqz v6, :cond_8f

    .line 653
    iget v4, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    invoke-virtual {p1, v6, v4}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    .line 655
    :cond_8f
    return-void
.end method

.method private blacklist setTextTo(Landroid/widget/TextView;I)V
    .registers 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "resId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    if-nez v0, :cond_8

    .line 353
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_f

    .line 355
    :cond_8
    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    :goto_f
    return-void
.end method

.method private blacklist showHeaders()Z
    .registers 2

    .line 668
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist showSecHeaders()Z
    .registers 3

    .line 605
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 606
    return v1

    .line 608
    :cond_6
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method

.method private blacklist updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V
    .registers 7
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "text"    # Landroid/widget/TextView;
    .param p3, "position"    # I

    .line 827
    invoke-virtual {p0, p3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 828
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 830
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getContentDescription(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 831
    iget-boolean v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v1, :cond_37

    .line 832
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 834
    .local v1, "layoutDir":I
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 835
    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 836
    const/4 v2, 0x4

    goto :goto_34

    .line 837
    :cond_33
    const/4 v2, 0x3

    .line 835
    :goto_34
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 839
    .end local v1    # "layoutDir":I
    :cond_37
    return-void
.end method


# virtual methods
.method public whitelist areAllItemsEnabled()Z
    .registers 2

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCount()I
    .registers 4

    .line 266
    const/4 v0, 0x0

    .line 269
    .local v0, "offset":I
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 270
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-nez v1, :cond_1b

    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_18

    goto :goto_1b

    .line 273
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 271
    :cond_1b
    :goto_1b
    add-int/lit8 v0, v0, 0x2

    goto :goto_36

    .line 275
    :cond_1e
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 276
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_31

    .line 277
    add-int/lit8 v0, v0, 0x2

    goto :goto_36

    .line 279
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 282
    :cond_34
    add-int/lit8 v0, v0, 0x1

    .line 285
    :goto_36
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public whitelist getFilter()Landroid/widget/Filter;
    .registers 2

    .line 823
    new-instance v0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;

    invoke-direct {v0, p0}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;-><init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V

    return-object v0
.end method

.method public whitelist getItem(I)Ljava/lang/Object;
    .registers 6
    .param p1, "position"    # I

    .line 299
    const/4 v0, 0x0

    .line 302
    .local v0, "offset":I
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 303
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_13

    .line 304
    const/4 v0, -0x1

    goto :goto_34

    .line 305
    :cond_13
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v1, :cond_2a

    .line 306
    iget v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v2, :cond_23

    add-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    if-gt p1, v3, :cond_23

    .line 308
    const/4 v0, -0x2

    goto :goto_34

    .line 309
    :cond_23
    add-int/2addr v2, v1

    if-le p1, v2, :cond_28

    .line 310
    const/4 v0, -0x3

    goto :goto_34

    .line 312
    :cond_28
    const/4 v0, -0x1

    goto :goto_34

    .line 315
    :cond_2a
    iget v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    if-le p1, v1, :cond_30

    const/4 v1, -0x2

    goto :goto_31

    :cond_30
    const/4 v1, -0x1

    :goto_31
    move v0, v1

    goto :goto_34

    .line 318
    :cond_33
    const/4 v0, -0x1

    .line 327
    :goto_34
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    add-int v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 332
    int-to-long v0, p1

    return-wide v0
.end method

.method public whitelist getItemViewType(I)I
    .registers 10
    .param p1, "position"    # I

    .line 157
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-nez v0, :cond_28

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-nez v0, :cond_28

    .line 158
    if-nez p1, :cond_13

    .line 159
    return v4

    .line 161
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 162
    .local v0, "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 163
    return v3

    .line 165
    :cond_20
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 166
    return v1

    .line 168
    :cond_27
    return v2

    .line 169
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_28
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    const/4 v5, 0x3

    if-eqz v0, :cond_5f

    .line 170
    if-nez p1, :cond_33

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    :cond_33
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    if-lez v0, :cond_44

    .line 174
    iget v6, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/lit8 v7, v6, 0x1

    if-ne p1, v7, :cond_3e

    .line 175
    return v5

    .line 177
    :cond_3e
    add-int/2addr v6, v4

    add-int/2addr v6, v0

    add-int/2addr v6, v4

    if-ne p1, v6, :cond_4a

    .line 178
    return v4

    .line 181
    :cond_44
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSuggestionCount:I

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_4a

    .line 182
    return v4

    .line 185
    :cond_4a
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 186
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 187
    return v3

    .line 189
    :cond_57
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 190
    return v1

    .line 192
    :cond_5e
    return v2

    .line 193
    .end local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_5f
    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showSecHeaders()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 194
    if-nez p1, :cond_68

    .line 195
    return v5

    .line 196
    :cond_68
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    add-int/2addr v0, v4

    if-ne p1, v0, :cond_6e

    .line 197
    return v4

    .line 200
    :cond_6e
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 201
    .restart local v0    # "item":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 202
    return v3

    .line 204
    :cond_7b
    invoke-virtual {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 205
    return v1

    .line 207
    :cond_82
    return v2
.end method

.method public blacklist getSecSuggestionCount()I
    .registers 2

    .line 703
    iget v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    return v0
.end method

.method public blacklist getShowAll()Z
    .registers 2

    .line 699
    iget-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    return v0
.end method

.method public whitelist getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 362
    if-nez p2, :cond_10

    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_10

    .line 363
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 366
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    .line 367
    .local v0, "itemType":I
    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getNewViewIfNeeded(Landroid/view/View;Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v1

    .line 368
    .local v1, "itemView":Landroid/view/View;
    const v2, 0x10202e1

    const/16 v3, 0x8

    const v4, 0x10202c5

    const/4 v5, 0x0

    const v6, 0x10203a4

    const v7, 0x10203b8

    packed-switch v0, :pswitch_data_ee

    .line 454
    :pswitch_2a
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    goto/16 :goto_ec

    .line 416
    :pswitch_35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 417
    .local v2, "externalDivider":Landroid/view/View;
    if-eqz v2, :cond_49

    .line 418
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 419
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 420
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 424
    .end local v2    # "externalDivider":Landroid/view/View;
    :cond_49
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 426
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, "title":Landroid/widget/TextView;
    goto :goto_66

    .line 432
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_60
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 434
    .restart local v2    # "title":Landroid/widget/TextView;
    :goto_66
    const v3, 0x1040df4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 435
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 436
    goto/16 :goto_ec

    .line 441
    .end local v2    # "title":Landroid/widget/TextView;
    :pswitch_7d
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 442
    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    nop

    .line 446
    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 445
    invoke-direct {p0, v1, v2, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->updateTextView(Landroid/view/View;Landroid/widget/TextView;I)V

    .line 452
    goto :goto_ec

    .line 377
    :pswitch_9e
    const v2, 0x1020531

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 378
    .local v2, "textView":Landroid/widget/TextView;
    if-nez v0, :cond_b0

    .line 379
    const v3, 0x1040694

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_de

    .line 380
    :cond_b0
    const/4 v3, 0x3

    if-ne v0, v3, :cond_cd

    .line 381
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_ReplaceSecBrandAsGalaxy"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_c6

    .line 383
    const v3, 0x1040696

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_de

    .line 385
    :cond_c6
    const v3, 0x1040695

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_de

    .line 388
    :cond_cd
    iget-boolean v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mCountryMode:Z

    if-eqz v3, :cond_d8

    .line 389
    const v3, 0x1040b6d

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    goto :goto_de

    .line 391
    :cond_d8
    const v3, 0x1040693

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->setTextTo(Landroid/widget/TextView;I)V

    .line 394
    :goto_de
    nop

    .line 395
    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    if-eqz v3, :cond_e4

    goto :goto_e8

    :cond_e4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 394
    :goto_e8
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 411
    .end local v2    # "textView":Landroid/widget/TextView;
    nop

    .line 457
    :goto_ec
    return-object v1

    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_9e
        :pswitch_2a
        :pswitch_9e
        :pswitch_7d
        :pswitch_35
    .end packed-switch
.end method

.method public whitelist getViewTypeCount()I
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->showHeaders()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 245
    const/4 v0, 0x6

    return v0

    .line 247
    :cond_10
    const/4 v0, 0x4

    return v0
.end method

.method public whitelist isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    .line 149
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_18

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    .line 148
    :goto_19
    return v0
.end method

.method public blacklist setDisplayLocale(Landroid/content/Context;Ljava/util/Locale;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 340
    if-nez p2, :cond_8

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 342
    iput-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    goto :goto_20

    .line 343
    :cond_8
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 344
    iput-object p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mDisplayLocale:Ljava/util/Locale;

    .line 345
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 346
    .local v0, "configOverride":Landroid/content/res/Configuration;
    invoke-virtual {v0, p2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 347
    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mContextOverride:Landroid/content/Context;

    .line 349
    .end local v0    # "configOverride":Landroid/content/res/Configuration;
    :cond_20
    :goto_20
    return-void
.end method

.method public blacklist setSecSuggestionCount(I)V
    .registers 2
    .param p1, "count"    # I

    .line 707
    iput p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSecSuggestionCount:I

    .line 708
    return-void
.end method

.method public blacklist setShowAll(Z)V
    .registers 2
    .param p1, "flag"    # Z

    .line 695
    iput-boolean p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 696
    return-void
.end method

.method public blacklist showAllItems()V
    .registers 3

    .line 679
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 680
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 682
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 683
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    .line 684
    return-void
.end method

.method public blacklist showSamsungSuggestedItems()V
    .registers 3

    .line 687
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 688
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 690
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mIsShowAll:Z

    .line 691
    invoke-virtual {p0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    .line 692
    return-void
.end method

.method public blacklist sort(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .registers 3
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    .line 717
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforShowAll:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 718
    return-void
.end method

.method public blacklist sortForSecSuggested(Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;)V
    .registers 3
    .param p1, "comp"    # Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;

    .line 726
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptions:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 727
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mLocaleOptionsforSecSuggested:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 728
    return-void
.end method

.method public blacklist updateTheme(Landroid/view/LayoutInflater;I)V
    .registers 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "color"    # I

    .line 731
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 732
    iput p2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter;->mSubheaderColor:I

    .line 733
    return-void
.end method
