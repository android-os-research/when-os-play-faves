.class public Lcom/android/server/display/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "HysteresisLevels"


# instance fields
.field public mHysteresisBrightSpline:Landroid/util/Spline;

.field public mHysteresisDarkSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>([I[I[I[I)V
    .registers 7

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_28

    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_28

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p1

    .line 82
    invoke-virtual {p0, p2}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p2

    .line 83
    invoke-virtual {p0, p3}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p3

    .line 84
    invoke-virtual {p0, p4}, Lcom/android/server/display/HysteresisLevels;->convertArrayFromIntToFloat([I)[F

    move-result-object p4

    .line 86
    invoke-static {p1, p2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    .line 87
    invoke-static {p3, p4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    return-void

    .line 78
    :cond_28
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Mismatch between hysteresis array lengths."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final convertArrayFromIntToFloat([I)[F
    .registers 4

    .line 91
    array-length p0, p1

    new-array p0, p0, [F

    const/4 v0, 0x0

    .line 93
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 94
    aget v1, p1, v0

    int-to-float v1, v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_f
    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "HysteresisLevels"

    .line 170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHysteresisBrightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHysteresisDarkSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBrighteningThreshold(F)F
    .registers 2

    .line 117
    iget-object p0, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisBrightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public getDarkeningThreshold(F)F
    .registers 2

    .line 136
    iget-object p0, p0, Lcom/android/server/display/HysteresisLevels;->mHysteresisDarkSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_11

    .line 137
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    goto :goto_13

    :cond_11
    const/high16 p0, -0x40800000    # -1.0f

    :goto_13
    return p0
.end method
