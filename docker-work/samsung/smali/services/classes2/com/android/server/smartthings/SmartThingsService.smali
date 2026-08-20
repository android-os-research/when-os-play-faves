.class public Lcom/android/server/smartthings/SmartThingsService;
.super Ljava/lang/Object;
.source "SmartThingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;
    }
.end annotation


# static fields
.field public static final PACKAGE:Ljava/lang/String; = "package"

.field public static final SMARTTHINGS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.oneconnect"

.field public static final TAG:Ljava/lang/String; = "oneconnect_svc"


# direct methods
.method public static bridge synthetic -$$Nest$mbackgroundWhitelist(Lcom/android/server/smartthings/SmartThingsService;Landroid/content/Context;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "package"

    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.oneconnect"

    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 30
    new-instance v1, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver;-><init>(Lcom/android/server/smartthings/SmartThingsService;Lcom/android/server/smartthings/SmartThingsService$UpdateReceiver-IA;)V

    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/server/smartthings/SmartThingsService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final backgroundWhitelist(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo p0, "oneconnect_svc"

    .line 58
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.samsung.android.oneconnect"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_29

    if-nez v0, :cond_1b

    goto :goto_29

    .line 66
    :cond_1b
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 67
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V

    const-string/jumbo p1, "smartthings service : backgroundWhitelist successfully called"

    .line 68
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 62
    :cond_29
    :goto_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smartthings service : backgroundWhitelist: bad uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uidString: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_47

    return-void

    :catch_47
    move-exception p1

    const-string/jumbo v0, "smartthings service : backgroundWhitelist exception "

    .line 70
    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4e
    return-void
.end method
