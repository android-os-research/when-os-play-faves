.class public final Landroid/graphics/text/LineBreakConfig$Builder;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mLineBreakStyle:I

.field private blacklist mLineBreakWordStyle:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 90
    iput v0, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 97
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/graphics/text/LineBreakConfig;
    .registers 5

    .line 130
    new-instance v0, Landroid/graphics/text/LineBreakConfig;

    iget v1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    iget v2, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/text/LineBreakConfig;-><init>(IILandroid/graphics/text/LineBreakConfig-IA;)V

    return-object v0
.end method

.method public whitelist setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 2
    .param p1, "lineBreakStyle"    # I

    .line 106
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakStyle:I

    .line 107
    return-object p0
.end method

.method public whitelist setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;
    .registers 4
    .param p1, "lineBreakWordStyle"    # I

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ko"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 119
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    move v0, p1

    :goto_13
    move p1, v0

    .line 120
    iput p1, p0, Landroid/graphics/text/LineBreakConfig$Builder;->mLineBreakWordStyle:I

    .line 121
    return-object p0
.end method
