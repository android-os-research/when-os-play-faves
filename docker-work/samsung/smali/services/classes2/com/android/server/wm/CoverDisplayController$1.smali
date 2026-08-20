.class public Lcom/android/server/wm/CoverDisplayController$1;
.super Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;
.source "CoverDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/CoverDisplayController;->getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/CoverDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CoverDisplayController;Ljava/util/function/Supplier;)V
    .registers 3

    .line 45
    iput-object p1, p0, Lcom/android/server/wm/CoverDisplayController$1;->this$0:Lcom/android/server/wm/CoverDisplayController;

    invoke-direct {p0, p2}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public shouldNotHandleForcedResizableTaskIfNeeded(II)Z
    .registers 3

    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;->getExtraDisplayId()I

    move-result p0

    if-ne p1, p0, :cond_b

    const/4 p0, 0x2

    if-ne p2, p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method
