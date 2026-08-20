.class public final Landroid/app/SearchableInfo;
.super Ljava/lang/Object;
.source "SearchableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SearchableInfo$ActionKeyInfo;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/SearchableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SearchableInfo"

.field private static final greylist-max-o MD_LABEL_SEARCHABLE:Ljava/lang/String; = "android.app.searchable"

.field private static final greylist-max-o MD_XML_ELEMENT_SEARCHABLE:Ljava/lang/String; = "searchable"

.field private static final greylist-max-o MD_XML_ELEMENT_SEARCHABLE_ACTION_KEY:Ljava/lang/String; = "actionkey"

.field private static final blacklist MD_XML_ELEMENT_SEARCHABLE_EXTRA_ATTR:Ljava/lang/String; = "extra-attr"

.field private static final blacklist SEARCHABLE_EXTRA_ATTR_ADVANCEDTYPE:Ljava/lang/String; = "advancedSearchType"

.field private static final blacklist SEARCHABLE_EXTRA_ATTR_APPSEARCH:Ljava/lang/String; = "includeInAppSearch"

.field private static final blacklist SEARCHABLE_EXTRA_ATTR_CATEGORY_FILTERS:Ljava/lang/String; = "categoryFilters"

.field private static final blacklist SEARCHABLE_EXTRA_ATTR_INSIGHTSEARCH:Ljava/lang/String; = "includeInInsightSearch"

.field private static final blacklist SEARCHABLE_EXTRA_ATTR_LAYOUTSTYLE:Ljava/lang/String; = "searchLayoutStyle"

.field private static final blacklist SEARCHABLE_EXTRA_ATTR_TAGPROVIDER_URI:Ljava/lang/String; = "tagProviderUri"

.field private static final blacklist SEARCHABLE_EXTRA_ATTR_TAG_FILTERS:Ljava/lang/String; = "tagFilters"

.field private static final greylist-max-o SEARCH_MODE_BADGE_ICON:I = 0x8

.field private static final greylist-max-o SEARCH_MODE_BADGE_LABEL:I = 0x4

.field private static final greylist-max-o SEARCH_MODE_QUERY_REWRITE_FROM_DATA:I = 0x10

.field private static final greylist-max-o SEARCH_MODE_QUERY_REWRITE_FROM_TEXT:I = 0x20

.field private static final greylist-max-o VOICE_SEARCH_LAUNCH_RECOGNIZER:I = 0x4

.field private static final greylist-max-o VOICE_SEARCH_LAUNCH_WEB_SEARCH:I = 0x2

.field private static final greylist-max-o VOICE_SEARCH_SHOW_BUTTON:I = 0x1


# instance fields
.field private greylist-max-o mActionKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/SearchableInfo$ActionKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAdvancedSearchType:Ljava/lang/String;

.field private final greylist-max-o mAutoUrlDetect:Z

.field private blacklist mCategoryFilters:Ljava/lang/String;

.field private final greylist-max-o mHintId:I

.field private final greylist-max-o mIconId:I

.field private blacklist mIncludeInAppSearch:Z

.field private final greylist-max-o mIncludeInGlobalSearch:Z

.field private blacklist mIncludeInInsightSearch:Z

.field private final greylist-max-o mLabelId:I

.field private final greylist-max-o mQueryAfterZeroResults:Z

.field private final greylist-max-o mSearchActivity:Landroid/content/ComponentName;

.field private final greylist-max-o mSearchButtonText:I

.field private final greylist-max-o mSearchImeOptions:I

.field private final greylist-max-o mSearchInputType:I

.field private blacklist mSearchLayoutStyle:Ljava/lang/String;

.field private final greylist-max-o mSearchMode:I

.field private final greylist-max-o mSettingsDescriptionId:I

.field private final greylist-max-o mSuggestAuthority:Ljava/lang/String;

.field private final greylist-max-o mSuggestIntentAction:Ljava/lang/String;

.field private final greylist-max-o mSuggestIntentData:Ljava/lang/String;

.field private final greylist-max-o mSuggestPath:Ljava/lang/String;

.field private final greylist-max-o mSuggestProviderPackage:Ljava/lang/String;

.field private final greylist-max-o mSuggestSelection:Ljava/lang/String;

.field private final greylist-max-o mSuggestThreshold:I

.field private blacklist mTagFilters:Ljava/lang/String;

.field private blacklist mTagProviderUri:Ljava/lang/String;

.field private final greylist-max-o mVoiceLanguageId:I

.field private final greylist-max-o mVoiceLanguageModeId:I

