.class public Lcom/android/internal/app/LocaleStore;
.super Ljava/lang/Object;
.source "LocaleStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocaleStore$LocaleInfo;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_SUPPORTED_LOCALE:I = 0x0

.field private static final blacklist DID_LOCALE:Ljava/lang/String; = "en-DI"

.field private static final blacklist DID_SUPPORTED_LOCALE:I = 0x2

.field private static final blacklist FULLNAME_SERBIAN:Ljava/lang/String; = "Srpski"

.field private static final blacklist LANGUAGE_NAME_SERBIAN:Ljava/lang/String; = "sr"

.field private static final blacklist LANGUAGE_XML:Ljava/lang/String; = "/system/csc/language.xml"

.field private static final blacklist LANGUAGE_XML_OMC_V1_DIR:Ljava/lang/String; = "/data/omc/etc"

.field private static final blacklist SHOW_DESIGN_ID_LOCALE:Ljava/lang/String; = "show_text_id"

.field private static final blacklist SHOW_DESIGN_ID_LOCALE_OFF:I = 0x0

.field private static final blacklist SHOW_DESIGN_ID_LOCALE_ON:I = 0x1

.field private static final blacklist SPECIFIC_SUPPORTED_LOCALE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "LocaleStore"

.field private static final blacklist TAG_DISPLAY:Ljava/lang/String; = "Display"

.field private static final blacklist TAG_LANGUAGE:Ljava/lang/String; = "LanguageSet"

.field private static final blacklist TAG_NONSUGGESTED:Ljava/lang/String; = "NonSuggested"

.field private static final blacklist TAG_NOT_DISPLAY:Ljava/lang/String; = "NonDisplay"

.field private static final blacklist TAG_SUGGESTED:Ljava/lang/String; = "Suggested"

.field private static final blacklist XML_LOCALES_INDEX_NO_SUGGESTED:I = 0x3

.field private static final blacklist XML_LOCALES_INDEX_SUGGESTED:I = 0x2

.field private static final blacklist XML_LOCALES_INDEX_SUPPORTED:I = 0x0

.field private static final blacklist XML_LOCALES_INDEX_UNSUPPORTED:I = 0x1

.field private static final blacklist XML_LOCALES_SIZE:I = 0x4

.field private static blacklist sCountryMode:Z

.field private static blacklist sFullyInitialized:Z

.field private static final blacklist sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile blacklist sPreIsDIDLocaleOn:I

.field private static volatile blacklist sPrevDefaultLocaleList:Landroid/os/LocaleList;

.field private static final blacklist sPriorityLocale:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsCountryMode()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsPriorityLocale()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sFullyInitialized:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    sput v0, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    .line 88
    invoke-static {}, Lcom/android/internal/app/LocaleStore;->isChina()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "zh"

    goto :goto_18

    :cond_16
    const-string v1, ""

    :goto_18
    sput-object v1, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    .line 98
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    .line 99
    sput-boolean v0, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addSuggestedLocalesForRegion(Ljava/util/Locale;)V
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 471
    if-nez p0, :cond_3

    .line 472
    return-void

    .line 474
    :cond_3
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 476
    return-void

    .line 479
    :cond_e
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 480
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 482
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 484
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_3b
    goto :goto_18

    .line 485
    :cond_3c
    return-void
.end method

