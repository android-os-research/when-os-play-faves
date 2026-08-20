.class public Lcom/samsung/android/gamesdk/util/MathUtil;
.super Ljava/lang/Object;
.source "MathUtil.java"


# static fields
.field private static e:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 4
    const-wide v0, 0x4005bc6a7ef9db23L    # 2.717

    sput-wide v0, Lcom/samsung/android/gamesdk/util/MathUtil;->e:D

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(DDD)D
    .registers 8
    .param p0, "v"    # D
    .param p2, "min"    # D
    .param p4, "max"    # D

    .line 13
    cmpl-double v0, p0, p2

    if-lez v0, :cond_6

    move-wide v0, p0

    goto :goto_7

    :cond_6
    move-wide v0, p2

    :goto_7
    move-wide p0, v0

    .line 14
    cmpg-double v0, p0, p4

    if-gez v0, :cond_e

    move-wide v0, p0

    goto :goto_f

    :cond_e
    move-wide v0, p4

    :goto_f
    move-wide p0, v0

    .line 15
    return-wide p0
.end method

.method public static clamp(III)I
    .registers 4
    .param p0, "v"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 7
    if-le p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    move p0, v0

    .line 8
    if-ge p0, p2, :cond_a

    move v0, p0

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    move p0, v0

    .line 9
    return p0
.end method

.method public static sigmoid(DD)D
    .registers 10
    .param p0, "coefficient"    # D
    .param p2, "x"    # D

    .line 20
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    :try_start_2
    sget-wide v2, Lcom/samsung/android/gamesdk/util/MathUtil;->e:D

    mul-double v4, p2, p0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_10

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    div-double/2addr v0, v2

    sub-double/2addr v0, v4

    return-wide v0

    .line 21
    :catch_10
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 24
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    return-wide v0
.end method
