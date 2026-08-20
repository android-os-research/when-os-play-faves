.class public Lcom/android/server/chimera/AppListBuilder$ProcessStateNoHomeCachedCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/chimera/AppListBuilder$RunningAppProcessInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessStateNoHomeCachedCriteria"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 2

    .line 228
    iget p0, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 p1, 0xe

    if-lt p0, p1, :cond_d

    const/16 p1, 0x13

    if-le p0, p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method
