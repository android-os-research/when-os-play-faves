.class public Lcom/android/server/am/mars/filter/filter/SystemFilter;
.super Ljava/lang/Object;
.source "SystemFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/SystemFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/SystemFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/SystemFilter;
    .registers 1

    .line 19
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/SystemFilter$SystemFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/SystemFilter;

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

    if-nez p2, :cond_3

    goto :goto_7

    .line 32
    :cond_3
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p3

    :goto_7
    const/16 p0, 0x3e8

    const/16 p1, 0xf

    if-ne p3, p0, :cond_e

    return p1

    :cond_e
    const/16 p0, 0x12

    if-ne p4, p0, :cond_19

    if-ltz p3, :cond_19

    const/16 p0, 0x2710

    if-ge p3, p0, :cond_19

    return p1

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
