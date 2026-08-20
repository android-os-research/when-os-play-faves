.class public Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$1;
.super Ljava/lang/Object;
.source "ChoreographerCompat.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->getFrameCallback()Landroid/view/Choreographer$FrameCallback;
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

    .line 105
    iput-object p1, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$1;->this$0:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .registers 3

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback$1;->this$0:Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/animation/rebound/ChoreographerCompat$FrameCallback;->doFrame(J)V

    return-void
.end method
