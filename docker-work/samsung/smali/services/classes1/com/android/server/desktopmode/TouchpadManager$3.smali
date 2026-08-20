.class public Lcom/android/server/desktopmode/TouchpadManager$3;
.super Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
.source "TouchpadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/TouchpadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/TouchpadManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/TouchpadManager;Ljava/lang/String;)V
    .registers 3

    .line 80
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$3;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 3

    if-eqz p1, :cond_19

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 84
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$3;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fgetmContext(Lcom/android/server/desktopmode/TouchpadManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x4

    const-string/jumbo p2, "touchpad_auto_run_guide_count"

    invoke-static {p0, p2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_19
    return-void
.end method
