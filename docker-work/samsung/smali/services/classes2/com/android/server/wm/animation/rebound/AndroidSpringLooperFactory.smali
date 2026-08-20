.class public abstract Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;,
        Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$LegacyAndroidSpringLooper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSpringLooper()Lcom/android/server/wm/animation/rebound/SpringLooper;
    .registers 1

    .line 33
    invoke-static {}, Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->create()Lcom/android/server/wm/animation/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    move-result-object v0

    return-object v0
.end method