.method private static blacklist buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlLocales"    # [Ljava/lang/String;
    .param p2, "whichSupport"    # I

    .line 669
    move/from16 v0, p2

    const-string v1, ""

    .line 670
    .local v1, "supportedLocales":Ljava/lang/String;
    const-string v2, ""

    .line 671
    .local v2, "unsupportedLocales":Ljava/lang/String;
    const-string v3, ""

    .line 673
    .local v3, "suggestedLocales":Ljava/lang/String;
    packed-switch v0, :pswitch_data_c8

    .line 684
    const-string v4, ""

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    .local v4, "baseSupportedLocales":[Ljava/lang/String;
    goto :goto_21

    .line 681
    .end local v4    # "baseSupportedLocales":[Ljava/lang/String;
    :pswitch_12
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getDIDLocale(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 682
    .restart local v4    # "baseSupportedLocales":[Ljava/lang/String;
    goto :goto_21

    .line 675
    .end local v4    # "baseSupportedLocales":[Ljava/lang/String;
    :pswitch_17
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSpecificCustomerSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 676
    .restart local v4    # "baseSupportedLocales":[Ljava/lang/String;
    goto :goto_21

    .line 678
    .end local v4    # "baseSupportedLocales":[Ljava/lang/String;
    :pswitch_1c
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocalePicker;->getSupportedLocales(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    .line 679
    .restart local v4    # "baseSupportedLocales":[Ljava/lang/String;
    nop

    .line 687
    :goto_21
    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v6, :cond_2e

    if-eqz p1, :cond_2e

    .line 688
    aget-object v1, p1, v5

    .line 689
    aget-object v2, p1, v7

    .line 690
    aget-object v3, p1, v6

    .line 693
    :cond_2e
    invoke-static/range {p0 .. p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v8

    .line 694
    .local v8, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v9, v4

    :goto_33
    if-ge v5, v9, :cond_c7

    aget-object v10, v4, v5

    .line 695
    .local v10, "localeId":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_bf

    .line 698
    new-instance v11, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v12, 0x0

    invoke-direct {v11, v10, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 699
    .local v11, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v13

    .line 700
    .local v13, "lId":Ljava/lang/String;
    if-nez v13, :cond_4b

    goto/16 :goto_b9

    .line 702
    :cond_4b
    if-ne v0, v7, :cond_54

    .line 703
    invoke-virtual {v1, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7b

    .line 704
    goto :goto_b9

    .line 706
    :cond_54
    if-nez v0, :cond_74

    .line 707
    invoke-virtual {v3, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6d

    .line 708
    invoke-static {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v14

    or-int/2addr v14, v7

    invoke-static {v11, v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 709
    invoke-static {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v14

    or-int/lit8 v14, v14, 0x20

    invoke-static {v11, v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 711
    :cond_6d
    invoke-virtual {v2, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_7b

    .line 712
    goto :goto_b9

    .line 714
    :cond_74
    if-ne v0, v6, :cond_7b

    .line 715
    sget v14, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    if-nez v14, :cond_7b

    .line 716
    goto :goto_b9

    .line 720
    :cond_7b
    invoke-virtual {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_91

    .line 721
    invoke-static {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v14

    or-int/2addr v14, v7

    invoke-static {v11, v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 725
    :cond_91
    sget-object v14, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v14, v13, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    invoke-virtual {v11}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v15

    .line 729
    .local v15, "parent":Ljava/util/Locale;
    if-eqz v15, :cond_b9

    .line 730
    invoke-virtual {v15}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    .line 731
    .local v6, "parentId":Ljava/lang/String;
    if-eqz v6, :cond_b1

    .line 732
    invoke-virtual {v14, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_b9

    .line 733
    new-instance v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v7, v15, v12}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    invoke-virtual {v14, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b9

    .line 736
    :cond_b1
    const-string v7, "LocaleStore"

    const-string/jumbo v12, "put null key to sLocaleCache #2"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    .end local v6    # "parentId":Ljava/lang/String;
    .end local v10    # "localeId":Ljava/lang/String;
    .end local v11    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v13    # "lId":Ljava/lang/String;
    .end local v15    # "parent":Ljava/util/Locale;
    :cond_b9
    :goto_b9
    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto/16 :goto_33

    .line 696
    .restart local v10    # "localeId":Ljava/lang/String;
    :cond_bf
    new-instance v5, Ljava/util/IllformedLocaleException;

    const-string v6, "Bad locale entry in locale_config.xml"

    invoke-direct {v5, v6}, Ljava/util/IllformedLocaleException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 740
    .end local v10    # "localeId":Ljava/lang/String;
    :cond_c7
    return-void

    :pswitch_data_c8
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method

.method public static greylist fillCache(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 490
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    .line 491
    return-void
.end method

.method public static blacklist fillCacheManaged(Landroid/content/Context;Z)V
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isInternalCalled"    # Z

    .line 566
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "show_text_id"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 567
    .local v1, "curDIDLocaleOn":I
    sget v2, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    if-ne v2, v1, :cond_23

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    if-eqz v2, :cond_23

    sget-object v2, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    .line 568
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 569
    return-void

    .line 572
    :cond_23
    sput v1, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    .line 574
    const-string v2, "/system/csc/language.xml"

    .line 575
    .local v2, "languageXmlPath":Ljava/lang/String;
    const-string v4, ""

    .line 578
    .local v4, "nosuggestedLocales":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persist.sys.omc_path"

    const-string v7, "/data/omc/etc"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/language.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 581
    .local v5, "omcV2Path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "persist.sys.omc_etcpath"

    invoke-static {v9, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 585
    .local v6, "omcV5Path":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6a

    .line 586
    move-object v2, v5

    goto :goto_76

    .line 587
    :cond_6a
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_76

    .line 588
    move-object v2, v6

    .line 591
    :cond_76
    :goto_76
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore;->getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 593
    .local v7, "xmlLocales":[Ljava/lang/String;
    if-eqz v7, :cond_7f

    .line 594
    const/4 v8, 0x3

    aget-object v4, v7, v8

    .line 597
    :cond_7f
    invoke-static {v0, v7, v3}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 598
    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 599
    const/4 v8, 0x2

    invoke-static {v0, v7, v8}, Lcom/android/internal/app/LocaleStore;->buildLocaleCache(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 602
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 603
    .local v9, "localizedLocales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getSystemAssetLocales()[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    move v12, v3

    :goto_95
    if-ge v12, v11, :cond_1b9

    aget-object v13, v10, v12

    .line 604
    .local v13, "localeId":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v15, 0x0

    invoke-direct {v14, v13, v15}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 605
    .local v14, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    new-instance v8, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "-u-nu-latn"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    invoke-direct {v8, v3, v15}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    move-object v3, v8

    .line 606
    .local v3, "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, "country":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_19c

    .line 609
    const/4 v15, 0x0

    .line 610
    .local v15, "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    const/16 v17, 0x0

    .line 611
    .local v17, "cachedLocaleWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    move/from16 v18, v1

    .end local v1    # "curDIDLocaleOn":I
    .local v18, "curDIDLocaleOn":I
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    .line 612
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-object/from16 v19, v2

    goto :goto_110

    .line 614
    :cond_e6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v2

    .end local v2    # "languageXmlPath":Ljava/lang/String;
    .local v19, "languageXmlPath":Ljava/lang/String;
    invoke-static {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "langScriptCtry":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_110

    .line 616
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 619
    .end local v1    # "langScriptCtry":Ljava/lang/String;
    :cond_110
    :goto_110
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_129

    .line 620
    invoke-virtual {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-object/from16 v1, v17

    goto :goto_12b

    .line 619
    :cond_129
    move-object/from16 v1, v17

    .line 622
    .end local v17    # "cachedLocaleWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .local v1, "cachedLocaleWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_12b
    if-eqz v15, :cond_171

    .line 623
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13c

    .line 624
    const/4 v2, 0x0

    invoke-static {v15, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    goto :goto_150

    .line 626
    :cond_13c
    invoke-static {v15}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v2

    const/16 v16, 0x2

    or-int/lit8 v2, v2, 0x2

    invoke-static {v15, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 628
    invoke-static {v15}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-static {v15, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 631
    :goto_150
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v3

    .end local v3    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .local v17, "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    const-string v3, "en-DI"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_173

    .line 632
    sget v2, Lcom/android/internal/app/LocaleStore;->sPreIsDIDLocaleOn:I

    if-nez v2, :cond_16c

    .line 633
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const/4 v0, 0x0

    const/4 v3, 0x2

    goto :goto_1ad

    .line 636
    :cond_16c
    const/4 v0, 0x0

    invoke-static {v15, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    goto :goto_173

    .line 622
    .end local v17    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v3    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_171
    move-object/from16 v17, v3

    .line 640
    .end local v3    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v17    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_173
    :goto_173
    if-eqz v1, :cond_199

    .line 641
    invoke-virtual {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 642
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    const/4 v3, 0x2

    goto :goto_1a4

    .line 644
    :cond_185
    const/4 v0, 0x0

    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v2

    const/4 v3, 0x2

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 646
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v2

    or-int/lit8 v2, v2, 0x10

    invoke-static {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    goto :goto_1a4

    .line 640
    :cond_199
    const/4 v0, 0x0

    const/4 v3, 0x2

    goto :goto_1a4

    .line 608
    .end local v15    # "cachedLocale":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v17    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v18    # "curDIDLocaleOn":I
    .end local v19    # "languageXmlPath":Ljava/lang/String;
    .local v1, "curDIDLocaleOn":I
    .restart local v2    # "languageXmlPath":Ljava/lang/String;
    .restart local v3    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_19c
    move/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v17, v3

    const/4 v0, 0x0

    const/4 v3, 0x2

    .line 650
    .end local v1    # "curDIDLocaleOn":I
    .end local v2    # "languageXmlPath":Ljava/lang/String;
    .end local v3    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v17    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .restart local v18    # "curDIDLocaleOn":I
    .restart local v19    # "languageXmlPath":Ljava/lang/String;
    :goto_1a4
    if-eqz p1, :cond_1ad

    .line 651
    invoke-static {v14}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 603
    .end local v8    # "country":Ljava/lang/String;
    .end local v13    # "localeId":Ljava/lang/String;
    .end local v14    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v17    # "liWithLatnExt":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_1ad
    :goto_1ad
    add-int/lit8 v12, v12, 0x1

    move v8, v3

    move/from16 v1, v18

    move-object/from16 v2, v19

    move v3, v0

    move-object/from16 v0, p0

    goto/16 :goto_95

    .line 655
    .end local v18    # "curDIDLocaleOn":I
    .end local v19    # "languageXmlPath":Ljava/lang/String;
    .restart local v1    # "curDIDLocaleOn":I
    .restart local v2    # "languageXmlPath":Ljava/lang/String;
    :cond_1b9
    move/from16 v18, v1

    move-object/from16 v19, v2

    .end local v1    # "curDIDLocaleOn":I
    .end local v2    # "languageXmlPath":Ljava/lang/String;
    .restart local v18    # "curDIDLocaleOn":I
    .restart local v19    # "languageXmlPath":Ljava/lang/String;
    if-eqz p1, :cond_1ee

    .line 656
    sget-object v0, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 657
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$mgetLangScriptKey(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->setTranslated(Z)V

    .line 658
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    goto :goto_1c9

    .line 660
    :cond_1e1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/LocaleStore;->addSuggestedLocalesForRegion(Ljava/util/Locale;)V

    .line 661
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/LocaleStore;->sPrevDefaultLocaleList:Landroid/os/LocaleList;

    .line 663
    :cond_1ee
    return-void
.end method

.method private static blacklist findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 11
    .param p0, "tagList"    # [Ljava/lang/String;
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 914
    const-string v0, ""

    .line 915
    .local v0, "result":Ljava/lang/String;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_2e

    aget-object v3, p0, v2

    .line 916
    .local v3, "tagName":Ljava/lang/String;
    if-eqz p1, :cond_2b

    .line 917
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 918
    .local v4, "children":Lorg/w3c/dom/NodeList;
    if-eqz v4, :cond_2b

    .line 919
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 920
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_15
    if-ge v6, v5, :cond_2b

    .line 921
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 922
    .local v7, "child":Lorg/w3c/dom/Node;
    if-eqz v7, :cond_28

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 923
    move-object p1, v7

    .line 920
    .end local v7    # "child":Lorg/w3c/dom/Node;
    :cond_28
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 915
    .end local v3    # "tagName":Ljava/lang/String;
    .end local v4    # "children":Lorg/w3c/dom/NodeList;
    .end local v5    # "n":I
    .end local v6    # "i":I
    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 930
    :cond_2e
    if-eqz p1, :cond_5b

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_5b

    .line 935
    :cond_40
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 936
    .local v1, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_4a

    .line 937
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    .line 941
    :cond_4a
    const-string v2, "\\s"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    const-string v2, "_"

    const-string v3, "-"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 944
    return-object v0

    .line 931
    .end local v1    # "firstChild":Lorg/w3c/dom/Node;
    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static blacklist getAllLocaleInfos(Landroid/content/Context;)Ljava/util/List;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 816
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/app/LocaleStore;->fillCacheManaged(Landroid/content/Context;Z)V

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 819
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 820
    .local v0, "localeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 821
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4b

    .line 822
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 823
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    .line 824
    .local v3, "l":Ljava/util/Locale;
    if-eqz v3, :cond_4b

    .line 825
    new-instance v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 826
    invoke-virtual {v3, v3}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/LocaleStore;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 825
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v3    # "l":Ljava/util/Locale;
    :cond_4b
    goto :goto_17

    .line 830
    :cond_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 832
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v1, "configLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v2, "tmpLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_65
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 838
    .local v4, "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    sget-object v5, Lcom/android/internal/app/LocaleStore;->sPriorityLocale:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/app/LocaleStore;->isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 839
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 841
    :cond_81
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    .end local v4    # "localeInfo":Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :goto_84
    goto :goto_65

    .line 844
    :cond_85
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 845
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 846
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 847
    return-object v1

    .line 850
    .end local v1    # "configLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    .end local v2    # "tmpLocaleInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    :cond_8f
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 851
    return-object v0
.end method

.method public static blacklist getAppCurrentLocaleInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appPackageName"    # Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 415
    return-object v0

    .line 418
    :cond_4
    const-class v1, Landroid/app/LocaleManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/LocaleManager;

    .line 420
    .local v1, "localeManager":Landroid/app/LocaleManager;
    if-nez v1, :cond_10

    .line 421
    move-object v2, v0

    goto :goto_14

    :cond_10
    :try_start_10
    invoke-virtual {v1, p1}, Landroid/app/LocaleManager;->getApplicationLocales(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v2

    .line 422
    .local v2, "localeList":Landroid/os/LocaleList;
    :goto_14
    if-nez v2, :cond_18

    move-object v3, v0

    goto :goto_1d

    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v3

    .line 424
    .local v3, "locale":Ljava/util/Locale;
    :goto_1d
    if-eqz v3, :cond_32

    .line 425
    new-instance v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-direct {v4, v3, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 426
    .local v4, "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v5

    or-int/lit8 v5, v5, 0x4

    invoke-static {v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 427
    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_31} :catch_33

    .line 428
    return-object v4

    .line 432
    .end local v2    # "localeList":Landroid/os/LocaleList;
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v4    # "localeInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_32
    goto :goto_3b

    .line 430
    :catch_33
    move-exception v2

    .line 431
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "LocaleStore"

    const-string v4, "IllegalArgumentException "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_3b
    return-object v0
.end method

.method private static blacklist getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I
    .registers 6
    .param p1, "li"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)I"
        }
    .end annotation

    .line 744
    .local p0, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 745
    :cond_c
    invoke-static {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmIsPseudo(Lcom/android/internal/app/LocaleStore$LocaleInfo;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_14

    return v2

    .line 746
    :cond_14
    if-eqz p2, :cond_1d

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isTranslated()Z

    move-result v0

    if-nez v0, :cond_1d

    return v1

    .line 747
    :cond_1d
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_24

    return v2

    .line 748
    :cond_24
    return v1
.end method

.method public static greylist getLevelLocales(Landroid/content/Context;Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)Ljava/util/Set;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p3, "translatedOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            "Z)",
            "Ljava/util/Set<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 762
    .local p1, "ignorables":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_5

    move v1, v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    :goto_6
    sput-boolean v1, Lcom/android/internal/app/LocaleStore;->sCountryMode:Z

    .line 764
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->fillCache(Landroid/content/Context;)V

    .line 765
    if-nez p2, :cond_f

    const/4 v1, 0x0

    goto :goto_13

    :cond_f
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 767
    .local v1, "parentId":Ljava/lang/String;
    :goto_13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 768
    .local v2, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    sget-object v3, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 769
    .local v4, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {p1, v4, p3}, Lcom/android/internal/app/LocaleStore;->getLevel(Ljava/util/Set;Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)I

    move-result v5

    .line 770
    .local v5, "level":I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_71

    .line 771
    if-eqz p2, :cond_49

    .line 772
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_71

    .line 773
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 776
    :cond_49
    invoke-static {v4, v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$misSuggestionOfType(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 777
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 781
    :cond_53
    invoke-virtual {v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getParent()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/LocaleStore;->getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;

    move-result-object v6

    .line 782
    .local v6, "parentLi":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    if-nez v6, :cond_5e

    goto :goto_22

    .line 783
    :cond_5e
    const/16 v7, 0x10

    invoke-static {v4, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$misSuggestionOfType(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 784
    invoke-static {v6}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v8

    or-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 786
    :cond_6e
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 794
    .end local v4    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v5    # "level":I
    .end local v6    # "parentLi":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_71
    :goto_71
    goto :goto_22

    .line 795
    :cond_72
    return-object v2
.end method

.method public static greylist getLocaleInfo(Ljava/util/Locale;)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 5
    .param p0, "locale"    # Ljava/util/Locale;

    .line 800
    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "id":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 803
    new-instance v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 804
    .local v2, "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 806
    .end local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_16
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 808
    .restart local v2    # "result":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :goto_1d
    return-object v2
.end method

.method private static blacklist getLocaleListFromXML(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;

    .line 878
    const-string v0, "LocaleStore"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    .line 880
    .local v1, "result":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 882
    .local v2, "rootNode":Lorg/w3c/dom/Node;
    :try_start_6
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 883
    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 884
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 885
    .local v5, "doc":Lorg/w3c/dom/Document;
    if-eqz v5, :cond_1e

    .line 886
    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0
    :try_end_1d
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_1d} :catch_31
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_1d} :catch_28
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_1d} :catch_1f

    move-object v2, v0

    .line 894
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    :cond_1e
    :goto_1e
    goto :goto_3a

    .line 892
    :catch_1f
    move-exception v3

    .line 893
    .local v3, "ex":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 890
    .end local v3    # "ex":Ljava/io/IOException;
    :catch_28
    move-exception v3

    .line 891
    .local v3, "ex":Lorg/xml/sax/SAXException;
    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Lorg/xml/sax/SAXException;
    goto :goto_1e

    .line 888
    :catch_31
    move-exception v3

    .line 889
    .local v3, "ex":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v3}, Ljavax/xml/parsers/ParserConfigurationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "ex":Ljavax/xml/parsers/ParserConfigurationException;
    goto :goto_1e

    .line 895
    :goto_3a
    if-nez v2, :cond_3e

    .line 896
    const/4 v0, 0x0

    return-object v0

    .line 900
    :cond_3e
    const-string v0, "LanguageSet"

    const-string v3, "Display"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 901
    .local v3, "displayTagPath":[Ljava/lang/String;
    const-string v4, "NonDisplay"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, "notDisplayTagPath":[Ljava/lang/String;
    const-string v5, "Suggested"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    .line 903
    .local v5, "suggestedTagPath":[Ljava/lang/String;
    const-string v6, "NonSuggested"

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    .line 905
    .local v0, "notSuggestedTagPath":[Ljava/lang/String;
    const/4 v6, 0x0

    invoke-static {v3, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 906
    const/4 v6, 0x1

    invoke-static {v4, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 907
    const/4 v6, 0x2

    invoke-static {v5, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 908
    const/4 v6, 0x3

    invoke-static {v0, v2}, Lcom/android/internal/app/LocaleStore;->findTagValue([Ljava/lang/String;Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 910
    return-object v1
.end method

.method private static blacklist getSimCountries(Landroid/content/Context;)Ljava/util/Set;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 368
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 370
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_35

    .line 371
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "iso":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    .line 373
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_22
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_35

    .line 378
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v2    # "iso":Ljava/lang/String;
    :cond_35
    return-object v0
.end method

.method public static blacklist getSystemCurrentLocaleInfo()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
            ">;"
        }
    .end annotation

    .line 440
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v0, "localeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    .line 443
    .local v1, "systemLangList":Landroid/os/LocaleList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v1}, Landroid/os/LocaleList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2c

    .line 444
    new-instance v3, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/util/Locale;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 445
    .local v3, "systemLocaleInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v4

    const/4 v5, 0x1

    or-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 446
    invoke-static {v3, v5}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 447
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v3    # "systemLocaleInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 449
    .end local v2    # "i":I
    :cond_2c
    return-object v0
.end method

.method public static blacklist getSystemDefaultLocaleInfo(Z)Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .registers 4
    .param p0, "hasAppLanguage"    # Z

    .line 457
    new-instance v0, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;-><init>(Ljava/lang/String;Lcom/android/internal/app/LocaleStore$LocaleInfo-IA;)V

    .line 458
    .local v0, "systemDefaultInfo":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 459
    if-eqz p0, :cond_1c

    .line 460
    invoke-static {v0}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 462
    :cond_1c
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmIsTranslated(Lcom/android/internal/app/LocaleStore$LocaleInfo;Z)V

    .line 463
    return-object v0
.end method

.method private static blacklist isChina()Z
    .registers 2

    .line 859
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHINA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static blacklist isConfigLocale(Ljava/lang/String;Ljava/util/Locale;)Z
    .registers 3
    .param p0, "config"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 855
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static blacklist toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .line 863
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 864
    return-object p0

    .line 867
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist updateSimCountries(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 400
    invoke-static {p0}, Lcom/android/internal/app/LocaleStore;->getSimCountries(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    .line 402
    .local v0, "simCountries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/app/LocaleStore;->sLocaleCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 407
    .local v2, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 408
    invoke-static {v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fgetmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->-$$Nest$fputmSuggestionFlags(Lcom/android/internal/app/LocaleStore$LocaleInfo;I)V

    .line 410
    .end local v2    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_31
    goto :goto_e

    .line 411
    :cond_32
    return-void
.end method
