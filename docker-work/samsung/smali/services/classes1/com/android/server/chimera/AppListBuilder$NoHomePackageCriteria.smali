.class public Lcom/android/server/chimera/AppListBuilder$NoHomePackageCriteria;
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
    name = "NoHomePackageCriteria"
.end annotation


# instance fields
.field public final mHomePackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemRepository;)V
    .registers 2

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    invoke-interface {p1}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/chimera/AppListBuilder$NoHomePackageCriteria;->mHomePackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check(Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;)Z
    .registers 3

    .line 252
    iget-object p0, p0, Lcom/android/server/chimera/AppListBuilder$NoHomePackageCriteria;->mHomePackageName:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    iget-object p1, p1, Lcom/android/server/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method
