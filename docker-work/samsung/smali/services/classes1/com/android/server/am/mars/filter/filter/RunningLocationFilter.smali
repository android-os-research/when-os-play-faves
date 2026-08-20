.class public Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
.super Ljava/lang/Object;
.source "RunningLocationFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String; = "RunningLocationFilter"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/RunningLocationFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;
    .registers 1

    .line 25
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/RunningLocationFilter$RunningLocationFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/RunningLocationFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 38
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result p0

    .line 40
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/server/am/FreecessController;->isInGPSAllowList(I)Z

    move-result p2

    if-eqz p2, :cond_69

    if-eqz p0, :cond_69

    .line 41
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result p0

    if-eqz p0, :cond_66

    const-string p0, "com.baidu.BaiduMap"

    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.autonavi.minimap"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.autonavi.xmgd.navigator"

    .line 43
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.tencent.map"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.sogou.map.android.maps"

    .line 44
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.baidu.navi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.mapbar.android.mapbarmap"

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.uu.uunavi"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "com.ovital.ovitalMap"

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_69

    :cond_66
    const/16 p0, 0x10

    return p0

    :cond_69
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
