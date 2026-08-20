.class public Lcom/android/server/vr/XrSettings;
.super Ljava/lang/Object;
.source "XrSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/XrSettings$OnXrSettingsListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_SETTINGS_META_SCREEN_ENABLED:I = 0x0

.field public static final SETTINGS_META_SCREEN_ENABLED:Ljava/lang/String; = "metascreen_enabled"

.field public static final TAG:Ljava/lang/String; = "XrSettings"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceProvisoned:I

.field public final mHandler:Landroid/os/Handler;

.field public mMetaScreenEnabled:I

.field public mObserver:Landroid/database/ContentObserver;

.field public mOnXrSettingsListener:Lcom/android/server/vr/XrSettings$OnXrSettingsListener;

.field public final mService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
    .registers 6

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/android/server/vr/XrSettings;->mMetaScreenEnabled:I

    .line 32
    iput v0, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    .line 36
    iput-object p1, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/server/vr/XrSettings;->mService:Lcom/android/server/vr/XrManagerService;

    .line 38
    iget-object v0, p2, Lcom/android/server/vr/XrManagerService;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/vr/XrSettings;->mHandler:Landroid/os/Handler;

    .line 39
    new-instance v1, Lcom/android/server/vr/XrSettings$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/server/vr/XrSettings$1;-><init>(Lcom/android/server/vr/XrSettings;Landroid/os/Handler;Lcom/android/server/vr/XrManagerService;)V

    iput-object v1, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "metascreen_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "device_provisioned"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/vr/XrSettings;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "XrSettings:"

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDeviceProvisoned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMetaScreenEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/vr/XrSettings;->mMetaScreenEnabled:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isDeviceProvisoned()Z
    .registers 1

    .line 70
    iget p0, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isMetaScreenEnabled()Z
    .registers 1

    .line 74
    iget p0, p0, Lcom/android/server/vr/XrSettings;->mMetaScreenEnabled:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public setXrSettingsListener(Lcom/android/server/vr/XrSettings$OnXrSettingsListener;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/android/server/vr/XrSettings;->mOnXrSettingsListener:Lcom/android/server/vr/XrSettings$OnXrSettingsListener;

    return-void
.end method

.method public updateSettingsLocked()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "metascreen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/XrSettings;->mMetaScreenEnabled:I

    .line 55
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/vr/XrSettings;->mDeviceProvisoned:I

    .line 56
    iget-object v0, p0, Lcom/android/server/vr/XrSettings;->mOnXrSettingsListener:Lcom/android/server/vr/XrSettings$OnXrSettingsListener;

    invoke-interface {v0}, Lcom/android/server/vr/XrSettings$OnXrSettingsListener;->onXrSettingsChanged()V

    .line 58
    invoke-virtual {p0}, Lcom/android/server/vr/XrSettings;->isMetaScreenEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 59
    iget-object p0, p0, Lcom/android/server/vr/XrSettings;->mService:Lcom/android/server/vr/XrManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/vr/XrManagerService;->setPersistentVrMode(Z)V

    goto :goto_34

    .line 61
    :cond_2f
    iget-object p0, p0, Lcom/android/server/vr/XrSettings;->mService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/vr/XrManagerService;->setPersistentVrMode(Z)V

    :goto_34
    return-void
.end method
