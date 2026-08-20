.class public final synthetic Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p3

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$DisplayMagnification;->showThumbNail(FFF)V

    return-void
.end method
