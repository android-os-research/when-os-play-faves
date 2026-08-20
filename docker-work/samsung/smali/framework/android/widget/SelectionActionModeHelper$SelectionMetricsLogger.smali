.class final Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionMetricsLogger"
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SelectionMetricsLogger"

.field private static final greylist-max-o PATTERN_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private blacklist mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

.field private greylist-max-o mClassificationSession:Landroid/view/textclassifier/TextClassifier;

.field private final greylist-max-o mEditTextLogger:Z

.field private greylist-max-o mStartIndex:I

.field private greylist-max-o mText:Ljava/lang/String;

.field private final greylist-max-o mTokenIterator:Ljava/text/BreakIterator;

.field private blacklist mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

.field private blacklist mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 736
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .registers 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 751
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    .line 753
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    .line 754
    return-void
.end method

.method private greylist-max-o countWordsBackward(I)I
    .registers 6
    .param p1, "from"    # I

    .line 889
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, "wordCount":I
    move v1, p1

    .line 892
    .local v1, "offset":I
    :goto_c
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-le v1, v2, :cond_20

    .line 893
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v2

    .line 894
    .local v2, "start":I
    invoke-direct {p0, v2, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 895
    add-int/lit8 v0, v0, 0x1

    .line 897
    :cond_1e
    move v1, v2

    .line 898
    .end local v2    # "start":I
    goto :goto_c

    .line 899
    :cond_20
    return v0
.end method

.method private greylist-max-o countWordsForward(I)I
    .registers 6
    .param p1, "from"    # I

    .line 903
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-gt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 904
    const/4 v0, 0x0

    .line 905
    .local v0, "wordCount":I
    move v1, p1

    .line 906
    .local v1, "offset":I
    :goto_c
    iget v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge v1, v2, :cond_20

    .line 907
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    .line 908
    .local v2, "end":I
    invoke-direct {p0, v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 909
    add-int/lit8 v0, v0, 0x1

    .line 911
    :cond_1e
    move v1, v2

    .line 912
    .end local v2    # "end":I
    goto :goto_c

    .line 913
    :cond_20
    return v0
.end method

.method private static blacklist generateTranslateEvent(ILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent;
    .registers 13
    .param p0, "eventType"    # I
    .param p1, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p2, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p3, "actionLabel"    # Ljava/lang/String;

    .line 964
    invoke-static {p1}, Landroid/view/textclassifier/ExtrasUtils;->findTranslateAction(Landroid/view/textclassifier/TextClassification;)Landroid/app/RemoteAction;

    move-result-object v0

    .line 965
    .local v0, "translateAction":Landroid/app/RemoteAction;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 967
    return-object v1

    .line 970
    :cond_8
    const/16 v2, 0xd

    if-ne p0, v2, :cond_1b

    .line 971
    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 974
    return-object v1

    .line 977
    :cond_1b
    invoke-static {p1}, Landroid/view/textclassifier/ExtrasUtils;->getForeignLanguageExtra(Landroid/view/textclassifier/TextClassification;)Landroid/os/Bundle;

    move-result-object v1

    .line 978
    .local v1, "foreignLanguageExtra":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/view/textclassifier/ExtrasUtils;->getEntityType(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 979
    .local v2, "language":Ljava/lang/String;
    invoke-static {v1}, Landroid/view/textclassifier/ExtrasUtils;->getScore(Landroid/os/Bundle;)F

    move-result v3

    .line 980
    .local v3, "score":F
    invoke-static {v1}, Landroid/view/textclassifier/ExtrasUtils;->getModelName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    .line 981
    .local v4, "model":Ljava/lang/String;
    new-instance v5, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    invoke-direct {v5, p0}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;-><init>(I)V

    .line 982
    invoke-virtual {v5, p2}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setEventContext(Landroid/view/textclassifier/TextClassificationContext;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    .line 983
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setResultId(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    const/4 v6, 0x1

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v3, v7, v8

    .line 986
    invoke-virtual {v5, v7}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setScores([F)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    new-array v6, v6, [I

    .line 987
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    aput v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setActionIndices([I)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    .line 988
    invoke-virtual {v5, v4}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->setModelName(Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent$Builder;

    move-result-object v5

    check-cast v5, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    .line 989
    invoke-virtual {v5}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;->build()Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;

    move-result-object v5

    .line 981
    return-object v5
.end method

.method private greylist-max-o getWordDelta(II)[I
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 858
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 860
    .local v0, "wordIndices":[I
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_c

    .line 861
    aput v3, v0, v3

    goto :goto_3b

    .line 862
    :cond_c
    if-ge p1, v1, :cond_16

    .line 863
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v3

    goto :goto_3b

    .line 865
    :cond_16
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v3

    .line 868
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_3b

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    .line 870
    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    .line 871
    invoke-virtual {v4, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v4

    .line 869
    invoke-direct {p0, v1, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 873
    aget v1, v0, v3

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 877
    :cond_3b
    :goto_3b
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ne p2, v1, :cond_42

    .line 878
    aput v3, v0, v2

    goto :goto_52

    .line 879
    :cond_42
    if-ge p2, v1, :cond_4c

    .line 880
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v2

    goto :goto_52

    .line 882
    :cond_4c
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v2

    .line 885
    :goto_52
    return-object v0
.end method

.method private greylist-max-o hasActiveClassificationSession()Z
    .registers 2

    .line 854
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private greylist-max-o isWhitespace(II)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 917
    sget-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private blacklist maybeGenerateTranslateClickEvent(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)V
    .registers 5
    .param p1, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p2, "actionLabel"    # Ljava/lang/String;

    .line 931
    if-eqz p1, :cond_c

    .line 932
    const/16 v0, 0xd

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    invoke-static {v0, p1, v1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->generateTranslateEvent(ILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

    .line 936
    :cond_c
    return-void
.end method

.method private blacklist maybeGenerateTranslateViewEvent(Landroid/view/textclassifier/TextClassification;)V
    .registers 5
    .param p1, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 921
    if-eqz p1, :cond_12

    .line 922
    const/4 v0, 0x6

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->generateTranslateEvent(ILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/String;)Landroid/view/textclassifier/TextClassifierEvent;

    move-result-object v0

    .line 925
    .local v0, "event":Landroid/view/textclassifier/TextClassifierEvent;
    if-eqz v0, :cond_e

    move-object v1, v0

    goto :goto_10

    :cond_e
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    :goto_10
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    .line 927
    .end local v0    # "event":Landroid/view/textclassifier/TextClassifierEvent;
    :cond_12
    return-void
.end method

.method private blacklist maybeReportTranslateEvents()V
    .registers 4

    .line 940
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 941
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v2, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 942
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateViewEvent:Landroid/view/textclassifier/TextClassifierEvent;

    .line 944
    :cond_c
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

    if-eqz v0, :cond_17

    .line 945
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v2, v0}, Landroid/view/textclassifier/TextClassifier;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassifierEvent;)V

    .line 946
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTranslateClickEvent:Landroid/view/textclassifier/TextClassifierEvent;

    .line 948
    :cond_17
    return-void
.end method


# virtual methods
.method public greylist-max-o endTextClassificationSession()V
    .registers 2

    .line 847
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 848
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->maybeReportTranslateEvents()V

    .line 849
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->destroy()V

    .line 851
    :cond_e
    return-void
.end method

.method public greylist-max-o isEditTextLogger()Z
    .registers 2

    .line 843
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    return v0
.end method

.method public blacklist logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "action"    # I
    .param p4, "actionLabel"    # Ljava/lang/String;
    .param p5, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 815
    :try_start_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 816
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 817
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 818
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v0

    .line 819
    .local v0, "wordIndices":[I
    const/4 v1, 0x1

    if-eqz p5, :cond_33

    .line 820
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 821
    invoke-static {v2, v1, p3, p5}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 820
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_40

    .line 825
    :cond_33
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 826
    invoke-static {v2, v1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionActionEvent(III)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 825
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    .line 830
    :goto_40
    invoke-direct {p0, p5, p4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->maybeGenerateTranslateClickEvent(Landroid/view/textclassifier/TextClassification;Ljava/lang/String;)V

    .line 832
    invoke-static {p3}, Landroid/view/textclassifier/SelectionEvent;->isTerminal(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 833
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->endTextClassificationSession()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d

    .line 839
    .end local v0    # "wordIndices":[I
    :cond_4c
    goto :goto_6a

    .line 836
    :catch_4d
    move-exception v0

    .line 838
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectionMetricsLogger"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 840
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    return-void
.end method

.method public greylist-max-o logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .registers 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;
    .param p4, "selection"    # Landroid/view/textclassifier/TextSelection;

    .line 784
    :try_start_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 785
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "start"

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 786
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "end"

    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 787
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v0

    .line 788
    .local v0, "wordIndices":[I
    const/4 v1, 0x1

    if-eqz p4, :cond_33

    .line 789
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 790
    invoke-static {v2, v1, p4}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 789
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_50

    .line 792
    :cond_33
    if-eqz p3, :cond_43

    .line 793
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 794
    invoke-static {v2, v1, p3}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 793
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_50

    .line 797
    :cond_43
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    aget v2, v0, v2

    aget v1, v0, v1

    .line 798
    invoke-static {v2, v1}, Landroid/view/textclassifier/SelectionEvent;->createSelectionModifiedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 797
    invoke-interface {v3, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V

    .line 801
    :goto_50
    invoke-direct {p0, p3}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->maybeGenerateTranslateViewEvent(Landroid/view/textclassifier/TextClassification;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    .line 806
    .end local v0    # "wordIndices":[I
    :cond_53
    goto :goto_71

    .line 803
    :catch_54
    move-exception v0

    .line 805
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectionMetricsLogger"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_71
    return-void
.end method

.method public blacklist logSelectionStarted(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/CharSequence;II)V
    .registers 9
    .param p1, "classificationSession"    # Landroid/view/textclassifier/TextClassifier;
    .param p2, "classificationContext"    # Landroid/view/textclassifier/TextClassificationContext;
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "index"    # I
    .param p5, "invocationMethod"    # I

    .line 762
    :try_start_0
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-static {p4, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 764
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 765
    :cond_17
    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 767
    :cond_1d
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mTokenIterator:Ljava/text/BreakIterator;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 768
    iput p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 769
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    .line 770
    iput-object p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationContext:Landroid/view/textclassifier/TextClassificationContext;

    .line 771
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->hasActiveClassificationSession()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 772
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mClassificationSession:Landroid/view/textclassifier/TextClassifier;

    .line 773
    invoke-static {p5, v2}, Landroid/view/textclassifier/SelectionEvent;->createSelectionStartedEvent(II)Landroid/view/textclassifier/SelectionEvent;

    move-result-object v1

    .line 772
    invoke-interface {v0, v1}, Landroid/view/textclassifier/TextClassifier;->onSelectionEvent(Landroid/view/textclassifier/SelectionEvent;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 778
    :cond_39
    goto :goto_57

    .line 775
    :catch_3a
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectionMetricsLogger"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method
