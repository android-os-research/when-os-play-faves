.class public final Lcom/android/server/SystemService$UserCompletedEventType;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserCompletedEventType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemService$UserCompletedEventType$EventTypesFlag;
    }
.end annotation


# static fields
.field public static final EVENT_TYPE_USER_STARTING:I = 0x1

.field public static final EVENT_TYPE_USER_SWITCHING:I = 0x4

.field public static final EVENT_TYPE_USER_UNLOCKED:I = 0x2


# instance fields
.field public final mEventType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p1, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    return-void
.end method

.method public static newUserCompletedEventTypeForTest(I)Lcom/android/server/SystemService$UserCompletedEventType;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 279
    new-instance v0, Lcom/android/server/SystemService$UserCompletedEventType;

    invoke-direct {v0, p0}, Lcom/android/server/SystemService$UserCompletedEventType;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public includesOnUserStarting()Z
    .registers 2

    .line 284
    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public includesOnUserSwitching()Z
    .registers 1

    .line 294
    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public includesOnUserUnlocked()Z
    .registers 1

    .line 289
    iget p0, p0, Lcom/android/server/SystemService$UserCompletedEventType;->mEventType:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserSwitching()Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "|Switching"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string/jumbo v1, "|Unlocked"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/SystemService$UserCompletedEventType;->includesOnUserStarting()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string/jumbo p0, "|Starting"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_39

    const-string/jumbo p0, "|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_39
    const-string/jumbo p0, "}"

    .line 305
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
