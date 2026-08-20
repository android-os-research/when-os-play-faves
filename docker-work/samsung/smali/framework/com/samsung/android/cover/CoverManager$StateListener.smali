.class public Lcom/samsung/android/cover/CoverManager$StateListener;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cover/CoverManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateListener"
.end annotation


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    return-void
.end method


# virtual methods
.method public greylist onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 2
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .line 766
    return-void
.end method
