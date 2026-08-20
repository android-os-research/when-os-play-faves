.class public final Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;
.super Ljava/lang/Object;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateReportedVisibilityResults"
.end annotation


# instance fields
.field public nowGone:Z

.field public numDrawn:I

.field public numInteresting:I

.field public numVisible:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 6262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6266
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 6269
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 6270
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 6271
    iput v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    const/4 v0, 0x1

    .line 6272
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    return-void
.end method
