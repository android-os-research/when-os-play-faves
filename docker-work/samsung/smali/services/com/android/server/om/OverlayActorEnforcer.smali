.class public Lcom/android/server/om/OverlayActorEnforcer;
.super Ljava/lang/Object;
.source "OverlayActorEnforcer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    }
.end annotation


# instance fields
.field public final mPackageManager:Lcom/android/server/om/PackageManagerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/om/PackageManagerHelper;)V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    return-void
.end method

.method public static getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/om/OverlayActorEnforcer$ActorState;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "overlay"

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_63

    invoke-static {v1}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1e

    goto :goto_63

    .line 61
    :cond_1e
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 62
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_NAMED_ACTORS:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 65
    :cond_2b
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 67
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 68
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_NAMESPACE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_42
    const/4 p1, 0x0

    .line 71
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 72
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 73
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 74
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 77
    :cond_5c
    sget-object p1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 58
    :cond_63
    :goto_63
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_OVERLAYABLE_ACTOR_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    invoke-static {v2, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public enforceActor(Landroid/content/om/OverlayInfo;Ljava/lang/String;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/om/OverlayActorEnforcer;->isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    move-result-object p0

    .line 87
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-ne p0, v0, :cond_9

    return-void

    .line 91
    :cond_9
    iget-object v0, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is not allowed to call "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2e

    const-string p2, ""

    goto :goto_3f

    :cond_2e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_3f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 96
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " because "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "OverlayManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    if-eqz p3, :cond_ad

    const/16 v0, 0x3e8

    if-eq p3, v0, :cond_ad

    .line 114
    iget-object v0, p2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, v0, p4}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_13

    .line 118
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->TARGET_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 121
    :cond_13
    invoke-interface {v1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isDebuggable()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 122
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 125
    :cond_1c
    iget-object v1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, p3}, Lcom/android/server/om/PackageManagerHelper;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    .line 126
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 127
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->NO_PACKAGES_FOR_UID:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 131
    :cond_2b
    invoke-static {p3, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 132
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 135
    :cond_34
    iget-object p2, p2, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 137
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "android.permission.CHANGE_OVERLAY_PACKAGES"

    if-eqz v1, :cond_57

    .line 139
    :try_start_3e
    iget-object p2, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p2, v0, p4}, Lcom/android/server/om/PackageManagerHelper;->doesTargetDefineOverlayable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 140
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_TARGET_OVERLAYABLE_NAME:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_48} :catch_54

    return-object p0

    .line 144
    :cond_49
    :try_start_49
    iget-object p0, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p0, v2, p1}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_50
    .catch Ljava/lang/SecurityException; {:try_start_49 .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_50} :catch_54

    return-object p0

    .line 150
    :catch_51
    :try_start_51
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_53} :catch_54

    return-object p0

    .line 154
    :catch_54
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ERROR_READING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 160
    :cond_57
    :try_start_57
    iget-object v1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/server/om/PackageManagerHelper;->getOverlayableForTarget(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/om/OverlayableInfo;

    move-result-object p2
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5d} :catch_aa

    if-nez p2, :cond_62

    .line 167
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 170
    :cond_62
    iget-object p2, p2, Landroid/content/om/OverlayableInfo;->actor:Ljava/lang/String;

    .line 171
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 174
    :try_start_6a
    iget-object p0, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p0, v2, p1}, Lcom/android/server/om/PackageManagerHelper;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_6a .. :try_end_71} :catch_72

    return-object p0

    .line 180
    :catch_72
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->MISSING_LEGACY_PERMISSION:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 184
    :cond_75
    iget-object p1, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p1}, Lcom/android/server/om/PackageManagerHelper;->getNamedActors()Ljava/util/Map;

    move-result-object p1

    .line 185
    invoke-static {p2, p1}, Lcom/android/server/om/OverlayActorEnforcer;->getPackageNameForActor(Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object p1

    .line 186
    iget-object p2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 187
    sget-object v0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    if-eq p2, v0, :cond_88

    return-object p2

    .line 191
    :cond_88
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 192
    iget-object p0, p0, Lcom/android/server/om/OverlayActorEnforcer;->mPackageManager:Lcom/android/server/om/PackageManagerHelper;

    invoke-interface {p0, p1, p4}, Lcom/android/server/om/PackageManagerHelper;->getPackageForUser(Ljava/lang/String;I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    if-nez p0, :cond_97

    .line 194
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_FOUND:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 198
    :cond_97
    invoke-interface {p0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result p0

    if-nez p0, :cond_a0

    .line 199
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ACTOR_NOT_PREINSTALLED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 202
    :cond_a0
    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a7

    return-object v0

    .line 206
    :cond_a7
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->INVALID_ACTOR:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 163
    :catch_aa
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->UNABLE_TO_GET_TARGET_OVERLAYABLE:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0

    .line 111
    :cond_ad
    sget-object p0, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    return-object p0
.end method
