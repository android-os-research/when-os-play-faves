.class public interface abstract Lcom/android/internal/app/RgbGainController$Callback;
.super Ljava/lang/Object;
.source "RgbGainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RgbGainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public blacklist onActivated(Z)V
    .registers 2
    .param p1, "activated"    # Z

    .line 290
    return-void
.end method

.method public blacklist onRgbGainBlueLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 311
    return-void
.end method

.method public blacklist onRgbGainGreenLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 304
    return-void
.end method

.method public blacklist onRgbGainRedLevelChanged(I)V
    .registers 2
    .param p1, "level"    # I

    .line 297
    return-void
.end method
