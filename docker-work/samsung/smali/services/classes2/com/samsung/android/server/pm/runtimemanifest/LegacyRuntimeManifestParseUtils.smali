.class public Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;
.super Ljava/lang/Object;
.source "LegacyRuntimeManifestParseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LegacyRuntimeManifestParseUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReplacementForApplicationSalescode(Landroid/content/pm/parsing/result/ParseInput;Lcom/android/server/pm/pkg/parsing/ParsingPackage;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;)Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    new-instance p0, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;

    invoke-direct {p0}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;-><init>()V

    .line 109
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const-string v0, "LegacyRuntimeManifestParseUtils"

    const/4 v1, 0x0

    const-string v2, "<application-salescode>"

    if-eqz p1, :cond_29

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " No sales code, skip it"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 114
    :cond_29
    sget-object p1, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x3

    const/4 p3, 0x0

    .line 116
    :try_start_31
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_4f

    .line 119
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " does not specify android:name"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_98

    .line 150
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    .line 122
    :cond_4f
    :try_start_4f
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_98

    if-nez p2, :cond_5d

    .line 150
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    :cond_5d
    const/4 p2, 0x1

    .line 126
    :try_start_5e
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    if-eqz v0, :cond_7b

    .line 128
    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v2, :cond_73

    .line 129
    invoke-virtual {v0}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setCoercedLabel(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setLabelRes(I)V

    goto :goto_7b

    .line 132
    :cond_73
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setCoercedLabel(Ljava/lang/CharSequence;)V

    .line 133
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setLabelRes(I)V

    :cond_7b
    :goto_7b
    const/4 v0, 0x2

    .line 137
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_85

    .line 140
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setIconRes(I)V

    :cond_85
    const/16 p3, 0x9

    .line 143
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 145
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 147
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->setEnabled(Z)V
    :try_end_94
    .catchall {:try_start_5e .. :try_end_94} :catchall_98

    .line 150
    :cond_94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0

    :catchall_98
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 151
    throw p0
.end method

.method public static modifyParsingPackageWithReplacement(Lcom/android/server/pm/pkg/parsing/ParsingPackage;Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;)V
    .registers 3

    if-eqz p1, :cond_39

    if-nez p0, :cond_5

    goto :goto_39

    .line 162
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 163
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getLabelRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setLabelRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 165
    :cond_12
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasCoercedLabel()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getCoercedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 168
    :cond_1f
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasIcon()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 169
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getIconRes()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setIconRes(I)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    .line 171
    :cond_2c
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 172
    invoke-virtual {p1}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils$ApplicationReplacement;->getEnabled()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackage;->setEnabled(Z)Lcom/android/server/pm/pkg/parsing/ParsingPackage;

    :cond_39
    :goto_39
    return-void
.end method

.method public static parseMainOverlayComponentAndModify(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Landroid/content/res/TypedArray;Landroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component:",
            "Lcom/android/server/pm/pkg/component/ParsedComponentImpl;",
            ">(TComponent;",
            "Ljava/lang/String;",
            "Landroid/content/res/TypedArray;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "III)",
            "Landroid/content/pm/parsing/result/ParseResult<",
            "TComponent;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p4

    .line 247
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_21

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not specify android:name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->error(Ljava/lang/String;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0

    .line 251
    :cond_21
    invoke-virtual {p2, p5, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    if-eqz p1, :cond_2a

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 256
    :cond_2a
    invoke-virtual {p2, p6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 258
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p2}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 259
    iget p2, p1, Landroid/util/TypedValue;->resourceId:I

    if-nez p2, :cond_40

    .line 260
    invoke-virtual {p1}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 263
    :cond_40
    invoke-interface {p3, p0}, Landroid/content/pm/parsing/result/ParseInput;->success(Ljava/lang/Object;)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    return-object p0
.end method

.method public static parseOverlayComponentAndModify(Ljava/lang/String;Ljava/util/List;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Component::",
            "Lcom/android/server/pm/pkg/component/ParsedMainComponent;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TComponent;>;",
            "Landroid/content/res/Resources;",
            "Landroid/content/res/XmlResourceParser;",
            "Landroid/content/pm/parsing/result/ParseInput;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 180
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "LegacyRuntimeManifestParseUtils"

    if-eqz v0, :cond_21

    .line 181
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " No sales code, skip it"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_21
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x2

    const/4 v0, 0x0

    .line 187
    :try_start_29
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_47

    .line 190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not specify android:name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_29 .. :try_end_43} :catchall_113

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 193
    :cond_47
    :try_start_47
    invoke-static {}, Lcom/samsung/android/core/pm/runtimemanifest/RuntimeManifestUtils;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5a

    const-string p0, "Sales code mismatch"

    .line 194
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_47 .. :try_end_56} :catchall_113

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_5a
    const/4 p3, 0x7

    const/16 v2, 0x400

    .line 198
    :try_start_5d
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_7b

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not specify android:targetActivity"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_113

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 205
    :cond_7b
    :try_start_7b
    invoke-static {p0, p3}, Lcom/android/server/pm/pkg/parsing/ParsingUtils;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_9c

    .line 207
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Empty class name in package "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7b .. :try_end_98} :catchall_113

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_9c
    const/4 p0, 0x0

    .line 212
    :try_start_9d
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v2

    :goto_a1
    if-ge v0, v2, :cond_b8

    .line 214
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 215
    invoke-virtual {v3}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b5

    move-object p0, v3

    goto :goto_b8

    :cond_b5
    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    :cond_b8
    :goto_b8
    if-nez p0, :cond_da

    .line 221
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " target "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found in manifest"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_9d .. :try_end_d6} :catchall_113

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_da
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p5

    move-object v4, p2

    move-object v5, p4

    .line 225
    :try_start_e1
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/server/pm/runtimemanifest/LegacyRuntimeManifestParseUtils;->parseMainOverlayComponentAndModify(Lcom/android/server/pm/pkg/component/ParsedComponentImpl;Ljava/lang/String;Landroid/content/res/TypedArray;Landroid/content/pm/parsing/result/ParseInput;III)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p1

    .line 230
    invoke-interface {p1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-eqz p1, :cond_103

    .line 231
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " got error while parsing overlay components"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ff
    .catchall {:try_start_e1 .. :try_end_ff} :catchall_113

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_103
    const/4 p1, 0x4

    .line 235
    :try_start_104
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->isEnabled()Z

    move-result p3

    .line 234
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
    :try_end_10f
    .catchall {:try_start_104 .. :try_end_10f} :catchall_113

    .line 237
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_113
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    throw p0
.end method
