.class public Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/SettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/SettingsHelper;Landroid/os/Handler;)V
    .registers 3

    .line 502
    iput-object p1, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    .line 503
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 7

    .line 508
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    .line 509
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 510
    iget-object p2, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-static {p2}, Lcom/android/server/desktopmode/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 512
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/android/server/desktopmode/SettingsHelper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " changed to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz p3, :cond_50

    .line 516
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->isGlobalKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 517
    iget-object v0, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-static {v0}, Lcom/android/server/desktopmode/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/server/desktopmode/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 521
    :cond_50
    iget-object p0, p0, Lcom/android/server/desktopmode/SettingsHelper$SettingsObserver;->this$0:Lcom/android/server/desktopmode/SettingsHelper;

    invoke-static {p0}, Lcom/android/server/desktopmode/SettingsHelper;->-$$Nest$fgetmListeners(Lcom/android/server/desktopmode/SettingsHelper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5a
    :goto_5a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 522
    iget-object v1, v0, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;->mInterestedKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 523
    invoke-virtual {v0, p2, p3}, Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;->onSettingChanged(Ljava/lang/String;I)V

    goto :goto_5a

    :cond_72
    return-void
.end method
