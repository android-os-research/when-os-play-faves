.class public Lcom/android/server/desktopmode/TouchpadManager$2;
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

    .line 69
    iput-object p1, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    invoke-direct {p0, p2}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;I)V
    .registers 3

    if-nez p1, :cond_15

    .line 73
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_f

    invoke-static {}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SPen Setting deleted."

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_f
    iget-object p0, p0, Lcom/android/server/desktopmode/TouchpadManager$2;->this$0:Lcom/android/server/desktopmode/TouchpadManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/TouchpadManager;->-$$Nest$fputmIsSPenEnabled(Lcom/android/server/desktopmode/TouchpadManager;Z)V

    :cond_15
    return-void
.end method
