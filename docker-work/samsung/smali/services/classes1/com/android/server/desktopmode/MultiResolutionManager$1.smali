.class public Lcom/android/server/desktopmode/MultiResolutionManager$1;
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

    .line 94
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 4

    .line 97
    iget-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result p2

    if-eqz p2, :cond_11

    return-void

    :cond_11
    if-nez p1, :cond_32

    .line 102
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_20

    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Resolution user setting is null."

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_20
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    invoke-static {p1, p2, p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    return-void

    .line 107
    :cond_32
    invoke-static {}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$sfgetRESOLUTION_TABLE()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 108
    iget-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v0

    if-eqz v0, :cond_49

    goto :goto_4f

    .line 109
    :cond_49
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    :goto_4f
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$1;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 108
    invoke-static {p2, p1, p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    return-void
.end method
