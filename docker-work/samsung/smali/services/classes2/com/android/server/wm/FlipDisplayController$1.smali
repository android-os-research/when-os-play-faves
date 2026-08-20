.class public Lcom/android/server/wm/FlipDisplayController$1;
.super Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;
.source "FlipDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/FlipDisplayController;->getExtraDisplayPolicy()Lcom/android/server/wm/ExtraDisplayController$ExtraDisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FlipDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FlipDisplayController;Ljava/util/function/Supplier;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/android/server/wm/FlipDisplayController$1;->this$0:Lcom/android/server/wm/FlipDisplayController;

    invoke-direct {p0, p2}, Lcom/android/server/wm/CoverDisplayController$CoverDisplayPolicy;-><init>(Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public getExtraDisplayId()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
