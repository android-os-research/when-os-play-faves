.class public final Lcom/android/server/textclassifier/IconsUriHelper;
.super Ljava/lang/Object;
.source "IconsUriHelper.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.android.textclassifier.icons"

.field public static final DEFAULT_ID_SUPPLIER:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "IconsUriHelper"

.field public static final sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;


# instance fields
.field public final mIdSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageIds:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPackageIds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XBms8Xe-RBU7GqcU8VdyTW9Tt9A()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/android/server/textclassifier/IconsUriHelper;->lambda$static$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/textclassifier/IconsUriHelper$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Ljava/util/function/Supplier;

    .line 53
    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/textclassifier/IconsUriHelper;-><init>(Ljava/util/function/Supplier;)V

    sput-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    if-eqz p1, :cond_d

    goto :goto_f

    .line 56
    :cond_d
    sget-object p1, Lcom/android/server/textclassifier/IconsUriHelper;->DEFAULT_ID_SUPPLIER:Ljava/util/function/Supplier;

    :goto_f
    iput-object p1, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    const-string p0, "android"

    .line 62
    invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/android/server/textclassifier/IconsUriHelper;
    .registers 1

    .line 73
    sget-object v0, Lcom/android/server/textclassifier/IconsUriHelper;->sSingleton:Lcom/android/server/textclassifier/IconsUriHelper;

    return-object v0
.end method

.method public static synthetic lambda$static$0()Ljava/lang/String;
    .registers 1

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstanceForTesting(Ljava/util/function/Supplier;)Lcom/android/server/textclassifier/IconsUriHelper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/textclassifier/IconsUriHelper;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/android/server/textclassifier/IconsUriHelper;

    invoke-direct {v0, p0}, Lcom/android/server/textclassifier/IconsUriHelper;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method


# virtual methods
.method public getContentUri(Ljava/lang/String;I)Landroid/net/Uri;
    .registers 6

    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    monitor-enter v0

    .line 86
    :try_start_6
    iget-object v1, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 88
    iget-object v1, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mIdSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1b
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 91
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.android.textclassifier.icons"

    .line 92
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    .line 93
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_46
    move-exception p0

    .line 96
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_6 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public getResourceInfo(Landroid/net/Uri;)Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;
    .registers 8

    const-string v0, "content"

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    :cond_e
    const-string v0, "com.android.textclassifier.icons"

    .line 110
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    return-object v1

    .line 114
    :cond_1b
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    .line 116
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    monitor-enter v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_62

    const/4 v2, 0x0

    .line 117
    :try_start_23
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    .line 118
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 119
    iget-object v3, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    iget-object v5, p0, Lcom/android/server/textclassifier/IconsUriHelper;->mPackageIds:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 121
    new-instance p0, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;

    invoke-direct {p0, v4, p1, v1}, Lcom/android/server/textclassifier/IconsUriHelper$ResourceInfo;-><init>(Ljava/lang/String;ILcom/android/server/textclassifier/IconsUriHelper$ResourceInfo-IA;)V

    monitor-exit v0

    return-object p0

    .line 124
    :cond_5d
    monitor-exit v0

    goto :goto_7d

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_23 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    const-string p1, "IconsUriHelper"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get resource info. Reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7d
    return-object v1
.end method
