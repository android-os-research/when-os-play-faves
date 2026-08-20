.class public Lcom/android/server/chimera/AppListBuilder$HasActivityCriteria;
.super Ljava/lang/Object;
.source "AppListBuilder.java"

# interfaces
.implements Lcom/android/server/chimera/AppListBuilder$ChimeraAppInfoCriteria;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/AppListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HasActivityCriteria"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/ChimeraAppInfo;)Z
    .registers 2

    .line 260
    iget p0, p1, Lcom/android/server/chimera/ChimeraAppInfo;->appType:I

    const/high16 p1, 0x1000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method
