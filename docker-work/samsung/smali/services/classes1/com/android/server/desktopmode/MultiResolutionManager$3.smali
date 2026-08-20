.class public Lcom/android/server/desktopmode/MultiResolutionManager$3;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/MultiResolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/MultiResolutionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$3;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 3

    .line 126
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$3;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStandaloneModeDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    move-result-object p0

    if-nez p1, :cond_a

    const/4 p1, -0x1

    goto :goto_e

    .line 127
    :cond_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 126
    :goto_e
    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$msetSelectedDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;I)V

    return-void
.end method
