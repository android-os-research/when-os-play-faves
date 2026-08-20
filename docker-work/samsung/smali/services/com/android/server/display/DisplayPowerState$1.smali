.class public Lcom/android/server/display/DisplayPowerState$1;
.super Landroid/util/FloatProperty;
.source "DisplayPowerState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/server/display/DisplayPowerState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 109
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Float;
    .registers 2

    .line 117
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 109
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayPowerState$1;->get(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public setValue(Lcom/android/server/display/DisplayPowerState;F)V
    .registers 3

    .line 112
    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .registers 3

    .line 109
    check-cast p1, Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/DisplayPowerState$1;->setValue(Lcom/android/server/display/DisplayPowerState;F)V

    return-void
.end method
