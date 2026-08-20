.class public Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/animation/rebound/Spring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhysicsState"
.end annotation


# instance fields
.field public position:D

.field public velocity:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/animation/rebound/Spring$PhysicsState-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/animation/rebound/Spring$PhysicsState;-><init>()V

    return-void
.end method
