.class public Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;
.super Ljava/lang/Object;
.source "SemDeviceInfoTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;
    }
.end annotation


# static fields
.field public static final DEVICEINFO_TEST_MODE:Ljava/lang/String; = "deviceinfo_test_mode"

.field public static final SHIPPED:Z

.field public static final TAG:Ljava/lang/String; = "SemDeviceInfoTestModeUtils"

.field public static final TEST_MODE_OFF:I = 0x0

.field public static final TEST_MODE_ON:I = 0x1

.field public static sCurrentTestMode:I


# instance fields
.field public mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

.field public mContext:Landroid/content/Context;

.field public mObserver:Landroid/database/ContentObserver;

.field public mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTestModeChangeHandler(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsCurrentTestMode()I
    .registers 1

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method public static bridge synthetic -$$Nest$smupdateTestModeFromSetting(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateTestModeFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 21
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    const/4 v0, 0x0

    .line 24
    sput v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$1;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    .line 41
    sget-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_1a

    .line 42
    sget-object p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    const-string p1, "This version has been shipped!! Then device info test mode is not available"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 46
    :cond_1a
    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mCallback:Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$OnDeviceInfoTestModeChanged;

    .line 49
    new-instance p1, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils$2;-><init>(Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const-string p1, "deviceinfo_test_mode"

    .line 57
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p2, p1, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->updateTestModeFromSetting(Landroid/content/Context;)V

    return-void
.end method

.method public static isTestMode()Z
    .registers 2

    .line 73
    sget-boolean v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    const/4 v1, 0x1

    if-nez v0, :cond_a

    sget v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method public static updateTestModeFromSetting(Landroid/content/Context;)V
    .registers 3

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "deviceinfo_test_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p0, " Current CoverTestModeUtils state:"

    .line 77
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  SHIPPED="

    .line 78
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->SHIPPED:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    const-string p0, "  sCurrentTestMode="

    .line 79
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  "

    .line 80
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setTestMode(I)V
    .registers 5

    .line 68
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTestMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/server/sepunion/SemDeviceInfoTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "deviceinfo_test_mode"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
