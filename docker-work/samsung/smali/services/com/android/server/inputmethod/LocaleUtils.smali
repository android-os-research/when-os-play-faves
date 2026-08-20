.class public final Lcom/android/server/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;,
        Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .registers 5

    .line 51
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_8

    return v1

    .line 57
    :cond_8
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_35

    .line 63
    :cond_1d
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_33

    :cond_32
    return v1

    :cond_33
    :goto_33
    const/4 p0, 0x2

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor<",
            "TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    .line 157
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 158
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 159
    new-array v3, v1, [B

    .line 160
    new-array v4, v1, [Landroid/icu/util/ULocale;

    .line 162
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_1c
    if-ge v7, v5, :cond_8e

    .line 164
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Lcom/android/server/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v8

    if-nez v8, :cond_2d

    move-object/from16 v12, p2

    goto :goto_8b

    :cond_2d
    const/4 v10, 0x1

    move v11, v6

    :goto_2f
    if-ge v11, v1, :cond_6e

    move-object/from16 v12, p2

    .line 171
    invoke-virtual {v12, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    .line 172
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_48

    .line 173
    aput-byte v6, v3, v11

    goto :goto_6b

    .line 176
    :cond_48
    aget-object v14, v4, v11

    if-nez v14, :cond_56

    .line 178
    invoke-static {v13}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v13

    .line 177
    invoke-static {v13}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v13

    aput-object v13, v4, v11

    .line 180
    :cond_56
    aget-object v13, v4, v11

    .line 182
    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v14

    invoke-static {v14}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v14

    .line 180
    invoke-static {v13, v14}, Lcom/android/server/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v13

    aput-byte v13, v3, v11

    if-eqz v10, :cond_6b

    if-eqz v13, :cond_6b

    move v10, v6

    :cond_6b
    :goto_6b
    add-int/lit8 v11, v11, 0x1

    goto :goto_2f

    :cond_6e
    move-object/from16 v12, p2

    if-eqz v10, :cond_73

    goto :goto_8b

    .line 191
    :cond_73
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 192
    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    if-nez v10, :cond_88

    .line 194
    new-instance v10, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v10, v3, v7}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    invoke-virtual {v2, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 196
    :cond_88
    invoke-virtual {v10, v3, v7}, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    :goto_8b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 200
    :cond_8e
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 201
    new-array v3, v1, [Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    move v4, v6

    :goto_95
    if-ge v4, v1, :cond_a2

    .line 203
    invoke-virtual {v2, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_95

    .line 205
    :cond_a2
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_a5
    if-ge v6, v1, :cond_b7

    .line 206
    aget-object v2, v3, v6

    .line 207
    iget v2, v2, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p3

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    :cond_b7
    return-void
.end method
