.class public Lcom/android/server/wm/animation/rebound/SpringConfig;
.super Ljava/lang/Object;
.source "SpringConfig.java"


# static fields
.field public static defaultConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;


# instance fields
.field public friction:D

.field public tension:D


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    .line 21
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/animation/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/android/server/wm/animation/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/animation/rebound/SpringConfig;->defaultConfig:Lcom/android/server/wm/animation/rebound/SpringConfig;

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 5

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/android/server/wm/animation/rebound/SpringConfig;->tension:D

    .line 31
    iput-wide p3, p0, Lcom/android/server/wm/animation/rebound/SpringConfig;->friction:D

    return-void
.end method

.method public static fromBouncinessAndSpeed(DD)Lcom/android/server/wm/animation/rebound/SpringConfig;
    .registers 5

    .line 57
    new-instance v0, Lcom/android/server/wm/animation/rebound/BouncyConversion;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/android/server/wm/animation/rebound/BouncyConversion;-><init>(DD)V

    .line 59
    invoke-virtual {v0}, Lcom/android/server/wm/animation/rebound/BouncyConversion;->getBouncyTension()D

    move-result-wide p0

    .line 60
    invoke-virtual {v0}, Lcom/android/server/wm/animation/rebound/BouncyConversion;->getBouncyFriction()D

    move-result-wide p2

    .line 58
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/wm/animation/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/android/server/wm/animation/rebound/SpringConfig;

    move-result-object p0

    return-object p0
.end method

.method public static fromOrigamiTensionAndFriction(DD)Lcom/android/server/wm/animation/rebound/SpringConfig;
    .registers 5

    .line 42
    new-instance v0, Lcom/android/server/wm/animation/rebound/SpringConfig;

    .line 43
    invoke-static {p0, p1}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->tensionFromOrigamiValue(D)D

    move-result-wide p0

    .line 44
    invoke-static {p2, p3}, Lcom/android/server/wm/animation/rebound/OrigamiValueConverter;->frictionFromOrigamiValue(D)D

    move-result-wide p2

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/animation/rebound/SpringConfig;-><init>(DD)V

    return-object v0
.end method
