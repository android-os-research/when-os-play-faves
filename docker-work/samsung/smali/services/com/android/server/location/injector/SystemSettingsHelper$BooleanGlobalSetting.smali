.class public Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BooleanGlobalSetting"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    .line 574
    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 575
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    .line 576
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Z)Z
    .registers 7

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 586
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_12

    move p1, v3

    goto :goto_13

    :cond_12
    move p1, v4

    :goto_13
    invoke-static {v2, p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1f

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    move v3, v4

    .line 589
    :goto_1b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    throw p0
.end method

.method public register()V
    .registers 3

    .line 580
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
