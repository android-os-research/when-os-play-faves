.class public final Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "TextToSpeechManagerPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;,
        Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;",
        "Lcom/android/server/texttospeech/TextToSpeechManagerService;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TextToSpeechManagerPerUserService"


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/texttospeech/TextToSpeechManagerService;Ljava/lang/Object;I)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    return-void
.end method

.method public static runSessionCallbackMethod(Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;)V
    .registers 4

    .line 175
    :try_start_0
    invoke-interface {p0}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$ThrowingRunnable;->runOrThrow()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1b

    :catch_4
    move-exception p0

    .line 177
    sget-object v0, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed running callback method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    return-void
.end method


# virtual methods
.method public createSessionLocked(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .registers 4

    .line 64
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/texttospeech/TextToSpeechManagerPerUserService$TextToSpeechSessionConnection;->start(Landroid/content/Context;ILjava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V

    return-void
.end method

.method public newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 74
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    iget p0, p0, Lcom/android/server/infra/AbstractPerUserSystemService;->mUserId:I

    invoke-interface {v0, p1, v1, v2, p0}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    .line 77
    :catch_d
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get service for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
