.class public Lcom/samsung/android/server/audio/KaraokeHelper;
.super Ljava/lang/Object;
.source "KaraokeHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KaraokeHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAndBroadcastKaraokeInstalled(Landroid/content/Context;Lcom/samsung/android/server/audio/AudioSettingsHelper;Ljava/lang/String;Z)V
    .registers 6

    const-string v0, "karaoke_allow"

    .line 34
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->checkAppCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 37
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Karaoke app is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "installed"

    if-eqz p3, :cond_19

    move-object v1, v0

    goto :goto_1c

    :cond_19
    const-string/jumbo v1, "removed"

    :goto_1c
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KaraokeHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.karaoke"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p3, "package"

    .line 40
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.sec.android.app.soundalive"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/audio/AudioHelper;->sendBroadcastToUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static setKaraokeListenback(I)V
    .registers 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "l_effect_listenback_key;state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    return-void
.end method
