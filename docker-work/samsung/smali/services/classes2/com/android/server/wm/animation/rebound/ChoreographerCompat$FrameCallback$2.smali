.class public Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$2;
.super Ljava/lang/Object;
.source "ChoreographerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$2;->this$0:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 120
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$2;->this$0:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->doFrame(J)V

    return-void
.end method
