.class public Lcom/android/server/chimera/AppListBuilder$NoPersistentCriteria;
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
    name = "NoPersistentCriteria"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 2

    .line 220
    iget p0, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/4 p1, 0x1

    if-le p0, p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method
