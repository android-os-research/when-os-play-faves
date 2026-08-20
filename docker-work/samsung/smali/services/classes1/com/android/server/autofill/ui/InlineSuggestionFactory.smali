.class public final Lcom/android/server/autofill/ui/InlineSuggestionFactory;
.super Ljava/lang/Object;
.source "InlineSuggestionFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "InlineSuggestionFactory"


# direct methods
.method public static synthetic $r8$lambda$14-yhPSVU-BGNOqHGATcjdusawA()V
    .registers 0

    invoke-static {}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createInlineSuggestionTooltip$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZkBKlfx0GeQEdrCPS29CKNM5Pmc(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createInlineAuthentication$0(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yYkAR7qGHuMMR87CXjFcxUsBtik(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createInlineSuggestions$1(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInlineAuthentication(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;
    .registers 12

    .line 48
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    .line 49
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    .line 51
    new-instance v5, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2, v1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V

    iget-object v1, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    const/4 v2, 0x0

    .line 54
    invoke-static {v1, v2, v0}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 57
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object p1

    const-string v1, "android:autofill"

    .line 55
    invoke-static {v0, p0, v1, p1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v7

    const-string v3, "android:autofill"

    const-string v4, "android:autofill:action"

    move-object v2, p0

    move-object v8, p2

    .line 51
    invoke-static/range {v2 .. v8}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object p0

    return-object p0
.end method

.method public static createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;
    .registers 5

    .line 217
    new-instance v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    .line 221
    new-instance p0, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    return-object p0
.end method

.method public static createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;
    .registers 15

    .line 128
    new-instance v7, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 129
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    .line 130
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    move-result-object v3

    .line 131
    invoke-virtual {p4}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    move-object v0, v7

    move-object v2, p1

    move-object v4, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 133
    new-instance p1, Landroid/view/inputmethod/InlineSuggestion;

    .line 134
    invoke-static {p0, p4, p3, p6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object p0

    invoke-direct {p1, v7, p0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    return-object p1
.end method

.method public static createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;
    .registers 11

    if-nez p3, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 169
    :cond_4
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlineTooltipPresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    if-nez p0, :cond_f

    .line 172
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    goto :goto_30

    .line 174
    :cond_f
    new-instance v0, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 175
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v1

    .line 176
    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 177
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object p0

    .line 176
    invoke-virtual {v0, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    :goto_30
    move-object v1, p0

    .line 180
    new-instance p0, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;

    invoke-direct {p0}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$1;-><init>()V

    .line 203
    new-instance v0, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p3}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object p3

    const/4 v2, 0x0

    invoke-direct {v0, p3, v1, v2}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    .line 205
    new-instance p3, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, v0, p3, p0}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object p0

    .line 207
    new-instance p1, Landroid/view/inputmethod/InlineSuggestionInfo;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "android:autofill:suggestion"

    move-object v0, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLandroid/view/inputmethod/InlineSuggestion;)V

    .line 210
    new-instance p2, Landroid/view/inputmethod/InlineSuggestion;

    invoke-direct {p2, p1, p0}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    return-object p2
.end method

.method public static createInlineSuggestions(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/util/List;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/util/SparseArray;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;",
            ")",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 71
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v9, "InlineSuggestionFactory"

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createInlineSuggestions(source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_23
    iget-object v10, v7, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mInlineRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 74
    new-instance v11, Landroid/util/SparseArray;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v11, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    move v12, v0

    .line 77
    :goto_30
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_b4

    move-object/from16 v13, p2

    .line 78
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/service/autofill/Dataset;

    .line 79
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v7, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_67

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AutofillId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;->mFocusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not found in dataset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 86
    :cond_67
    invoke-virtual {v14, v1}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v2

    if-nez v2, :cond_73

    const-string v1, "InlinePresentation not found in dataset"

    .line 88
    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b0

    .line 93
    :cond_73
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    if-nez v3, :cond_7c

    const-string v3, "android:autofill:suggestion"

    goto :goto_7e

    :cond_7c
    const-string v3, "android:autofill:action"

    :goto_7e
    const/4 v4, 0x0

    if-nez v0, :cond_8f

    .line 102
    invoke-virtual {v14, v1}, Landroid/service/autofill/Dataset;->getFieldInlineTooltipPresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v1

    .line 100
    invoke-static {v10, v7, v8, v1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionTooltip(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Landroid/service/autofill/InlinePresentation;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v1

    if-eqz v1, :cond_8c

    const/4 v0, 0x1

    :cond_8c
    move v15, v0

    move-object v5, v1

    goto :goto_91

    :cond_8f
    move v15, v0

    move-object v5, v4

    .line 107
    :goto_91
    new-instance v4, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;

    move-object/from16 v6, p3

    invoke-direct {v4, v6, v14, v12}, Lcom/android/server/autofill/ui/InlineSuggestionFactory$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V

    .line 110
    invoke-static {v10, v12, v2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    move-object v3, v4

    move-object/from16 v4, v16

    .line 107
    invoke-static/range {v0 .. v6}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestion(Lcom/android/server/autofill/ui/InlineFillUi$InlineFillUiInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/service/autofill/InlinePresentation;Landroid/view/inputmethod/InlineSuggestion;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v0

    .line 113
    invoke-static {v14, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v11, v12, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    move v0, v15

    :goto_b0
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_30

    :cond_b4
    return-object v11
.end method

.method public static synthetic lambda$createInlineAuthentication$0(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;I)V
    .registers 3

    const v0, 0xffff

    .line 52
    invoke-interface {p0, p1, v0}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->authenticate(II)V

    return-void
.end method

.method public static synthetic lambda$createInlineSuggestionTooltip$2()V
    .registers 0

    return-void
.end method

.method public static synthetic lambda$createInlineSuggestions$1(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;I)V
    .registers 3

    .line 109
    invoke-interface {p0, p1, p2}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->autofill(Landroid/service/autofill/Dataset;I)V

    return-void
.end method

.method public static mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;
    .registers 5

    .line 145
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlinePresentationSpecs()Ljava/util/List;

    move-result-object p0

    .line 146
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    return-object p2

    .line 149
    :cond_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/inline/InlinePresentationSpec;

    .line 150
    new-instance p1, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 151
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v0

    .line 152
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 153
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object p0

    .line 153
    invoke-virtual {p0}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object p0

    .line 155
    new-instance p1, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object v0

    .line 156
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result p2

    invoke-direct {p1, v0, p0, p2}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    return-object p1
.end method
