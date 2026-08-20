.class public final Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplaySolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ADSControlHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;Landroid/os/Looper;)V
    .registers 3

    .line 219
    iput-object p1, p0, Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService$ADSControlHandler;->this$0:Lcom/samsung/android/displaysolution/AdaptiveDisplaySolutionService;

    const/4 p1, 0x0

    .line 220
    invoke-direct {p0, p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 225
    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method
