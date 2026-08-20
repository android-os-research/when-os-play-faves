.class public final Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ContentProviderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DevelopmentSettingsObserver"
.end annotation


# instance fields
.field public final mBugreportStorageProvider:Landroid/content/ComponentName;

.field public final mUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/am/ContentProviderHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ContentProviderHelper;)V
    .registers 6

    .line 1362
    iput-object p1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    .line 1363
    invoke-static {p1}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "development_settings_enabled"

    .line 1356
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    .line 1359
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.shell"

    const-string v3, "com.android.shell.BugreportStorageProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    .line 1364
    invoke-static {p1}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    return-void
.end method


# virtual methods
.method public final onChange()V
    .registers 4

    .line 1378
    iget-object v0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    invoke-static {v0}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1379
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    const-string v2, "development_settings_enabled"

    .line 1378
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    move v0, v1

    .line 1380
    :goto_1a
    iget-object v2, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->this$0:Lcom/android/server/am/ContentProviderHelper;

    invoke-static {v2}, Lcom/android/server/am/ContentProviderHelper;->-$$Nest$fgetmService(Lcom/android/server/am/ContentProviderHelper;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mBugreportStorageProvider:Landroid/content/ComponentName;

    invoke-virtual {v2, p0, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 1372
    iget-object p1, p0, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1373
    invoke-virtual {p0}, Lcom/android/server/am/ContentProviderHelper$DevelopmentSettingsObserver;->onChange()V

    :cond_b
    return-void
.end method
