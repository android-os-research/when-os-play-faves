.class public Lcom/android/server/audio/AudioService$9;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/audio/FrequentWorker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .registers 2

    .line 17046
    iput-object p1, p0, Lcom/android/server/audio/AudioService$9;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    const/16 p1, 0x1f4

    .line 17048
    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    .line 17049
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public func()Ljava/lang/Boolean;
    .registers 2

    const-string/jumbo p0, "l_fmradio_record_active"

    .line 17055
    invoke-static {p0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "true"

    .line 17056
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic func()Ljava/lang/Object;
    .registers 1

    .line 17046
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$9;->func()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
