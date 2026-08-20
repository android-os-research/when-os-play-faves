.class public final Lcom/android/server/display/DisplayModeDirector$VoteSummary;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoteSummary"
.end annotation


# instance fields
.field public baseModeRefreshRate:F

.field public disableRefreshRateSwitching:Z

.field public height:I

.field public maxRefreshRate:F

.field public minRefreshRate:F

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 324
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 325
    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    const/4 v1, -0x1

    .line 326
    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 327
    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v1, 0x0

    .line 328
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->disableRefreshRateSwitching:Z

    .line 329
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->baseModeRefreshRate:F

    return-void
.end method
