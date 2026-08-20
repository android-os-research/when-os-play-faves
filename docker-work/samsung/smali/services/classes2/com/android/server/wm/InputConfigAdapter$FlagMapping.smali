.class public Lcom/android/server/wm/InputConfigAdapter$FlagMapping;
.super Ljava/lang/Object;
.source "InputConfigAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InputConfigAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlagMapping"
.end annotation


# instance fields
.field public final mFlag:I

.field public final mInputConfig:I

.field public final mInverted:Z


# direct methods
.method public constructor <init>(IIZ)V
    .registers 4

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mFlag:I

    .line 40
    iput p2, p0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInputConfig:I

    .line 41
    iput-boolean p3, p0, Lcom/android/server/wm/InputConfigAdapter$FlagMapping;->mInverted:Z

    return-void
.end method
