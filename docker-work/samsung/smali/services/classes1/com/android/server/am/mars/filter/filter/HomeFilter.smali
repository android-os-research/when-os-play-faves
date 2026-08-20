.class public Lcom/android/server/am/mars/filter/filter/HomeFilter;
.super Ljava/lang/Object;
.source "HomeFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mCurrentHomePackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/HomeFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/HomeFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;
    .registers 1

    .line 19
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter$HomeFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/HomeFilter;

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

    .line 33
    iget-object p3, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result p3

    if-ne p2, p3, :cond_19

    if-eqz p1, :cond_19

    .line 34
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    if-eqz p0, :cond_19

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/16 p0, 0xc

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public getHomePackage()Ljava/lang/String;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    return-object p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setHomePackage(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/HomeFilter;->mCurrentHomePackage:Ljava/lang/String;

    return-void
.end method
