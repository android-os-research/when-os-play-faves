.class public Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;
.super Ljava/lang/Object;
.source "NoAppIconFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;->context:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/NoAppIconFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;
    .registers 1

    .line 28
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter$NoAppIconFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;

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

    .line 42
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getHasAppIcon(Ljava/lang/String;I)Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_30

    .line 44
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "com.sec."

    .line 45
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string p0, "com.samsung."

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string p0, "com.sds."

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2e

    return p2

    :cond_2e
    const/4 p0, 0x5

    return p0

    :cond_30
    return p2
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 33
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/NoAppIconFilter;->context:Landroid/content/Context;

    return-void
.end method
