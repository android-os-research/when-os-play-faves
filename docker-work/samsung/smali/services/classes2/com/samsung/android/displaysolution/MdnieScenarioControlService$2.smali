.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .registers 2

    .line 935
    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .registers 2

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .registers 3

    const-string v0, "MdnieScenarioControlService"

    if-eqz p1, :cond_10

    const-string p1, "Dex Mode Connected"

    .line 946
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmDexModeState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    goto :goto_1b

    :cond_10
    const-string p1, "Dex Mode Disconnected"

    .line 950
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-object p0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;->this$0:Lcom/samsung/android/displaysolution/MdnieScenarioControlService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->-$$Nest$fputmDexModeState(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V

    :goto_1b
    return-void
.end method
