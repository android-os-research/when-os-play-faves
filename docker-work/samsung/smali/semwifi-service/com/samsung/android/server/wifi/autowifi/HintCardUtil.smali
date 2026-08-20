.class Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;
.super Ljava/lang/Object;
.source "HintCardUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoWifi.HintCard"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemFrameworkFacade;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->mContext:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    return-void
.end method

.method private getHintCardSettings()Ljava/lang/String;
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_added_removed_list"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getStringSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private setHintCardSettings(Ljava/lang/String;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->mFacade:Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->mContext:Landroid/content/Context;

    const-string v1, "sem_auto_wifi_added_removed_list"

    invoke-virtual {v0, p0, v1, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->setStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method addConfigAsFavorite(Ljava/lang/String;)V
    .registers 5

    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v0, "AutoWifi.HintCard"

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " into favorite network list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->getHintCardSettings()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->addToFavoriteNetwork(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->setHintCardSettings(Ljava/lang/String;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 52
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3a
    return-void
.end method

.method addConfigAsNormal(Ljava/lang/String;)V
    .registers 5

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v0, "AutoWifi.HintCard"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " into normal network list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->getHintCardSettings()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->addToNormalNetwork(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->setHintCardSettings(Ljava/lang/String;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 64
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3a
    return-void
.end method

.method removeConfig(Ljava/lang/String;)V
    .registers 5

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    const-string v0, "AutoWifi.HintCard"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from the list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->getHintCardSettings()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->removeNetwork(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil$HintCardSettings;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/HintCardUtil;->setHintCardSettings(Ljava/lang/String;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 76
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3a
    return-void
.end method
