.class public Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;
.super Ljava/lang/Object;
.source "AppContinuityGuideConfirmDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mLocationInWindow:[I

.field public final synthetic this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 288
    iput-object p1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->mLocationInWindow:[I

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .registers 7

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-static {v0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->-$$Nest$fgetmClingLayout(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->mLocationInWindow:[I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    const/4 v0, 0x3

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    .line 297
    iget-object p1, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->mLocationInWindow:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    iget-object v3, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-static {v3}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->-$$Nest$fgetmClingLayout(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 300
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->mLocationInWindow:[I

    aget v2, v4, v2

    iget-object p0, p0, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView$1;->this$1:Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;

    invoke-static {p0}, Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;->-$$Nest$fgetmClingLayout(Lcom/android/server/wm/AppContinuityGuideConfirmDialog$ClingWindowView;)Landroid/view/ViewGroup;

    move-result-object p0

    .line 301
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    add-int/2addr v2, p0

    .line 297
    invoke-virtual {p1, v1, v0, v3, v2}, Landroid/graphics/Region;->set(IIII)Z

    return-void
.end method