.field private final greylist-max-o mVoiceMaxResults:I

.field private final greylist-max-o mVoicePromptTextId:I

.field private final greylist-max-o mVoiceSearchMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 945
    new-instance v0, Landroid/app/SearchableInfo$1;

    invoke-direct {v0}, Landroid/app/SearchableInfo$1;-><init>()V

    sput-object v0, Landroid/app/SearchableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    .registers 12
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;
    .param p3, "cName"    # Landroid/content/ComponentName;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 340
    iput-object p3, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 342
    sget-object v0, Lcom/android/internal/R$styleable;->Searchable:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 344
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 345
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 346
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 347
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 348
    const/16 v5, 0x9

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 350
    const/16 v5, 0xa

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 355
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 356
    .local v5, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x11200b9

    invoke-virtual {v6, v7, v5, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 357
    iget v6, v5, Landroid/util/TypedValue;->data:I

    const/16 v7, 0x10

    if-eqz v6, :cond_59

    .line 358
    const v3, 0x2000003

    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    goto :goto_5f

    .line 362
    :cond_59
    invoke-virtual {v0, v7, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 367
    :goto_5f
    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 369
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 371
    const/16 v3, 0x15

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 374
    const/16 v3, 0x14

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 376
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 378
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 380
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 382
    const/4 v6, 0x7

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 384
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 386
    const/16 v6, 0x11

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 389
    const/16 v6, 0xb

    .line 390
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 392
    const/16 v6, 0xc

    .line 393
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 394
    const/16 v6, 0xd

    .line 395
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 396
    const/16 v6, 0xe

    .line 397
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 398
    const/16 v6, 0xf

    .line 399
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 401
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 404
    iput-boolean v4, p0, Landroid/app/SearchableInfo;->mIncludeInAppSearch:Z

    .line 408
    const/4 v2, 0x0

    .line 409
    .local v2, "suggestProviderPackage":Ljava/lang/String;
    if-eqz v3, :cond_e9

    .line 410
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 411
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/high16 v6, 0x10000000

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    .line 413
    .local v3, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v3, :cond_e9

    .line 414
    iget-object v2, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 417
    .end local v3    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_e9
    iput-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 420
    if-eqz v1, :cond_ee

    .line 423
    return-void

    .line 421
    :cond_ee
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Search label must be a resource reference."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 964
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mLabelId:I

    .line 965
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    .line 966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mHintId:I

    .line 967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mIconId:I

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    .line 970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    .line 971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    .line 972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_40

    move v1, v2

    goto :goto_41

    :cond_40
    move v1, v3

    :goto_41
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    .line 973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4b

    move v1, v2

    goto :goto_4c

    :cond_4b
    move v1, v3

    :goto_4c
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    .line 974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_56

    move v1, v2

    goto :goto_57

    :cond_56
    move v1, v3

    :goto_57
    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    .line 976
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    .line 977
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    .line 978
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    .line 979
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    .line 980
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    .line 981
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    .line 982
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    .line 984
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "count":I
    :goto_87
    if-lez v1, :cond_94

    .line 985
    new-instance v4, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v4, p1, v0}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/os/Parcel;Landroid/app/SearchableInfo$ActionKeyInfo-IA;)V

    invoke-direct {p0, v4}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V

    .line 984
    add-int/lit8 v1, v1, -0x1

    goto :goto_87

    .line 988
    .end local v1    # "count":I
    :cond_94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    .line 990
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    .line 991
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    .line 992
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    .line 993
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    .line 997
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c0

    move v0, v2

    goto :goto_c1

    :cond_c0
    move v0, v3

    :goto_c1
    iput-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInInsightSearch:Z

    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ca

    goto :goto_cb

    :cond_ca
    move v2, v3

    :goto_cb
    iput-boolean v2, p0, Landroid/app/SearchableInfo;->mIncludeInAppSearch:Z

    .line 999
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mAdvancedSearchType:Ljava/lang/String;

    .line 1000
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mSearchLayoutStyle:Ljava/lang/String;

    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mTagProviderUri:Ljava/lang/String;

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mTagFilters:Ljava/lang/String;

    .line 1003
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SearchableInfo;->mCategoryFilters:Ljava/lang/String;

    .line 1005
    return-void
.end method

.method private greylist-max-o addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    .registers 4
    .param p1, "keyInfo"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .line 550
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 551
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    .line 553
    :cond_b
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    return-void
.end method

