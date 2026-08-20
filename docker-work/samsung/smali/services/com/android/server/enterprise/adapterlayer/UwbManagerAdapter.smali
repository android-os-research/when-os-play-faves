.class public Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;
.super Ljava/lang/Object;
.source "UwbManagerAdapter.java"

# interfaces
.implements Lcom/android/server/enterprise/adapter/IUwbManagerAdapter;


# static fields
.field public static final TAG:Ljava/lang/String; = "UwbManagerAdapter"

.field public static mContext:Landroid/content/Context;

.field public static mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    monitor-enter v0

    .line 48
    :try_start_3
    invoke-static {p0}, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->isUwbSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string p0, "UwbManagerAdapter"

    const-string v1, "UWB is not supported on this device"

    .line 49
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_24

    const/4 p0, 0x0

    .line 50
    monitor-exit v0

    return-object p0

    .line 53
    :cond_13
    :try_start_13
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    if-nez v1, :cond_20

    .line 54
    sput-object p0, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mContext:Landroid/content/Context;

    .line 55
    new-instance p0, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    invoke-direct {p0}, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;-><init>()V

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;

    .line 58
    :cond_20
    sget-object p0, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_24

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isUwbSupported(Landroid/content/Context;)Z
    .registers 2

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.uwb"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public enableUwb(Z)Z
    .registers 4

    const-string p0, "UwbManagerAdapter"

    const/4 v0, 0x0

    .line 67
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/UwbManagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsamsung/uwb/UwbAdapter;->getUwbAdapter(Landroid/content/Context;)Lsamsung/uwb/UwbAdapter;

    move-result-object v1

    if-nez v1, :cond_11

    const-string p1, "UwbAdapter.getUwbAdapter() returns null!"

    .line 69
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_11
    if-eqz p1, :cond_18

    .line 74
    invoke-virtual {v1}, Lsamsung/uwb/UwbAdapter;->enable()I

    move-result p0

    goto :goto_1c

    .line 76
    :cond_18
    invoke-virtual {v1}, Lsamsung/uwb/UwbAdapter;->disable()I

    move-result p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_20

    :goto_1c
    if-nez p0, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    return v0

    :catch_20
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
