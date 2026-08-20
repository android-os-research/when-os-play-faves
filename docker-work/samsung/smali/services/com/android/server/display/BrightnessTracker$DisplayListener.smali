.class public final Lcom/android/server/display/BrightnessTracker$DisplayListener;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .registers 2

    .line 948
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Lcom/android/server/display/BrightnessTracker$DisplayListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/display/BrightnessTracker$DisplayListener;-><init>(Lcom/android/server/display/BrightnessTracker;)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    if-nez p1, :cond_7

    .line 963
    iget-object p0, p0, Lcom/android/server/display/BrightnessTracker$DisplayListener;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p0}, Lcom/android/server/display/BrightnessTracker;->-$$Nest$mupdateColorSampling(Lcom/android/server/display/BrightnessTracker;)V

    :cond_7
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