.method private blacklist addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 873
    sget-object v0, Lcom/android/internal/R$styleable;->SearchableExtraAttr:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 876
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 877
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 879
    .local v3, "resId":I
    const-string v4, "includeInInsightSearch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_20

    .line 880
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mIncludeInInsightSearch:Z

    goto :goto_7c

    .line 881
    :cond_20
    const-string v4, "includeInAppSearch"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 882
    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/app/SearchableInfo;->mIncludeInAppSearch:Z

    goto :goto_7c

    .line 883
    :cond_2f
    const-string v1, "advancedSearchType"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 884
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mAdvancedSearchType:Ljava/lang/String;

    goto :goto_7c

    .line 885
    :cond_3e
    const-string/jumbo v1, "searchLayoutStyle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 886
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mSearchLayoutStyle:Ljava/lang/String;

    goto :goto_7c

    .line 887
    :cond_4e
    const-string/jumbo v1, "tagProviderUri"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 888
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mTagProviderUri:Ljava/lang/String;

    goto :goto_7c

    .line 889
    :cond_5e
    const-string/jumbo v1, "tagFilters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 890
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mTagFilters:Ljava/lang/String;

    goto :goto_7c

    .line 891
    :cond_6e
    const-string v1, "categoryFilters"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 892
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/SearchableInfo;->mCategoryFilters:Ljava/lang/String;

    .line 895
    :cond_7c
    :goto_7c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 896
    return-void
.end method

.method private static greylist-max-o createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activity"    # Landroid/content/ComponentName;

    .line 287
    const-string v0, "SearchableInfo"

    const/4 v1, 0x0

    .line 289
    .local v1, "theirContext":Landroid/content/Context;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_c} :catch_2a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_c} :catch_e

    move-object v1, v0

    .line 294
    :goto_d
    goto :goto_46

    .line 292
    :catch_e
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 290
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2a
    move-exception v2

    .line 291
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_d

    .line 296
    :goto_46
    return-object v1
.end method

.method public static greylist-max-o getActivityMetaData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/app/SearchableInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 568
    const/4 v0, 0x0

    .line 570
    .local v0, "userContext":Landroid/content/Context;
    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v2, "system"

    const/4 v3, 0x0

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_f} :catch_30

    move-object v0, v2

    .line 575
    nop

    .line 577
    nop

    .line 578
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.app.searchable"

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 579
    .local v2, "xml":Landroid/content/res/XmlResourceParser;
    if-nez v2, :cond_1f

    .line 580
    return-object v1

    .line 582
    :cond_1f
    new-instance v1, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v1, "cName":Landroid/content/ComponentName;
    invoke-static {v0, v2, v1}, Landroid/app/SearchableInfo;->getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 585
    .local v3, "searchable":Landroid/app/SearchableInfo;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    .line 601
    return-object v3

    .line 572
    .end local v1    # "cName":Landroid/content/ComponentName;
    .end local v2    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v3    # "searchable":Landroid/app/SearchableInfo;
    :catch_30
    move-exception v2

    .line 573
    .local v2, "nnfe":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t create package context for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SearchableInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-object v1
.end method

