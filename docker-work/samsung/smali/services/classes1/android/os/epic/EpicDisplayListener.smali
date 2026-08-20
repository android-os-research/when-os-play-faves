.class public final Landroid/os/epic/EpicDisplayListener;
.super Ljava/lang/Object;
.source "EpicDisplayListener.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mDisplayManager:Landroid/hardware/display/DisplayManager;


# direct methods
.method public constructor <init>(Landroid/hardware/display/DisplayManager;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/os/epic/EpicDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 44
    :cond_4
    iget-object p0, p0, Landroid/os/epic/EpicDisplayListener;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_d

    return-void

    .line 48
    :cond_d
    invoke-virtual {p0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p1

    if-nez p1, :cond_14

    return-void

    .line 52
    :cond_14
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 53
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
