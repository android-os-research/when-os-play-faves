.class public abstract Lcom/samsung/android/server/corestate/CoreStateSettingObserver;
.super Landroid/database/ContentObserver;
.source "CoreStateSettingObserver.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateObserver;


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field public final mGlobalSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSecureSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mSecureSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mSystemSettingToTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final mSystemSettingToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BTwDkn2PKEuohmb3M6tBpqaLu3M(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->lambda$registerContentObserver$0(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$I3cNxSoPNzvEUQxkxxbWgVZVAcg(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->lambda$endObserveCoreStateSettingsForSingleUser$1()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 41
    const-class v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 58
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 50
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    .line 51
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    .line 52
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    .line 53
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    .line 54
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    .line 55
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$endObserveCoreStateSettingsForSingleUser$1()V
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private synthetic lambda$registerContentObserver$0(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 5

    .line 100
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public beginObserveCoreStateSettings()V
    .registers 7

    .line 74
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    const-string v1, "beginObserveCoreStateSettings"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "beginObserveCoreStateSettings : "

    const/4 v3, 0x0

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    sget-object v4, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, v1, v3, p0, v3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_11

    .line 82
    :cond_3c
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 84
    sget-object v4, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {p0, v1, v3, p0, v3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_46

    .line 88
    :cond_6e
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_78
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 90
    sget-object v4, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, v1, v3, p0, v3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_78

    .line 94
    :cond_a0
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    return-void
.end method

.method public beginObserveCoreStateSettingsForSingleUser(I)V
    .registers 8

    .line 106
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginObserveCoreStateSettingsForSingleUser(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "beginObserveCoreStateSettings : "

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 109
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    sget-object v4, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0, v1, v2, p0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_25

    .line 114
    :cond_50
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 115
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    sget-object v4, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v1, v2, p0, p1}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_5a

    :cond_82
    return-void
.end method

.method public endObserveCoreStateSettingsForSingleUser(Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endObserveCoreStateSettingsForSingleUser(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettings()V

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    :goto_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2e

    if-ne v0, p2, :cond_43

    goto :goto_2e

    .line 136
    :cond_43
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->beginObserveCoreStateSettingsForSingleUser(I)V

    goto :goto_2e

    :cond_47
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 6

    .line 69
    sget-object p1, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange(u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") : uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object p0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0, p3}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(I)V

    return-void
.end method

.method public final populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;I)Z"
        }
    .end annotation

    .line 156
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 158
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 159
    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    if-ne v3, v5, :cond_85

    .line 161
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_36

    .line 162
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_74

    .line 163
    :cond_36
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_45

    .line 164
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_74

    .line 165
    :cond_45
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_54

    .line 166
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_74

    .line 167
    :cond_54
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_63

    .line 168
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_74

    .line 169
    :cond_63
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_72

    .line 170
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, p3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_74

    :cond_72
    const-string v3, ""

    :goto_74
    if-eqz v3, :cond_a

    .line 174
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 175
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_83
    move v2, v6

    goto :goto_a

    .line 178
    :cond_85
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_ef

    .line 180
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_98

    .line 181
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_99

    :cond_98
    move v3, v1

    .line 182
    :goto_99
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_a8

    .line 183
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_e5

    .line 184
    :cond_a8
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_b7

    .line 185
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_e5

    .line 186
    :cond_b7
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v5, :cond_c6

    .line 187
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    goto :goto_e5

    .line 188
    :cond_c6
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_d5

    .line 189
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    goto :goto_e5

    .line 190
    :cond_d5
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v5, :cond_e4

    .line 191
    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v1, p3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    goto :goto_e5

    :cond_e4
    move v5, v1

    .line 195
    :goto_e5
    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v5, v3, :cond_a

    .line 196
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_83

    .line 199
    :cond_ef
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_14b

    .line 201
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    const/4 v5, 0x0

    if-ne p2, v3, :cond_103

    .line 202
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    goto :goto_13e

    .line 203
    :cond_103
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_112

    .line 204
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    goto :goto_13e

    .line 205
    :cond_112
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_121

    .line 206
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v5

    goto :goto_13e

    .line 207
    :cond_121
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_130

    .line 208
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    goto :goto_13e

    .line 209
    :cond_130
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_13e

    .line 210
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v5, p3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v5

    .line 214
    :cond_13e
    :goto_13e
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v5, v3

    if-eqz v3, :cond_a

    .line 215
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto/16 :goto_83

    .line 218
    :cond_14b
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v3, v5, :cond_a

    .line 220
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    const-wide/16 v7, 0x0

    if-ne p2, v3, :cond_160

    .line 221
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_19b

    .line 222
    :cond_160
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_16f

    .line 223
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_19b

    .line 224
    :cond_16f
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    if-ne p2, v3, :cond_17e

    .line 225
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_19b

    .line 226
    :cond_17e
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_18d

    .line 227
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8, p3}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v7

    goto :goto_19b

    .line 228
    :cond_18d
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    if-ne p2, v3, :cond_19b

    .line 229
    iget-object v3, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v7, v8, p3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v7

    .line 233
    :cond_19b
    :goto_19b
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-eqz v3, :cond_a

    .line 234
    invoke-virtual {p1, v4, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_83

    :cond_1a8
    return v2
.end method

.method public populateState(Landroid/os/Bundle;I)I
    .registers 7

    .line 144
    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v0

    const/4 v1, 0x0

    or-int/2addr v0, v1

    .line 145
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 146
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mGlobalSettingToTypeMap:Ljava/util/Map;

    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    or-int/2addr v0, v2

    .line 148
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSecureSettingToTypeMapForUser:Ljava/util/Map;

    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_21

    move v2, v3

    goto :goto_22

    :cond_21
    move v2, v1

    :goto_22
    or-int/2addr v0, v2

    .line 149
    iget-object v2, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mSystemSettingToTypeMapForUser:Ljava/util/Map;

    invoke-virtual {p0, p1, v2, p2}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    move v1, v3

    :cond_2c
    or-int p0, v0, v1

    return p0
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 13

    .line 99
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/server/corestate/CoreStateSettingObserver$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateSettingObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    .line 64
    invoke-interface {p0}, Lcom/samsung/android/server/corestate/CoreStateObserver;->registerObservingItems()V

    return-void
.end method
