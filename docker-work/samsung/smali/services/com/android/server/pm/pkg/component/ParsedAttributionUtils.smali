.class public Lcom/android/server/pm/pkg/component/ParsedAttributionUtils;
.super Ljava/lang/Object;
.source "ParsedAttributionUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCombinationValid(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    .line 122
    :cond_4
    new-instance v1, Landroid/util/ArraySet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 123
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 125
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x2710

    const/4 v5, 0x0

    if-le v3, v4, :cond_1c

    return v5

    :cond_1c
    move v4, v5

    :goto_1d
    if-ge v4, v3, :cond_33

    .line 131
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_30

    return v5

    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_33
    move v4, v5

    :goto_34
    if-ge v4, v3, :cond_61

    .line 139
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/pkg/component/ParsedAttribution;

    .line 141
    invoke-interface {v6}, Lcom/android/server/pm/pkg/component/ParsedAttribution;->getInheritFrom()Ljava/util/List;

    move-result-object v6

    .line 142
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v5

    :goto_45
    if-ge v8, v7, :cond_5e

    .line 144
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 146
    invoke-virtual {v1, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_54

    return v5

    .line 151
    :cond_54
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5b

    return v5

    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    :cond_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    :cond_61
    return v0
.end method

.method public static parseAttribution(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;)Landroid/content/pm/parsing/result/ParseResult;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            ")",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "Lcom/android/server/pm/pkg/component/ParsedAttribution;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestAttribution:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-nez v0, :cond_f

    const-string p0, "<attribution> could not be parsed"

    .line 51
    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    :try_start_11
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_21

    const-string p0, "<attribution> does not specify android:tag"

    .line 58
    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_bd

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 60
    :cond_21
    :try_start_21
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_33

    const-string p0, "android:tag is too long. Max length is 50"

    .line 61
    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_bd

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    .line 65
    :cond_33
    :try_start_33
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-nez v4, :cond_43

    const-string p0, "<attribution> does not specify android:label"

    .line 67
    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_bd

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :cond_43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    const/4 v5, 0x0

    .line 75
    :cond_4b
    :goto_4b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v1, :cond_a9

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5a

    .line 76
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v0, :cond_a9

    :cond_5a
    if-eq v6, v7, :cond_4b

    const/4 v7, 0x4

    if-ne v6, v7, :cond_60

    goto :goto_4b

    .line 81
    :cond_60
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "inherit-from"

    .line 82
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_93

    .line 83
    sget-object v6, Lcom/android/internal/R$styleable;->AndroidManifestAttributionInheritFrom:[I

    invoke-virtual {p0, p1, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    if-nez v6, :cond_7c

    const-string p0, "<inherit-from> could not be parsed"

    .line 86
    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 90
    :cond_7c
    :try_start_7c
    invoke-virtual {v6, v2, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    if-nez v5, :cond_87

    .line 94
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 96
    :cond_87
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catchall {:try_start_7c .. :try_end_8a} :catchall_8e

    .line 98
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4b

    :catchall_8e
    move-exception p0

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    throw p0

    .line 101
    :cond_93
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Bad element under <attribution>: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :cond_a9
    if-nez v5, :cond_b0

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    goto :goto_b3

    .line 108
    :cond_b0
    invoke-virtual {v5}, Ljava/util/ArrayList;->trimToSize()V

    .line 111
    :goto_b3
    new-instance p0, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/pm/pkg/component/ParsedAttributionImpl;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {p2, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    :catchall_bd
    move-exception p0

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    throw p0
.end method
