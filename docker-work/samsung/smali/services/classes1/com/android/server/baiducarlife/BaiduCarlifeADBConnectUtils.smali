.class public Lcom/android/server/baiducarlife/BaiduCarlifeADBConnectUtils;
.super Ljava/lang/Object;
.source "BaiduCarlifeADBConnectUtils.java"


# static fields
.field public static final mADBForceKey:Ljava/lang/String; = "persist.sys.adb.config.carlife_force"

.field public static final mBaiduCarLifePkg:Ljava/lang/String; = "com.baidu.carlife"

.field public static final mBaiduCarLifePkgClass:Ljava/lang/String; = "com.baidu.carlife.CarlifeActivity"

.field public static final mSamsungCarLifePkg:Ljava/lang/String; = "com.samsung.android.carlink"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isBaiduCarlifePkg(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "com.baidu.carlife"

    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isCarLinkIntent(Landroid/content/Intent;)Z
    .registers 2

    if-eqz p0, :cond_17

    .line 38
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 39
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.carlink"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public static isCarlifeForceConnect()Z
    .registers 2

    const-string/jumbo v0, "persist.sys.adb.config.carlife_force"

    .line 33
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSamsungCarlifePkg(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_9

    const-string v0, "com.samsung.android.carlink"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static printCarlifeDumpActivity(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "TASK com.baidu.carlife id=23203 userId=0\n"

    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ACTIVITY com.baidu.carlife/.CarlifeActivity 5b92975 pid=18428\n"

    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local Activity bae17e9 State:\n"

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mResumed=true mStopped=false mFinished=false\n"

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mChangingConfigurations=false\n"

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static printCarlifePathInfo(Ljava/io/PrintWriter;)V
    .registers 2

    const-string/jumbo v0, "package:/data/app/~~iNjKNe-7WKMgdZXJDtvyIw==/com.baidu.carlife-TV26JIouWEDzMsoGghKuXg==/base.apk"

    .line 74
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static printCarlifePkgInfo(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "Package [com.baidu.carlife] (5d2de):"

    .line 67
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "pkg=Package{e6e9cbf com.baidu.carlife}"

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "applicationInfo=ApplicationInfo{fe0a00a com.baidu.carlife}"

    .line 69
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "dataDir=/data/user/0/com.baidu.carlife"

    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printCarlifePkgName(Ljava/io/PrintWriter;)V
    .registers 2

    const-string/jumbo v0, "package:com.baidu.carlife"

    .line 78
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static printForCarlifeStart(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "Starting: Intent { cmp=com.baidu.carlife/.CarlifeActivity }"

    .line 59
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static printForCarlifeStartWarning(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "Warning: Activity not started, its current task has been brought to the front."

    .line 63
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static repackIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .registers 4

    .line 18
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 19
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.baidu.carlife"

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "com.baidu.carlife.CarlifeActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string v0, "com.samsung.android.carlink"

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.carlink.carlife.CarLifeUsbConnectionActivity"

    .line 23
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "com.samsung.android.carlink.carlife.USB_ADB_ATTACHED"

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "usb_type"

    const-string v1, "adb"

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_45
    return-object p0
.end method
