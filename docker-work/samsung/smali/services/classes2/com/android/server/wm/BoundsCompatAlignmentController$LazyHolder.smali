.class public Lcom/android/server/wm/BoundsCompatAlignmentController$LazyHolder;
.super Ljava/lang/Object;
.source "BoundsCompatAlignmentController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsCompatAlignmentController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sController:Lcom/android/server/wm/BoundsCompatAlignmentController;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignmentController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/BoundsCompatAlignmentController;-><init>(Lcom/android/server/wm/BoundsCompatAlignmentController-IA;)V

    sput-object v0, Lcom/android/server/wm/BoundsCompatAlignmentController$LazyHolder;->sController:Lcom/android/server/wm/BoundsCompatAlignmentController;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
