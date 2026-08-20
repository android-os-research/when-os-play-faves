.class public Lcom/samsung/android/mcf/continuity/common/FeatureUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY:Ljava/lang/String; = "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final sContinuityFeature:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->getContinuityFeature()I

    move-result v0

    sput v0, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->sContinuityFeature:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuityFeature()I
    .registers 2

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_MCF_SUPPORT_CONTINUITY"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static isContinuityFeatureEnabled()Z
    .registers 1

    sget v0, Lcom/samsung/android/mcf/continuity/common/FeatureUtil;->sContinuityFeature:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
