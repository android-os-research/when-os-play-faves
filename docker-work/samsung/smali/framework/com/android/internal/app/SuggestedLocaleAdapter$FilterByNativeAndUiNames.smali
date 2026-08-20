.class Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;
.super Landroid/widget/Filter;
.source "SuggestedLocaleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/SuggestedLocaleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterByNativeAndUiNames"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/SuggestedLocaleAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/internal/app/SuggestedLocaleAdapter;

    .line 736
    iput-object p1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 13
    .param p1, "prefix"    # Ljava/lang/CharSequence;

    .line 740
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 742
    .local v0, "results":Landroid/widget/Filter$FilterResults;
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 743
    iget-object v1, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V

    .line 747
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmOriginalLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 748
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    if-eqz p1, :cond_7c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_31

    goto :goto_7c

    .line 753
    :cond_31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    .line 754
    .local v2, "locale":Ljava/util/Locale;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "prefixString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 757
    .local v4, "count":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 759
    .local v5, "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_47
    if-ge v6, v4, :cond_73

    .line 760
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 761
    .local v7, "value":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    nop

    .line 762
    invoke-virtual {v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameInUiLanguage()Ljava/lang/String;

    move-result-object v8

    .line 761
    invoke-static {v8, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 763
    .local v8, "nameToCheck":Ljava/lang/String;
    nop

    .line 764
    invoke-virtual {v7}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getFullNameNative()Ljava/lang/String;

    move-result-object v9

    .line 763
    invoke-static {v9, v2}, Lcom/android/internal/app/LocaleHelper;->normalizeForSearch(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    .line 765
    .local v9, "nativeNameToCheck":Ljava/lang/String;
    invoke-virtual {p0, v9, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6d

    .line 766
    invoke-virtual {p0, v8, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->wordMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_70

    .line 767
    :cond_6d
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    .end local v7    # "value":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .end local v8    # "nameToCheck":Ljava/lang/String;
    .end local v9    # "nativeNameToCheck":Ljava/lang/String;
    :cond_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    .line 771
    .end local v6    # "i":I
    :cond_73
    iput-object v5, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 772
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_84

    .line 749
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "prefixString":Ljava/lang/String;
    .end local v4    # "count":I
    .end local v5    # "newValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/LocaleStore$LocaleInfo;>;"
    :cond_7c
    :goto_7c
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 750
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 775
    :goto_84
    return-object v0
.end method

.method protected whitelist publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 7
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .line 798
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;Ljava/util/ArrayList;)V

    .line 800
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V

    .line 802
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v0, v1}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V

    .line 804
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmLocaleOptions(Lcom/android/internal/app/SuggestedLocaleAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 805
    .local v1, "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 806
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V

    goto :goto_5d

    .line 807
    :cond_3c
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmCountryMode(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 808
    invoke-virtual {v1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v2

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmIsShowAll(Lcom/android/internal/app/SuggestedLocaleAdapter;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 809
    iget-object v2, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-static {v2}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fgetmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/android/internal/app/SuggestedLocaleAdapter;->-$$Nest$fputmSecSuggestionCount(Lcom/android/internal/app/SuggestedLocaleAdapter;I)V

    .line 811
    .end local v1    # "li":Lcom/android/internal/app/LocaleStore$LocaleInfo;
    :cond_5d
    :goto_5d
    goto :goto_1e

    .line 813
    :cond_5e
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_68

    .line 814
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetChanged()V

    goto :goto_6d

    .line 816
    :cond_68
    iget-object v0, p0, Lcom/android/internal/app/SuggestedLocaleAdapter$FilterByNativeAndUiNames;->this$0:Lcom/android/internal/app/SuggestedLocaleAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/SuggestedLocaleAdapter;->notifyDataSetInvalidated()V

    .line 818
    :goto_6d
    return-void
.end method

.method blacklist wordMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "valueText"    # Ljava/lang/String;
    .param p2, "prefixString"    # Ljava/lang/String;

    .line 781
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 782
    return v1

    .line 785
    :cond_8
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "words":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_1f

    aget-object v5, v0, v4

    .line 788
    .local v5, "word":Ljava/lang/String;
    invoke-virtual {v5, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 789
    return v1

    .line 787
    .end local v5    # "word":Ljava/lang/String;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 793
    :cond_1f
    return v3
.end method
