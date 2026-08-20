.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 2

    .line 668
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 2

    .line 671
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;->this$0:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->-$$Nest$fputmCoverState(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)V

    return-void
.end method
