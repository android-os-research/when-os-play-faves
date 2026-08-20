.class public final Lcom/android/server/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/Helper$ViewNodeFilter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AutofillHelper"

.field public static sDebug:Z = false

.field public static sFullScreenMode:Ljava/lang/Boolean; = null

.field public static sVerbose:Z = false


# direct methods
.method public static synthetic $r8$lambda$XvYEIKfwZJoJC-jfH0ImpFZKUHI(ILjava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/autofill/Helper;->lambda$checkRemoteViewUriPermissions$0(ILjava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jk9R_ROf_2GsqSSvD5F2OzJIWEI(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/Helper;->lambda$findViewNodeByAutofillId$1(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$qwXEb6Fey3qM9LI2zG_d1QVKNVw([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/autofill/Helper;->lambda$sanitizeUrlBar$2([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "contains static members only"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_8

    .line 277
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillType()I

    move-result v0

    if-eqz v0, :cond_f

    .line 278
    :cond_8
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_f
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_20

    .line 282
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v2

    .line 283
    invoke-static {v2, p1, p2}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_20
    return-void
.end method

.method public static checkRemoteViewUriPermissions(ILandroid/widget/RemoteViews;)Z
    .registers 4

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 87
    new-instance v1, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda2;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {p1, v1}, Landroid/widget/RemoteViews;->visitUris(Ljava/util/function/Consumer;)V

    .line 93
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public static containsCharsInOrder(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    .line 317
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v2

    :goto_9
    const/4 v5, 0x1

    if-ge v3, v0, :cond_19

    aget-char v6, p1, v3

    add-int/2addr v4, v5

    .line 318
    invoke-static {p0, v6, v4}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v4

    if-ne v4, v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_19
    return v5
.end method

.method public static createSanitizers(Landroid/service/autofill/SaveInfo;)Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/SaveInfo;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/service/autofill/InternalSanitizer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 291
    :cond_4
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getSanitizerKeys()[Landroid/service/autofill/InternalSanitizer;

    move-result-object v1

    if-nez v1, :cond_b

    return-object v0

    .line 294
    :cond_b
    array-length v0, v1

    .line 295
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 296
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    const-string v4, "AutofillHelper"

    if-eqz v3, :cond_30

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service provided "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sanitizers"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_30
    invoke-virtual {p0}, Landroid/service/autofill/SaveInfo;->getSanitizerValues()[[Landroid/view/autofill/AutofillId;

    move-result-object p0

    const/4 v3, 0x0

    move v5, v3

    :goto_36
    if-ge v5, v0, :cond_78

    .line 299
    aget-object v6, v1, v5

    .line 300
    aget-object v7, p0, v5

    .line 301
    sget-boolean v8, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v8, :cond_69

    .line 302
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sanitizer #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") for ids "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 302
    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_69
    array-length v8, v7

    move v9, v3

    :goto_6b
    if-ge v9, v8, :cond_75

    aget-object v10, v7, v9

    .line 306
    invoke-virtual {v2, v10, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    :cond_75
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    :cond_78
    return-object v2
.end method

.method public static findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 7

    .line 201
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 202
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_1b

    .line 204
    invoke-virtual {p0, v3}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 206
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3f

    .line 207
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/assist/AssistStructure$ViewNode;

    .line 208
    invoke-interface {p1, p0}, Lcom/android/server/autofill/Helper$ViewNodeFilter;->matches(Landroid/app/assist/AssistStructure$ViewNode;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-object p0

    :cond_2e
    move v1, v2

    .line 211
    :goto_2f
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1b

    .line 212
    invoke-virtual {p0, v1}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_3f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findViewNodeByAutofillId(Landroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 3

    .line 194
    new-instance v0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda1;-><init>(Landroid/view/autofill/AutofillId;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p0

    return-object p0
.end method

.method public static getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/assist/AssistStructure;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 269
    invoke-virtual {p0, v2}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v3

    .line 270
    invoke-virtual {v3}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v3

    invoke-static {v3, v0, p1}, Lcom/android/server/autofill/Helper;->addAutofillableIds(Landroid/app/assist/AssistStructure$ViewNode;Ljava/util/ArrayList;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1a
    return-object v0
.end method

.method public static getFields(Landroid/service/autofill/Dataset;)Landroid/util/ArrayMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/Dataset;",
            ")",
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            ">;"
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 142
    invoke-virtual {p0}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object p0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    move v2, v1

    goto :goto_11

    .line 143
    :cond_d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 144
    :goto_11
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3, v2}, Landroid/util/ArrayMap;-><init>(I)V

    :goto_16
    if-ge v1, v2, :cond_2a

    .line 146
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/autofill/AutofillValue;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2a
    return-object v3
.end method

.method public static getNumericValue(Landroid/metrics/LogMaker;I)I
    .registers 2

    .line 252
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->getTaggedData(I)Ljava/lang/Object;

    move-result-object p0

    .line 253
    instance-of p1, p0, Ljava/lang/Number;

    if-nez p1, :cond_a

    const/4 p0, 0x0

    return p0

    .line 256
    :cond_a
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$checkRemoteViewUriPermissions$0(ILjava/util/concurrent/atomic/AtomicBoolean;Landroid/net/Uri;)V
    .registers 5

    .line 88
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p0, :cond_a

    move p0, v0

    goto :goto_b

    :cond_a
    move p0, v1

    :goto_b
    if-eqz p0, :cond_14

    .line 90
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static synthetic lambda$findViewNodeByAutofillId$1(Landroid/view/autofill/AutofillId;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 2

    .line 195
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$sanitizeUrlBar$2([Ljava/lang/String;Landroid/app/assist/AssistStructure$ViewNode;)Z
    .registers 2

    .line 231
    invoke-virtual {p1}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static newLogMaker(ILandroid/content/ComponentName;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 7

    .line 174
    new-instance v0, Landroid/content/ComponentName;

    .line 175
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 177
    invoke-virtual {p0, v0}, Landroid/metrics/LogMaker;->setComponentName(Landroid/content/ComponentName;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public static newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 5

    .line 154
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p0}, Landroid/metrics/LogMaker;-><init>(I)V

    const/16 p0, 0x38c

    .line 155
    invoke-virtual {v0, p0, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 156
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x5b0

    invoke-virtual {p0, p2, p1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    if-eqz p3, :cond_21

    const/16 p1, 0x586

    const/4 p2, 0x1

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    :cond_21
    return-object p0
.end method

.method public static newLogMaker(ILjava/lang/String;Ljava/lang/String;IZ)Landroid/metrics/LogMaker;
    .registers 5

    .line 166
    invoke-static {p0, p2, p3, p4}, Lcom/android/server/autofill/Helper;->newLogMaker(ILjava/lang/String;IZ)Landroid/metrics/LogMaker;

    move-result-object p0

    .line 167
    invoke-virtual {p0, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method

.method public static paramsToString(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->dumpDimensions(Ljava/lang/StringBuilder;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printlnRedactedText(Ljava/io/PrintWriter;Ljava/lang/CharSequence;)V
    .registers 2

    if-nez p1, :cond_9

    const-string/jumbo p1, "null"

    .line 182
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_15

    .line 184
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "_chars"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method public static sanitizeRemoteView(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 109
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 111
    invoke-static {v1, p0}, Lcom/android/server/autofill/Helper;->checkRemoteViewUriPermissions(ILandroid/widget/RemoteViews;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sanitizeRemoteView() user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tried accessing resource that does not belong to them"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "AutofillHelper"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    if-eqz v2, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object p0, v0

    :goto_2e
    return-object p0
.end method

.method public static sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;
    .registers 4

    .line 230
    new-instance v0, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/autofill/Helper$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/autofill/Helper;->findViewNode(Landroid/app/assist/AssistStructure;Lcom/android/server/autofill/Helper$ViewNodeFilter;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object p0

    if-eqz p0, :cond_66

    .line 234
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "AutofillHelper"

    if-eqz v0, :cond_3a

    .line 236
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_38

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sanitizeUrlBar(): empty on "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_38
    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_3a
    invoke-virtual {p0, p1}, Landroid/app/assist/AssistStructure$ViewNode;->setWebDomain(Ljava/lang/String;)V

    .line 240
    sget-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p1, :cond_66

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sanitizeUrlBar(): id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getIdEntry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", domain="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    return-object p0
.end method

.method public static toArray(Landroid/util/ArraySet;)[Landroid/view/autofill/AutofillId;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_4
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    const/4 v1, 0x0

    .line 126
    :goto_b
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 127
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/autofill/AutofillId;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1c
    return-object v0
.end method
