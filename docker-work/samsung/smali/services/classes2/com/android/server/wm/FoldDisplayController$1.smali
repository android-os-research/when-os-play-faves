.class public Lcom/android/server/wm/FoldDisplayController$1;
.super Ljava/lang/Object;
.source "FoldDisplayController.java"

# interfaces
.implements Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FoldDisplayController;->getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FoldDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FoldDisplayController;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/FoldDisplayController$1;->this$0:Lcom/android/server/wm/FoldDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtraDisplayId()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getOtherDisplayBelowTargetDisplay(I)I
    .registers 2

    const/4 p0, -0x1

    return p0
.end method

.method public shouldNotPositionToTopDisplay(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
