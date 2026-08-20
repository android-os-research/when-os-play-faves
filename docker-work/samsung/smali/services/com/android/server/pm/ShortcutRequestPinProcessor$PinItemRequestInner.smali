.class public abstract Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.super Landroid/content/pm/IPinItemRequest$Stub;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutRequestPinProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PinItemRequestInner"
.end annotation


# instance fields
.field public mAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mLauncherUid:I

.field public final mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field public final mResultIntent:Landroid/content/IntentSender;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V
    .registers 4

    .line 71
    invoke-direct {p0}, Landroid/content/pm/IPinItemRequest$Stub;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 73
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    .line 74
    iput p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    return-void
.end method


# virtual methods
.method public accept(Landroid/os/Bundle;)Z
    .registers 4

    .line 119
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 125
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_20

    :catch_16
    move-exception p0

    .line 128
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "options cannot be unparceled"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 131
    :cond_20
    :goto_20
    monitor-enter p0

    .line 132
    :try_start_21
    iget-boolean p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez p1, :cond_39

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    .line 136
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_41

    .line 139
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 140
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return p1

    :cond_37
    const/4 p0, 0x0

    return p0

    .line 133
    :cond_39
    :try_start_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "accept() called already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_41
    move-exception p1

    .line 136
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw p1

    .line 120
    :cond_44
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling uid mismatch"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public final isCallerValid()Z
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    invoke-virtual {v0, p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isCallerUid(I)Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .registers 3

    .line 102
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 107
    :cond_8
    monitor-enter p0

    .line 108
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    monitor-exit p0

    return v1

    :catchall_10
    move-exception v0

    .line 109
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public tryAccept()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
