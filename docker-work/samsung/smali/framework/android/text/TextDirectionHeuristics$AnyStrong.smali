.class Landroid/text/TextDirectionHeuristics$AnyStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnyStrong"
.end annotation


# static fields
.field public static final greylist-max-o INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

.field public static final greylist-max-o INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;


# instance fields
.field private final greylist-max-o mLookForRtl:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 281
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_RTL:Landroid/text/TextDirectionHeuristics$AnyStrong;

    .line 282
    new-instance v0, Landroid/text/TextDirectionHeuristics$AnyStrong;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextDirectionHeuristics$AnyStrong;-><init>(Z)V

    sput-object v0, Landroid/text/TextDirectionHeuristics$AnyStrong;->INSTANCE_LTR:Landroid/text/TextDirectionHeuristics$AnyStrong;

    return-void
.end method

.method private constructor greylist-max-o <init>(Z)V
    .registers 2
    .param p1, "lookForRtl"    # Z

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-boolean p1, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    .line 279
    return-void
.end method


# virtual methods
.method public greylist-max-o checkRtl(Ljava/lang/CharSequence;II)I
    .registers 10
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "haveUnlookedFor":Z
    const/4 v1, 0x0

    .line 245
    .local v1, "openIsolateCount":I
    move v2, p2

    .local v2, "i":I
    add-int v3, p2, p3

    .local v3, "end":I
    :goto_5
    if-ge v2, v3, :cond_3e

    .line 246
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 247
    .local v4, "cp":I
    const/16 v5, 0x2066

    if-gt v5, v4, :cond_16

    const/16 v5, 0x2068

    if-gt v4, v5, :cond_16

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 249
    :cond_16
    const/16 v5, 0x2069

    if-ne v4, v5, :cond_1f

    .line 250
    if-lez v1, :cond_38

    add-int/lit8 v1, v1, -0x1

    goto :goto_38

    .line 251
    :cond_1f
    if-nez v1, :cond_38

    .line 253
    invoke-static {v4}, Landroid/text/TextDirectionHeuristics;->-$$Nest$smisRtlCodePoint(I)I

    move-result v5

    packed-switch v5, :pswitch_data_46

    goto :goto_38

    .line 261
    :pswitch_29
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-nez v5, :cond_2f

    .line 262
    const/4 v5, 0x1

    return v5

    .line 264
    :cond_2f
    const/4 v0, 0x1

    .line 265
    goto :goto_38

    .line 255
    :pswitch_31
    iget-boolean v5, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    if-eqz v5, :cond_37

    .line 256
    const/4 v5, 0x0

    return v5

    .line 258
    :cond_37
    const/4 v0, 0x1

    .line 245
    :cond_38
    :goto_38
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_5

    .line 271
    .end local v2    # "i":I
    .end local v3    # "end":I
    .end local v4    # "cp":I
    :cond_3e
    if-eqz v0, :cond_43

    .line 272
    iget-boolean v2, p0, Landroid/text/TextDirectionHeuristics$AnyStrong;->mLookForRtl:Z

    return v2

    .line 274
    :cond_43
    const/4 v2, 0x2

    return v2

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_31
        :pswitch_29
    .end packed-switch
.end method
