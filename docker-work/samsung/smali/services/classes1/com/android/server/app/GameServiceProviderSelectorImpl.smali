.class public final Lcom/android/server/app/GameServiceProviderSelectorImpl;
.super Ljava/lang/Object;
.source "GameServiceProviderSelectorImpl.java"

# interfaces
.implements Lcom/android/server/app/GameServiceProviderSelector;


# static fields
.field public static final DEBUG:Z = false

.field public static final GAME_SERVICE_NODE_NAME:Ljava/lang/String; = "game-service"

.field public static final TAG:Ljava/lang/String; = "GameServiceProviderSelector"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mResources:Landroid/content/res/Resources;

    .line 56
    iput-object p2, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public final determineGameSessionServiceFromGameService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .registers 9

    const/4 v0, 0x0

    .line 140
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.game_service"

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_9} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_9} :catch_a2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_9} :catch_a2

    const-string v2, "GameServiceProviderSelector"

    if-nez v1, :cond_2b

    .line 143
    :try_start_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No android.game_service meta-data found for "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 143
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_96

    if-eqz v1, :cond_2a

    .line 169
    :try_start_27
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27 .. :try_end_2a} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_2a} :catch_a2
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_a2

    :cond_2a
    return-object v0

    .line 148
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 151
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 153
    :goto_37
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_42

    const/4 v6, 0x2

    if-eq v5, v6, :cond_42

    goto :goto_37

    :cond_42
    const-string v5, "game-service"

    .line 158
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_57

    const-string p0, "Meta-data does not start with game-service tag"

    .line 160
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_2b .. :try_end_53} :catchall_96

    .line 169
    :try_start_53
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_53 .. :try_end_56} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_56} :catch_a2
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_a2

    return-object v0

    .line 164
    :cond_57
    :try_start_57
    sget-object v5, Lcom/android/internal/R$styleable;->GameService:[I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_96

    .line 169
    :try_start_65
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_68
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_65 .. :try_end_68} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_65 .. :try_end_68} :catch_a2
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_a2

    .line 175
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    const-string p0, "No gameSessionService specified"

    .line 176
    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 179
    :cond_74
    new-instance v1, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, p1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :try_start_7b
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v1, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_80
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7b .. :try_end_80} :catch_81

    return-object v1

    .line 185
    :catch_81
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GameSessionService does not exist: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_96
    move-exception p0

    if-eqz v1, :cond_a1

    .line 140
    :try_start_99
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_9d

    goto :goto_a1

    :catchall_9d
    move-exception v1

    :try_start_9e
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a1
    :goto_a1
    throw p0
    :try_end_a2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9e .. :try_end_a2} :catch_a2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9e .. :try_end_a2} :catch_a2
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a2} :catch_a2

    :catch_a2
    move-exception p0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while parsing meta-data for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public get(Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;)Lcom/android/server/app/GameServiceConfiguration;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 67
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result v1

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    const-string v3, "GameServiceProviderSelector"

    if-nez v1, :cond_31

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Game Service not supported for user: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 75
    :cond_31
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    goto :goto_43

    :cond_38
    const/high16 v2, 0x100000

    .line 80
    iget-object p2, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mResources:Landroid/content/res/Resources;

    const v1, 0x104039e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 84
    :goto_43
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string p0, "No game service package defined"

    .line 85
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 89
    :cond_4f
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result p1

    .line 90
    iget-object v1, p0, Lcom/android/server/app/GameServiceProviderSelectorImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.service.games.action.GAME_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v4, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    or-int/lit16 v2, v2, 0x80

    .line 91
    invoke-virtual {v1, v4, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_bc

    .line 100
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6f

    goto :goto_bc

    .line 106
    :cond_6f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_73
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 107
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v2, :cond_84

    goto :goto_73

    .line 113
    :cond_84
    invoke-virtual {p0, v2}, Lcom/android/server/app/GameServiceProviderSelectorImpl;->determineGameSessionServiceFromGameService(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_8b

    goto :goto_73

    .line 118
    :cond_8b
    new-instance p0, Lcom/android/server/app/GameServiceConfiguration;

    new-instance v1, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 123
    invoke-virtual {v2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-direct {v1, v5, v2, v4}, Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;-><init>(Landroid/os/UserHandle;Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    invoke-direct {p0, p2, v1}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    goto :goto_a0

    :cond_9f
    move-object p0, v0

    :goto_a0
    if-nez p0, :cond_bb

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid game service found for user id: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance p0, Lcom/android/server/app/GameServiceConfiguration;

    invoke-direct {p0, p2, v0}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    :cond_bb
    return-object p0

    .line 101
    :cond_bc
    :goto_bc
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No available game service found for user id: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance p0, Lcom/android/server/app/GameServiceConfiguration;

    invoke-direct {p0, p2, v0}, Lcom/android/server/app/GameServiceConfiguration;-><init>(Ljava/lang/String;Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;)V

    return-object p0
.end method
