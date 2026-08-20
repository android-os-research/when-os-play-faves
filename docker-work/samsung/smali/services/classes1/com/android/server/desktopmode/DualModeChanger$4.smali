.class public Lcom/android/server/desktopmode/DualModeChanger$4;
.super Lcom/android/server/desktopmode/UiManager$InternalUiCallback;
.source "DualModeChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DualModeChanger;->showStabilizerModeDialogIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/DualModeChanger;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/DualModeChanger;)V
    .registers 2

    .line 634
    iput-object p1, p0, Lcom/android/server/desktopmode/DualModeChanger$4;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    invoke-direct {p0}, Lcom/android/server/desktopmode/UiManager$InternalUiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonPositive()V
    .registers 3

    .line 637
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/server/desktopmode/DualModeChanger;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClickButtonPositive()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_e
    iget-object p0, p0, Lcom/android/server/desktopmode/DualModeChanger$4;->this$0:Lcom/android/server/desktopmode/DualModeChanger;

    iget-object p0, p0, Lcom/android/server/desktopmode/ModeChanger;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    const-string/jumbo v1, "stabilizer_mode_consent"

    invoke-static {p0, v1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void
.end method
