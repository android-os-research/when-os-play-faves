.class public Lcom/android/server/desktopmode/MultiResolutionManager$2;
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

    .line 114
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 3

    .line 117
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$2;->this$0:Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$fgetmSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-nez p1, :cond_d

    const/16 p1, 0xa0

    goto :goto_11

    .line 118
    :cond_d
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 117
    :goto_11
    invoke-static {p0, p2, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->-$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    return-void
.end method
