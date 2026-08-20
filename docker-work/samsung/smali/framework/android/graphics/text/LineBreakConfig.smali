.class public final Landroid/graphics/text/LineBreakConfig;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/LineBreakConfig$Builder;,
        Landroid/graphics/text/LineBreakConfig$LineBreakWordStyle;,
        Landroid/graphics/text/LineBreakConfig$LineBreakStyle;
    }
.end annotation


# static fields
.field public static final whitelist LINE_BREAK_STYLE_LOOSE:I = 0x1

.field public static final whitelist LINE_BREAK_STYLE_NONE:I = 0x0

.field public static final whitelist LINE_BREAK_STYLE_NORMAL:I = 0x2

.field public static final whitelist LINE_BREAK_STYLE_STRICT:I = 0x3

.field public static final whitelist LINE_BREAK_WORD_STYLE_NONE:I = 0x0

.field public static final whitelist LINE_BREAK_WORD_STYLE_PHRASE:I = 0x1

.field public static final blacklist NONE:Landroid/graphics/text/LineBreakConfig;


# instance fields
.field private final blacklist mLineBreakStyle:I

.field private final blacklist mLineBreakWordStyle:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 151
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 152
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    sput-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    .line 151
    return-void
.end method

.method private constructor blacklist <init>(II)V
    .registers 3
    .param p1, "lineBreakStyle"    # I
    .param p2, "lineBreakWordStyle"    # I

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput p1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    .line 165
    iput p2, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    .line 166
    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/graphics/text/LineBreakConfig-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/graphics/text/LineBreakConfig;-><init>(II)V

    return-void
.end method

.method public static blacklist getLineBreakConfig(II)Landroid/graphics/text/LineBreakConfig;
    .registers 4
    .param p0, "lineBreakStyle"    # I
    .param p1, "lineBreakWordStyle"    # I

    .line 144
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 145
    .local v0, "builder":Landroid/graphics/text/LineBreakConfig$Builder;
    invoke-virtual {v0, p0}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v1

    .line 146
    invoke-virtual {v1, p1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakWordStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v1

    .line 145
    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 188
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 189
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    return v1

    .line 190
    :cond_8
    instance-of v2, p1, Landroid/graphics/text/LineBreakConfig;

    if-nez v2, :cond_d

    return v0

    .line 191
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/graphics/text/LineBreakConfig;

    .line 192
    .local v2, "that":Landroid/graphics/text/LineBreakConfig;
    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    iget v4, v2, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    if-ne v3, v4, :cond_1d

    iget v3, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    iget v4, v2, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    if-ne v3, v4, :cond_1d

    move v0, v1

    :cond_1d
    return v0
.end method

.method public whitelist getLineBreakStyle()I
    .registers 2

    .line 174
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    return v0
.end method

.method public whitelist getLineBreakWordStyle()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 198
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/graphics/text/LineBreakConfig;->mLineBreakWordStyle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
