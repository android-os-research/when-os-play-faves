.class public Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;
.super Lcom/samsung/android/gamesdk/subsystem/Logger;
.source "GameSDKVrrLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger$Singleton;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/subsystem/Logger;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;
    .registers 1

    .line 12
    # getter for: Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger$Singleton;->instance:Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger$Singleton;->access$000()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;

    move-result-object v0

    return-object v0
.end method
