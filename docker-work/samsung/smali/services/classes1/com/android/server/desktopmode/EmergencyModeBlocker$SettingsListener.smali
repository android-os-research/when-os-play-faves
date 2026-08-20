.class public Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;
.super Landroid/database/ContentObserver;
.source "EmergencyModeBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/EmergencyModeBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    const/4 p1, 0x0

    .line 62
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 67
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 68
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$misEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fputmEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V

    .line 69
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$misMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fputmMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V

    .line 70
    iget-object p1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {p1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$misLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fputmLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;Z)V

    .line 71
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_6e

    .line 72
    invoke-static {}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emergency_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fgetmEmergencyModeEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v3}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fgetmMpsmEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "minimal_battery_use"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {v1}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$fgetmLimitAppsAndHomeScreenEnabledInSettings(Lcom/android/server/desktopmode/EmergencyModeBlocker;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_6e
    iget-object p0, p0, Lcom/android/server/desktopmode/EmergencyModeBlocker$SettingsListener;->this$0:Lcom/android/server/desktopmode/EmergencyModeBlocker;

    invoke-static {p0}, Lcom/android/server/desktopmode/EmergencyModeBlocker;->-$$Nest$mscheduleUpdateBlockerRegistration(Lcom/android/server/desktopmode/EmergencyModeBlocker;)V

    return-void
.end method
