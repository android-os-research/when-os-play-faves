.class public Lcom/android/server/wm/SmartPopupViewServiceBinder;
.super Lcom/android/server/wm/FreeformContainerServiceBinder;
.source "SmartPopupViewServiceBinder.java"


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    const-string p1, "com.android.systemui"

    const-string v0, "com.samsung.android.systemui.freeformcontainer.SmartPopupViewService"

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->setServiceComponent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final hasSmartPopupViewPackage()Z
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/SmartPopupViewUtil;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 57
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isSmartPopupViewOn()Z
    .registers 6

    const/4 v0, 0x0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    .line 63
    iget-object v2, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_bubbles"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/4 v2, 0x1

    goto :goto_1b

    :cond_1a
    move v2, v0

    .line 65
    :goto_1b
    iget-object p0, p0, Lcom/android/server/wm/FreeformContainerServiceBinder;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSmartPopupViewOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "  userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_39
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_39} :catch_3a

    return v2

    :catch_3a
    move-exception p0

    .line 68
    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0
.end method

.method public okToBind()Z
    .registers 2

    .line 41
    invoke-super {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToBind()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->hasSmartPopupViewPackage()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->isSmartPopupViewOn()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public okToUnbind()Z
    .registers 2

    .line 49
    invoke-super {p0}, Lcom/android/server/wm/FreeformContainerServiceBinder;->okToUnbind()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->hasSmartPopupViewPackage()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/SmartPopupViewServiceBinder;->isSmartPopupViewOn()Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method
