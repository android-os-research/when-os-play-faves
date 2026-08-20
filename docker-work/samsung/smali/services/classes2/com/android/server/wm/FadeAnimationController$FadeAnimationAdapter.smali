.class public Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;
.super Lcom/android/server/wm/LocalAnimationAdapter;
.source "FadeAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FadeAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FadeAnimationAdapter"
.end annotation


# instance fields
.field public final mShow:Z

.field public final mToken:Lcom/android/server/wm/WindowToken;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;ZLcom/android/server/wm/WindowToken;)V
    .registers 5

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 172
    iput-boolean p3, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    .line 173
    iput-object p4, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mToken:Lcom/android/server/wm/WindowToken;

    return-void
.end method


# virtual methods
.method public shouldDeferAnimationFinish(Ljava/lang/Runnable;)Z
    .registers 2

    .line 181
    iget-boolean p0, p0, Lcom/android/server/wm/FadeAnimationController$FadeAnimationAdapter;->mShow:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
