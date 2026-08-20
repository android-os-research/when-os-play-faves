.class public Lcom/android/server/voicenote/VoiceNoteService;
.super Landroid/os/Binder;
.source "VoiceNoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "VoiceNoteService"

.field public static final VOICE_NOTE_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.voicenote"


# direct methods
.method public static bridge synthetic -$$Nest$smbackgroundWhitelist(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/voicenote/VoiceNoteService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "package"

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.voicenote"

    const/4 v1, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 25
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 29
    new-instance v0, Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver;-><init>(Lcom/android/server/voicenote/VoiceNoteService$UpdateReceiver-IA;)V

    .line 30
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 32
    invoke-static {p1}, Lcom/android/server/voicenote/VoiceNoteService;->backgroundWhitelist(Landroid/content/Context;)V

    return-void
.end method

.method public static backgroundWhitelist(Landroid/content/Context;)V
    .registers 5

    const-string v0, "VoiceNoteService"

    .line 63
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.sec.android.app.voicenote"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 64
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    if-lt p0, v2, :cond_27

    if-nez v1, :cond_1a

    goto :goto_27

    .line 70
    :cond_1a
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 71
    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->backgroundAllowlistUid(I)V

    const-string p0, "backgroundWhitelist successfully called"

    .line 72
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 66
    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backgroundWhitelist: bad uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", uidString: "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_43} :catch_44

    return-void

    :catch_44
    move-exception p0

    const-string v1, "backgroundWhitelist exception "

    .line 74
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4a
    return-void
.end method
