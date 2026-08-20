.class public final Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApplySurfaceChangesTransactionState"
.end annotation


# instance fields
.field public displayHasContent:Z

.field public obscured:Z

.field public preferMinimalPostProcessing:Z

.field public preferredMaxRefreshRate:F

.field public preferredMinRefreshRate:F

.field public preferredModeId:I

.field public preferredRefreshRate:F

.field public syswin:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 3

    const/4 v0, 0x0

    .line 6051
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    .line 6052
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    .line 6053
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    .line 6054
    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferMinimalPostProcessing:Z

    const/4 v1, 0x0

    .line 6055
    iput v1, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    .line 6056
    iput v0, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    .line 6057
    iput v1, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMinRefreshRate:F

    .line 6058
    iput v1, p0, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredMaxRefreshRate:F

    return-void
.end method