.method private static greylist-max-o getActivityMetaData(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/ComponentName;)Landroid/app/SearchableInfo;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xml"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "cName"    # Landroid/content/ComponentName;

    .line 615
    const-string v0, "Reading searchable metadata for "

    const-string v1, "SearchableInfo"

    const/4 v2, 0x0

    .line 616
    .local v2, "result":Landroid/app/SearchableInfo;
    invoke-static {p0, p2}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v3

    .line 617
    .local v3, "activityContext":Landroid/content/Context;
    const/4 v4, 0x0

    if-nez v3, :cond_d

    return-object v4

    .line 622
    :cond_d
    :try_start_d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .line 623
    .local v5, "tagType":I
    :goto_11
    const/4 v6, 0x1

    if-eq v5, v6, :cond_c1

    .line 624
    const/4 v6, 0x2

    if-ne v5, v6, :cond_ba

    .line 625
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "searchable"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_22} :catch_dd
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_22} :catch_c3

    const-string v7, ": "

    if-eqz v6, :cond_5c

    .line 626
    :try_start_26
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6
    :try_end_2a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_26 .. :try_end_2a} :catch_dd
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_c3

    .line 627
    .local v6, "attr":Landroid/util/AttributeSet;
    if-eqz v6, :cond_5b

    .line 629
    :try_start_2c
    new-instance v8, Landroid/app/SearchableInfo;

    invoke-direct {v8, v3, v6, p2}, Landroid/app/SearchableInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_31} :catch_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2c .. :try_end_31} :catch_dd
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_c3

    move-object v2, v8

    .line 634
    goto :goto_5b

    .line 630
    :catch_33
    move-exception v8

    .line 631
    .local v8, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_34
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid searchable metadata for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 632
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 631
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return-object v4

    .line 636
    .end local v6    # "attr":Landroid/util/AttributeSet;
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_5b
    :goto_5b
    goto :goto_ba

    :cond_5c
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "actionkey"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a2

    .line 637
    if-nez v2, :cond_6b

    .line 639
    return-object v4

    .line 641
    :cond_6b
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_6f} :catch_dd
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_6f} :catch_c3

    .line 642
    .restart local v6    # "attr":Landroid/util/AttributeSet;
    if-eqz v6, :cond_ba

    .line 644
    :try_start_71
    new-instance v8, Landroid/app/SearchableInfo$ActionKeyInfo;

    invoke-direct {v8, v3, v6}, Landroid/app/SearchableInfo$ActionKeyInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {v2, v8}, Landroid/app/SearchableInfo;->addActionKey(Landroid/app/SearchableInfo$ActionKeyInfo;)V
    :try_end_79
    .catch Ljava/lang/IllegalArgumentException; {:try_start_71 .. :try_end_79} :catch_7a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_79} :catch_dd
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_c3

    .line 649
    goto :goto_ba

    .line 645
    :catch_7a
    move-exception v8

    .line 646
    .restart local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :try_start_7b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid action key for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 647
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 646
    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-object v4

    .line 652
    .end local v6    # "attr":Landroid/util/AttributeSet;
    .end local v8    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_a2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "extra-attr"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 653
    if-eqz v2, :cond_ba

    .line 654
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 655
    .restart local v6    # "attr":Landroid/util/AttributeSet;
    if-eqz v6, :cond_ba

    .line 656
    invoke-direct {v2, v3, v6}, Landroid/app/SearchableInfo;->addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V

    nop

    .line 662
    .end local v6    # "attr":Landroid/util/AttributeSet;
    :cond_ba
    :goto_ba
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6
    :try_end_be
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_be} :catch_dd
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_be} :catch_c3

    move v5, v6

    goto/16 :goto_11

    .line 670
    .end local v5    # "tagType":I
    :cond_c1
    nop

    .line 672
    return-object v2

    .line 667
    :catch_c3
    move-exception v5

    .line 668
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 669
    return-object v4

    .line 664
    .end local v5    # "e":Ljava/io/IOException;
    :catch_dd
    move-exception v5

    .line 665
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 666
    return-object v4
.end method


# virtual methods
.method public whitelist autoUrlDetect()Z
    .registers 2

    .line 863
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1008
    const/4 v0, 0x0

    return v0
.end method

.method public greylist findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;
    .registers 4
    .param p1, "keyCode"    # I

    .line 543
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_6

    .line 544
    const/4 v0, 0x0

    return-object v0

    .line 546
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchableInfo$ActionKeyInfo;

    return-object v0
.end method

.method public greylist getActivityContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 280
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-static {p1, v0}, Landroid/app/SearchableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getHintId()I
    .registers 2

    .line 713
    iget v0, p0, Landroid/app/SearchableInfo;->mHintId:I

    return v0
.end method

.method public greylist getIconId()I
    .registers 2

    .line 727
    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    return v0
.end method

.method public whitelist getImeOptions()I
    .registers 2

    .line 833
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    return v0
.end method

.method public whitelist getInputType()I
    .registers 2

    .line 821
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    return v0
.end method

.method public greylist getLabelId()I
    .registers 2

    .line 686
    iget v0, p0, Landroid/app/SearchableInfo;->mLabelId:I

    return v0
.end method

.method public greylist getProviderContext(Landroid/content/Context;Landroid/content/Context;)Landroid/content/Context;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Landroid/content/Context;

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "theirContext":Landroid/content/Context;
    iget-object v1, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 312
    return-object p2

    .line 314
    :cond_10
    iget-object v1, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 316
    const/4 v2, 0x0

    :try_start_15
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_19} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_19} :catch_1b

    move-object v0, v1

    .line 321
    :goto_1a
    goto :goto_1f

    .line 319
    :catch_1b
    move-exception v1

    goto :goto_1f

    .line 317
    :catch_1d
    move-exception v1

    goto :goto_1a

    .line 323
    :cond_1f
    :goto_1f
    return-object v0
.end method

.method public whitelist getSearchActivity()Landroid/content/ComponentName;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public greylist-max-o getSearchButtonText()I
    .registers 2

    .line 809
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    return v0
.end method

