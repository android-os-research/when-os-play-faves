.class Landroid/os/HapticPlayer$StepParameter;
.super Ljava/lang/Object;
.source "HapticPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/HapticPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StepParameter"
.end annotation


# instance fields
.field private final blacklist amplitude:F

.field private final blacklist duration:I

.field private final blacklist frequency:F


# direct methods
.method constructor blacklist <init>(FFI)V
    .registers 4
    .param p1, "amplitude"    # F
    .param p2, "frequency"    # F
    .param p3, "duration"    # I

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput p1, p0, Landroid/os/HapticPlayer$StepParameter;->amplitude:F

    .line 355
    iput p2, p0, Landroid/os/HapticPlayer$StepParameter;->frequency:F

    .line 356
    iput p3, p0, Landroid/os/HapticPlayer$StepParameter;->duration:I

    .line 357
    return-void
.end method


# virtual methods
.method public blacklist getAmplitude()F
    .registers 2

    .line 364
    iget v0, p0, Landroid/os/HapticPlayer$StepParameter;->amplitude:F

    return v0
.end method

.method public blacklist getDuration()I
    .registers 2

    .line 360
    iget v0, p0, Landroid/os/HapticPlayer$StepParameter;->duration:I

    return v0
.end method

.method public blacklist getFrequency()F
    .registers 2

    .line 368
    iget v0, p0, Landroid/os/HapticPlayer$StepParameter;->frequency:F

    return v0
.end method
