.class public Lcom/android/server/audio/AudioService$SoundEventReceiver;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundEventReceiver"
.end annotation


# instance fields
.field public mEventReceiver:Landroid/content/ComponentName;

.field public mEventType:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .registers 3

    .line 15977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15978
    iput p1, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    .line 15979
    iput-object p2, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    .line 15986
    :try_start_3
    check-cast p1, Lcom/android/server/audio/AudioService$SoundEventReceiver;

    .line 15987
    iget-object p1, p1, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez p1, :cond_a

    return v0

    .line 15989
    :cond_a
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_10
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_10} :catch_11

    return p0

    :catch_11
    :cond_11
    return v0
.end method

.method public hasEventType(I)Z
    .registers 2

    .line 15997
    iget p0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public samePackageName(Ljava/lang/String;)Z
    .registers 2

    .line 16001
    iget-object p0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 16002
    :cond_6
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