.method public whitelist getSettingsDescriptionId()I
    .registers 2

    .line 207
    iget v0, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    return v0
.end method

.method public whitelist getSuggestAuthority()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestIntentAction()Ljava/lang/String;
    .registers 2

    .line 241
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestIntentData()Ljava/lang/String;
    .registers 2

    .line 258
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestPackage()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestPath()Ljava/lang/String;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestSelection()Ljava/lang/String;
    .registers 2

    .line 226
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSuggestThreshold()I
    .registers 2

    .line 268
    iget v0, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    return v0
.end method

.method public whitelist getVoiceLanguageId()I
    .registers 2

    .line 787
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    return v0
.end method

.method public whitelist getVoiceLanguageModeId()I
    .registers 2

    .line 765
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    return v0
.end method

.method public whitelist getVoiceMaxResults()I
    .registers 2

    .line 798
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    return v0
.end method

.method public whitelist getVoicePromptTextId()I
    .registers 2

    .line 776
    iget v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    return v0
.end method

.method public whitelist getVoiceSearchEnabled()Z
    .registers 3

    .line 736
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public whitelist getVoiceSearchLaunchRecognizer()Z
    .registers 2

    .line 754
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist getVoiceSearchLaunchWebSearch()Z
    .registers 2

    .line 745
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist queryAfterZeroResults()Z
    .registers 2

    .line 854
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    return v0
.end method

.method public blacklist semGetAdvancedSearchType()Ljava/lang/String;
    .registers 2

    .line 916
    iget-object v0, p0, Landroid/app/SearchableInfo;->mAdvancedSearchType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist semGetCategoryFilters()Ljava/lang/String;
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/app/SearchableInfo;->mCategoryFilters:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist semGetLabelId()I
    .registers 2

    .line 701
    invoke-virtual {p0}, Landroid/app/SearchableInfo;->getLabelId()I

    move-result v0

    return v0
.end method

.method public whitelist semGetSearchLayoutStyle()Ljava/lang/String;
    .registers 2

    .line 927
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchLayoutStyle:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist semShouldIncludeInInsightSearch()Z
    .registers 2

    .line 906
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInInsightSearch:Z

    return v0
.end method

.method public whitelist shouldIncludeInGlobalSearch()Z
    .registers 2

    .line 844
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    return v0
.end method

.method public whitelist shouldRewriteQueryFromData()Z
    .registers 2

    .line 188
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist shouldRewriteQueryFromText()Z
    .registers 2

    .line 197
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public greylist-max-o useBadgeIcon()Z
    .registers 2

    .line 179
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public greylist-max-o useBadgeLabel()Z
    .registers 2

    .line 168
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1012
    iget v0, p0, Landroid/app/SearchableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1014
    iget v0, p0, Landroid/app/SearchableInfo;->mHintId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1016
    iget v0, p0, Landroid/app/SearchableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchButtonText:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchInputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    iget v0, p0, Landroid/app/SearchableInfo;->mSearchImeOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1020
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInGlobalSearch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mQueryAfterZeroResults:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1022
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mAutoUrlDetect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    iget v0, p0, Landroid/app/SearchableInfo;->mSettingsDescriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestAuthority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestSelection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1029
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestIntentData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1030
    iget v0, p0, Landroid/app/SearchableInfo;->mSuggestThreshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1032
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    if-nez v0, :cond_63

    .line 1033
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_84

    .line 1035
    :cond_63
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    iget-object v0, p0, Landroid/app/SearchableInfo;->mActionKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_74
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_84

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchableInfo$ActionKeyInfo;

    .line 1037
    .local v1, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    invoke-virtual {v1, p1, p2}, Landroid/app/SearchableInfo$ActionKeyInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1038
    .end local v1    # "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    goto :goto_74

    .line 1041
    :cond_84
    :goto_84
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSuggestProviderPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1043
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceSearchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1044
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageModeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1045
    iget v0, p0, Landroid/app/SearchableInfo;->mVoicePromptTextId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceLanguageId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    iget v0, p0, Landroid/app/SearchableInfo;->mVoiceMaxResults:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInInsightSearch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget-boolean v0, p0, Landroid/app/SearchableInfo;->mIncludeInAppSearch:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1052
    iget-object v0, p0, Landroid/app/SearchableInfo;->mAdvancedSearchType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Landroid/app/SearchableInfo;->mSearchLayoutStyle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Landroid/app/SearchableInfo;->mTagProviderUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Landroid/app/SearchableInfo;->mTagFilters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Landroid/app/SearchableInfo;->mCategoryFilters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1058
    return-void
.end method
