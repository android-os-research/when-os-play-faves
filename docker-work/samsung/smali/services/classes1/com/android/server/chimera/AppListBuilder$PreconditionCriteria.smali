.class public Lcom/android/server/chimera/AppListBuilder$PreconditionCriteria;
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
    name = "PreconditionCriteria"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/AppListBuilder$PreconditionCriteria-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/chimera/AppListBuilder$PreconditionCriteria;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 2

    .line 212
    iget-object p0, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 p1, 0x1

    if-eqz p0, :cond_9

    array-length p0, p0

    if-lt p0, p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method
