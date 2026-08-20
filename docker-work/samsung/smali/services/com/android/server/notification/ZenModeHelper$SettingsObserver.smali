.class public final Lcom/android/server/notification/ZenModeHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ZenModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SettingsObserver"
.end annotation


# instance fields
.field public final ZEN_MODE:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Landroid/os/Handler;)V
    .registers 3

    .line 1517
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    .line 1518
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "zen_mode"

    .line 1515
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public observe()V
    .registers 4

    .line 1522
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$fgetmContext(Lcom/android/server/notification/ZenModeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1523
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 1524
    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 1529
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 3

    .line 1533
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->ZEN_MODE:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 1534
    iget-object p1, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, p1, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-static {p1}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$mgetZenModeSetting(Lcom/android/server/notification/ZenModeHelper;)I

    move-result p1

    if-eq v0, p1, :cond_24

    .line 1535
    sget-boolean p1, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    if-eqz p1, :cond_1d

    const-string p1, "ZenModeHelper"

    const-string v0, "Fixing zen mode setting"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    :cond_1d
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$SettingsObserver;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p1, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeHelper;->setZenModeSetting(I)V

    :cond_24
    return-void
.end method
