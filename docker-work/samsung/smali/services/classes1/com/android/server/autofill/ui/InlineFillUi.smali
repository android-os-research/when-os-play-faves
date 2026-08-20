.class public final Lcom/android/server/autofill/ui/InlineFillUi;
.super Ljava/lang/Object;
.source "InlineFillUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;,
        Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;,
        Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "InlineFillUi"


# instance fields
.field public final mAutofillId:Landroid/view/autofill/AutofillId;

.field public final mDatasets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field public mFilterMatchingDisabled:Z

.field public mFilterText:Ljava/lang/String;

.field public final mInlineSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillId;)V
    .registers 3

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 188
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 190
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 163
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_1a
    if-ge v1, v0, :cond_37

    .line 167
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 168
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/service/autofill/Dataset;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v3, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 171
    :cond_37
    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;)V
    .registers 4

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iget-object v0, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object p1, p1, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFilterText:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method

.method public static emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;
    .registers 2

    .line 97
    new-instance v0, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Landroid/view/autofill/AutofillId;)V

    return-object v0
.end method

.method public static forAugmentedAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/server/autofill/ui/InlineFillUi;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;",
            ")",
            "Lcom/android/server/autofill/ui/InlineFillUi;"
        }
    .end annotation

    const-string v0, "android:platform"

    .line 155
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/util/SparseArray;

    move-result-object p1

    .line 157
    new-instance p2, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {p2, p0, p1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V

    return-object p2
.end method

.method public static forAutofill(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/server/autofill/ui/InlineFillUi;
    .registers 4

    .line 132
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 134
    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineAuthentication(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object p1

    .line 136
    new-instance p2, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {p2, p0, p1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/view/inputmethod/InlineSuggestion;)V

    return-object p2

    .line 137
    :cond_16
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 140
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object p1

    const-string v0, "android:autofill"

    .line 139
    invoke-static {p0, v0, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/util/SparseArray;

    move-result-object p1

    .line 142
    new-instance p2, Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-direct {p2, p0, p1}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V

    return-object p2

    .line 144
    :cond_2c
    new-instance p1, Lcom/android/server/autofill/ui/InlineFillUi;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/server/autofill/ui/InlineFillUi;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/util/SparseArray;)V

    return-object p1
.end method


# virtual methods
.method public final copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;
    .registers 5

    .line 251
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getContentProvider()Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v0

    .line 252
    instance-of v1, v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    if-eqz v1, :cond_1d

    .line 256
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    .line 257
    invoke-virtual {p2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object p2

    check-cast v0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;->copy()Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 262
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_1d
    return-object p2
.end method

.method public disableFilterMatching()V
    .registers 2

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    return-void
.end method

.method public getAutofillId()Landroid/view/autofill/AutofillId;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object p0
.end method

.method public getInlineSuggestionsResponse()Landroid/view/inputmethod/InlineSuggestionsResponse;
    .registers 8

    .line 207
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_12

    .line 209
    new-instance p0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object p0

    .line 211
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v0, :cond_23

    goto :goto_88

    :cond_23
    :goto_23
    if-ge v3, v0, :cond_82

    .line 220
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mDatasets:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/autofill/Dataset;

    .line 221
    invoke-virtual {v2}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "InlineFillUi"

    if-gez v4, :cond_57

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AutofillId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found in dataset"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 226
    :cond_57
    invoke-virtual {v2, v4}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    if-nez v6, :cond_63

    const-string v2, "InlinePresentation not found in dataset"

    .line 229
    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7f

    .line 232
    :cond_63
    invoke-virtual {v6}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    if-nez v5, :cond_70

    .line 233
    invoke-virtual {p0, v2, v4}, Lcom/android/server/autofill/ui/InlineFillUi;->includeDataset(Landroid/service/autofill/Dataset;I)Z

    move-result v2

    if-nez v2, :cond_70

    goto :goto_7f

    .line 236
    :cond_70
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7f
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 238
    :cond_82
    new-instance p0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {p0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_88
    :goto_88
    if-ge v3, v0, :cond_9c

    .line 215
    iget-object v2, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mInlineSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-virtual {p0, v3, v2}, Lcom/android/server/autofill/ui/InlineFillUi;->copy(ILandroid/view/inputmethod/InlineSuggestion;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_88

    .line 217
    :cond_9c
    new-instance p0, Landroid/view/inputmethod/InlineSuggestionsResponse;

    invoke-direct {p0, v1}, Landroid/view/inputmethod/InlineSuggestionsResponse;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public final includeDataset(Landroid/service/autofill/Dataset;I)Z
    .registers 7

    .line 271
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 275
    :cond_a
    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-virtual {p1, p2}, Landroid/service/autofill/Dataset;->getFilter(I)Landroid/service/autofill/Dataset$DatasetFieldFilter;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4c

    .line 280
    iget-object p2, v2, Landroid/service/autofill/Dataset$DatasetFieldFilter;->pattern:Ljava/util/regex/Pattern;

    if-nez p2, :cond_3e

    .line 282
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz p0, :cond_3d

    .line 283
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Explicitly disabling filter for dataset id"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InlineFillUi"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v3

    .line 287
    :cond_3e
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz p0, :cond_43

    return v3

    .line 290
    :cond_43
    invoke-virtual {p2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    .line 293
    :cond_4c
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/autofill/AutofillValue;

    if-eqz p2, :cond_79

    .line 294
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v2

    if-nez v2, :cond_5f

    goto :goto_79

    .line 297
    :cond_5f
    iget-boolean p0, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterMatchingDisabled:Z

    if-eqz p0, :cond_64

    return v3

    .line 300
    :cond_64
    invoke-virtual {p2}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 295
    :cond_79
    :goto_79
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object p0

    if-nez p0, :cond_80

    goto :goto_81

    :cond_80
    move v1, v3

    :goto_81
    return v1
.end method

.method public setFilterText(Ljava/lang/String;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/server/autofill/ui/InlineFillUi;->mFilterText:Ljava/lang/String;

    return-void
.end method
