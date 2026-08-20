.class public Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;
.super Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongGlobalSetting"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    .line 600
    invoke-direct {p0, p3}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;-><init>(Landroid/os/Handler;)V

    .line 601
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    .line 602
    iput-object p2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(J)J
    .registers 6

    .line 610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 612
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v2, p0, p1, p2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_14
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw p0
.end method

.method public register()V
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->mSettingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->register(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
