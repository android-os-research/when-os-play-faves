.class public Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
.super Ljava/lang/Object;
.source "DisableForceStopFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;
    .registers 1

    .line 17
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter$DisableForceStopFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/DisableForceStopFilter;

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

    const/4 p0, 0x0

    return p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    return-void
.end method
